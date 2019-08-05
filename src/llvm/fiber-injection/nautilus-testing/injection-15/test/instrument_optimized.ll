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
  br i1 %6, label %69, label %7, !dbg !996

; <label>:7:                                      ; preds = %2, %wrapper_nk_fiber_yield.exit
  %8 = phi i32 [ %9, %wrapper_nk_fiber_yield.exit ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !986, metadata !DIExpression()), !dbg !993
  %9 = add i32 %8, 1, !dbg !997
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8) #12, !dbg !999
  call void @llvm.dbg.value(metadata i32 %9, metadata !986, metadata !DIExpression()), !dbg !993
  %11 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1000
  %12 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1004
  %13 = inttoptr i64 %12 to %struct.cpu*, !dbg !1023
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !1024
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !1024
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !1025
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !1025
  %18 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1026, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %18, metadata !772, metadata !DIExpression()) #11, !dbg !1026
  call void @llvm.dbg.value(metadata %struct.nk_thread* %18, metadata !771, metadata !DIExpression()) #11, !dbg !1028
  %19 = icmp eq %struct.nk_thread* %17, %18, !dbg !1029
  br i1 %19, label %20, label %wrapper_nk_fiber_yield.exit, !dbg !1030

; <label>:20:                                     ; preds = %7
  %21 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1031
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !1055
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !1056
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !1056
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 4, !dbg !1057
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1042, metadata !DIExpression()) #11, !dbg !1058
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1060, metadata !DIExpression()) #11, !dbg !1065
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 0, !dbg !1067
  %27 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !1067
  %28 = icmp eq %struct.list_head* %27, %25, !dbg !1068
  br i1 %28, label %41, label %29, !dbg !1069

; <label>:29:                                     ; preds = %20
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !1070
  %30 = getelementptr %struct.list_head, %struct.list_head* %27, i64 -7, i32 1, !dbg !1070
  %31 = bitcast %struct.list_head** %30 to %struct.nk_fiber*, !dbg !1070
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %31, metadata !1044, metadata !DIExpression()) #11, !dbg !1070
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %31, metadata !1043, metadata !DIExpression()) #11, !dbg !1059
  %32 = getelementptr inbounds %struct.list_head*, %struct.list_head** %30, i64 13, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.list_head** %32, metadata !1072, metadata !DIExpression()) #11, !dbg !1075
  %33 = getelementptr inbounds %struct.list_head*, %struct.list_head** %30, i64 14, !dbg !1077
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1077
  %35 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !1078
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1079, metadata !DIExpression()) #11, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1084, metadata !DIExpression()) #11, !dbg !1087
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !1088
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1089
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1090
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !1091
  call void @llvm.dbg.value(metadata %struct.list_head** %32, metadata !780, metadata !DIExpression()) #11, !dbg !1092
  %38 = bitcast %struct.list_head** %32 to %struct.list_head***, !dbg !1094
  store %struct.list_head** %32, %struct.list_head*** %38, align 8, !dbg !1094
  %39 = bitcast %struct.list_head** %33 to %struct.list_head***, !dbg !1095
  store %struct.list_head** %32, %struct.list_head*** %39, align 8, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %31, metadata !1043, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %31, metadata !1021, metadata !DIExpression()) #11, !dbg !1096
  %40 = icmp eq %struct.list_head** %30, null, !dbg !1097
  br i1 %40, label %41, label %62, !dbg !1099

; <label>:41:                                     ; preds = %29, %20
  %42 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1100
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !1107
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !1108
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !1108
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 2, !dbg !1109
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !1109
  %48 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1110
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !1115
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !1116
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !1116
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !1117
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !1117
  %54 = icmp eq %struct.nk_fiber* %47, %53, !dbg !1118
  br i1 %54, label %wrapper_nk_fiber_yield.exit, label %55, !dbg !1119

; <label>:55:                                     ; preds = %41
  %56 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1120
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !1125
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !1126
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !1126
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 3, !dbg !1127
  %61 = load %struct.nk_fiber*, %struct.nk_fiber** %60, align 8, !dbg !1127
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %61, metadata !1021, metadata !DIExpression()) #11, !dbg !1096
  br label %62, !dbg !1128

; <label>:62:                                     ; preds = %55, %29
  %63 = phi %struct.nk_fiber* [ %61, %55 ], [ %31, %29 ], !dbg !1129
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %63, metadata !1021, metadata !DIExpression()) #11, !dbg !1096
  %64 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %63) #12, !dbg !1130
  br label %wrapper_nk_fiber_yield.exit, !dbg !1131

wrapper_nk_fiber_yield.exit:                      ; preds = %7, %41, %62
  %65 = phi i32 [ 1, %7 ], [ 0, %41 ], [ 0, %62 ], !dbg !1129
  %66 = zext i32 %9 to i64, !dbg !1132
  %67 = load i64, i64* %3, align 8, !dbg !994
  %68 = icmp ugt i64 %67, %66, !dbg !995
  br i1 %68, label %7, label %69, !dbg !996, !llvm.loop !1133

; <label>:69:                                     ; preds = %wrapper_nk_fiber_yield.exit, %2
  %70 = phi i32 [ 0, %2 ], [ %9, %wrapper_nk_fiber_yield.exit ], !dbg !1135
  call void @llvm.dbg.value(metadata i32 %70, metadata !986, metadata !DIExpression()), !dbg !993
  %71 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %70) #12, !dbg !1136
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1137
  ret void, !dbg !1138
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !1139 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1141, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i8** undef, metadata !1142, metadata !DIExpression()), !dbg !1146
  %3 = bitcast i8* %0 to i64*, !dbg !1147
  call void @llvm.dbg.value(metadata i64* %3, metadata !1143, metadata !DIExpression()), !dbg !1148
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1149
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #12, !dbg !1150
  call void @llvm.dbg.value(metadata i32 0, metadata !1144, metadata !DIExpression()), !dbg !1151
  %5 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1152
  %6 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1154
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !1159
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !1160
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !1160
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !1161
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !1161
  %12 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1162, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !1164
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !1165
  br i1 %13, label %14, label %wrapper_nk_fiber_yield.exit1, !dbg !1166

; <label>:14:                                     ; preds = %2
  %15 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1167
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !1172
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !1173
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !1173
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !1174
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1042, metadata !DIExpression()) #11, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !1176
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1060, metadata !DIExpression()) #11, !dbg !1177
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1179
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1179
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !1180
  br i1 %22, label %35, label %23, !dbg !1181

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !1182
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !1182
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !1182
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1044, metadata !DIExpression()) #11, !dbg !1182
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1043, metadata !DIExpression()) #11, !dbg !1176
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !1183
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1072, metadata !DIExpression()) #11, !dbg !1184
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !1186
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !1186
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !1187
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1079, metadata !DIExpression()) #11, !dbg !1188
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1084, metadata !DIExpression()) #11, !dbg !1190
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !1191
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !1192
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !1193
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !1194
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !1195
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !1197
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !1197
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !1198
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !1198
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1043, metadata !DIExpression()) #11, !dbg !1176
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1021, metadata !DIExpression()) #11, !dbg !1199
  %34 = icmp eq %struct.list_head** %24, null, !dbg !1200
  br i1 %34, label %35, label %56, !dbg !1201

; <label>:35:                                     ; preds = %23, %14
  %36 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1202
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !1206
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !1207
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !1207
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !1208
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !1208
  %42 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1209
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !1213
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !1214
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !1214
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !1215
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !1215
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !1216
  br i1 %48, label %wrapper_nk_fiber_yield.exit1, label %49, !dbg !1217

; <label>:49:                                     ; preds = %35
  %50 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1218
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !1222
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !1223
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !1223
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !1224
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !1224
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1021, metadata !DIExpression()) #11, !dbg !1199
  br label %56, !dbg !1225

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !1226
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !1021, metadata !DIExpression()) #11, !dbg !1199
  %58 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !1227
  br label %wrapper_nk_fiber_yield.exit1, !dbg !1228

wrapper_nk_fiber_yield.exit1:                     ; preds = %2, %35, %56
  %59 = phi i32 [ 1, %2 ], [ 0, %35 ], [ 0, %56 ], !dbg !1226
  %60 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #12, !dbg !1229
  call void @llvm.dbg.value(metadata i32 0, metadata !1144, metadata !DIExpression()), !dbg !1151
  %61 = load i64, i64* %3, align 8, !dbg !1230
  %62 = icmp eq i64 %61, 0, !dbg !1231
  br i1 %62, label %70, label %63, !dbg !1232

; <label>:63:                                     ; preds = %wrapper_nk_fiber_yield.exit1, %63
  %64 = phi i32 [ %65, %63 ], [ 0, %wrapper_nk_fiber_yield.exit1 ]
  call void @llvm.dbg.value(metadata i32 %64, metadata !1144, metadata !DIExpression()), !dbg !1151
  %65 = add i32 %64, 1, !dbg !1233
  %66 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %64) #12, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %65, metadata !1144, metadata !DIExpression()), !dbg !1151
  %67 = zext i32 %65 to i64, !dbg !1236
  %68 = load i64, i64* %3, align 8, !dbg !1230
  %69 = icmp ugt i64 %68, %67, !dbg !1231
  br i1 %69, label %63, label %70, !dbg !1232, !llvm.loop !1237

; <label>:70:                                     ; preds = %63, %wrapper_nk_fiber_yield.exit1
  %71 = phi i32 [ 0, %wrapper_nk_fiber_yield.exit1 ], [ %65, %63 ], !dbg !1239
  call void @llvm.dbg.value(metadata i32 %71, metadata !1144, metadata !DIExpression()), !dbg !1151
  %72 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %71) #12, !dbg !1240
  %73 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1241
  %74 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1243
  %75 = inttoptr i64 %74 to %struct.cpu*, !dbg !1248
  %76 = getelementptr inbounds %struct.cpu, %struct.cpu* %75, i64 0, i32 5, !dbg !1249
  %77 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %76, align 8, !dbg !1249
  %78 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %77, i64 0, i32 1, !dbg !1250
  %79 = load %struct.nk_thread*, %struct.nk_thread** %78, align 8, !dbg !1250
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1251, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %80, metadata !772, metadata !DIExpression()) #11, !dbg !1251
  call void @llvm.dbg.value(metadata %struct.nk_thread* %80, metadata !771, metadata !DIExpression()) #11, !dbg !1253
  %81 = icmp eq %struct.nk_thread* %79, %80, !dbg !1254
  br i1 %81, label %82, label %wrapper_nk_fiber_yield.exit, !dbg !1255

; <label>:82:                                     ; preds = %70
  %83 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1256
  %84 = inttoptr i64 %83 to %struct.cpu*, !dbg !1261
  %85 = getelementptr inbounds %struct.cpu, %struct.cpu* %84, i64 0, i32 5, !dbg !1262
  %86 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %85, align 8, !dbg !1262
  %87 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %86, i64 0, i32 4, !dbg !1263
  call void @llvm.dbg.value(metadata %struct.list_head* %87, metadata !1042, metadata !DIExpression()) #11, !dbg !1264
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.list_head* %87, metadata !1060, metadata !DIExpression()) #11, !dbg !1266
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %87, i64 0, i32 0, !dbg !1268
  %89 = load %struct.list_head*, %struct.list_head** %88, align 8, !dbg !1268
  %90 = icmp eq %struct.list_head* %89, %87, !dbg !1269
  br i1 %90, label %103, label %91, !dbg !1270

; <label>:91:                                     ; preds = %82
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !1271
  %92 = getelementptr %struct.list_head, %struct.list_head* %89, i64 -7, i32 1, !dbg !1271
  %93 = bitcast %struct.list_head** %92 to %struct.nk_fiber*, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %93, metadata !1044, metadata !DIExpression()) #11, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %93, metadata !1043, metadata !DIExpression()) #11, !dbg !1265
  %94 = getelementptr inbounds %struct.list_head*, %struct.list_head** %92, i64 13, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.list_head** %94, metadata !1072, metadata !DIExpression()) #11, !dbg !1273
  %95 = getelementptr inbounds %struct.list_head*, %struct.list_head** %92, i64 14, !dbg !1275
  %96 = load %struct.list_head*, %struct.list_head** %95, align 8, !dbg !1275
  %97 = load %struct.list_head*, %struct.list_head** %94, align 8, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.list_head* %96, metadata !1079, metadata !DIExpression()) #11, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.list_head* %97, metadata !1084, metadata !DIExpression()) #11, !dbg !1279
  %98 = getelementptr inbounds %struct.list_head, %struct.list_head* %97, i64 0, i32 1, !dbg !1280
  store %struct.list_head* %96, %struct.list_head** %98, align 8, !dbg !1281
  %99 = getelementptr inbounds %struct.list_head, %struct.list_head* %96, i64 0, i32 0, !dbg !1282
  store %struct.list_head* %97, %struct.list_head** %99, align 8, !dbg !1283
  call void @llvm.dbg.value(metadata %struct.list_head** %94, metadata !780, metadata !DIExpression()) #11, !dbg !1284
  %100 = bitcast %struct.list_head** %94 to %struct.list_head***, !dbg !1286
  store %struct.list_head** %94, %struct.list_head*** %100, align 8, !dbg !1286
  %101 = bitcast %struct.list_head** %95 to %struct.list_head***, !dbg !1287
  store %struct.list_head** %94, %struct.list_head*** %101, align 8, !dbg !1287
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %93, metadata !1043, metadata !DIExpression()) #11, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %93, metadata !1021, metadata !DIExpression()) #11, !dbg !1288
  %102 = icmp eq %struct.list_head** %92, null, !dbg !1289
  br i1 %102, label %103, label %124, !dbg !1290

; <label>:103:                                    ; preds = %91, %82
  %104 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1291
  %105 = inttoptr i64 %104 to %struct.cpu*, !dbg !1295
  %106 = getelementptr inbounds %struct.cpu, %struct.cpu* %105, i64 0, i32 5, !dbg !1296
  %107 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %106, align 8, !dbg !1296
  %108 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %107, i64 0, i32 2, !dbg !1297
  %109 = load %struct.nk_fiber*, %struct.nk_fiber** %108, align 8, !dbg !1297
  %110 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1298
  %111 = inttoptr i64 %110 to %struct.cpu*, !dbg !1302
  %112 = getelementptr inbounds %struct.cpu, %struct.cpu* %111, i64 0, i32 5, !dbg !1303
  %113 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %112, align 8, !dbg !1303
  %114 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %113, i64 0, i32 3, !dbg !1304
  %115 = load %struct.nk_fiber*, %struct.nk_fiber** %114, align 8, !dbg !1304
  %116 = icmp eq %struct.nk_fiber* %109, %115, !dbg !1305
  br i1 %116, label %wrapper_nk_fiber_yield.exit, label %117, !dbg !1306

; <label>:117:                                    ; preds = %103
  %118 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1307
  %119 = inttoptr i64 %118 to %struct.cpu*, !dbg !1311
  %120 = getelementptr inbounds %struct.cpu, %struct.cpu* %119, i64 0, i32 5, !dbg !1312
  %121 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %120, align 8, !dbg !1312
  %122 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %121, i64 0, i32 3, !dbg !1313
  %123 = load %struct.nk_fiber*, %struct.nk_fiber** %122, align 8, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %123, metadata !1021, metadata !DIExpression()) #11, !dbg !1288
  br label %124, !dbg !1314

; <label>:124:                                    ; preds = %117, %91
  %125 = phi %struct.nk_fiber* [ %123, %117 ], [ %93, %91 ], !dbg !1315
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %125, metadata !1021, metadata !DIExpression()) #11, !dbg !1288
  %126 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %125) #12, !dbg !1316
  br label %wrapper_nk_fiber_yield.exit, !dbg !1317

wrapper_nk_fiber_yield.exit:                      ; preds = %70, %103, %124
  %127 = phi i32 [ 1, %70 ], [ 0, %103 ], [ 0, %124 ], !dbg !1315
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1318
  ret void, !dbg !1319
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1320 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1322, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i8* %1, metadata !1323, metadata !DIExpression()), !dbg !1325
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1326
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1326
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1335, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #11, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #11, !dbg !1337
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !1338
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !1338
  %9 = load i64, i64* %8, align 8, !dbg !1338
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1339
  %10 = bitcast i64* %4 to i8*, !dbg !1340
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1340
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1341
  %11 = call i8* @kmem_malloc(i64 8) #12, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %11, metadata !1332, metadata !DIExpression()) #11, !dbg !1342
  %12 = icmp eq i8* %11, null, !dbg !1343
  br i1 %12, label %13, label %15, !dbg !1345

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1346
  br label %115, !dbg !1348

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !1349
  call void @llvm.dbg.value(metadata i64* %16, metadata !1331, metadata !DIExpression()) #11, !dbg !1350
  %17 = load i64, i64* %4, align 8, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %17, metadata !1330, metadata !DIExpression()) #11, !dbg !1352
  %18 = urem i64 %17, 5000, !dbg !1353
  store i64 %18, i64* %16, align 8, !dbg !1354
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1329, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1355
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %11, metadata !589, metadata !DIExpression()) #11, !dbg !1358
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1359
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1360
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1361
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !593, metadata !DIExpression()) #11, !dbg !1362
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1363
  call void @llvm.dbg.value(metadata i8* %11, metadata !606, metadata !DIExpression()) #11, !dbg !1365
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1366
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !609, metadata !DIExpression()) #11, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1369
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1370
  %19 = call i8* @kmem_malloc(i64 152) #12, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %19, metadata !612, metadata !DIExpression()) #11, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %19, metadata !610, metadata !DIExpression()) #11, !dbg !1369
  %20 = icmp eq i8* %19, null, !dbg !1372
  br i1 %20, label %nk_fiber_create.exit, label %21, !dbg !1373

; <label>:21:                                     ; preds = %15
  %22 = call i8* @memset(i8* nonnull %19, i8 signext 0, i64 152) #12, !dbg !1374
  %23 = getelementptr inbounds i8, i8* %19, i64 44, !dbg !1375
  %24 = bitcast i8* %23 to i32*, !dbg !1375
  store i32 0, i32* %24, align 4, !dbg !1376
  %25 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1377
  %26 = bitcast i8* %25 to i64*, !dbg !1377
  store i64 2097152, i64* %26, align 8, !dbg !1378
  %27 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %27, metadata !614, metadata !DIExpression()) #11, !dbg !1379
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1380
  %29 = bitcast i8* %28 to i8**, !dbg !1380
  store i8* %27, i8** %29, align 8, !dbg !1381
  %30 = icmp eq i8* %27, null, !dbg !1382
  br i1 %30, label %31, label %32, !dbg !1383

; <label>:31:                                     ; preds = %21
  call void @kmem_free(i8* nonnull %19) #12, !dbg !1384
  br label %nk_fiber_create.exit, !dbg !1385

; <label>:32:                                     ; preds = %21
  %33 = ptrtoint i8* %27 to i64, !dbg !1383
  %34 = getelementptr inbounds i8, i8* %19, i64 120, !dbg !1386
  %35 = bitcast i8* %34 to void (i8*, i8**)**, !dbg !1386
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %35, align 8, !dbg !1387
  %36 = getelementptr inbounds i8, i8* %19, i64 128, !dbg !1388
  %37 = bitcast i8* %36 to i8**, !dbg !1388
  store i8* %11, i8** %37, align 8, !dbg !1389
  %38 = getelementptr inbounds i8, i8* %19, i64 136, !dbg !1390
  %39 = bitcast i8* %38 to i8***, !dbg !1390
  store i8** null, i8*** %39, align 8, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %19, metadata !648, metadata !DIExpression()) #11, !dbg !1392
  %40 = load i64, i64* %26, align 8, !dbg !1394
  %41 = bitcast i8* %19 to i64*, !dbg !1395
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1398
  %42 = add i64 %33, -8, !dbg !1399
  %43 = add i64 %42, %40, !dbg !1400
  store i64 %43, i64* %41, align 8, !dbg !1400
  %44 = inttoptr i64 %43 to i64*, !dbg !1401
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %44, align 8, !dbg !1402
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1403
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1405
  %45 = load i64, i64* %41, align 8, !dbg !1406
  %46 = add i64 %45, -8, !dbg !1406
  store i64 %46, i64* %41, align 8, !dbg !1406
  %47 = inttoptr i64 %46 to i64*, !dbg !1407
  store i64 0, i64* %47, align 8, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1409
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1411
  %48 = load i64, i64* %41, align 8, !dbg !1412
  %49 = add i64 %48, -8, !dbg !1412
  store i64 %49, i64* %41, align 8, !dbg !1412
  %50 = inttoptr i64 %49 to i64*, !dbg !1413
  store i64 0, i64* %50, align 8, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1415
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1417
  %51 = load i64, i64* %41, align 8, !dbg !1418
  %52 = add i64 %51, -8, !dbg !1418
  store i64 %52, i64* %41, align 8, !dbg !1418
  %53 = inttoptr i64 %52 to i64*, !dbg !1419
  store i64 0, i64* %53, align 8, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1421
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1423
  %54 = load i64, i64* %41, align 8, !dbg !1424
  %55 = add i64 %54, -8, !dbg !1424
  store i64 %55, i64* %41, align 8, !dbg !1424
  %56 = inttoptr i64 %55 to i64*, !dbg !1425
  store i64 0, i64* %56, align 8, !dbg !1426
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1427
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1429
  %57 = load i64, i64* %41, align 8, !dbg !1430
  %58 = add i64 %57, -8, !dbg !1430
  store i64 %58, i64* %41, align 8, !dbg !1430
  %59 = inttoptr i64 %58 to i64*, !dbg !1431
  store i64 0, i64* %59, align 8, !dbg !1432
  %60 = ptrtoint i8* %19 to i64, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %60, metadata !662, metadata !DIExpression()) #11, !dbg !1436
  %61 = load i64, i64* %41, align 8, !dbg !1437
  %62 = add i64 %61, -8, !dbg !1437
  store i64 %62, i64* %41, align 8, !dbg !1437
  %63 = inttoptr i64 %62 to i64*, !dbg !1438
  store i64 %60, i64* %63, align 8, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1440
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1442
  %64 = load i64, i64* %41, align 8, !dbg !1443
  %65 = add i64 %64, -8, !dbg !1443
  store i64 %65, i64* %41, align 8, !dbg !1443
  %66 = inttoptr i64 %65 to i64*, !dbg !1444
  store i64 0, i64* %66, align 8, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1448
  %67 = load i64, i64* %41, align 8, !dbg !1449
  %68 = add i64 %67, -8, !dbg !1449
  store i64 %68, i64* %41, align 8, !dbg !1449
  %69 = inttoptr i64 %68 to i64*, !dbg !1450
  store i64 0, i64* %69, align 8, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1454
  %70 = load i64, i64* %41, align 8, !dbg !1455
  %71 = add i64 %70, -8, !dbg !1455
  store i64 %71, i64* %41, align 8, !dbg !1455
  %72 = inttoptr i64 %71 to i64*, !dbg !1456
  store i64 0, i64* %72, align 8, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1458
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1460
  %73 = load i64, i64* %41, align 8, !dbg !1461
  %74 = add i64 %73, -8, !dbg !1461
  store i64 %74, i64* %41, align 8, !dbg !1461
  %75 = inttoptr i64 %74 to i64*, !dbg !1462
  store i64 0, i64* %75, align 8, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1464
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1466
  %76 = load i64, i64* %41, align 8, !dbg !1467
  %77 = add i64 %76, -8, !dbg !1467
  store i64 %77, i64* %41, align 8, !dbg !1467
  %78 = inttoptr i64 %77 to i64*, !dbg !1468
  store i64 0, i64* %78, align 8, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1470
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1472
  %79 = load i64, i64* %41, align 8, !dbg !1473
  %80 = add i64 %79, -8, !dbg !1473
  store i64 %80, i64* %41, align 8, !dbg !1473
  %81 = inttoptr i64 %80 to i64*, !dbg !1474
  store i64 0, i64* %81, align 8, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1476
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1478
  %82 = load i64, i64* %41, align 8, !dbg !1479
  %83 = add i64 %82, -8, !dbg !1479
  store i64 %83, i64* %41, align 8, !dbg !1479
  %84 = inttoptr i64 %83 to i64*, !dbg !1480
  store i64 0, i64* %84, align 8, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1482
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1484
  %85 = load i64, i64* %41, align 8, !dbg !1485
  %86 = add i64 %85, -8, !dbg !1485
  store i64 %86, i64* %41, align 8, !dbg !1485
  %87 = inttoptr i64 %86 to i64*, !dbg !1486
  store i64 0, i64* %87, align 8, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1488
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1490
  %88 = load i64, i64* %41, align 8, !dbg !1491
  %89 = add i64 %88, -8, !dbg !1491
  store i64 %89, i64* %41, align 8, !dbg !1491
  %90 = inttoptr i64 %89 to i64*, !dbg !1492
  store i64 0, i64* %90, align 8, !dbg !1493
  %91 = bitcast %struct.nk_fiber** %3 to i8**, !dbg !1494
  store i8* %19, i8** %91, align 8, !dbg !1494
  %92 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1495, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !772, metadata !DIExpression()) #11, !dbg !1495
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !771, metadata !DIExpression()) #11, !dbg !1497
  %93 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %92, i64 0, i32 24, !dbg !1498
  %94 = bitcast %struct.nk_virtual_console** %93 to i64*, !dbg !1498
  %95 = load i64, i64* %94, align 8, !dbg !1498
  %96 = getelementptr inbounds i8, i8* %19, i64 48, !dbg !1499
  %97 = bitcast i8* %96 to i64*, !dbg !1500
  store i64 %95, i64* %97, align 8, !dbg !1500
  %98 = getelementptr inbounds i8, i8* %19, i64 104, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %98, metadata !780, metadata !DIExpression()) #11, !dbg !1502
  %99 = bitcast i8* %98 to i8**, !dbg !1504
  store i8* %98, i8** %99, align 8, !dbg !1504
  %100 = getelementptr inbounds i8, i8* %19, i64 112, !dbg !1505
  %101 = bitcast i8* %100 to i8**, !dbg !1506
  store i8* %98, i8** %101, align 8, !dbg !1506
  %102 = getelementptr inbounds i8, i8* %19, i64 96, !dbg !1507
  %103 = bitcast i8* %102 to i32*, !dbg !1507
  store i32 0, i32* %103, align 8, !dbg !1508
  %104 = getelementptr inbounds i8, i8* %19, i64 64, !dbg !1509
  call void @llvm.dbg.value(metadata i8* %104, metadata !780, metadata !DIExpression()) #11, !dbg !1510
  %105 = bitcast i8* %104 to i8**, !dbg !1512
  store i8* %104, i8** %105, align 8, !dbg !1512
  %106 = getelementptr inbounds i8, i8* %19, i64 72, !dbg !1513
  %107 = bitcast i8* %106 to i8**, !dbg !1514
  store i8* %104, i8** %107, align 8, !dbg !1514
  %108 = getelementptr inbounds i8, i8* %19, i64 80, !dbg !1515
  call void @llvm.dbg.value(metadata i8* %108, metadata !780, metadata !DIExpression()) #11, !dbg !1516
  %109 = bitcast i8* %108 to i8**, !dbg !1518
  store i8* %108, i8** %109, align 8, !dbg !1518
  %110 = getelementptr inbounds i8, i8* %19, i64 88, !dbg !1519
  %111 = bitcast i8* %110 to i8**, !dbg !1520
  store i8* %108, i8** %111, align 8, !dbg !1520
  br label %nk_fiber_create.exit, !dbg !1521

nk_fiber_create.exit:                             ; preds = %15, %31, %32
  %112 = phi i32 [ 0, %32 ], [ -22, %31 ], [ -22, %15 ], !dbg !1522
  %113 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1523
  %114 = call i32 @nk_fiber_run(%struct.nk_fiber* %113, i8 zeroext 1) #12, !dbg !1524
  br label %115, !dbg !1525

; <label>:115:                                    ; preds = %13, %nk_fiber_create.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1526
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1526
  ret i32 0, !dbg !1527
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !1327 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1528
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1529, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #11, !dbg !1529
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #11, !dbg !1531
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !1532
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !1532
  %7 = load i64, i64* %6, align 8, !dbg !1532
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1533
  %8 = bitcast i64* %2 to i8*, !dbg !1534
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1534
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #12, !dbg !1535
  %9 = call i8* @kmem_malloc(i64 8) #12, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %9, metadata !1332, metadata !DIExpression()), !dbg !1536
  %10 = icmp eq i8* %9, null, !dbg !1537
  br i1 %10, label %11, label %13, !dbg !1538

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1539
  br label %113, !dbg !1540

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !1541
  call void @llvm.dbg.value(metadata i64* %14, metadata !1331, metadata !DIExpression()), !dbg !1542
  %15 = load i64, i64* %2, align 8, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %15, metadata !1330, metadata !DIExpression()), !dbg !1544
  %16 = urem i64 %15, 5000, !dbg !1545
  store i64 %16, i64* %14, align 8, !dbg !1546
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1329, metadata !DIExpression(DW_OP_deref)), !dbg !1547
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %9, metadata !589, metadata !DIExpression()) #11, !dbg !1550
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1551
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1552
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1553
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !1554
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %9, metadata !606, metadata !DIExpression()) #11, !dbg !1557
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1559
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !609, metadata !DIExpression()) #11, !dbg !1560
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1561
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1562
  %17 = call i8* @kmem_malloc(i64 152) #12, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %17, metadata !612, metadata !DIExpression()) #11, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %17, metadata !610, metadata !DIExpression()) #11, !dbg !1561
  %18 = icmp eq i8* %17, null, !dbg !1564
  br i1 %18, label %nk_fiber_create.exit, label %19, !dbg !1565

; <label>:19:                                     ; preds = %13
  %20 = call i8* @memset(i8* nonnull %17, i8 signext 0, i64 152) #12, !dbg !1566
  %21 = getelementptr inbounds i8, i8* %17, i64 44, !dbg !1567
  %22 = bitcast i8* %21 to i32*, !dbg !1567
  store i32 0, i32* %22, align 4, !dbg !1568
  %23 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !1569
  %24 = bitcast i8* %23 to i64*, !dbg !1569
  store i64 2097152, i64* %24, align 8, !dbg !1570
  %25 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %25, metadata !614, metadata !DIExpression()) #11, !dbg !1571
  %26 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !1572
  %27 = bitcast i8* %26 to i8**, !dbg !1572
  store i8* %25, i8** %27, align 8, !dbg !1573
  %28 = icmp eq i8* %25, null, !dbg !1574
  br i1 %28, label %29, label %30, !dbg !1575

; <label>:29:                                     ; preds = %19
  call void @kmem_free(i8* nonnull %17) #12, !dbg !1576
  br label %nk_fiber_create.exit, !dbg !1577

; <label>:30:                                     ; preds = %19
  %31 = ptrtoint i8* %25 to i64, !dbg !1575
  %32 = getelementptr inbounds i8, i8* %17, i64 120, !dbg !1578
  %33 = bitcast i8* %32 to void (i8*, i8**)**, !dbg !1578
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %33, align 8, !dbg !1579
  %34 = getelementptr inbounds i8, i8* %17, i64 128, !dbg !1580
  %35 = bitcast i8* %34 to i8**, !dbg !1580
  store i8* %9, i8** %35, align 8, !dbg !1581
  %36 = getelementptr inbounds i8, i8* %17, i64 136, !dbg !1582
  %37 = bitcast i8* %36 to i8***, !dbg !1582
  store i8** null, i8*** %37, align 8, !dbg !1583
  call void @llvm.dbg.value(metadata i8* %17, metadata !648, metadata !DIExpression()) #11, !dbg !1584
  %38 = load i64, i64* %24, align 8, !dbg !1586
  %39 = bitcast i8* %17 to i64*, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1588
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1590
  %40 = add i64 %31, -8, !dbg !1591
  %41 = add i64 %40, %38, !dbg !1592
  store i64 %41, i64* %39, align 8, !dbg !1592
  %42 = inttoptr i64 %41 to i64*, !dbg !1593
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %42, align 8, !dbg !1594
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1595
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1597
  %43 = load i64, i64* %39, align 8, !dbg !1598
  %44 = add i64 %43, -8, !dbg !1598
  store i64 %44, i64* %39, align 8, !dbg !1598
  %45 = inttoptr i64 %44 to i64*, !dbg !1599
  store i64 0, i64* %45, align 8, !dbg !1600
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1601
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1603
  %46 = load i64, i64* %39, align 8, !dbg !1604
  %47 = add i64 %46, -8, !dbg !1604
  store i64 %47, i64* %39, align 8, !dbg !1604
  %48 = inttoptr i64 %47 to i64*, !dbg !1605
  store i64 0, i64* %48, align 8, !dbg !1606
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1607
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1609
  %49 = load i64, i64* %39, align 8, !dbg !1610
  %50 = add i64 %49, -8, !dbg !1610
  store i64 %50, i64* %39, align 8, !dbg !1610
  %51 = inttoptr i64 %50 to i64*, !dbg !1611
  store i64 0, i64* %51, align 8, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1613
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1615
  %52 = load i64, i64* %39, align 8, !dbg !1616
  %53 = add i64 %52, -8, !dbg !1616
  store i64 %53, i64* %39, align 8, !dbg !1616
  %54 = inttoptr i64 %53 to i64*, !dbg !1617
  store i64 0, i64* %54, align 8, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1621
  %55 = load i64, i64* %39, align 8, !dbg !1622
  %56 = add i64 %55, -8, !dbg !1622
  store i64 %56, i64* %39, align 8, !dbg !1622
  %57 = inttoptr i64 %56 to i64*, !dbg !1623
  store i64 0, i64* %57, align 8, !dbg !1624
  %58 = ptrtoint i8* %17 to i64, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %58, metadata !662, metadata !DIExpression()) #11, !dbg !1628
  %59 = load i64, i64* %39, align 8, !dbg !1629
  %60 = add i64 %59, -8, !dbg !1629
  store i64 %60, i64* %39, align 8, !dbg !1629
  %61 = inttoptr i64 %60 to i64*, !dbg !1630
  store i64 %58, i64* %61, align 8, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1632
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1634
  %62 = load i64, i64* %39, align 8, !dbg !1635
  %63 = add i64 %62, -8, !dbg !1635
  store i64 %63, i64* %39, align 8, !dbg !1635
  %64 = inttoptr i64 %63 to i64*, !dbg !1636
  store i64 0, i64* %64, align 8, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1640
  %65 = load i64, i64* %39, align 8, !dbg !1641
  %66 = add i64 %65, -8, !dbg !1641
  store i64 %66, i64* %39, align 8, !dbg !1641
  %67 = inttoptr i64 %66 to i64*, !dbg !1642
  store i64 0, i64* %67, align 8, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1646
  %68 = load i64, i64* %39, align 8, !dbg !1647
  %69 = add i64 %68, -8, !dbg !1647
  store i64 %69, i64* %39, align 8, !dbg !1647
  %70 = inttoptr i64 %69 to i64*, !dbg !1648
  store i64 0, i64* %70, align 8, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1650
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1652
  %71 = load i64, i64* %39, align 8, !dbg !1653
  %72 = add i64 %71, -8, !dbg !1653
  store i64 %72, i64* %39, align 8, !dbg !1653
  %73 = inttoptr i64 %72 to i64*, !dbg !1654
  store i64 0, i64* %73, align 8, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1656
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1658
  %74 = load i64, i64* %39, align 8, !dbg !1659
  %75 = add i64 %74, -8, !dbg !1659
  store i64 %75, i64* %39, align 8, !dbg !1659
  %76 = inttoptr i64 %75 to i64*, !dbg !1660
  store i64 0, i64* %76, align 8, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1664
  %77 = load i64, i64* %39, align 8, !dbg !1665
  %78 = add i64 %77, -8, !dbg !1665
  store i64 %78, i64* %39, align 8, !dbg !1665
  %79 = inttoptr i64 %78 to i64*, !dbg !1666
  store i64 0, i64* %79, align 8, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1668
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1670
  %80 = load i64, i64* %39, align 8, !dbg !1671
  %81 = add i64 %80, -8, !dbg !1671
  store i64 %81, i64* %39, align 8, !dbg !1671
  %82 = inttoptr i64 %81 to i64*, !dbg !1672
  store i64 0, i64* %82, align 8, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1674
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1676
  %83 = load i64, i64* %39, align 8, !dbg !1677
  %84 = add i64 %83, -8, !dbg !1677
  store i64 %84, i64* %39, align 8, !dbg !1677
  %85 = inttoptr i64 %84 to i64*, !dbg !1678
  store i64 0, i64* %85, align 8, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1680
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1682
  %86 = load i64, i64* %39, align 8, !dbg !1683
  %87 = add i64 %86, -8, !dbg !1683
  store i64 %87, i64* %39, align 8, !dbg !1683
  %88 = inttoptr i64 %87 to i64*, !dbg !1684
  store i64 0, i64* %88, align 8, !dbg !1685
  %89 = bitcast %struct.nk_fiber** %1 to i8**, !dbg !1686
  store i8* %17, i8** %89, align 8, !dbg !1686
  %90 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1687, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !772, metadata !DIExpression()) #11, !dbg !1687
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !771, metadata !DIExpression()) #11, !dbg !1689
  %91 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %90, i64 0, i32 24, !dbg !1690
  %92 = bitcast %struct.nk_virtual_console** %91 to i64*, !dbg !1690
  %93 = load i64, i64* %92, align 8, !dbg !1690
  %94 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !1691
  %95 = bitcast i8* %94 to i64*, !dbg !1692
  store i64 %93, i64* %95, align 8, !dbg !1692
  %96 = getelementptr inbounds i8, i8* %17, i64 104, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()) #11, !dbg !1694
  %97 = bitcast i8* %96 to i8**, !dbg !1696
  store i8* %96, i8** %97, align 8, !dbg !1696
  %98 = getelementptr inbounds i8, i8* %17, i64 112, !dbg !1697
  %99 = bitcast i8* %98 to i8**, !dbg !1698
  store i8* %96, i8** %99, align 8, !dbg !1698
  %100 = getelementptr inbounds i8, i8* %17, i64 96, !dbg !1699
  %101 = bitcast i8* %100 to i32*, !dbg !1699
  store i32 0, i32* %101, align 8, !dbg !1700
  %102 = getelementptr inbounds i8, i8* %17, i64 64, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %102, metadata !780, metadata !DIExpression()) #11, !dbg !1702
  %103 = bitcast i8* %102 to i8**, !dbg !1704
  store i8* %102, i8** %103, align 8, !dbg !1704
  %104 = getelementptr inbounds i8, i8* %17, i64 72, !dbg !1705
  %105 = bitcast i8* %104 to i8**, !dbg !1706
  store i8* %102, i8** %105, align 8, !dbg !1706
  %106 = getelementptr inbounds i8, i8* %17, i64 80, !dbg !1707
  call void @llvm.dbg.value(metadata i8* %106, metadata !780, metadata !DIExpression()) #11, !dbg !1708
  %107 = bitcast i8* %106 to i8**, !dbg !1710
  store i8* %106, i8** %107, align 8, !dbg !1710
  %108 = getelementptr inbounds i8, i8* %17, i64 88, !dbg !1711
  %109 = bitcast i8* %108 to i8**, !dbg !1712
  store i8* %106, i8** %109, align 8, !dbg !1712
  br label %nk_fiber_create.exit, !dbg !1713

nk_fiber_create.exit:                             ; preds = %13, %29, %30
  %110 = phi i32 [ 0, %30 ], [ -22, %29 ], [ -22, %13 ], !dbg !1714
  %111 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1715
  %112 = call i32 @nk_fiber_run(%struct.nk_fiber* %111, i8 zeroext 1) #12, !dbg !1716
  br label %113, !dbg !1717

; <label>:113:                                    ; preds = %nk_fiber_create.exit, %11
  %114 = phi i32 [ 0, %nk_fiber_create.exit ], [ -1, %11 ], !dbg !1718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1719
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1719
  ret i32 %114, !dbg !1719
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1010 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1720
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1722
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1723
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1723
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1724
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1103 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1725
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1728
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1729
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1729
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1730
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1730
  ret %struct.nk_fiber* %6, !dbg !1731
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1113 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1732
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1735
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1736
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1736
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1737
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1737
  ret %struct.nk_fiber* %6, !dbg !1738
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1016 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1739
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1742
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1743
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1743
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1744
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1744
  ret %struct.nk_thread* %6, !dbg !1745
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1034 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1746
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1749
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1750
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1750
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1751
  ret %struct.list_head* %5, !dbg !1752
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !658 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %1, metadata !662, metadata !DIExpression()), !dbg !1754
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1755
  %4 = load i64, i64* %3, align 8, !dbg !1756
  %5 = add i64 %4, -8, !dbg !1756
  store i64 %5, i64* %3, align 8, !dbg !1756
  %6 = inttoptr i64 %5 to i64*, !dbg !1757
  store i64 %1, i64* %6, align 8, !dbg !1758
  ret void, !dbg !1759
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1038 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1760
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1764
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1765
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1765
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1766
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1042, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1060, metadata !DIExpression()), !dbg !1769
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1771
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1771
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1772
  br i1 %8, label %20, label %9, !dbg !1773

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()), !dbg !1774
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1774
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1774
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1044, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1043, metadata !DIExpression()), !dbg !1768
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1072, metadata !DIExpression()), !dbg !1776
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1778
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1778
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1779
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1079, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1084, metadata !DIExpression()), !dbg !1782
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1783
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1784
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1785
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1786
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !780, metadata !DIExpression()), !dbg !1787
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1789
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1789
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1790
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1790
  br label %20, !dbg !1791

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1792
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1043, metadata !DIExpression()), !dbg !1768
  ret %struct.nk_fiber* %21, !dbg !1793
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1794 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1796, metadata !DIExpression()), !dbg !1807
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1808
  store i32 4, i32* %3, align 4, !dbg !1809
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1797, metadata !DIExpression()), !dbg !1810
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1811
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1799, metadata !DIExpression()), !dbg !1812
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1813
  %6 = load i32, i32* %5, align 8, !dbg !1813
  %7 = icmp sgt i32 %6, 0, !dbg !1814
  br i1 %7, label %8, label %66, !dbg !1815

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1815

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1800, metadata !DIExpression()), !dbg !1816
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1817
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1817
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1816
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1816
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1816
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1800, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1798, metadata !DIExpression()), !dbg !1818
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1072, metadata !DIExpression()), !dbg !1820
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1822
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1822
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1823
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1079, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1084, metadata !DIExpression()), !dbg !1826
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1827
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1828
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1829
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1830
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !780, metadata !DIExpression()), !dbg !1831
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1833
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1834
  %24 = load i32, i32* %5, align 8, !dbg !1835
  %25 = add i32 %24, -1, !dbg !1835
  store i32 %25, i32* %5, align 8, !dbg !1835
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1836
  br i1 %26, label %63, label %27, !dbg !1838

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1839, metadata !DIExpression()) #11, !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1844, metadata !DIExpression()) #11, !dbg !1850
  %28 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %28, metadata !1845, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1855
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1856, !srcloc !1876
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1863, metadata !DIExpression()) #11, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1862, metadata !DIExpression()) #11, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1861, metadata !DIExpression()) #11, !dbg !1878
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1879
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1886
  %30 = load i64, i64* %2, align 8, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %30, metadata !1884, metadata !DIExpression()) #11, !dbg !1888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1889
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1890
  %32 = load i32, i32* %31, align 8, !dbg !1890
  %33 = zext i32 %32 to i64, !dbg !1891
  %34 = urem i64 %30, %33, !dbg !1892
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1893, !srcloc !1894
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1871, metadata !DIExpression()) #11, !dbg !1893
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1869, metadata !DIExpression()) #11, !dbg !1895
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1868, metadata !DIExpression()) #11, !dbg !1896
  %36 = shl nuw i64 %34, 32, !dbg !1897
  %37 = ashr exact i64 %36, 32, !dbg !1897
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1897
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1845, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1855
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1898
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1898
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1898
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1898
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1845, metadata !DIExpression()) #11, !dbg !1855
  %44 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1899
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1903
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1904
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1904
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1905
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1846, metadata !DIExpression()) #11, !dbg !1906
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1907
  store i32 1, i32* %49, align 4, !dbg !1908
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1909
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1910, metadata !DIExpression()) #11, !dbg !1914
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1913, metadata !DIExpression()) #11, !dbg !1916
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1917
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1917
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1918, metadata !DIExpression()) #11, !dbg !1925
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1923, metadata !DIExpression()) #11, !dbg !1927
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1924, metadata !DIExpression()) #11, !dbg !1928
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1929
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1930
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1931
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1932
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1933
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1934
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1935
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1936
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1936
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1938
  br i1 %58, label %61, label %59, !dbg !1939

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #12, !dbg !1940
  br label %61, !dbg !1942

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1813
  br label %63, !dbg !1813

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1813
  %65 = icmp sgt i32 %64, 0, !dbg !1814
  br i1 %65, label %11, label %66, !dbg !1815, !llvm.loop !1943

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1945
  store i8 1, i8* %67, align 8, !dbg !1946
  %68 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1947
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1952
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1953
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1953
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1954
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1042, metadata !DIExpression()) #11, !dbg !1955
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1060, metadata !DIExpression()) #11, !dbg !1957
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1959
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1959
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1960
  br i1 %75, label %88, label %76, !dbg !1961

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !1962
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1962
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1962
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1044, metadata !DIExpression()) #11, !dbg !1962
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1043, metadata !DIExpression()) #11, !dbg !1956
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1963
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1072, metadata !DIExpression()) #11, !dbg !1964
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1966
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1966
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1967
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1079, metadata !DIExpression()) #11, !dbg !1968
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1084, metadata !DIExpression()) #11, !dbg !1970
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1971
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1972
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1973
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1974
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !780, metadata !DIExpression()) #11, !dbg !1975
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1977
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1977
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1978
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1978
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1043, metadata !DIExpression()) #11, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1797, metadata !DIExpression()), !dbg !1810
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1979
  br i1 %87, label %88, label %95, !dbg !1981

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1982
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1987
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1988
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1988
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1989
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1989
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1797, metadata !DIExpression()), !dbg !1810
  br label %95, !dbg !1990

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1991
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1797, metadata !DIExpression()), !dbg !1810
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1992
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1995
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1996
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1996
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1997
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1998
  %102 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1999
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !2002
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !2003
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !2003
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !2004
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !2004
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !2005
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1072, metadata !DIExpression()), !dbg !2006
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !2008
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !2008
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !2009
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1079, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1084, metadata !DIExpression()), !dbg !2012
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !2013
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !2014
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !2015
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !780, metadata !DIExpression()), !dbg !2017
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !2019
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !2020
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !2021
  %116 = load i8*, i8** %115, align 8, !dbg !2021
  call void @kmem_free(i8* %116) #12, !dbg !2021
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !2022
  call void @kmem_free(i8* %117) #12, !dbg !2022
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #12, !dbg !2023
  ret void, !dbg !2024
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1840 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1839, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %1, metadata !1844, metadata !DIExpression()), !dbg !2026
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2027
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !2031
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1845, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2032
  %6 = icmp eq i8 %1, 0, !dbg !2033
  br i1 %6, label %20, label %7, !dbg !2034

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2035, !srcloc !1876
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1863, metadata !DIExpression()) #11, !dbg !2035
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1862, metadata !DIExpression()) #11, !dbg !2038
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1861, metadata !DIExpression()) #11, !dbg !2039
  %9 = bitcast i64* %3 to i8*, !dbg !2040
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !2040
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #12, !dbg !2042
  %10 = load i64, i64* %3, align 8, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %10, metadata !1884, metadata !DIExpression()) #11, !dbg !2044
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !2045
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !2046
  %12 = load i32, i32* %11, align 8, !dbg !2046
  %13 = zext i32 %12 to i64, !dbg !2047
  %14 = urem i64 %10, %13, !dbg !2048
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2049, !srcloc !1894
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1871, metadata !DIExpression()) #11, !dbg !2049
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1869, metadata !DIExpression()) #11, !dbg !2050
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1868, metadata !DIExpression()) #11, !dbg !2051
  %16 = shl nuw i64 %14, 32, !dbg !2052
  %17 = ashr exact i64 %16, 32, !dbg !2052
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !2052
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1845, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2032
  br label %20, !dbg !2053

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !2054
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !2054
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !2054
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !2054
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1845, metadata !DIExpression()), !dbg !2032
  %26 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2055
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !2059
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !2060
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !2060
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !2061
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1846, metadata !DIExpression()), !dbg !2062
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2063
  store i32 1, i32* %31, align 4, !dbg !2064
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2065
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1910, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1913, metadata !DIExpression()), !dbg !2068
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !2069
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !2069
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1918, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1923, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1924, metadata !DIExpression()), !dbg !2073
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !2074
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2075
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2076
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2077
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !2078
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !2079
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !2080
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !2081
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !2081
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !2082
  br i1 %40, label %43, label %41, !dbg !2083

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #12, !dbg !2084
  br label %43, !dbg !2085

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !2086
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !2087 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2089, metadata !DIExpression()), !dbg !2090
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !2091
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !2091
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !2092
  %5 = load i8*, i8** %4, align 8, !dbg !2092
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !2093
  %7 = load i8**, i8*** %6, align 8, !dbg !2093
  tail call void %3(i8* %5, i8** %7) #12, !dbg !2094
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #10, !dbg !2095
  ret void, !dbg !2096
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !649 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !648, metadata !DIExpression()), !dbg !2097
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !2098
  %3 = bitcast i8** %2 to i64*, !dbg !2098
  %4 = load i64, i64* %3, align 8, !dbg !2098
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !2099
  %6 = load i64, i64* %5, align 8, !dbg !2099
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !2100
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !2103
  %8 = add i64 %4, -8, !dbg !2104
  %9 = add i64 %8, %6, !dbg !2105
  store i64 %9, i64* %7, align 8, !dbg !2105
  %10 = inttoptr i64 %9 to i64*, !dbg !2106
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !2107
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2110
  %11 = load i64, i64* %7, align 8, !dbg !2111
  %12 = add i64 %11, -8, !dbg !2111
  store i64 %12, i64* %7, align 8, !dbg !2111
  %13 = inttoptr i64 %12 to i64*, !dbg !2112
  store i64 0, i64* %13, align 8, !dbg !2113
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2116
  %14 = load i64, i64* %7, align 8, !dbg !2117
  %15 = add i64 %14, -8, !dbg !2117
  store i64 %15, i64* %7, align 8, !dbg !2117
  %16 = inttoptr i64 %15 to i64*, !dbg !2118
  store i64 0, i64* %16, align 8, !dbg !2119
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2122
  %17 = load i64, i64* %7, align 8, !dbg !2123
  %18 = add i64 %17, -8, !dbg !2123
  store i64 %18, i64* %7, align 8, !dbg !2123
  %19 = inttoptr i64 %18 to i64*, !dbg !2124
  store i64 0, i64* %19, align 8, !dbg !2125
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2128
  %20 = load i64, i64* %7, align 8, !dbg !2129
  %21 = add i64 %20, -8, !dbg !2129
  store i64 %21, i64* %7, align 8, !dbg !2129
  %22 = inttoptr i64 %21 to i64*, !dbg !2130
  store i64 0, i64* %22, align 8, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2134
  %23 = load i64, i64* %7, align 8, !dbg !2135
  %24 = add i64 %23, -8, !dbg !2135
  store i64 %24, i64* %7, align 8, !dbg !2135
  %25 = inttoptr i64 %24 to i64*, !dbg !2136
  store i64 0, i64* %25, align 8, !dbg !2137
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !2138
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %26, metadata !662, metadata !DIExpression()), !dbg !2141
  %27 = load i64, i64* %7, align 8, !dbg !2142
  %28 = add i64 %27, -8, !dbg !2142
  store i64 %28, i64* %7, align 8, !dbg !2142
  %29 = inttoptr i64 %28 to i64*, !dbg !2143
  store i64 %26, i64* %29, align 8, !dbg !2144
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2147
  %30 = load i64, i64* %7, align 8, !dbg !2148
  %31 = add i64 %30, -8, !dbg !2148
  store i64 %31, i64* %7, align 8, !dbg !2148
  %32 = inttoptr i64 %31 to i64*, !dbg !2149
  store i64 0, i64* %32, align 8, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2153
  %33 = load i64, i64* %7, align 8, !dbg !2154
  %34 = add i64 %33, -8, !dbg !2154
  store i64 %34, i64* %7, align 8, !dbg !2154
  %35 = inttoptr i64 %34 to i64*, !dbg !2155
  store i64 0, i64* %35, align 8, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2159
  %36 = load i64, i64* %7, align 8, !dbg !2160
  %37 = add i64 %36, -8, !dbg !2160
  store i64 %37, i64* %7, align 8, !dbg !2160
  %38 = inttoptr i64 %37 to i64*, !dbg !2161
  store i64 0, i64* %38, align 8, !dbg !2162
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2165
  %39 = load i64, i64* %7, align 8, !dbg !2166
  %40 = add i64 %39, -8, !dbg !2166
  store i64 %40, i64* %7, align 8, !dbg !2166
  %41 = inttoptr i64 %40 to i64*, !dbg !2167
  store i64 0, i64* %41, align 8, !dbg !2168
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2171
  %42 = load i64, i64* %7, align 8, !dbg !2172
  %43 = add i64 %42, -8, !dbg !2172
  store i64 %43, i64* %7, align 8, !dbg !2172
  %44 = inttoptr i64 %43 to i64*, !dbg !2173
  store i64 0, i64* %44, align 8, !dbg !2174
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2177
  %45 = load i64, i64* %7, align 8, !dbg !2178
  %46 = add i64 %45, -8, !dbg !2178
  store i64 %46, i64* %7, align 8, !dbg !2178
  %47 = inttoptr i64 %46 to i64*, !dbg !2179
  store i64 0, i64* %47, align 8, !dbg !2180
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2183
  %48 = load i64, i64* %7, align 8, !dbg !2184
  %49 = add i64 %48, -8, !dbg !2184
  store i64 %49, i64* %7, align 8, !dbg !2184
  %50 = inttoptr i64 %49 to i64*, !dbg !2185
  store i64 0, i64* %50, align 8, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2189
  %51 = load i64, i64* %7, align 8, !dbg !2190
  %52 = add i64 %51, -8, !dbg !2190
  store i64 %52, i64* %7, align 8, !dbg !2190
  %53 = inttoptr i64 %52 to i64*, !dbg !2191
  store i64 0, i64* %53, align 8, !dbg !2192
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2195
  %54 = load i64, i64* %7, align 8, !dbg !2196
  %55 = add i64 %54, -8, !dbg !2196
  store i64 %55, i64* %7, align 8, !dbg !2196
  %56 = inttoptr i64 %55 to i64*, !dbg !2197
  store i64 0, i64* %56, align 8, !dbg !2198
  ret void, !dbg !2199
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2204, metadata !DIExpression()), !dbg !2209
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2210
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2214
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2215
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2215
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2216
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2216
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2205, metadata !DIExpression()), !dbg !2217
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !2218
  %9 = load i32, i32* %8, align 4, !dbg !2218
  %10 = add i32 %9, -3, !dbg !2220
  %11 = icmp ult i32 %10, 2, !dbg !2220
  br i1 %11, label %13, label %12, !dbg !2220

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !2221
  br label %13, !dbg !2223

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2224
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !2228
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !2229
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !2229
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !2230
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !2230
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !2231
  br i1 %20, label %36, label %21, !dbg !2232

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !2233
  %23 = icmp eq i32 %22, 3, !dbg !2234
  br i1 %23, label %36, label %24, !dbg !2235

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2236
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2240
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2241
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2241
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2242
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2206, metadata !DIExpression()), !dbg !2243
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2244
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1910, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1913, metadata !DIExpression()), !dbg !2247
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2248
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1918, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1923, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1924, metadata !DIExpression()), !dbg !2252
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2253
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2254
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2255
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2256
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2257
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2258
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2259
  br label %36, !dbg !2260

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2261
  %38 = load i32, i32* %37, align 8, !dbg !2261
  %39 = icmp eq i32 %38, 0, !dbg !2263
  br i1 %39, label %40, label %55, !dbg !2264

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2265
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2265
  %43 = load i64, i64* %42, align 8, !dbg !2265
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2267, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2273
  %44 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2275
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2279
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2280
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2280
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2281
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2272, metadata !DIExpression()) #11, !dbg !2282
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2283
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2284
  store i64 %43, i64* %51, align 8, !dbg !2284
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2285, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !772, metadata !DIExpression()) #11, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !771, metadata !DIExpression()) #11, !dbg !2287
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2288
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2289
  store i64 %43, i64* %54, align 8, !dbg !2289
  br label %55, !dbg !2290

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2291
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2294
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2295
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2295
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2296
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2297
  store i32 1, i32* %8, align 4, !dbg !2298
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2299
  store i32 5, i32* %61, align 4, !dbg !2300
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #12, !dbg !2301
  ret i32 0, !dbg !2302
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2268 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2267, metadata !DIExpression()), !dbg !2303
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2304
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2308
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2309
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2309
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2310
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2272, metadata !DIExpression()), !dbg !2311
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2312
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2313
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2314, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !772, metadata !DIExpression()) #11, !dbg !2314
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !771, metadata !DIExpression()) #11, !dbg !2316
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2317
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2318
  ret void, !dbg !2319
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2320 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2325
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2329
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2330
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2330
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2331
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2331
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2324, metadata !DIExpression()), !dbg !2332
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #10, !dbg !2333
  ret void, !dbg !2334
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2335 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2339, metadata !DIExpression()), !dbg !2342
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2343
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2347
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2348
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2348
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2349
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2349
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2340, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2351
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2352
  %9 = zext i1 %8 to i8, !dbg !2354
  call void @llvm.dbg.value(metadata i8 %9, metadata !2341, metadata !DIExpression()), !dbg !2351
  ret i8 %9, !dbg !2355
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1865 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2356, !srcloc !1876
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1863, metadata !DIExpression()) #11, !dbg !2356
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1862, metadata !DIExpression()) #11, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1861, metadata !DIExpression()) #11, !dbg !2359
  %3 = bitcast i64* %1 to i8*, !dbg !2360
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2360
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #12, !dbg !2362
  %4 = load i64, i64* %1, align 8, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %4, metadata !1884, metadata !DIExpression()) #11, !dbg !2364
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2365
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2366
  %6 = load i32, i32* %5, align 8, !dbg !2366
  %7 = zext i32 %6 to i64, !dbg !2367
  %8 = urem i64 %4, %7, !dbg !2368
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2369, !srcloc !1894
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1871, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1869, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1868, metadata !DIExpression()), !dbg !2371
  %10 = shl nuw i64 %8, 32, !dbg !2372
  %11 = ashr exact i64 %10, 32, !dbg !2372
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2372
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2372
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2373
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2373
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2374
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2374
  ret %struct.nk_thread* %17, !dbg !2375
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2376 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2378, metadata !DIExpression()), !dbg !2397
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2398, !srcloc !2399
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2382, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2380, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2379, metadata !DIExpression()), !dbg !2401
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2402
  %4 = load i32, i32* %3, align 8, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %4, metadata !2384, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression()), !dbg !2404
  %5 = icmp sgt i32 %4, 0, !dbg !2405
  br i1 %5, label %6, label %38, !dbg !2406

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2407
  br label %8, !dbg !2407

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2387, metadata !DIExpression()), !dbg !2404
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2407
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2407
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2408
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2408
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2409
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2385, metadata !DIExpression()), !dbg !2410
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2411
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2389, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  call void @llvm.dbg.value(metadata i8** %15, metadata !2386, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2412
  %16 = load i8*, i8** %15, align 8, !dbg !2413
  br label %17, !dbg !2414

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2413
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2415
  %20 = bitcast i8* %18 to i8**, !dbg !2415
  %21 = load i8*, i8** %20, align 8, !dbg !2415
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2415
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2415
  br i1 %22, label %27, label %23, !dbg !2414

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2413
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2386, metadata !DIExpression()), !dbg !2412
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2416
  br i1 %26, label %30, label %17, !dbg !2419, !llvm.loop !2420

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i32 undef, metadata !2387, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2404
  %29 = icmp slt i64 %28, %7, !dbg !2405
  br i1 %29, label %8, label %38, !dbg !2406, !llvm.loop !2423

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1072, metadata !DIExpression()), !dbg !2427
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2429
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2429
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2430
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2430
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1079, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1084, metadata !DIExpression()), !dbg !2433
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2434
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2435
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2436
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !780, metadata !DIExpression()), !dbg !2438
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2440
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2441
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2442
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2443 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2472, !srcloc !2473
  call void @llvm.dbg.value(metadata i32 %1, metadata !2448, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %1, metadata !2446, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()), !dbg !2475
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2476
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2478
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2450, metadata !DIExpression()), !dbg !2479
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2480
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2481
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2482
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2483
  br i1 %6, label %7, label %109, !dbg !2484

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2485
  %9 = icmp eq i64 %8, 0, !dbg !2491
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %10, metadata !2496, metadata !DIExpression()) #11, !dbg !2498
  %11 = icmp eq i64 %10, 0, !dbg !2499
  br i1 %11, label %17, label %12, !dbg !2501

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2502
  %14 = inttoptr i64 %13 to i16*, !dbg !2504
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2505
  %16 = zext i16 %15 to i32, !dbg !2505
  br label %17, !dbg !2506

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2507
  %19 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %19, metadata !2512, metadata !DIExpression()) #11, !dbg !2514
  %20 = icmp eq i64 %19, 0, !dbg !2515
  br i1 %20, label %25, label %21, !dbg !2517

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2518
  %23 = inttoptr i64 %22 to i16*, !dbg !2520
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2521
  br label %25, !dbg !2522

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2523

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2451, metadata !DIExpression()), !dbg !2524
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2525, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !2525
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2457, metadata !DIExpression()), !dbg !2524
  %28 = tail call i32 @nk_vc_is_active() #12, !dbg !2528
  %29 = icmp eq i32 %28, 0, !dbg !2528
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2529
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %31, metadata !2536, metadata !DIExpression()) #11, !dbg !2540
  %32 = icmp eq i64 %31, 0, !dbg !2541
  br i1 %32, label %38, label %33, !dbg !2543

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2544
  %35 = inttoptr i64 %34 to i16*, !dbg !2546
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2547
  %37 = icmp eq i16 %36, 0, !dbg !2548
  br i1 %37, label %38, label %39, !dbg !2529

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2529

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2529
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2529
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2529
  br i1 %29, label %60, label %44, !dbg !2549

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2550

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2550
  %47 = load i64, i64* %46, align 32, !dbg !2550
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2550
  %49 = load i8, i8* %48, align 8, !dbg !2550
  %50 = icmp eq i8 %49, 0, !dbg !2550
  br i1 %50, label %51, label %56, !dbg !2550

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2550
  %53 = load i8, i8* %52, align 64, !dbg !2550
  %54 = icmp eq i8 %53, 0, !dbg !2550
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !2550
  br label %56, !dbg !2550

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !2550
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2550
  br label %76, !dbg !2550

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2551

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2551
  %63 = load i64, i64* %62, align 32, !dbg !2551
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2551
  %65 = load i8, i8* %64, align 8, !dbg !2551
  %66 = icmp eq i8 %65, 0, !dbg !2551
  br i1 %66, label %67, label %72, !dbg !2551

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2551
  %69 = load i8, i8* %68, align 64, !dbg !2551
  %70 = icmp eq i8 %69, 0, !dbg !2551
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !2551
  br label %72, !dbg !2551

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !2551
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2551
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %77, metadata !2556, metadata !DIExpression()) #11, !dbg !2558
  %78 = icmp eq i64 %77, 0, !dbg !2559
  br i1 %78, label %109, label %79, !dbg !2561

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2562
  %81 = inttoptr i64 %80 to i16*, !dbg !2564
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2565
  br label %109, !dbg !2566

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2470, metadata !DIExpression()), !dbg !2567
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !2568
  %85 = icmp eq i32 %84, 0, !dbg !2568
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %86, metadata !2536, metadata !DIExpression()) #11, !dbg !2575
  %87 = icmp eq i64 %86, 0, !dbg !2576
  br i1 %87, label %93, label %88, !dbg !2577

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2578
  %90 = inttoptr i64 %89 to i16*, !dbg !2579
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2580
  %92 = icmp eq i16 %91, 0, !dbg !2581
  br i1 %92, label %93, label %94, !dbg !2582

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2582

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2582
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2582
  br i1 %85, label %100, label %98, !dbg !2583

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2584
  br label %102, !dbg !2584

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2586
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %103, metadata !2556, metadata !DIExpression()) #11, !dbg !2591
  %104 = icmp eq i64 %103, 0, !dbg !2592
  br i1 %104, label %109, label %105, !dbg !2593

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2594
  %107 = inttoptr i64 %106 to i16*, !dbg !2595
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2596
  br label %109, !dbg !2597

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2598
  ret i32 %110, !dbg !2599
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2600 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2632, !srcloc !2633
  call void @llvm.dbg.value(metadata i32 %1, metadata !2609, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %1, metadata !2607, metadata !DIExpression()), !dbg !2634
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #12, !dbg !2635
  call void @llvm.dbg.value(metadata i8* %2, metadata !2605, metadata !DIExpression()), !dbg !2635
  %3 = icmp eq i8* %2, null, !dbg !2636
  br i1 %3, label %4, label %106, !dbg !2637

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2638
  %6 = icmp eq i64 %5, 0, !dbg !2640
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %7, metadata !2496, metadata !DIExpression()) #11, !dbg !2644
  %8 = icmp eq i64 %7, 0, !dbg !2645
  br i1 %8, label %14, label %9, !dbg !2646

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2647
  %11 = inttoptr i64 %10 to i16*, !dbg !2648
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2649
  %13 = zext i16 %12 to i32, !dbg !2649
  br label %14, !dbg !2650

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2651
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %16, metadata !2512, metadata !DIExpression()) #11, !dbg !2655
  %17 = icmp eq i64 %16, 0, !dbg !2656
  br i1 %17, label %22, label %18, !dbg !2657

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2658
  %20 = inttoptr i64 %19 to i16*, !dbg !2659
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2660
  br label %22, !dbg !2661

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2662

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2611, metadata !DIExpression()), !dbg !2663
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2664, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2617, metadata !DIExpression()), !dbg !2663
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2667
  %26 = icmp eq i32 %25, 0, !dbg !2667
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2668
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %28, metadata !2536, metadata !DIExpression()) #11, !dbg !2673
  %29 = icmp eq i64 %28, 0, !dbg !2674
  br i1 %29, label %35, label %30, !dbg !2675

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2676
  %32 = inttoptr i64 %31 to i16*, !dbg !2677
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2678
  %34 = icmp eq i16 %33, 0, !dbg !2679
  br i1 %34, label %35, label %36, !dbg !2668

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2668

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2668
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2668
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2668
  br i1 %26, label %57, label %41, !dbg !2680

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2681

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2681
  %44 = load i64, i64* %43, align 32, !dbg !2681
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2681
  %46 = load i8, i8* %45, align 8, !dbg !2681
  %47 = icmp eq i8 %46, 0, !dbg !2681
  br i1 %47, label %48, label %53, !dbg !2681

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2681
  %50 = load i8, i8* %49, align 64, !dbg !2681
  %51 = icmp eq i8 %50, 0, !dbg !2681
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2681
  br label %53, !dbg !2681

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2681
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2681
  br label %73, !dbg !2681

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2682

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2682
  %60 = load i64, i64* %59, align 32, !dbg !2682
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2682
  %62 = load i8, i8* %61, align 8, !dbg !2682
  %63 = icmp eq i8 %62, 0, !dbg !2682
  br i1 %63, label %64, label %69, !dbg !2682

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2682
  %66 = load i8, i8* %65, align 64, !dbg !2682
  %67 = icmp eq i8 %66, 0, !dbg !2682
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2682
  br label %69, !dbg !2682

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2682
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2682
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %74, metadata !2556, metadata !DIExpression()) #11, !dbg !2686
  %75 = icmp eq i64 %74, 0, !dbg !2687
  br i1 %75, label %114, label %76, !dbg !2688

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2689
  %78 = inttoptr i64 %77 to i16*, !dbg !2690
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2691
  br label %114, !dbg !2692

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2630, metadata !DIExpression()), !dbg !2693
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2694
  %82 = icmp eq i32 %81, 0, !dbg !2694
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %83, metadata !2536, metadata !DIExpression()) #11, !dbg !2701
  %84 = icmp eq i64 %83, 0, !dbg !2702
  br i1 %84, label %90, label %85, !dbg !2703

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2704
  %87 = inttoptr i64 %86 to i16*, !dbg !2705
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2706
  %89 = icmp eq i16 %88, 0, !dbg !2707
  br i1 %89, label %90, label %91, !dbg !2708

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2708

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2708
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2708
  br i1 %82, label %97, label %95, !dbg !2709

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2710
  br label %99, !dbg !2710

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2712
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %100, metadata !2556, metadata !DIExpression()) #11, !dbg !2717
  %101 = icmp eq i64 %100, 0, !dbg !2718
  br i1 %101, label %114, label %102, !dbg !2719

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2720
  %104 = inttoptr i64 %103 to i16*, !dbg !2721
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2722
  br label %114, !dbg !2723

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2604, metadata !DIExpression()), !dbg !2725
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #12, !dbg !2726
  %109 = bitcast i8* %2 to i32*, !dbg !2727
  tail call void @spinlock_init(i32* %109) #12, !dbg !2728
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %110, metadata !780, metadata !DIExpression()), !dbg !2730
  %111 = bitcast i8* %110 to i8**, !dbg !2732
  store i8* %110, i8** %111, align 8, !dbg !2732
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2733
  %113 = bitcast i8* %112 to i8**, !dbg !2734
  store i8* %110, i8** %113, align 8, !dbg !2734
  br label %115, !dbg !2735

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #12, !dbg !2736
  br label %115, !dbg !2737

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2738
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2739
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2740 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2783
  %2 = zext i32 %1 to i64, !dbg !2784
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2784
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2784
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2742, metadata !DIExpression()), !dbg !2785
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2786
  %6 = icmp eq i64 %5, 0, !dbg !2788
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %7, metadata !2496, metadata !DIExpression()) #11, !dbg !2792
  %8 = icmp eq i64 %7, 0, !dbg !2793
  br i1 %8, label %14, label %9, !dbg !2794

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2795
  %11 = inttoptr i64 %10 to i16*, !dbg !2796
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2797
  %13 = zext i16 %12 to i32, !dbg !2797
  br label %14, !dbg !2798

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2799
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %16, metadata !2512, metadata !DIExpression()) #11, !dbg !2803
  %17 = icmp eq i64 %16, 0, !dbg !2804
  br i1 %17, label %22, label %18, !dbg !2805

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2806
  %20 = inttoptr i64 %19 to i16*, !dbg !2807
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2808
  br label %22, !dbg !2809

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2810

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2743, metadata !DIExpression()), !dbg !2811
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2812, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2812
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2814
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2747, metadata !DIExpression()), !dbg !2811
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2815
  %26 = icmp eq i32 %25, 0, !dbg !2815
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2816
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %28, metadata !2536, metadata !DIExpression()) #11, !dbg !2821
  %29 = icmp eq i64 %28, 0, !dbg !2822
  br i1 %29, label %35, label %30, !dbg !2823

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2824
  %32 = inttoptr i64 %31 to i16*, !dbg !2825
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2826
  %34 = icmp eq i16 %33, 0, !dbg !2827
  br i1 %34, label %35, label %36, !dbg !2816

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2816

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2816
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2816
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2816
  br i1 %26, label %57, label %41, !dbg !2828

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2829

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2829
  %44 = load i64, i64* %43, align 32, !dbg !2829
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2829
  %46 = load i8, i8* %45, align 8, !dbg !2829
  %47 = icmp eq i8 %46, 0, !dbg !2829
  br i1 %47, label %48, label %53, !dbg !2829

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2829
  %50 = load i8, i8* %49, align 64, !dbg !2829
  %51 = icmp eq i8 %50, 0, !dbg !2829
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2829
  br label %53, !dbg !2829

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2829
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #12, !dbg !2829
  br label %73, !dbg !2829

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2830

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2830
  %60 = load i64, i64* %59, align 32, !dbg !2830
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2830
  %62 = load i8, i8* %61, align 8, !dbg !2830
  %63 = icmp eq i8 %62, 0, !dbg !2830
  br i1 %63, label %64, label %69, !dbg !2830

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2830
  %66 = load i8, i8* %65, align 64, !dbg !2830
  %67 = icmp eq i8 %66, 0, !dbg !2830
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2830
  br label %69, !dbg !2830

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2830
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #12, !dbg !2830
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %74, metadata !2556, metadata !DIExpression()) #11, !dbg !2834
  %75 = icmp eq i64 %74, 0, !dbg !2835
  br i1 %75, label %106, label %76, !dbg !2836

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2837
  %78 = inttoptr i64 %77 to i16*, !dbg !2838
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2839
  br label %106, !dbg !2840

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2760, metadata !DIExpression()), !dbg !2841
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2842
  %82 = icmp eq i32 %81, 0, !dbg !2842
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %83, metadata !2536, metadata !DIExpression()) #11, !dbg !2849
  %84 = icmp eq i64 %83, 0, !dbg !2850
  br i1 %84, label %90, label %85, !dbg !2851

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2852
  %87 = inttoptr i64 %86 to i16*, !dbg !2853
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2854
  %89 = icmp eq i16 %88, 0, !dbg !2855
  br i1 %89, label %90, label %91, !dbg !2856

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2856

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2856
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2856
  br i1 %82, label %97, label %95, !dbg !2857

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2858
  br label %99, !dbg !2858

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2860
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %100, metadata !2556, metadata !DIExpression()) #11, !dbg !2865
  %101 = icmp eq i64 %100, 0, !dbg !2866
  br i1 %101, label %106, label %102, !dbg !2867

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2868
  %104 = inttoptr i64 %103 to i16*, !dbg !2869
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2870
  br label %106, !dbg !2871

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2872
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2873
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2874
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2875
  br i1 %109, label %110, label %212, !dbg !2876

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2877
  %112 = icmp eq i64 %111, 0, !dbg !2879
  %113 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %113, metadata !2496, metadata !DIExpression()) #11, !dbg !2883
  %114 = icmp eq i64 %113, 0, !dbg !2884
  br i1 %114, label %120, label %115, !dbg !2885

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2886
  %117 = inttoptr i64 %116 to i16*, !dbg !2887
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2888
  %119 = zext i16 %118 to i32, !dbg !2888
  br label %120, !dbg !2889

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2890
  %122 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %122, metadata !2512, metadata !DIExpression()) #11, !dbg !2894
  %123 = icmp eq i64 %122, 0, !dbg !2895
  br i1 %123, label %128, label %124, !dbg !2896

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2897
  %126 = inttoptr i64 %125 to i16*, !dbg !2898
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2899
  br label %128, !dbg !2900

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2901

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2762, metadata !DIExpression()), !dbg !2902
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2903, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !772, metadata !DIExpression()) #11, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !771, metadata !DIExpression()) #11, !dbg !2905
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2768, metadata !DIExpression()), !dbg !2902
  %131 = tail call i32 @nk_vc_is_active() #12, !dbg !2906
  %132 = icmp eq i32 %131, 0, !dbg !2906
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2907
  %134 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %134, metadata !2536, metadata !DIExpression()) #11, !dbg !2912
  %135 = icmp eq i64 %134, 0, !dbg !2913
  br i1 %135, label %141, label %136, !dbg !2914

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2915
  %138 = inttoptr i64 %137 to i16*, !dbg !2916
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2917
  %140 = icmp eq i16 %139, 0, !dbg !2918
  br i1 %140, label %141, label %142, !dbg !2907

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2907

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2907
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2907
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2907
  br i1 %132, label %163, label %147, !dbg !2919

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2920

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2920
  %150 = load i64, i64* %149, align 32, !dbg !2920
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2920
  %152 = load i8, i8* %151, align 8, !dbg !2920
  %153 = icmp eq i8 %152, 0, !dbg !2920
  br i1 %153, label %154, label %159, !dbg !2920

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2920
  %156 = load i8, i8* %155, align 64, !dbg !2920
  %157 = icmp eq i8 %156, 0, !dbg !2920
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !2920
  br label %159, !dbg !2920

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !2920
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2920
  br label %179, !dbg !2920

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2921

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2921
  %166 = load i64, i64* %165, align 32, !dbg !2921
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2921
  %168 = load i8, i8* %167, align 8, !dbg !2921
  %169 = icmp eq i8 %168, 0, !dbg !2921
  br i1 %169, label %170, label %175, !dbg !2921

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2921
  %172 = load i8, i8* %171, align 64, !dbg !2921
  %173 = icmp eq i8 %172, 0, !dbg !2921
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !2921
  br label %175, !dbg !2921

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !2921
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2921
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %180, metadata !2556, metadata !DIExpression()) #11, !dbg !2925
  %181 = icmp eq i64 %180, 0, !dbg !2926
  br i1 %181, label %212, label %182, !dbg !2927

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2928
  %184 = inttoptr i64 %183 to i16*, !dbg !2929
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2930
  br label %212, !dbg !2931

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2781, metadata !DIExpression()), !dbg !2932
  %187 = tail call i32 @nk_vc_is_active() #12, !dbg !2933
  %188 = icmp eq i32 %187, 0, !dbg !2933
  %189 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %189, metadata !2536, metadata !DIExpression()) #11, !dbg !2940
  %190 = icmp eq i64 %189, 0, !dbg !2941
  br i1 %190, label %196, label %191, !dbg !2942

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2943
  %193 = inttoptr i64 %192 to i16*, !dbg !2944
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2945
  %195 = icmp eq i16 %194, 0, !dbg !2946
  br i1 %195, label %196, label %197, !dbg !2947

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2947

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2947
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2947
  br i1 %188, label %203, label %201, !dbg !2948

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2949
  br label %205, !dbg !2949

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2951
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %206, metadata !2556, metadata !DIExpression()) #11, !dbg !2956
  %207 = icmp eq i64 %206, 0, !dbg !2957
  br i1 %207, label %212, label %208, !dbg !2958

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2959
  %210 = inttoptr i64 %209 to i16*, !dbg !2960
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2961
  br label %212, !dbg !2962

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2963
  ret i32 %213, !dbg !2964
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2965 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2967, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i8** undef, metadata !2968, metadata !DIExpression()), !dbg !3082
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3083, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !772, metadata !DIExpression()) #11, !dbg !3083
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !771, metadata !DIExpression()) #11, !dbg !3085
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !3086
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !3087
  %8 = icmp eq i32 %7, 0, !dbg !3087
  br i1 %8, label %111, label %9, !dbg !3088

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3089
  %11 = icmp eq i64 %10, 0, !dbg !3091
  %12 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %12, metadata !2496, metadata !DIExpression()) #11, !dbg !3095
  %13 = icmp eq i64 %12, 0, !dbg !3096
  br i1 %13, label %19, label %14, !dbg !3097

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !3098
  %16 = inttoptr i64 %15 to i16*, !dbg !3099
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !3100
  %18 = zext i16 %17 to i32, !dbg !3100
  br label %19, !dbg !3101

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !3102
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %21, metadata !2512, metadata !DIExpression()) #11, !dbg !3106
  %22 = icmp eq i64 %21, 0, !dbg !3107
  br i1 %22, label %27, label %23, !dbg !3108

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !3109
  %25 = inttoptr i64 %24 to i16*, !dbg !3110
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !3111
  br label %27, !dbg !3112

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !3113

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2969, metadata !DIExpression()), !dbg !3114
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3115, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !772, metadata !DIExpression()) #11, !dbg !3115
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !771, metadata !DIExpression()) #11, !dbg !3117
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2975, metadata !DIExpression()), !dbg !3114
  %30 = tail call i32 @nk_vc_is_active() #12, !dbg !3118
  %31 = icmp eq i32 %30, 0, !dbg !3118
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3119
  %33 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %33, metadata !2536, metadata !DIExpression()) #11, !dbg !3124
  %34 = icmp eq i64 %33, 0, !dbg !3125
  br i1 %34, label %40, label %35, !dbg !3126

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !3127
  %37 = inttoptr i64 %36 to i16*, !dbg !3128
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !3129
  %39 = icmp eq i16 %38, 0, !dbg !3130
  br i1 %39, label %40, label %41, !dbg !3119

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !3119

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !3119
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3119
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !3119
  br i1 %31, label %62, label %46, !dbg !3131

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !3132

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !3132
  %49 = load i64, i64* %48, align 32, !dbg !3132
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !3132
  %51 = load i8, i8* %50, align 8, !dbg !3132
  %52 = icmp eq i8 %51, 0, !dbg !3132
  br i1 %52, label %53, label %58, !dbg !3132

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !3132
  %55 = load i8, i8* %54, align 64, !dbg !3132
  %56 = icmp eq i8 %55, 0, !dbg !3132
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !3132
  br label %58, !dbg !3132

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !3132
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3132
  br label %78, !dbg !3132

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !3133

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !3133
  %65 = load i64, i64* %64, align 32, !dbg !3133
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !3133
  %67 = load i8, i8* %66, align 8, !dbg !3133
  %68 = icmp eq i8 %67, 0, !dbg !3133
  br i1 %68, label %69, label %74, !dbg !3133

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !3133
  %71 = load i8, i8* %70, align 64, !dbg !3133
  %72 = icmp eq i8 %71, 0, !dbg !3133
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !3133
  br label %74, !dbg !3133

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !3133
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3133
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %79, metadata !2556, metadata !DIExpression()) #11, !dbg !3137
  %80 = icmp eq i64 %79, 0, !dbg !3138
  br i1 %80, label %449, label %81, !dbg !3139

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !3140
  %83 = inttoptr i64 %82 to i16*, !dbg !3141
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !3142
  br label %449, !dbg !3143

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2988, metadata !DIExpression()), !dbg !3144
  %86 = tail call i32 @nk_vc_is_active() #12, !dbg !3145
  %87 = icmp eq i32 %86, 0, !dbg !3145
  %88 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %88, metadata !2536, metadata !DIExpression()) #11, !dbg !3152
  %89 = icmp eq i64 %88, 0, !dbg !3153
  br i1 %89, label %95, label %90, !dbg !3154

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !3155
  %92 = inttoptr i64 %91 to i16*, !dbg !3156
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !3157
  %94 = icmp eq i16 %93, 0, !dbg !3158
  br i1 %94, label %95, label %96, !dbg !3159

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !3159

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !3159
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3159
  br i1 %87, label %102, label %100, !dbg !3160

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3161
  br label %104, !dbg !3161

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3163
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %105, metadata !2556, metadata !DIExpression()) #11, !dbg !3168
  %106 = icmp eq i64 %105, 0, !dbg !3169
  br i1 %106, label %449, label %107, !dbg !3170

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3171
  %109 = inttoptr i64 %108 to i16*, !dbg !3172
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3173
  br label %449, !dbg !3174

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !3175
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3175
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !3176
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !3176
  store i64 100000000, i64* %113, align 8, !dbg !3176
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2990, metadata !DIExpression(DW_OP_deref)), !dbg !3176
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #12, !dbg !3177
  %115 = icmp eq i32 %114, 0, !dbg !3177
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3178
  br i1 %115, label %219, label %117, !dbg !3179

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !3180
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %119, metadata !2496, metadata !DIExpression()) #11, !dbg !3184
  %120 = icmp eq i64 %119, 0, !dbg !3185
  br i1 %120, label %126, label %121, !dbg !3186

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !3187
  %123 = inttoptr i64 %122 to i16*, !dbg !3188
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3189
  %125 = zext i16 %124 to i32, !dbg !3189
  br label %126, !dbg !3190

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !3191
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %128, metadata !2512, metadata !DIExpression()) #11, !dbg !3195
  %129 = icmp eq i64 %128, 0, !dbg !3196
  br i1 %129, label %134, label %130, !dbg !3197

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3198
  %132 = inttoptr i64 %131 to i16*, !dbg !3199
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3200
  br label %134, !dbg !3201

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !3202

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3016, metadata !DIExpression()), !dbg !3203
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3204, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !3204
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3022, metadata !DIExpression()), !dbg !3203
  %137 = call i32 @nk_vc_is_active() #12, !dbg !3207
  %138 = icmp eq i32 %137, 0, !dbg !3207
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3208
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %140, metadata !2536, metadata !DIExpression()) #11, !dbg !3213
  %141 = icmp eq i64 %140, 0, !dbg !3214
  br i1 %141, label %147, label %142, !dbg !3215

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3216
  %144 = inttoptr i64 %143 to i16*, !dbg !3217
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3218
  %146 = icmp eq i16 %145, 0, !dbg !3219
  br i1 %146, label %147, label %148, !dbg !3208

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !3208

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3208
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3208
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3208
  br i1 %138, label %169, label %153, !dbg !3220

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3221

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3221
  %156 = load i64, i64* %155, align 32, !dbg !3221
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3221
  %158 = load i8, i8* %157, align 8, !dbg !3221
  %159 = icmp eq i8 %158, 0, !dbg !3221
  br i1 %159, label %160, label %165, !dbg !3221

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3221
  %162 = load i8, i8* %161, align 64, !dbg !3221
  %163 = icmp eq i8 %162, 0, !dbg !3221
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3221
  br label %165, !dbg !3221

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3221
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3221
  br label %185, !dbg !3221

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3222

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3222
  %172 = load i64, i64* %171, align 32, !dbg !3222
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3222
  %174 = load i8, i8* %173, align 8, !dbg !3222
  %175 = icmp eq i8 %174, 0, !dbg !3222
  br i1 %175, label %176, label %181, !dbg !3222

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3222
  %178 = load i8, i8* %177, align 64, !dbg !3222
  %179 = icmp eq i8 %178, 0, !dbg !3222
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3222
  br label %181, !dbg !3222

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3222
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3222
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %186, metadata !2556, metadata !DIExpression()) #11, !dbg !3226
  %187 = icmp eq i64 %186, 0, !dbg !3227
  br i1 %187, label %218, label %188, !dbg !3228

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3229
  %190 = inttoptr i64 %189 to i16*, !dbg !3230
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3231
  br label %218, !dbg !3232

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3035, metadata !DIExpression()), !dbg !3233
  %193 = call i32 @nk_vc_is_active() #12, !dbg !3234
  %194 = icmp eq i32 %193, 0, !dbg !3234
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %195, metadata !2536, metadata !DIExpression()) #11, !dbg !3241
  %196 = icmp eq i64 %195, 0, !dbg !3242
  br i1 %196, label %202, label %197, !dbg !3243

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3244
  %199 = inttoptr i64 %198 to i16*, !dbg !3245
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3246
  %201 = icmp eq i16 %200, 0, !dbg !3247
  br i1 %201, label %202, label %203, !dbg !3248

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3248

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3248
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3248
  br i1 %194, label %209, label %207, !dbg !3249

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3250
  br label %211, !dbg !3250

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3252
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %212, metadata !2556, metadata !DIExpression()) #11, !dbg !3257
  %213 = icmp eq i64 %212, 0, !dbg !3258
  br i1 %213, label %218, label %214, !dbg !3259

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3260
  %216 = inttoptr i64 %215 to i16*, !dbg !3261
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3262
  br label %218, !dbg !3263

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #13, !dbg !3264
  unreachable, !dbg !3264

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3265
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3268
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !3037, metadata !DIExpression()), !dbg !3269
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3270
  br i1 %223, label %224, label %326, !dbg !3271

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3272
  %226 = icmp eq i64 %225, 0, !dbg !3274
  %227 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %227, metadata !2496, metadata !DIExpression()) #11, !dbg !3278
  %228 = icmp eq i64 %227, 0, !dbg !3279
  br i1 %228, label %234, label %229, !dbg !3280

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3281
  %231 = inttoptr i64 %230 to i16*, !dbg !3282
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3283
  %233 = zext i16 %232 to i32, !dbg !3283
  br label %234, !dbg !3284

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3285
  %236 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %236, metadata !2512, metadata !DIExpression()) #11, !dbg !3289
  %237 = icmp eq i64 %236, 0, !dbg !3290
  br i1 %237, label %242, label %238, !dbg !3291

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3292
  %240 = inttoptr i64 %239 to i16*, !dbg !3293
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3294
  br label %242, !dbg !3295

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3296

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3038, metadata !DIExpression()), !dbg !3297
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3298, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !772, metadata !DIExpression()) #11, !dbg !3298
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !771, metadata !DIExpression()) #11, !dbg !3300
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !3044, metadata !DIExpression()), !dbg !3297
  %245 = call i32 @nk_vc_is_active() #12, !dbg !3301
  %246 = icmp eq i32 %245, 0, !dbg !3301
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3302
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %248, metadata !2536, metadata !DIExpression()) #11, !dbg !3307
  %249 = icmp eq i64 %248, 0, !dbg !3308
  br i1 %249, label %255, label %250, !dbg !3309

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3310
  %252 = inttoptr i64 %251 to i16*, !dbg !3311
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3312
  %254 = icmp eq i16 %253, 0, !dbg !3313
  br i1 %254, label %255, label %256, !dbg !3302

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3302

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3302
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3302
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3302
  br i1 %246, label %277, label %261, !dbg !3314

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3315

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3315
  %264 = load i64, i64* %263, align 32, !dbg !3315
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3315
  %266 = load i8, i8* %265, align 8, !dbg !3315
  %267 = icmp eq i8 %266, 0, !dbg !3315
  br i1 %267, label %268, label %273, !dbg !3315

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3315
  %270 = load i8, i8* %269, align 64, !dbg !3315
  %271 = icmp eq i8 %270, 0, !dbg !3315
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !3315
  br label %273, !dbg !3315

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !3315
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3315
  br label %293, !dbg !3315

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3316

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3316
  %280 = load i64, i64* %279, align 32, !dbg !3316
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3316
  %282 = load i8, i8* %281, align 8, !dbg !3316
  %283 = icmp eq i8 %282, 0, !dbg !3316
  br i1 %283, label %284, label %289, !dbg !3316

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3316
  %286 = load i8, i8* %285, align 64, !dbg !3316
  %287 = icmp eq i8 %286, 0, !dbg !3316
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !3316
  br label %289, !dbg !3316

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !3316
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3316
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %294, metadata !2556, metadata !DIExpression()) #11, !dbg !3320
  %295 = icmp eq i64 %294, 0, !dbg !3321
  br i1 %295, label %326, label %296, !dbg !3322

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3323
  %298 = inttoptr i64 %297 to i16*, !dbg !3324
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3325
  br label %326, !dbg !3326

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3057, metadata !DIExpression()), !dbg !3327
  %301 = call i32 @nk_vc_is_active() #12, !dbg !3328
  %302 = icmp eq i32 %301, 0, !dbg !3328
  %303 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %303, metadata !2536, metadata !DIExpression()) #11, !dbg !3335
  %304 = icmp eq i64 %303, 0, !dbg !3336
  br i1 %304, label %310, label %305, !dbg !3337

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3338
  %307 = inttoptr i64 %306 to i16*, !dbg !3339
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3340
  %309 = icmp eq i16 %308, 0, !dbg !3341
  br i1 %309, label %310, label %311, !dbg !3342

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3342

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3342
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3342
  br i1 %302, label %317, label %315, !dbg !3343

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3344
  br label %319, !dbg !3344

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3346
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3348
  call void @llvm.dbg.value(metadata i64 %320, metadata !2556, metadata !DIExpression()) #11, !dbg !3351
  %321 = icmp eq i64 %320, 0, !dbg !3352
  br i1 %321, label %326, label %322, !dbg !3353

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3354
  %324 = inttoptr i64 %323 to i16*, !dbg !3355
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3356
  br label %326, !dbg !3357

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3358, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !772, metadata !DIExpression()) #11, !dbg !3358
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !771, metadata !DIExpression()) #11, !dbg !3360
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3361
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3362
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3363
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3363
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3059, metadata !DIExpression(DW_OP_deref)), !dbg !3364
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !3365
  %331 = icmp slt i32 %330, 0, !dbg !3366
  br i1 %331, label %332, label %434, !dbg !3367

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3368
  %334 = icmp eq i64 %333, 0, !dbg !3370
  %335 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %335, metadata !2496, metadata !DIExpression()) #11, !dbg !3374
  %336 = icmp eq i64 %335, 0, !dbg !3375
  br i1 %336, label %342, label %337, !dbg !3376

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3377
  %339 = inttoptr i64 %338 to i16*, !dbg !3378
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3379
  %341 = zext i16 %340 to i32, !dbg !3379
  br label %342, !dbg !3380

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3381
  %344 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %344, metadata !2512, metadata !DIExpression()) #11, !dbg !3385
  %345 = icmp eq i64 %344, 0, !dbg !3386
  br i1 %345, label %350, label %346, !dbg !3387

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3388
  %348 = inttoptr i64 %347 to i16*, !dbg !3389
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3390
  br label %350, !dbg !3391

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3392

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !3060, metadata !DIExpression()), !dbg !3393
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3394, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !772, metadata !DIExpression()) #11, !dbg !3394
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !771, metadata !DIExpression()) #11, !dbg !3396
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !3066, metadata !DIExpression()), !dbg !3393
  %353 = call i32 @nk_vc_is_active() #12, !dbg !3397
  %354 = icmp eq i32 %353, 0, !dbg !3397
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3398
  %356 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %356, metadata !2536, metadata !DIExpression()) #11, !dbg !3403
  %357 = icmp eq i64 %356, 0, !dbg !3404
  br i1 %357, label %363, label %358, !dbg !3405

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3406
  %360 = inttoptr i64 %359 to i16*, !dbg !3407
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3408
  %362 = icmp eq i16 %361, 0, !dbg !3409
  br i1 %362, label %363, label %364, !dbg !3398

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3398

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3398
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3398
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3398
  br i1 %354, label %385, label %369, !dbg !3410

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3411

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3411
  %372 = load i64, i64* %371, align 32, !dbg !3411
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3411
  %374 = load i8, i8* %373, align 8, !dbg !3411
  %375 = icmp eq i8 %374, 0, !dbg !3411
  br i1 %375, label %376, label %381, !dbg !3411

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3411
  %378 = load i8, i8* %377, align 64, !dbg !3411
  %379 = icmp eq i8 %378, 0, !dbg !3411
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !3411
  br label %381, !dbg !3411

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !3411
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3411
  br label %401, !dbg !3411

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3412

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3412
  %388 = load i64, i64* %387, align 32, !dbg !3412
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3412
  %390 = load i8, i8* %389, align 8, !dbg !3412
  %391 = icmp eq i8 %390, 0, !dbg !3412
  br i1 %391, label %392, label %397, !dbg !3412

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3412
  %394 = load i8, i8* %393, align 64, !dbg !3412
  %395 = icmp eq i8 %394, 0, !dbg !3412
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !3412
  br label %397, !dbg !3412

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !3412
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3412
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %402, metadata !2556, metadata !DIExpression()) #11, !dbg !3416
  %403 = icmp eq i64 %402, 0, !dbg !3417
  br i1 %403, label %434, label %404, !dbg !3418

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3419
  %406 = inttoptr i64 %405 to i16*, !dbg !3420
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3421
  br label %434, !dbg !3422

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !3079, metadata !DIExpression()), !dbg !3423
  %409 = call i32 @nk_vc_is_active() #12, !dbg !3424
  %410 = icmp eq i32 %409, 0, !dbg !3424
  %411 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %411, metadata !2536, metadata !DIExpression()) #11, !dbg !3431
  %412 = icmp eq i64 %411, 0, !dbg !3432
  br i1 %412, label %418, label %413, !dbg !3433

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3434
  %415 = inttoptr i64 %414 to i16*, !dbg !3435
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3436
  %417 = icmp eq i16 %416, 0, !dbg !3437
  br i1 %417, label %418, label %419, !dbg !3438

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3438

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3438
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3438
  br i1 %410, label %425, label %423, !dbg !3439

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3440
  br label %427, !dbg !3440

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3442
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %428, metadata !2556, metadata !DIExpression()) #11, !dbg !3447
  %429 = icmp eq i64 %428, 0, !dbg !3448
  br i1 %429, label %434, label %430, !dbg !3449

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3450
  %432 = inttoptr i64 %431 to i16*, !dbg !3451
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3452
  br label %434, !dbg !3453

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3454
  %436 = load i64, i64* %435, align 8, !dbg !3454
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3059, metadata !DIExpression(DW_OP_deref)), !dbg !3364
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3455
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3456
  store i64 %436, i64* %438, align 8, !dbg !3456
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3059, metadata !DIExpression(DW_OP_deref)), !dbg !3364
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3457
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3458
  store i64 %436, i64* %440, align 8, !dbg !3458
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3459
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3059, metadata !DIExpression()), !dbg !3364
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3460
  store i32 1, i32* %442, align 8, !dbg !3461
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3059, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2089, metadata !DIExpression()) #11, !dbg !3462
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3464
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3464
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3465
  %446 = load i8*, i8** %445, align 8, !dbg !3465
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3466
  %448 = load i8**, i8*** %447, align 8, !dbg !3466
  call void %444(i8* %446, i8** %448) #12, !dbg !3467
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #12, !dbg !3468
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3469
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3469
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3469
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8** %1, metadata !3473, metadata !DIExpression()), !dbg !3475
  br label %3, !dbg !3476

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3477
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3483
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3484
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3484
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !3485
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !3485
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3486, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !3486
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !3488
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !3489
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !3490

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3491
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !3496
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !3497
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !3497
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !3498
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1042, metadata !DIExpression()) #11, !dbg !3499
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1060, metadata !DIExpression()) #11, !dbg !3501
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !3503
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !3503
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !3504
  br i1 %20, label %33, label %21, !dbg !3505

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !3506
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !3506
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !3506
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1044, metadata !DIExpression()) #11, !dbg !3506
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1043, metadata !DIExpression()) #11, !dbg !3500
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !3507
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1072, metadata !DIExpression()) #11, !dbg !3508
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !3510
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !3510
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !3511
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1079, metadata !DIExpression()) #11, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1084, metadata !DIExpression()) #11, !dbg !3514
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !3515
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !3516
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !3517
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !3519
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !3521
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !3521
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !3522
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1043, metadata !DIExpression()) #11, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1021, metadata !DIExpression()) #11, !dbg !3523
  %32 = icmp eq %struct.list_head** %22, null, !dbg !3524
  br i1 %32, label %33, label %54, !dbg !3525

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3526
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !3530
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !3531
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !3531
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !3532
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !3532
  %40 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3533
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !3537
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !3538
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !3538
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !3539
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !3539
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !3540
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !3541

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3542
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !3546
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !3547
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !3547
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !3548
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !3548
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1021, metadata !DIExpression()) #11, !dbg !3523
  br label %54, !dbg !3549

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !3550
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1021, metadata !DIExpression()) #11, !dbg !3523
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !3551
  br label %nk_fiber_yield.exit, !dbg !3552

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !3550
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3553
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3558
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3559
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3559
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !3560
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !3561, metadata !DIExpression()), !dbg !3565
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !3567
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !3567
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !3564, metadata !DIExpression()), !dbg !3568
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !3569
  br i1 %65, label %66, label %70, !dbg !3570

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !3571
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !3571
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !3572
  br i1 %69, label %71, label %70, !dbg !3573

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !3574, !llvm.loop !3575

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #12, !dbg !3577
  br label %70, !dbg !3579
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !602 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !601, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8* %1, metadata !606, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8** %2, metadata !607, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 %3, metadata !608, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !609, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()), !dbg !3585
  %6 = icmp eq i64 %3, 0, !dbg !3586
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %7, metadata !611, metadata !DIExpression()), !dbg !3587
  %8 = tail call i8* @kmem_malloc(i64 152) #12, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %8, metadata !612, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %8, metadata !610, metadata !DIExpression()), !dbg !3585
  %9 = icmp eq i8* %8, null, !dbg !3589
  br i1 %9, label %104, label %10, !dbg !3590

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #12, !dbg !3591
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3592
  %13 = bitcast i8* %12 to i32*, !dbg !3592
  store i32 0, i32* %13, align 4, !dbg !3593
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3594
  %15 = bitcast i8* %14 to i64*, !dbg !3594
  store i64 %7, i64* %15, align 8, !dbg !3595
  %16 = tail call i8* @kmem_malloc(i64 %7) #12, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %16, metadata !614, metadata !DIExpression()), !dbg !3596
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3597
  %18 = bitcast i8* %17 to i8**, !dbg !3597
  store i8* %16, i8** %18, align 8, !dbg !3598
  %19 = icmp eq i8* %16, null, !dbg !3599
  br i1 %19, label %20, label %21, !dbg !3600

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #12, !dbg !3601
  br label %104, !dbg !3602

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3600
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3603
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3603
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3604
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3605
  %26 = bitcast i8* %25 to i8**, !dbg !3605
  store i8* %1, i8** %26, align 8, !dbg !3606
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3607
  %28 = bitcast i8* %27 to i8***, !dbg !3607
  store i8** %2, i8*** %28, align 8, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %8, metadata !648, metadata !DIExpression()), !dbg !3609
  %29 = load i64, i64* %15, align 8, !dbg !3611
  %30 = bitcast i8* %8 to i64*, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !3615
  %31 = add i64 %22, -8, !dbg !3616
  %32 = add i64 %31, %29, !dbg !3617
  store i64 %32, i64* %30, align 8, !dbg !3617
  %33 = inttoptr i64 %32 to i64*, !dbg !3618
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3622
  %34 = load i64, i64* %30, align 8, !dbg !3623
  %35 = add i64 %34, -8, !dbg !3623
  store i64 %35, i64* %30, align 8, !dbg !3623
  %36 = inttoptr i64 %35 to i64*, !dbg !3624
  store i64 0, i64* %36, align 8, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3628
  %37 = load i64, i64* %30, align 8, !dbg !3629
  %38 = add i64 %37, -8, !dbg !3629
  store i64 %38, i64* %30, align 8, !dbg !3629
  %39 = inttoptr i64 %38 to i64*, !dbg !3630
  store i64 0, i64* %39, align 8, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3634
  %40 = load i64, i64* %30, align 8, !dbg !3635
  %41 = add i64 %40, -8, !dbg !3635
  store i64 %41, i64* %30, align 8, !dbg !3635
  %42 = inttoptr i64 %41 to i64*, !dbg !3636
  store i64 0, i64* %42, align 8, !dbg !3637
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3640
  %43 = load i64, i64* %30, align 8, !dbg !3641
  %44 = add i64 %43, -8, !dbg !3641
  store i64 %44, i64* %30, align 8, !dbg !3641
  %45 = inttoptr i64 %44 to i64*, !dbg !3642
  store i64 0, i64* %45, align 8, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3646
  %46 = load i64, i64* %30, align 8, !dbg !3647
  %47 = add i64 %46, -8, !dbg !3647
  store i64 %47, i64* %30, align 8, !dbg !3647
  %48 = inttoptr i64 %47 to i64*, !dbg !3648
  store i64 0, i64* %48, align 8, !dbg !3649
  %49 = ptrtoint i8* %8 to i64, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %49, metadata !662, metadata !DIExpression()), !dbg !3653
  %50 = load i64, i64* %30, align 8, !dbg !3654
  %51 = add i64 %50, -8, !dbg !3654
  store i64 %51, i64* %30, align 8, !dbg !3654
  %52 = inttoptr i64 %51 to i64*, !dbg !3655
  store i64 %49, i64* %52, align 8, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3659
  %53 = load i64, i64* %30, align 8, !dbg !3660
  %54 = add i64 %53, -8, !dbg !3660
  store i64 %54, i64* %30, align 8, !dbg !3660
  %55 = inttoptr i64 %54 to i64*, !dbg !3661
  store i64 0, i64* %55, align 8, !dbg !3662
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3665
  %56 = load i64, i64* %30, align 8, !dbg !3666
  %57 = add i64 %56, -8, !dbg !3666
  store i64 %57, i64* %30, align 8, !dbg !3666
  %58 = inttoptr i64 %57 to i64*, !dbg !3667
  store i64 0, i64* %58, align 8, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3671
  %59 = load i64, i64* %30, align 8, !dbg !3672
  %60 = add i64 %59, -8, !dbg !3672
  store i64 %60, i64* %30, align 8, !dbg !3672
  %61 = inttoptr i64 %60 to i64*, !dbg !3673
  store i64 0, i64* %61, align 8, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3677
  %62 = load i64, i64* %30, align 8, !dbg !3678
  %63 = add i64 %62, -8, !dbg !3678
  store i64 %63, i64* %30, align 8, !dbg !3678
  %64 = inttoptr i64 %63 to i64*, !dbg !3679
  store i64 0, i64* %64, align 8, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3683
  %65 = load i64, i64* %30, align 8, !dbg !3684
  %66 = add i64 %65, -8, !dbg !3684
  store i64 %66, i64* %30, align 8, !dbg !3684
  %67 = inttoptr i64 %66 to i64*, !dbg !3685
  store i64 0, i64* %67, align 8, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3689
  %68 = load i64, i64* %30, align 8, !dbg !3690
  %69 = add i64 %68, -8, !dbg !3690
  store i64 %69, i64* %30, align 8, !dbg !3690
  %70 = inttoptr i64 %69 to i64*, !dbg !3691
  store i64 0, i64* %70, align 8, !dbg !3692
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3695
  %71 = load i64, i64* %30, align 8, !dbg !3696
  %72 = add i64 %71, -8, !dbg !3696
  store i64 %72, i64* %30, align 8, !dbg !3696
  %73 = inttoptr i64 %72 to i64*, !dbg !3697
  store i64 0, i64* %73, align 8, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3701
  %74 = load i64, i64* %30, align 8, !dbg !3702
  %75 = add i64 %74, -8, !dbg !3702
  store i64 %75, i64* %30, align 8, !dbg !3702
  %76 = inttoptr i64 %75 to i64*, !dbg !3703
  store i64 0, i64* %76, align 8, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3707
  %77 = load i64, i64* %30, align 8, !dbg !3708
  %78 = add i64 %77, -8, !dbg !3708
  store i64 %78, i64* %30, align 8, !dbg !3708
  %79 = inttoptr i64 %78 to i64*, !dbg !3709
  store i64 0, i64* %79, align 8, !dbg !3710
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3711
  br i1 %80, label %83, label %81, !dbg !3712

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3713
  store i8* %8, i8** %82, align 8, !dbg !3713
  br label %83, !dbg !3714

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3715, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !772, metadata !DIExpression()) #11, !dbg !3715
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !771, metadata !DIExpression()) #11, !dbg !3717
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3718
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3718
  %87 = load i64, i64* %86, align 8, !dbg !3718
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3719
  %89 = bitcast i8* %88 to i64*, !dbg !3720
  store i64 %87, i64* %89, align 8, !dbg !3720
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %90, metadata !780, metadata !DIExpression()), !dbg !3722
  %91 = bitcast i8* %90 to i8**, !dbg !3724
  store i8* %90, i8** %91, align 8, !dbg !3724
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3725
  %93 = bitcast i8* %92 to i8**, !dbg !3726
  store i8* %90, i8** %93, align 8, !dbg !3726
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3727
  %95 = bitcast i8* %94 to i32*, !dbg !3727
  store i32 0, i32* %95, align 8, !dbg !3728
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3729
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()), !dbg !3730
  %97 = bitcast i8* %96 to i8**, !dbg !3732
  store i8* %96, i8** %97, align 8, !dbg !3732
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3733
  %99 = bitcast i8* %98 to i8**, !dbg !3734
  store i8* %96, i8** %99, align 8, !dbg !3734
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %100, metadata !780, metadata !DIExpression()), !dbg !3736
  %101 = bitcast i8* %100 to i8**, !dbg !3738
  store i8* %100, i8** %101, align 8, !dbg !3738
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3739
  %103 = bitcast i8* %102 to i8**, !dbg !3740
  store i8* %100, i8** %103, align 8, !dbg !3740
  br label %104, !dbg !3741

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3742
  ret i32 %105, !dbg !3743
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !1019 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3744
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3748
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3749
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3749
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3750
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3750
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3751, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !772, metadata !DIExpression()) #11, !dbg !3751
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !771, metadata !DIExpression()) #11, !dbg !3753
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3754
  br i1 %8, label %9, label %54, !dbg !3755

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3756
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3761
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3762
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3762
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3763
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1042, metadata !DIExpression()) #11, !dbg !3764
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !3765
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1060, metadata !DIExpression()) #11, !dbg !3766
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3768
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3768
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3769
  br i1 %17, label %30, label %18, !dbg !3770

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !3771
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3771
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1044, metadata !DIExpression()) #11, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1043, metadata !DIExpression()) #11, !dbg !3765
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3772
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1072, metadata !DIExpression()) #11, !dbg !3773
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3775
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3775
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3776
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1079, metadata !DIExpression()) #11, !dbg !3777
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1084, metadata !DIExpression()) #11, !dbg !3779
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3780
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3781
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3782
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3783
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !780, metadata !DIExpression()) #11, !dbg !3784
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3786
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3786
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3787
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3787
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1043, metadata !DIExpression()) #11, !dbg !3765
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1021, metadata !DIExpression()), !dbg !3788
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3789
  br i1 %29, label %30, label %51, !dbg !3790

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3791
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3795
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3796
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3796
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3797
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3797
  %37 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3798
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3802
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3803
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3803
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3804
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3804
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3805
  br i1 %43, label %54, label %44, !dbg !3806

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3807
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3811
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3812
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3812
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3813
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3813
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !1021, metadata !DIExpression()), !dbg !3788
  br label %51, !dbg !3814

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3815
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !1021, metadata !DIExpression()), !dbg !3788
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #10, !dbg !3816
  br label %54, !dbg !3817

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3815
  ret i32 %55, !dbg !3818
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3819 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3862
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3864
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3821, metadata !DIExpression()), !dbg !3865
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3866
  %5 = icmp eq i64 %4, 0, !dbg !3868
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %6, metadata !2496, metadata !DIExpression()) #11, !dbg !3872
  %7 = icmp eq i64 %6, 0, !dbg !3873
  br i1 %7, label %13, label %8, !dbg !3874

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3875
  %10 = inttoptr i64 %9 to i16*, !dbg !3876
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3877
  %12 = zext i16 %11 to i32, !dbg !3877
  br label %13, !dbg !3878

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3879
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %15, metadata !2512, metadata !DIExpression()) #11, !dbg !3883
  %16 = icmp eq i64 %15, 0, !dbg !3884
  br i1 %16, label %21, label %17, !dbg !3885

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3886
  %19 = inttoptr i64 %18 to i16*, !dbg !3887
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3888
  br label %21, !dbg !3889

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3890

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3822, metadata !DIExpression()), !dbg !3891
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3892, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !772, metadata !DIExpression()) #11, !dbg !3892
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !771, metadata !DIExpression()) #11, !dbg !3894
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3826, metadata !DIExpression()), !dbg !3891
  %24 = tail call i32 @nk_vc_is_active() #12, !dbg !3895
  %25 = icmp eq i32 %24, 0, !dbg !3895
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3896
  %27 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %27, metadata !2536, metadata !DIExpression()) #11, !dbg !3901
  %28 = icmp eq i64 %27, 0, !dbg !3902
  br i1 %28, label %34, label %29, !dbg !3903

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3904
  %31 = inttoptr i64 %30 to i16*, !dbg !3905
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3906
  %33 = icmp eq i16 %32, 0, !dbg !3907
  br i1 %33, label %34, label %35, !dbg !3896

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3896

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3896
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3896
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3896
  br i1 %25, label %58, label %40, !dbg !3908

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3909

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3909
  %43 = load i64, i64* %42, align 32, !dbg !3909
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3909
  %45 = load i8, i8* %44, align 8, !dbg !3909
  %46 = icmp eq i8 %45, 0, !dbg !3909
  br i1 %46, label %47, label %52, !dbg !3909

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3909
  %49 = load i8, i8* %48, align 64, !dbg !3909
  %50 = icmp eq i8 %49, 0, !dbg !3909
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !3909
  br label %52, !dbg !3909

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !3909
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3909
  %56 = load i32, i32* %55, align 8, !dbg !3909
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #12, !dbg !3909
  br label %76, !dbg !3909

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3910

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3910
  %61 = load i64, i64* %60, align 32, !dbg !3910
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3910
  %63 = load i8, i8* %62, align 8, !dbg !3910
  %64 = icmp eq i8 %63, 0, !dbg !3910
  br i1 %64, label %65, label %70, !dbg !3910

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3910
  %67 = load i8, i8* %66, align 64, !dbg !3910
  %68 = icmp eq i8 %67, 0, !dbg !3910
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !3910
  br label %70, !dbg !3910

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !3910
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3910
  %74 = load i32, i32* %73, align 8, !dbg !3910
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #12, !dbg !3910
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3911
  call void @llvm.dbg.value(metadata i64 %77, metadata !2556, metadata !DIExpression()) #11, !dbg !3914
  %78 = icmp eq i64 %77, 0, !dbg !3915
  br i1 %78, label %111, label %79, !dbg !3916

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3917
  %81 = inttoptr i64 %80 to i16*, !dbg !3918
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3919
  br label %111, !dbg !3920

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3839, metadata !DIExpression()), !dbg !3921
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !3922
  %85 = icmp eq i32 %84, 0, !dbg !3922
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %86, metadata !2536, metadata !DIExpression()) #11, !dbg !3929
  %87 = icmp eq i64 %86, 0, !dbg !3930
  br i1 %87, label %93, label %88, !dbg !3931

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3932
  %90 = inttoptr i64 %89 to i16*, !dbg !3933
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3934
  %92 = icmp eq i16 %91, 0, !dbg !3935
  br i1 %92, label %93, label %94, !dbg !3936

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3936

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3936
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3936
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3936
  %99 = load i32, i32* %98, align 8, !dbg !3936
  br i1 %85, label %102, label %100, !dbg !3937

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3938
  br label %104, !dbg !3938

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3940
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %105, metadata !2556, metadata !DIExpression()) #11, !dbg !3945
  %106 = icmp eq i64 %105, 0, !dbg !3946
  br i1 %106, label %111, label %107, !dbg !3947

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3948
  %109 = inttoptr i64 %108 to i16*, !dbg !3949
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3950
  br label %111, !dbg !3951

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3952
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3952
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3983, !srcloc !3984
  call void @llvm.dbg.value(metadata i32 %113, metadata !3960, metadata !DIExpression()) #11, !dbg !3983
  call void @llvm.dbg.value(metadata i32 %113, metadata !3957, metadata !DIExpression()) #11, !dbg !3985
  call void @llvm.dbg.value(metadata i8** %1, metadata !3955, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3986
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #12, !dbg !3987
  %115 = icmp eq i32 %114, 0, !dbg !3987
  br i1 %115, label %321, label %116, !dbg !3988

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3989
  %118 = icmp eq i64 %117, 0, !dbg !3991
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %119, metadata !2496, metadata !DIExpression()) #11, !dbg !3995
  %120 = icmp eq i64 %119, 0, !dbg !3996
  br i1 %120, label %126, label %121, !dbg !3997

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3998
  %123 = inttoptr i64 %122 to i16*, !dbg !3999
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !4000
  %125 = zext i16 %124 to i32, !dbg !4000
  br label %126, !dbg !4001

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !4002
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4003
  call void @llvm.dbg.value(metadata i64 %128, metadata !2512, metadata !DIExpression()) #11, !dbg !4006
  %129 = icmp eq i64 %128, 0, !dbg !4007
  br i1 %129, label %134, label %130, !dbg !4008

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !4009
  %132 = inttoptr i64 %131 to i16*, !dbg !4010
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !4011
  br label %134, !dbg !4012

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !4013

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3962, metadata !DIExpression()) #11, !dbg !4014
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4015, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !4015
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !4017
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3967, metadata !DIExpression()) #11, !dbg !4014
  %137 = call i32 @nk_vc_is_active() #12, !dbg !4018
  %138 = icmp eq i32 %137, 0, !dbg !4018
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4019
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4020
  call void @llvm.dbg.value(metadata i64 %140, metadata !2536, metadata !DIExpression()) #11, !dbg !4024
  %141 = icmp eq i64 %140, 0, !dbg !4025
  br i1 %141, label %147, label %142, !dbg !4026

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !4027
  %144 = inttoptr i64 %143 to i16*, !dbg !4028
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !4029
  %146 = icmp eq i16 %145, 0, !dbg !4030
  br i1 %146, label %147, label %148, !dbg !4019

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !4019

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !4019
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4019
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !4019
  br i1 %138, label %169, label %153, !dbg !4031

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !4032

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4032
  %156 = load i64, i64* %155, align 32, !dbg !4032
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4032
  %158 = load i8, i8* %157, align 8, !dbg !4032
  %159 = icmp eq i8 %158, 0, !dbg !4032
  br i1 %159, label %160, label %165, !dbg !4032

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4032
  %162 = load i8, i8* %161, align 64, !dbg !4032
  %163 = icmp eq i8 %162, 0, !dbg !4032
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !4032
  br label %165, !dbg !4032

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !4032
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4032
  br label %185, !dbg !4032

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !4033

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4033
  %172 = load i64, i64* %171, align 32, !dbg !4033
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4033
  %174 = load i8, i8* %173, align 8, !dbg !4033
  %175 = icmp eq i8 %174, 0, !dbg !4033
  br i1 %175, label %176, label %181, !dbg !4033

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4033
  %178 = load i8, i8* %177, align 64, !dbg !4033
  %179 = icmp eq i8 %178, 0, !dbg !4033
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !4033
  br label %181, !dbg !4033

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !4033
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4033
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %186, metadata !2556, metadata !DIExpression()) #11, !dbg !4037
  %187 = icmp eq i64 %186, 0, !dbg !4038
  br i1 %187, label %218, label %188, !dbg !4039

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !4040
  %190 = inttoptr i64 %189 to i16*, !dbg !4041
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !4042
  br label %218, !dbg !4043

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3980, metadata !DIExpression()) #11, !dbg !4044
  %193 = call i32 @nk_vc_is_active() #12, !dbg !4045
  %194 = icmp eq i32 %193, 0, !dbg !4045
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4048
  call void @llvm.dbg.value(metadata i64 %195, metadata !2536, metadata !DIExpression()) #11, !dbg !4052
  %196 = icmp eq i64 %195, 0, !dbg !4053
  br i1 %196, label %202, label %197, !dbg !4054

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !4055
  %199 = inttoptr i64 %198 to i16*, !dbg !4056
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !4057
  %201 = icmp eq i16 %200, 0, !dbg !4058
  br i1 %201, label %202, label %203, !dbg !4059

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !4059

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !4059
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4059
  br i1 %194, label %209, label %207, !dbg !4060

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4061
  br label %211, !dbg !4061

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4063
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4065
  call void @llvm.dbg.value(metadata i64 %212, metadata !2556, metadata !DIExpression()) #11, !dbg !4068
  %213 = icmp eq i64 %212, 0, !dbg !4069
  br i1 %213, label %218, label %214, !dbg !4070

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !4071
  %216 = inttoptr i64 %215 to i16*, !dbg !4072
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !4073
  br label %218, !dbg !4074

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4075
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4076
  %220 = icmp eq i64 %219, 0, !dbg !4078
  %221 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4079
  call void @llvm.dbg.value(metadata i64 %221, metadata !2496, metadata !DIExpression()) #11, !dbg !4082
  %222 = icmp eq i64 %221, 0, !dbg !4083
  br i1 %222, label %228, label %223, !dbg !4084

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !4085
  %225 = inttoptr i64 %224 to i16*, !dbg !4086
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !4087
  %227 = zext i16 %226 to i32, !dbg !4087
  br label %228, !dbg !4088

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !4089
  %230 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %230, metadata !2512, metadata !DIExpression()) #11, !dbg !4093
  %231 = icmp eq i64 %230, 0, !dbg !4094
  br i1 %231, label %236, label %232, !dbg !4095

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !4096
  %234 = inttoptr i64 %233 to i16*, !dbg !4097
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !4098
  br label %236, !dbg !4099

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !4100

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3841, metadata !DIExpression()), !dbg !4101
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4102, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !772, metadata !DIExpression()) #11, !dbg !4102
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !771, metadata !DIExpression()) #11, !dbg !4104
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3847, metadata !DIExpression()), !dbg !4101
  %239 = call i32 @nk_vc_is_active() #12, !dbg !4105
  %240 = icmp eq i32 %239, 0, !dbg !4105
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4106
  %242 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4107
  call void @llvm.dbg.value(metadata i64 %242, metadata !2536, metadata !DIExpression()) #11, !dbg !4111
  %243 = icmp eq i64 %242, 0, !dbg !4112
  br i1 %243, label %249, label %244, !dbg !4113

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !4114
  %246 = inttoptr i64 %245 to i16*, !dbg !4115
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !4116
  %248 = icmp eq i16 %247, 0, !dbg !4117
  br i1 %248, label %249, label %250, !dbg !4106

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !4106

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !4106
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4106
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !4106
  br i1 %240, label %271, label %255, !dbg !4118

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !4119

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !4119
  %258 = load i64, i64* %257, align 32, !dbg !4119
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !4119
  %260 = load i8, i8* %259, align 8, !dbg !4119
  %261 = icmp eq i8 %260, 0, !dbg !4119
  br i1 %261, label %262, label %267, !dbg !4119

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !4119
  %264 = load i8, i8* %263, align 64, !dbg !4119
  %265 = icmp eq i8 %264, 0, !dbg !4119
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !4119
  br label %267, !dbg !4119

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !4119
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4119
  br label %287, !dbg !4119

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !4120

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !4120
  %274 = load i64, i64* %273, align 32, !dbg !4120
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !4120
  %276 = load i8, i8* %275, align 8, !dbg !4120
  %277 = icmp eq i8 %276, 0, !dbg !4120
  br i1 %277, label %278, label %283, !dbg !4120

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !4120
  %280 = load i8, i8* %279, align 64, !dbg !4120
  %281 = icmp eq i8 %280, 0, !dbg !4120
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !4120
  br label %283, !dbg !4120

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !4120
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4120
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %288, metadata !2556, metadata !DIExpression()) #11, !dbg !4124
  %289 = icmp eq i64 %288, 0, !dbg !4125
  br i1 %289, label %320, label %290, !dbg !4126

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !4127
  %292 = inttoptr i64 %291 to i16*, !dbg !4128
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !4129
  br label %320, !dbg !4130

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3860, metadata !DIExpression()), !dbg !4131
  %295 = call i32 @nk_vc_is_active() #12, !dbg !4132
  %296 = icmp eq i32 %295, 0, !dbg !4132
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %297, metadata !2536, metadata !DIExpression()) #11, !dbg !4139
  %298 = icmp eq i64 %297, 0, !dbg !4140
  br i1 %298, label %304, label %299, !dbg !4141

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !4142
  %301 = inttoptr i64 %300 to i16*, !dbg !4143
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !4144
  %303 = icmp eq i16 %302, 0, !dbg !4145
  br i1 %303, label %304, label %305, !dbg !4146

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !4146

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !4146
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4146
  br i1 %296, label %311, label %309, !dbg !4147

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4148
  br label %313, !dbg !4148

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4150
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4152
  call void @llvm.dbg.value(metadata i64 %314, metadata !2556, metadata !DIExpression()) #11, !dbg !4155
  %315 = icmp eq i64 %314, 0, !dbg !4156
  br i1 %315, label %320, label %316, !dbg !4157

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !4158
  %318 = inttoptr i64 %317 to i16*, !dbg !4159
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !4160
  br label %320, !dbg !4161

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #13, !dbg !4162
  unreachable, !dbg !4162

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4075
  ret void, !dbg !4163
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !584 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !583, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i8** %2, metadata !590, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %3, metadata !591, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i8 %4, metadata !592, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !593, metadata !DIExpression()), !dbg !4169
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #10, !dbg !4170
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !4171
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #10, !dbg !4172
  ret i32 0, !dbg !4173
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !1001 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !4174
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4175
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4180
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4181
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4181
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !4182
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !4182
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4183, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !772, metadata !DIExpression()) #11, !dbg !4183
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !771, metadata !DIExpression()) #11, !dbg !4185
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !4186
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !4187

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4188
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !4193
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !4194
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !4194
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !4195
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1042, metadata !DIExpression()) #11, !dbg !4196
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !4197
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1060, metadata !DIExpression()) #11, !dbg !4198
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !4200
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !4200
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !4201
  br i1 %18, label %31, label %19, !dbg !4202

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !4203
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !4203
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !4203
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1044, metadata !DIExpression()) #11, !dbg !4203
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1043, metadata !DIExpression()) #11, !dbg !4197
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !4204
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1072, metadata !DIExpression()) #11, !dbg !4205
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !4207
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !4207
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !4208
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1079, metadata !DIExpression()) #11, !dbg !4209
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1084, metadata !DIExpression()) #11, !dbg !4211
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !4212
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !4213
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !4214
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !4215
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !780, metadata !DIExpression()) #11, !dbg !4216
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !4218
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !4218
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !4219
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !4219
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1043, metadata !DIExpression()) #11, !dbg !4197
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1021, metadata !DIExpression()) #11, !dbg !4220
  %30 = icmp eq %struct.list_head** %20, null, !dbg !4221
  br i1 %30, label %31, label %52, !dbg !4222

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4223
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !4227
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !4228
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !4228
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !4229
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !4229
  %38 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4230
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !4234
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !4235
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !4235
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !4236
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !4236
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !4237
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !4238

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4239
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !4243
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !4244
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !4244
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !4245
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !4245
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !1021, metadata !DIExpression()) #11, !dbg !4220
  br label %52, !dbg !4246

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !4247
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1021, metadata !DIExpression()) #11, !dbg !4220
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #12, !dbg !4248
  br label %nk_fiber_yield.exit, !dbg !4249

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !4247
  ret i32 %55, !dbg !4250
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4251 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4253, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2378, metadata !DIExpression()) #11, !dbg !4258
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !4260, !srcloc !2399
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2382, metadata !DIExpression()) #11, !dbg !4260
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2380, metadata !DIExpression()) #11, !dbg !4261
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2379, metadata !DIExpression()) #11, !dbg !4262
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !4263
  %4 = load i32, i32* %3, align 8, !dbg !4263
  call void @llvm.dbg.value(metadata i32 %4, metadata !2384, metadata !DIExpression()) #11, !dbg !4264
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression()) #11, !dbg !4265
  %5 = icmp sgt i32 %4, 0, !dbg !4266
  br i1 %5, label %6, label %30, !dbg !4267

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !4268
  br label %8, !dbg !4268

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2387, metadata !DIExpression()) #11, !dbg !4265
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !4268
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !4268
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4269
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4269
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4270
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2385, metadata !DIExpression()) #11, !dbg !4271
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !4272
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2389, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4272
  call void @llvm.dbg.value(metadata i8** %15, metadata !2386, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !4273
  %16 = load i8*, i8** %15, align 8, !dbg !4274
  br label %17, !dbg !4275

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !4274
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !4276
  %20 = bitcast i8* %18 to i8**, !dbg !4276
  %21 = load i8*, i8** %20, align 8, !dbg !4276
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #11, !dbg !4276
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !4276
  br i1 %22, label %27, label %23, !dbg !4275

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !4274
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !4274
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2386, metadata !DIExpression()) #11, !dbg !4273
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !4277
  br i1 %26, label %75, label %17, !dbg !4278, !llvm.loop !2420

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !4279
  call void @llvm.dbg.value(metadata i32 undef, metadata !2387, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !4265
  %29 = icmp slt i64 %28, %7, !dbg !4266
  br i1 %29, label %8, label %30, !dbg !4267, !llvm.loop !2423

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4280
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4285
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4286
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4286
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4287
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1042, metadata !DIExpression()) #11, !dbg !4288
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !4289
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1060, metadata !DIExpression()) #11, !dbg !4290
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4292
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4292
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4293
  br i1 %38, label %51, label %39, !dbg !4294

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !4295
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4295
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4295
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1044, metadata !DIExpression()) #11, !dbg !4295
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1043, metadata !DIExpression()) #11, !dbg !4289
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4296
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1072, metadata !DIExpression()) #11, !dbg !4297
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4299
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4299
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4300
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1079, metadata !DIExpression()) #11, !dbg !4301
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1084, metadata !DIExpression()) #11, !dbg !4303
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4304
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4305
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4306
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4307
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !780, metadata !DIExpression()) #11, !dbg !4308
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4310
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4310
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4311
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4311
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1043, metadata !DIExpression()) #11, !dbg !4289
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !4254, metadata !DIExpression()), !dbg !4312
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4313
  br i1 %50, label %51, label %72, !dbg !4315

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4316
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4322
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4323
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4323
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4324
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4324
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4325
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4329
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4330
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4330
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4331
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4331
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4332
  br i1 %64, label %84, label %65, !dbg !4333

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4334
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4339
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4340
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4340
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4341
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4341
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !4254, metadata !DIExpression()), !dbg !4312
  br label %72, !dbg !4342

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4343
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !4254, metadata !DIExpression()), !dbg !4312
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #10, !dbg !4344
  br label %84, !dbg !4345

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4346
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1072, metadata !DIExpression()) #11, !dbg !4347
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4349
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4349
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4350
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4350
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1079, metadata !DIExpression()) #11, !dbg !4351
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1084, metadata !DIExpression()) #11, !dbg !4353
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4354
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4355
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4356
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4357
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !780, metadata !DIExpression()) #11, !dbg !4358
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4360
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4361
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4362
  br label %84, !dbg !4363

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4364
  ret i32 %85, !dbg !4365
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4366 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4373, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i8* %1, metadata !4374, metadata !DIExpression()), !dbg !4376
  %3 = tail call zeroext i8 %0(i8* %1) #12, !dbg !4377
  %4 = icmp eq i8 %3, 0, !dbg !4377
  br i1 %4, label %60, label %5, !dbg !4379

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4380
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !4386
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !4387
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !4387
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !4388
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !4388
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4389, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !4389
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !4391
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !4392
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !4393

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4394
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !4399
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !4400
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !4400
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !4401
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1042, metadata !DIExpression()) #11, !dbg !4402
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !4403
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1060, metadata !DIExpression()) #11, !dbg !4404
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !4406
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !4406
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !4407
  br i1 %22, label %35, label %23, !dbg !4408

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !4409
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !4409
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !4409
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1044, metadata !DIExpression()) #11, !dbg !4409
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1043, metadata !DIExpression()) #11, !dbg !4403
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !4410
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1072, metadata !DIExpression()) #11, !dbg !4411
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !4413
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !4413
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !4414
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1079, metadata !DIExpression()) #11, !dbg !4415
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1084, metadata !DIExpression()) #11, !dbg !4417
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !4418
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !4419
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !4420
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !4421
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !4422
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !4424
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !4424
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !4425
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !4425
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1043, metadata !DIExpression()) #11, !dbg !4403
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1021, metadata !DIExpression()) #11, !dbg !4426
  %34 = icmp eq %struct.list_head** %24, null, !dbg !4427
  br i1 %34, label %35, label %56, !dbg !4428

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4429
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !4433
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !4434
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !4434
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !4435
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !4435
  %42 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4436
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !4440
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !4441
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !4441
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !4442
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !4442
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !4443
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !4444

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4445
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !4449
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !4450
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !4450
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !4451
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !4451
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1021, metadata !DIExpression()) #11, !dbg !4426
  br label %56, !dbg !4452

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !4453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !1021, metadata !DIExpression()) #11, !dbg !4426
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !4454
  br label %nk_fiber_yield.exit, !dbg !4455

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !4453
  br label %60, !dbg !4456

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !4457
  ret i32 %61, !dbg !4458
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4459 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4463, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4464, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i8* %2, metadata !4465, metadata !DIExpression()), !dbg !4468
  %4 = tail call zeroext i8 %1(i8* %2) #12, !dbg !4469
  %5 = icmp eq i8 %4, 0, !dbg !4469
  br i1 %5, label %8, label %6, !dbg !4471

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4472
  br label %8, !dbg !4474

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4475
  ret i32 %9, !dbg !4476
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4477 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4496
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4500
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4501
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4501
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4502
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4502
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4479, metadata !DIExpression()), !dbg !4503
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4504, !srcloc !4505
  call void @llvm.dbg.value(metadata i64 %8, metadata !4486, metadata !DIExpression()), !dbg !4506
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4507
  call void @llvm.dbg.value(metadata i8* %9, metadata !4487, metadata !DIExpression()), !dbg !4508
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4509
  call void @llvm.dbg.value(metadata i8* %10, metadata !4488, metadata !DIExpression()), !dbg !4510
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4511
  call void @llvm.dbg.value(metadata i8* %11, metadata !4489, metadata !DIExpression()), !dbg !4512
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4513
  call void @llvm.dbg.value(metadata i8* %12, metadata !4490, metadata !DIExpression()), !dbg !4514
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4515
  %14 = load i8*, i8** %13, align 8, !dbg !4515
  %15 = icmp ugt i8* %11, %14, !dbg !4517
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4518
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4519
  %19 = icmp ult i8* %11, %18, !dbg !4520
  %20 = and i1 %15, %19, !dbg !4521
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4521
  call void @llvm.dbg.value(metadata i8* %21, metadata !4489, metadata !DIExpression()), !dbg !4512
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4522
  call void @llvm.dbg.value(metadata i8* %22, metadata !4491, metadata !DIExpression()), !dbg !4523
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4524
  %24 = ptrtoint i8* %23 to i64, !dbg !4525
  %25 = ptrtoint i8* %12 to i64, !dbg !4525
  %26 = sub i64 %24, %25, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %26, metadata !4480, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4526
  %27 = ptrtoint i8* %10 to i64, !dbg !4527
  call void @llvm.dbg.value(metadata i64 undef, metadata !4482, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i64 72, metadata !4483, metadata !DIExpression()), !dbg !4529
  %28 = bitcast i8* %22 to i64*, !dbg !4530
  %29 = load i64, i64* %28, align 8, !dbg !4530
  %30 = sub i64 %29, %25, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %30, metadata !4484, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %17, metadata !4481, metadata !DIExpression()), !dbg !4533
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4534
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4534
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4492, metadata !DIExpression(DW_OP_deref)), !dbg !4535
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #10, !dbg !4536
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4537
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4492, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !657, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !662, metadata !DIExpression()), !dbg !4540
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4541
  %35 = load i64, i64* %34, align 8, !dbg !4542
  %36 = add i64 %35, -8, !dbg !4542
  store i64 %36, i64* %34, align 8, !dbg !4542
  %37 = inttoptr i64 %36 to i64*, !dbg !4543
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4544
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4492, metadata !DIExpression()), !dbg !4535
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4546
  %40 = load i8*, i8** %39, align 8, !dbg !4546
  call void @llvm.dbg.value(metadata i8* %40, metadata !4485, metadata !DIExpression()), !dbg !4547
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4548
  %42 = sub i64 -16, %26, !dbg !4549
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4549
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #12, !dbg !4550
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4551
  %46 = ptrtoint i8* %45 to i64, !dbg !4552
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4553
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4492, metadata !DIExpression()), !dbg !4535
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4554
  store i64 %46, i64* %48, align 8, !dbg !4555
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4492, metadata !DIExpression()), !dbg !4535
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4557
  %51 = load i64, i64* %50, align 8, !dbg !4557
  %52 = add i64 %51, 64, !dbg !4558
  %53 = inttoptr i64 %52 to i8**, !dbg !4559
  call void @llvm.dbg.value(metadata i8** %53, metadata !4493, metadata !DIExpression()), !dbg !4560
  %54 = add i64 %30, %51, !dbg !4561
  %55 = inttoptr i64 %54 to i8*, !dbg !4562
  store i8* %55, i8** %53, align 8, !dbg !4563
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4564
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4492, metadata !DIExpression()), !dbg !4535
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4565
  %58 = load i64, i64* %57, align 8, !dbg !4565
  %59 = sub i64 8, %25, !dbg !4527
  %60 = add i64 %59, %27, !dbg !4566
  %61 = add i64 %60, %58, !dbg !4567
  %62 = inttoptr i64 %61 to i8**, !dbg !4568
  call void @llvm.dbg.value(metadata i8** %62, metadata !4494, metadata !DIExpression()), !dbg !4569
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4570
  call void @llvm.dbg.value(metadata i8** %63, metadata !4495, metadata !DIExpression()), !dbg !4571
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4572
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4572
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4573
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4492, metadata !DIExpression()), !dbg !4535
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4574
  %67 = load i64, i64* %66, align 8, !dbg !4574
  %68 = add i64 %67, 112, !dbg !4575
  %69 = inttoptr i64 %68 to i64*, !dbg !4576
  store i64 0, i64* %69, align 8, !dbg !4577
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4578
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4492, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1839, metadata !DIExpression()) #11, !dbg !4579
  call void @llvm.dbg.value(metadata i8 0, metadata !1844, metadata !DIExpression()) #11, !dbg !4581
  %71 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4582
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4586
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1845, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !4587
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4588
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4588
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4588
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4588
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1845, metadata !DIExpression()) #11, !dbg !4587
  %77 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4589
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4593
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4594
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4594
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4595
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1846, metadata !DIExpression()) #11, !dbg !4596
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4597
  store i32 1, i32* %82, align 4, !dbg !4598
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4599
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1910, metadata !DIExpression()) #11, !dbg !4600
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1913, metadata !DIExpression()) #11, !dbg !4602
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4603
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4603
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1918, metadata !DIExpression()) #11, !dbg !4604
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1923, metadata !DIExpression()) #11, !dbg !4606
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1924, metadata !DIExpression()) #11, !dbg !4607
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4608
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4609
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4610
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4611
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4612
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4613
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4614
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4615
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4615
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4616
  br i1 %91, label %94, label %92, !dbg !4617

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #12, !dbg !4618
  br label %94, !dbg !4619

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4620
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4492, metadata !DIExpression()), !dbg !4535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4621
  ret %struct.nk_fiber* %95, !dbg !4622
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4623 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4625, metadata !DIExpression()), !dbg !4628
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4629
  br i1 %2, label %75, label %3, !dbg !4631

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4632
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4636
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4637
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4637
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4638
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4638
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4626, metadata !DIExpression()), !dbg !4639
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4640
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4627, metadata !DIExpression()), !dbg !4641
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4642
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1910, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1913, metadata !DIExpression()), !dbg !4645
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4646
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4646
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1918, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1923, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1924, metadata !DIExpression()), !dbg !4650
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4651
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4652
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4653
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4654
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4655
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4656
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4657
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4658
  %18 = load i32, i32* %17, align 8, !dbg !4659
  %19 = add i32 %18, 1, !dbg !4659
  store i32 %19, i32* %17, align 8, !dbg !4659
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4660
  store i32 3, i32* %20, align 4, !dbg !4661
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4662
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !4667
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !4668
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !4668
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !4669
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !4669
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4670, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !4670
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !4672
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !4673
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !4674

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4675
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !4680
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !4681
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !4681
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !4682
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1042, metadata !DIExpression()) #11, !dbg !4683
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1043, metadata !DIExpression()) #11, !dbg !4684
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1060, metadata !DIExpression()) #11, !dbg !4685
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !4687
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !4687
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !4688
  br i1 %37, label %50, label %38, !dbg !4689

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1044, metadata !DIExpression()) #11, !dbg !4690
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !4690
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !4690
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1044, metadata !DIExpression()) #11, !dbg !4690
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1043, metadata !DIExpression()) #11, !dbg !4684
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !4691
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1072, metadata !DIExpression()) #11, !dbg !4692
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !4694
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4694
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !4695
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !1079, metadata !DIExpression()) #11, !dbg !4696
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1084, metadata !DIExpression()) #11, !dbg !4698
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !4699
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !4700
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !4701
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4702
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !780, metadata !DIExpression()) #11, !dbg !4703
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !4705
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !4705
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4706
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !4706
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1043, metadata !DIExpression()) #11, !dbg !4684
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1021, metadata !DIExpression()) #11, !dbg !4707
  %49 = icmp eq %struct.list_head** %39, null, !dbg !4708
  br i1 %49, label %50, label %71, !dbg !4709

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4710
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !4714
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !4715
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !4715
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !4716
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !4716
  %57 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4717
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !4721
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !4722
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !4722
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !4723
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !4723
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !4724
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !4725

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4726
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !4730
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !4731
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !4731
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !4732
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !4732
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1021, metadata !DIExpression()) #11, !dbg !4707
  br label %71, !dbg !4733

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !4734
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !1021, metadata !DIExpression()) #11, !dbg !4707
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #12, !dbg !4735
  br label %nk_fiber_yield.exit, !dbg !4736

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !4734
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !4737
  ret i32 %76, !dbg !4738
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
!1000 = !DILocation(line: 732, column: 3, scope: !1001, inlinedAt: !1003)
!1001 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 730, type: !507, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!1002 = !{}
!1003 = distinct !DILocation(line: 62, column: 9, scope: !981)
!1004 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1009)
!1005 = distinct !DISubprogram(name: "get_cpu", scope: !1006, file: !1006, line: 127, type: !1007, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!1006 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!270}
!1009 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1015)
!1010 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !1011, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!1015 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !1017)
!1016 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !768, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!1017 = distinct !DILocation(line: 704, column: 7, scope: !1018, inlinedAt: !1022)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !124, line: 704, column: 7)
!1019 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 702, type: !507, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1020)
!1020 = !{!1021}
!1021 = !DILocalVariable(name: "f_to", scope: !1019, file: !124, line: 708, type: !240)
!1022 = distinct !DILocation(line: 733, column: 10, scope: !1001, inlinedAt: !1003)
!1023 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1009)
!1024 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1015)
!1025 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !1017)
!1026 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 704, column: 30, scope: !1018, inlinedAt: !1022)
!1028 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1027)
!1029 = !DILocation(line: 704, column: 27, scope: !1018, inlinedAt: !1022)
!1030 = !DILocation(line: 704, column: 7, scope: !1019, inlinedAt: !1022)
!1031 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !1037)
!1034 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !1035, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!150}
!1037 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !1054)
!1038 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !1039, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!240}
!1041 = !{!1042, !1043, !1044, !1048}
!1042 = !DILocalVariable(name: "fiber_sched_queue", scope: !1038, file: !124, line: 122, type: !150)
!1043 = !DILocalVariable(name: "fiber_to_schedule", scope: !1038, file: !124, line: 125, type: !240)
!1044 = !DILocalVariable(name: "first", scope: !1045, file: !124, line: 128, type: !240)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !124, line: 128, column: 25)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !124, line: 126, column: 40)
!1047 = distinct !DILexicalBlock(scope: !1038, file: !124, line: 126, column: 7)
!1048 = !DILocalVariable(name: "__mptr", scope: !1049, file: !124, line: 128, type: !1052)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !124, line: 128, column: 25)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !124, line: 128, column: 25)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !124, line: 128, column: 25)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1054 = distinct !DILocation(line: 708, column: 22, scope: !1019, inlinedAt: !1022)
!1055 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1032)
!1056 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1033)
!1057 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !1037)
!1058 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !1054)
!1059 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !1054)
!1060 = !DILocalVariable(name: "head", arg: 1, scope: !1061, file: !53, line: 184, type: !1052)
!1061 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1062, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!48, !1052}
!1064 = !{!1060}
!1065 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !1054)
!1067 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !1066)
!1068 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !1066)
!1069 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !1054)
!1070 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !1054)
!1071 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !1054)
!1072 = !DILocalVariable(name: "entry", arg: 1, scope: !1073, file: !53, line: 151, type: !150)
!1073 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !782, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1074)
!1074 = !{!1072}
!1075 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !1054)
!1077 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !1076)
!1078 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !1076)
!1079 = !DILocalVariable(name: "prev", arg: 1, scope: !1080, file: !53, line: 128, type: !150)
!1080 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1081, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !150, !150}
!1083 = !{!1079, !1084}
!1084 = !DILocalVariable(name: "next", arg: 2, scope: !1080, file: !53, line: 128, type: !150)
!1085 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !1076)
!1087 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !1086)
!1088 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !1086)
!1089 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !1086)
!1090 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !1086)
!1091 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !1086)
!1092 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !1076)
!1094 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1093)
!1095 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1093)
!1096 = !DILocation(line: 708, column: 15, scope: !1019, inlinedAt: !1022)
!1097 = !DILocation(line: 718, column: 12, scope: !1098, inlinedAt: !1022)
!1098 = distinct !DILexicalBlock(scope: !1019, file: !124, line: 718, column: 7)
!1099 = !DILocation(line: 718, column: 7, scope: !1019, inlinedAt: !1022)
!1100 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !1104)
!1103 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !1039, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!1104 = distinct !DILocation(line: 719, column: 9, scope: !1105, inlinedAt: !1022)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !124, line: 719, column: 9)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !124, line: 718, column: 21)
!1107 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1101)
!1108 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1102)
!1109 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !1104)
!1110 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !1114)
!1113 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !1039, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!1114 = distinct !DILocation(line: 719, column: 31, scope: !1105, inlinedAt: !1022)
!1115 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1111)
!1116 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1112)
!1117 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !1114)
!1118 = !DILocation(line: 719, column: 28, scope: !1105, inlinedAt: !1022)
!1119 = !DILocation(line: 719, column: 9, scope: !1106, inlinedAt: !1022)
!1120 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 723, column: 16, scope: !1124, inlinedAt: !1022)
!1124 = distinct !DILexicalBlock(scope: !1105, file: !124, line: 722, column: 12)
!1125 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1121)
!1126 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1122)
!1127 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !1123)
!1128 = !DILocation(line: 725, column: 3, scope: !1106, inlinedAt: !1022)
!1129 = !DILocation(line: 0, scope: !1019, inlinedAt: !1022)
!1130 = !DILocation(line: 727, column: 10, scope: !1019, inlinedAt: !1022)
!1131 = !DILocation(line: 727, column: 3, scope: !1019, inlinedAt: !1022)
!1132 = !DILocation(line: 62, column: 9, scope: !981)
!1133 = distinct !{!1133, !996, !1134}
!1134 = !DILocation(line: 65, column: 3, scope: !981)
!1135 = !DILocation(line: 0, scope: !981)
!1136 = !DILocation(line: 66, column: 3, scope: !981)
!1137 = !DILocation(line: 67, column: 3, scope: !981)
!1138 = !DILocation(line: 68, column: 1, scope: !981)
!1139 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DILocalVariable(name: "i", arg: 1, scope: !1139, file: !3, line: 70, type: !31)
!1142 = !DILocalVariable(name: "o", arg: 2, scope: !1139, file: !3, line: 70, type: !75)
!1143 = !DILocalVariable(name: "end", scope: !1139, file: !3, line: 72, type: !24)
!1144 = !DILocalVariable(name: "a", scope: !1139, file: !3, line: 74, type: !7)
!1145 = !DILocation(line: 70, column: 29, scope: !1139)
!1146 = !DILocation(line: 70, column: 39, scope: !1139)
!1147 = !DILocation(line: 72, column: 19, scope: !1139)
!1148 = !DILocation(line: 72, column: 13, scope: !1139)
!1149 = !DILocation(line: 73, column: 19, scope: !1139)
!1150 = !DILocation(line: 73, column: 3, scope: !1139)
!1151 = !DILocation(line: 74, column: 16, scope: !1139)
!1152 = !DILocation(line: 732, column: 3, scope: !1001, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 75, column: 3, scope: !1139)
!1154 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 704, column: 7, scope: !1018, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 733, column: 10, scope: !1001, inlinedAt: !1153)
!1159 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1155)
!1160 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1156)
!1161 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !1157)
!1162 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 704, column: 30, scope: !1018, inlinedAt: !1158)
!1164 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1163)
!1165 = !DILocation(line: 704, column: 27, scope: !1018, inlinedAt: !1158)
!1166 = !DILocation(line: 704, column: 7, scope: !1019, inlinedAt: !1158)
!1167 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 708, column: 22, scope: !1019, inlinedAt: !1158)
!1172 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1168)
!1173 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1169)
!1174 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !1170)
!1175 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !1171)
!1176 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !1171)
!1177 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !1171)
!1179 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !1178)
!1180 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !1178)
!1181 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !1171)
!1182 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !1171)
!1183 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !1171)
!1184 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !1171)
!1186 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !1185)
!1187 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !1185)
!1188 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !1185)
!1190 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !1189)
!1191 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !1189)
!1192 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !1189)
!1193 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !1189)
!1194 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !1189)
!1195 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !1185)
!1197 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1196)
!1198 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1196)
!1199 = !DILocation(line: 708, column: 15, scope: !1019, inlinedAt: !1158)
!1200 = !DILocation(line: 718, column: 12, scope: !1098, inlinedAt: !1158)
!1201 = !DILocation(line: 718, column: 7, scope: !1019, inlinedAt: !1158)
!1202 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 719, column: 9, scope: !1105, inlinedAt: !1158)
!1206 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1203)
!1207 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1204)
!1208 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !1205)
!1209 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 719, column: 31, scope: !1105, inlinedAt: !1158)
!1213 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1210)
!1214 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1211)
!1215 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !1212)
!1216 = !DILocation(line: 719, column: 28, scope: !1105, inlinedAt: !1158)
!1217 = !DILocation(line: 719, column: 9, scope: !1106, inlinedAt: !1158)
!1218 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 723, column: 16, scope: !1124, inlinedAt: !1158)
!1222 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1219)
!1223 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1220)
!1224 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !1221)
!1225 = !DILocation(line: 725, column: 3, scope: !1106, inlinedAt: !1158)
!1226 = !DILocation(line: 0, scope: !1019, inlinedAt: !1158)
!1227 = !DILocation(line: 727, column: 10, scope: !1019, inlinedAt: !1158)
!1228 = !DILocation(line: 727, column: 3, scope: !1019, inlinedAt: !1158)
!1229 = !DILocation(line: 75, column: 3, scope: !1139)
!1230 = !DILocation(line: 76, column: 13, scope: !1139)
!1231 = !DILocation(line: 76, column: 11, scope: !1139)
!1232 = !DILocation(line: 76, column: 3, scope: !1139)
!1233 = !DILocation(line: 77, column: 52, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 76, column: 18)
!1235 = !DILocation(line: 77, column: 5, scope: !1234)
!1236 = !DILocation(line: 76, column: 9, scope: !1139)
!1237 = distinct !{!1237, !1232, !1238}
!1238 = !DILocation(line: 79, column: 3, scope: !1139)
!1239 = !DILocation(line: 0, scope: !1139)
!1240 = !DILocation(line: 80, column: 3, scope: !1139)
!1241 = !DILocation(line: 732, column: 3, scope: !1001, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 81, column: 3, scope: !1139)
!1243 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 704, column: 7, scope: !1018, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 733, column: 10, scope: !1001, inlinedAt: !1242)
!1248 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1244)
!1249 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1245)
!1250 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !1246)
!1251 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 704, column: 30, scope: !1018, inlinedAt: !1247)
!1253 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1252)
!1254 = !DILocation(line: 704, column: 27, scope: !1018, inlinedAt: !1247)
!1255 = !DILocation(line: 704, column: 7, scope: !1019, inlinedAt: !1247)
!1256 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 708, column: 22, scope: !1019, inlinedAt: !1247)
!1261 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1257)
!1262 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1258)
!1263 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !1259)
!1264 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !1260)
!1265 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !1260)
!1266 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !1260)
!1268 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !1267)
!1269 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !1267)
!1270 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !1260)
!1271 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !1260)
!1272 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !1260)
!1273 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !1260)
!1275 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !1274)
!1276 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !1274)
!1277 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !1274)
!1279 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !1278)
!1280 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !1278)
!1281 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !1278)
!1282 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !1278)
!1283 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !1278)
!1284 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !1274)
!1286 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1285)
!1287 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1285)
!1288 = !DILocation(line: 708, column: 15, scope: !1019, inlinedAt: !1247)
!1289 = !DILocation(line: 718, column: 12, scope: !1098, inlinedAt: !1247)
!1290 = !DILocation(line: 718, column: 7, scope: !1019, inlinedAt: !1247)
!1291 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 719, column: 9, scope: !1105, inlinedAt: !1247)
!1295 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1292)
!1296 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1293)
!1297 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !1294)
!1298 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 719, column: 31, scope: !1105, inlinedAt: !1247)
!1302 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1299)
!1303 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1300)
!1304 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !1301)
!1305 = !DILocation(line: 719, column: 28, scope: !1105, inlinedAt: !1247)
!1306 = !DILocation(line: 719, column: 9, scope: !1106, inlinedAt: !1247)
!1307 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 723, column: 16, scope: !1124, inlinedAt: !1247)
!1311 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1308)
!1312 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1309)
!1313 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !1310)
!1314 = !DILocation(line: 725, column: 3, scope: !1106, inlinedAt: !1247)
!1315 = !DILocation(line: 0, scope: !1019, inlinedAt: !1247)
!1316 = !DILocation(line: 727, column: 10, scope: !1019, inlinedAt: !1247)
!1317 = !DILocation(line: 727, column: 3, scope: !1019, inlinedAt: !1247)
!1318 = !DILocation(line: 81, column: 3, scope: !1139)
!1319 = !DILocation(line: 82, column: 1, scope: !1139)
!1320 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1321)
!1321 = !{!1322, !1323}
!1322 = !DILocalVariable(name: "buf", arg: 1, scope: !1320, file: !3, line: 127, type: !113)
!1323 = !DILocalVariable(name: "priv", arg: 2, scope: !1320, file: !3, line: 127, type: !31)
!1324 = !DILocation(line: 127, column: 23, scope: !1320)
!1325 = !DILocation(line: 127, column: 35, scope: !1320)
!1326 = !DILocation(line: 88, column: 3, scope: !1327, inlinedAt: !1334)
!1327 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1328)
!1328 = !{!1329, !1330, !1331, !1332}
!1329 = !DILocalVariable(name: "simple", scope: !1327, file: !3, line: 88, type: !511)
!1330 = !DILocalVariable(name: "t", scope: !1327, file: !3, line: 90, type: !25)
!1331 = !DILocalVariable(name: "f_input", scope: !1327, file: !3, line: 92, type: !24)
!1332 = !DILocalVariable(name: "p", scope: !1333, file: !3, line: 92, type: !31)
!1333 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 92, column: 23)
!1334 = distinct !DILocation(line: 129, column: 3, scope: !1320)
!1335 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 89, column: 8, scope: !1327, inlinedAt: !1334)
!1337 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1336)
!1338 = !DILocation(line: 89, column: 26, scope: !1327, inlinedAt: !1334)
!1339 = !DILocation(line: 89, column: 6, scope: !1327, inlinedAt: !1334)
!1340 = !DILocation(line: 90, column: 3, scope: !1327, inlinedAt: !1334)
!1341 = !DILocation(line: 91, column: 3, scope: !1327, inlinedAt: !1334)
!1342 = !DILocation(line: 92, column: 23, scope: !1333, inlinedAt: !1334)
!1343 = !DILocation(line: 93, column: 8, scope: !1344, inlinedAt: !1334)
!1344 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 93, column: 7)
!1345 = !DILocation(line: 93, column: 7, scope: !1327, inlinedAt: !1334)
!1346 = !DILocation(line: 94, column: 5, scope: !1347, inlinedAt: !1334)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 93, column: 17)
!1348 = !DILocation(line: 95, column: 5, scope: !1347, inlinedAt: !1334)
!1349 = !DILocation(line: 92, column: 23, scope: !1327, inlinedAt: !1334)
!1350 = !DILocation(line: 92, column: 13, scope: !1327, inlinedAt: !1334)
!1351 = !DILocation(line: 97, column: 14, scope: !1327, inlinedAt: !1334)
!1352 = !DILocation(line: 90, column: 12, scope: !1327, inlinedAt: !1334)
!1353 = !DILocation(line: 97, column: 16, scope: !1327, inlinedAt: !1334)
!1354 = !DILocation(line: 97, column: 12, scope: !1327, inlinedAt: !1334)
!1355 = !DILocation(line: 88, column: 15, scope: !1327, inlinedAt: !1334)
!1356 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 98, column: 3, scope: !1327, inlinedAt: !1334)
!1358 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1357)
!1359 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1357)
!1360 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1357)
!1361 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1357)
!1362 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1357)
!1363 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1357)
!1365 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1364)
!1366 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1364)
!1367 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1364)
!1368 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1364)
!1369 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1364)
!1370 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1364)
!1371 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1364)
!1372 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1364)
!1373 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1364)
!1374 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1364)
!1375 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1364)
!1376 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1364)
!1377 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1364)
!1378 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1364)
!1379 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1364)
!1380 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1364)
!1381 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1364)
!1382 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1364)
!1383 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1364)
!1384 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1364)
!1385 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1364)
!1386 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1364)
!1387 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1364)
!1388 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1364)
!1389 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1364)
!1390 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1364)
!1391 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1364)
!1392 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1364)
!1394 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1393)
!1395 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1393)
!1396 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1393)
!1398 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1397)
!1399 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1393)
!1400 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1397)
!1401 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1397)
!1402 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1397)
!1403 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1393)
!1405 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1404)
!1406 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1404)
!1407 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1404)
!1408 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1404)
!1409 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1393)
!1411 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1410)
!1412 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1410)
!1413 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1410)
!1414 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1410)
!1415 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1393)
!1417 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1416)
!1418 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1416)
!1419 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1416)
!1420 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1416)
!1421 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1393)
!1423 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1422)
!1424 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1422)
!1425 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1422)
!1426 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1422)
!1427 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1393)
!1429 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1428)
!1430 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1428)
!1431 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1428)
!1432 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1428)
!1433 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1393)
!1434 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1393)
!1436 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1435)
!1437 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1435)
!1438 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1435)
!1439 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1435)
!1440 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1393)
!1442 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1441)
!1443 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1441)
!1444 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1441)
!1445 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1441)
!1446 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1393)
!1448 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1447)
!1449 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1447)
!1450 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1447)
!1451 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1447)
!1452 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1393)
!1454 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1453)
!1455 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1453)
!1456 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1453)
!1457 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1453)
!1458 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1393)
!1460 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1459)
!1461 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1459)
!1462 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1459)
!1463 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1459)
!1464 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1393)
!1466 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1465)
!1467 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1465)
!1468 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1465)
!1469 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1465)
!1470 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1393)
!1472 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1471)
!1473 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1471)
!1474 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1471)
!1475 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1471)
!1476 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1393)
!1478 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1477)
!1479 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1477)
!1480 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1477)
!1481 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1477)
!1482 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1393)
!1484 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1483)
!1485 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1483)
!1486 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1483)
!1487 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1483)
!1488 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1393)
!1490 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1489)
!1491 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1489)
!1492 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1489)
!1493 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1489)
!1494 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1364)
!1495 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1364)
!1497 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1496)
!1498 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1364)
!1499 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1364)
!1500 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1364)
!1501 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1364)
!1502 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1364)
!1504 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1503)
!1505 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1503)
!1506 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1503)
!1507 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1364)
!1508 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1364)
!1509 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1364)
!1510 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1364)
!1512 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1511)
!1513 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1511)
!1514 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1511)
!1515 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1364)
!1516 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1364)
!1518 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1517)
!1519 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1517)
!1520 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1517)
!1521 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1364)
!1522 = !DILocation(line: 0, scope: !602, inlinedAt: !1364)
!1523 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1357)
!1524 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1357)
!1525 = !DILocation(line: 99, column: 3, scope: !1327, inlinedAt: !1334)
!1526 = !DILocation(line: 100, column: 1, scope: !1327, inlinedAt: !1334)
!1527 = !DILocation(line: 130, column: 3, scope: !1320)
!1528 = !DILocation(line: 88, column: 3, scope: !1327)
!1529 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 89, column: 8, scope: !1327)
!1531 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1530)
!1532 = !DILocation(line: 89, column: 26, scope: !1327)
!1533 = !DILocation(line: 89, column: 6, scope: !1327)
!1534 = !DILocation(line: 90, column: 3, scope: !1327)
!1535 = !DILocation(line: 91, column: 3, scope: !1327)
!1536 = !DILocation(line: 92, column: 23, scope: !1333)
!1537 = !DILocation(line: 93, column: 8, scope: !1344)
!1538 = !DILocation(line: 93, column: 7, scope: !1327)
!1539 = !DILocation(line: 94, column: 5, scope: !1347)
!1540 = !DILocation(line: 95, column: 5, scope: !1347)
!1541 = !DILocation(line: 92, column: 23, scope: !1327)
!1542 = !DILocation(line: 92, column: 13, scope: !1327)
!1543 = !DILocation(line: 97, column: 14, scope: !1327)
!1544 = !DILocation(line: 90, column: 12, scope: !1327)
!1545 = !DILocation(line: 97, column: 16, scope: !1327)
!1546 = !DILocation(line: 97, column: 12, scope: !1327)
!1547 = !DILocation(line: 88, column: 15, scope: !1327)
!1548 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 98, column: 3, scope: !1327)
!1550 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1549)
!1551 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1549)
!1552 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1549)
!1553 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1549)
!1554 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1549)
!1555 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1549)
!1557 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1556)
!1558 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1556)
!1559 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1556)
!1560 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1556)
!1561 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1556)
!1562 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1556)
!1563 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1556)
!1564 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1556)
!1565 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1556)
!1566 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1556)
!1567 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1556)
!1568 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1556)
!1569 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1556)
!1570 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1556)
!1571 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1556)
!1572 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1556)
!1573 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1556)
!1574 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1556)
!1575 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1556)
!1576 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1556)
!1577 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1556)
!1578 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1556)
!1579 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1556)
!1580 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1556)
!1581 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1556)
!1582 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1556)
!1583 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1556)
!1584 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1556)
!1586 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1585)
!1587 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1585)
!1588 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1585)
!1590 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1589)
!1591 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1585)
!1592 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1589)
!1593 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1589)
!1594 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1589)
!1595 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1585)
!1597 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1596)
!1598 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1596)
!1599 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1596)
!1600 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1596)
!1601 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1585)
!1603 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1602)
!1604 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1602)
!1605 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1602)
!1606 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1602)
!1607 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1585)
!1609 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1608)
!1610 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1608)
!1611 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1608)
!1612 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1608)
!1613 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1585)
!1615 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1614)
!1616 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1614)
!1617 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1614)
!1618 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1614)
!1619 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1585)
!1621 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1620)
!1622 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1620)
!1623 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1620)
!1624 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1620)
!1625 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1585)
!1626 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1585)
!1628 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1627)
!1629 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1627)
!1630 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1627)
!1631 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1627)
!1632 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1585)
!1634 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1633)
!1635 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1633)
!1636 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1633)
!1637 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1633)
!1638 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1585)
!1640 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1639)
!1641 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1639)
!1642 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1639)
!1643 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1639)
!1644 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1585)
!1646 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1645)
!1647 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1645)
!1648 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1645)
!1649 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1645)
!1650 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1585)
!1652 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1651)
!1653 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1651)
!1654 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1651)
!1655 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1651)
!1656 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1585)
!1658 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1657)
!1659 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1657)
!1660 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1657)
!1661 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1657)
!1662 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1585)
!1664 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1663)
!1665 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1663)
!1666 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1663)
!1667 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1663)
!1668 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1585)
!1670 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1669)
!1671 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1669)
!1672 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1669)
!1673 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1669)
!1674 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1585)
!1676 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1675)
!1677 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1675)
!1678 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1675)
!1679 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1675)
!1680 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1585)
!1682 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1681)
!1683 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1681)
!1684 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1681)
!1685 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1681)
!1686 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1556)
!1687 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1556)
!1689 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1688)
!1690 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1556)
!1691 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1556)
!1692 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1556)
!1693 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1556)
!1694 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1556)
!1696 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1695)
!1697 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1695)
!1698 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1695)
!1699 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1556)
!1700 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1556)
!1701 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1556)
!1702 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1556)
!1704 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1703)
!1705 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1703)
!1706 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1703)
!1707 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1556)
!1708 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1556)
!1710 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1709)
!1711 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1709)
!1712 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1709)
!1713 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1556)
!1714 = !DILocation(line: 0, scope: !602, inlinedAt: !1556)
!1715 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1549)
!1716 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1549)
!1717 = !DILocation(line: 99, column: 3, scope: !1327)
!1718 = !DILocation(line: 0, scope: !1327)
!1719 = !DILocation(line: 100, column: 1, scope: !1327)
!1720 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 78, column: 10, scope: !1010)
!1722 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1721)
!1723 = !DILocation(line: 78, column: 21, scope: !1010)
!1724 = !DILocation(line: 78, column: 3, scope: !1010)
!1725 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 85, column: 10, scope: !1103)
!1728 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1726)
!1729 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1727)
!1730 = !DILocation(line: 85, column: 30, scope: !1103)
!1731 = !DILocation(line: 85, column: 3, scope: !1103)
!1732 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 92, column: 10, scope: !1113)
!1735 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1733)
!1736 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1734)
!1737 = !DILocation(line: 92, column: 30, scope: !1113)
!1738 = !DILocation(line: 92, column: 3, scope: !1113)
!1739 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 98, column: 10, scope: !1016)
!1742 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1740)
!1743 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1741)
!1744 = !DILocation(line: 98, column: 30, scope: !1016)
!1745 = !DILocation(line: 98, column: 3, scope: !1016)
!1746 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 105, column: 12, scope: !1034)
!1749 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1747)
!1750 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1748)
!1751 = !DILocation(line: 105, column: 32, scope: !1034)
!1752 = !DILocation(line: 105, column: 3, scope: !1034)
!1753 = !DILocation(line: 113, column: 31, scope: !658)
!1754 = !DILocation(line: 113, column: 43, scope: !658)
!1755 = !DILocation(line: 115, column: 8, scope: !658)
!1756 = !DILocation(line: 115, column: 12, scope: !658)
!1757 = !DILocation(line: 116, column: 6, scope: !658)
!1758 = !DILocation(line: 116, column: 26, scope: !658)
!1759 = !DILocation(line: 117, column: 1, scope: !658)
!1760 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 122, column: 41, scope: !1038)
!1764 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1761)
!1765 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1762)
!1766 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !1763)
!1767 = !DILocation(line: 122, column: 21, scope: !1038)
!1768 = !DILocation(line: 125, column: 15, scope: !1038)
!1769 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 126, column: 9, scope: !1047)
!1771 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !1770)
!1772 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !1770)
!1773 = !DILocation(line: 126, column: 7, scope: !1038)
!1774 = !DILocation(line: 128, column: 25, scope: !1045)
!1775 = !DILocation(line: 131, column: 40, scope: !1046)
!1776 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 131, column: 5, scope: !1046)
!1778 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !1777)
!1779 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !1777)
!1780 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !1777)
!1782 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !1781)
!1783 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !1781)
!1784 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !1781)
!1785 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !1781)
!1786 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !1781)
!1787 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !1777)
!1789 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1788)
!1790 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1788)
!1791 = !DILocation(line: 132, column: 3, scope: !1046)
!1792 = !DILocation(line: 0, scope: !1038)
!1793 = !DILocation(line: 139, column: 3, scope: !1038)
!1794 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !650, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1803}
!1796 = !DILocalVariable(name: "f", arg: 1, scope: !1794, file: !124, line: 144, type: !240)
!1797 = !DILocalVariable(name: "next", scope: !1794, file: !124, line: 149, type: !240)
!1798 = !DILocalVariable(name: "temp", scope: !1794, file: !124, line: 155, type: !240)
!1799 = !DILocalVariable(name: "waitq", scope: !1794, file: !124, line: 156, type: !150)
!1800 = !DILocalVariable(name: "first", scope: !1801, file: !124, line: 163, type: !240)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !124, line: 163, column: 12)
!1802 = distinct !DILexicalBlock(scope: !1794, file: !124, line: 160, column: 25)
!1803 = !DILocalVariable(name: "__mptr", scope: !1804, file: !124, line: 163, type: !1052)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !124, line: 163, column: 12)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !124, line: 163, column: 12)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !124, line: 163, column: 12)
!1807 = !DILocation(line: 144, column: 33, scope: !1794)
!1808 = !DILocation(line: 147, column: 6, scope: !1794)
!1809 = !DILocation(line: 147, column: 15, scope: !1794)
!1810 = !DILocation(line: 149, column: 15, scope: !1794)
!1811 = !DILocation(line: 156, column: 34, scope: !1794)
!1812 = !DILocation(line: 156, column: 21, scope: !1794)
!1813 = !DILocation(line: 160, column: 12, scope: !1794)
!1814 = !DILocation(line: 160, column: 21, scope: !1794)
!1815 = !DILocation(line: 160, column: 3, scope: !1794)
!1816 = !DILocation(line: 163, column: 12, scope: !1801)
!1817 = !DILocation(line: 163, column: 12, scope: !1806)
!1818 = !DILocation(line: 155, column: 15, scope: !1794)
!1819 = !DILocation(line: 164, column: 27, scope: !1802)
!1820 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 164, column: 5, scope: !1802)
!1822 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !1821)
!1823 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !1821)
!1824 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !1821)
!1826 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !1825)
!1827 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !1825)
!1828 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !1825)
!1829 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !1825)
!1830 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !1825)
!1831 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !1821)
!1833 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1832)
!1834 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1832)
!1835 = !DILocation(line: 165, column: 16, scope: !1802)
!1836 = !DILocation(line: 168, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1802, file: !124, line: 168, column: 9)
!1838 = !DILocation(line: 168, column: 9, scope: !1802)
!1839 = !DILocalVariable(name: "f", arg: 1, scope: !1840, file: !124, line: 663, type: !240)
!1840 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !1841, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!48, !240, !29}
!1843 = !{!1839, !1844, !1845, !1846}
!1844 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1840, file: !124, line: 663, type: !29)
!1845 = !DILocalVariable(name: "curr_thread", scope: !1840, file: !124, line: 666, type: !285)
!1846 = !DILocalVariable(name: "fiber_sched_queue", scope: !1840, file: !124, line: 674, type: !150)
!1847 = !DILocation(line: 663, column: 30, scope: !1840, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 171, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1837, file: !124, line: 168, column: 14)
!1850 = !DILocation(line: 663, column: 41, scope: !1840, inlinedAt: !1848)
!1851 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 666, column: 30, scope: !1840, inlinedAt: !1848)
!1855 = !DILocation(line: 666, column: 16, scope: !1840, inlinedAt: !1848)
!1856 = !DILocation(line: 366, column: 29, scope: !1857, inlinedAt: !1864)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !124, line: 366, column: 29)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !124, line: 366, column: 29)
!1859 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1860)
!1860 = !{!1861, !1862, !1863}
!1861 = !DILocalVariable(name: "sys", scope: !1859, file: !124, line: 366, type: !264)
!1862 = !DILocalVariable(name: "__r", scope: !1858, file: !124, line: 366, type: !264)
!1863 = !DILocalVariable(name: "__r", scope: !1857, file: !124, line: 366, type: !264)
!1864 = distinct !DILocation(line: 373, column: 20, scope: !1865, inlinedAt: !1873)
!1865 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !768, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1866)
!1866 = !{!1867, !1868, !1869, !1871}
!1867 = !DILocalVariable(name: "random_cpu", scope: !1865, file: !124, line: 373, type: !48)
!1868 = !DILocalVariable(name: "sys", scope: !1865, file: !124, line: 374, type: !264)
!1869 = !DILocalVariable(name: "__r", scope: !1870, file: !124, line: 374, type: !264)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !124, line: 374, column: 27)
!1871 = !DILocalVariable(name: "__r", scope: !1872, file: !124, line: 374, type: !264)
!1872 = distinct !DILexicalBlock(scope: !1870, file: !124, line: 374, column: 27)
!1873 = distinct !DILocation(line: 670, column: 19, scope: !1874, inlinedAt: !1848)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !124, line: 669, column: 23)
!1875 = distinct !DILexicalBlock(scope: !1840, file: !124, line: 669, column: 7)
!1876 = !{i32 -2147185111}
!1877 = !DILocation(line: 366, column: 29, scope: !1858, inlinedAt: !1864)
!1878 = !DILocation(line: 366, column: 23, scope: !1859, inlinedAt: !1864)
!1879 = !DILocation(line: 358, column: 5, scope: !1880, inlinedAt: !1885)
!1880 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !1881, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!25}
!1883 = !{!1884}
!1884 = !DILocalVariable(name: "t", scope: !1880, file: !124, line: 358, type: !25)
!1885 = distinct !DILocation(line: 367, column: 18, scope: !1859, inlinedAt: !1864)
!1886 = !DILocation(line: 359, column: 5, scope: !1880, inlinedAt: !1885)
!1887 = !DILocation(line: 360, column: 12, scope: !1880, inlinedAt: !1885)
!1888 = !DILocation(line: 358, column: 14, scope: !1880, inlinedAt: !1885)
!1889 = !DILocation(line: 361, column: 1, scope: !1880, inlinedAt: !1885)
!1890 = !DILocation(line: 367, column: 39, scope: !1859, inlinedAt: !1864)
!1891 = !DILocation(line: 367, column: 34, scope: !1859, inlinedAt: !1864)
!1892 = !DILocation(line: 367, column: 32, scope: !1859, inlinedAt: !1864)
!1893 = !DILocation(line: 374, column: 27, scope: !1872, inlinedAt: !1873)
!1894 = !{i32 -2147182110}
!1895 = !DILocation(line: 374, column: 27, scope: !1870, inlinedAt: !1873)
!1896 = !DILocation(line: 374, column: 21, scope: !1865, inlinedAt: !1873)
!1897 = !DILocation(line: 375, column: 10, scope: !1865, inlinedAt: !1873)
!1898 = !DILocation(line: 0, scope: !1840, inlinedAt: !1848)
!1899 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 674, column: 41, scope: !1840, inlinedAt: !1848)
!1903 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1900)
!1904 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1901)
!1905 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !1902)
!1906 = !DILocation(line: 674, column: 21, scope: !1840, inlinedAt: !1848)
!1907 = !DILocation(line: 678, column: 6, scope: !1840, inlinedAt: !1848)
!1908 = !DILocation(line: 678, column: 15, scope: !1840, inlinedAt: !1848)
!1909 = !DILocation(line: 679, column: 22, scope: !1840, inlinedAt: !1848)
!1910 = !DILocalVariable(name: "nelm", arg: 1, scope: !1911, file: !53, line: 116, type: !150)
!1911 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1081, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1912)
!1912 = !{!1910, !1913}
!1913 = !DILocalVariable(name: "head", arg: 2, scope: !1911, file: !53, line: 116, type: !150)
!1914 = !DILocation(line: 116, column: 52, scope: !1911, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 679, column: 3, scope: !1840, inlinedAt: !1848)
!1916 = !DILocation(line: 116, column: 76, scope: !1911, inlinedAt: !1915)
!1917 = !DILocation(line: 118, column: 25, scope: !1911, inlinedAt: !1915)
!1918 = !DILocalVariable(name: "nelm", arg: 1, scope: !1919, file: !53, line: 85, type: !150)
!1919 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1920, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !150, !150, !150}
!1922 = !{!1918, !1923, !1924}
!1923 = !DILocalVariable(name: "prev", arg: 2, scope: !1919, file: !53, line: 86, type: !150)
!1924 = !DILocalVariable(name: "next", arg: 3, scope: !1919, file: !53, line: 87, type: !150)
!1925 = !DILocation(line: 85, column: 49, scope: !1919, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 118, column: 2, scope: !1911, inlinedAt: !1915)
!1927 = !DILocation(line: 86, column: 28, scope: !1919, inlinedAt: !1926)
!1928 = !DILocation(line: 87, column: 28, scope: !1919, inlinedAt: !1926)
!1929 = !DILocation(line: 89, column: 13, scope: !1919, inlinedAt: !1926)
!1930 = !DILocation(line: 90, column: 8, scope: !1919, inlinedAt: !1926)
!1931 = !DILocation(line: 90, column: 13, scope: !1919, inlinedAt: !1926)
!1932 = !DILocation(line: 91, column: 8, scope: !1919, inlinedAt: !1926)
!1933 = !DILocation(line: 91, column: 13, scope: !1919, inlinedAt: !1926)
!1934 = !DILocation(line: 92, column: 8, scope: !1919, inlinedAt: !1926)
!1935 = !DILocation(line: 92, column: 13, scope: !1919, inlinedAt: !1926)
!1936 = !DILocation(line: 683, column: 20, scope: !1937, inlinedAt: !1848)
!1937 = distinct !DILexicalBlock(scope: !1840, file: !124, line: 683, column: 7)
!1938 = !DILocation(line: 683, column: 7, scope: !1937, inlinedAt: !1848)
!1939 = !DILocation(line: 683, column: 7, scope: !1840, inlinedAt: !1848)
!1940 = !DILocation(line: 687, column: 5, scope: !1941, inlinedAt: !1848)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !124, line: 683, column: 26)
!1942 = !DILocation(line: 688, column: 3, scope: !1941, inlinedAt: !1848)
!1943 = distinct !{!1943, !1815, !1944}
!1944 = !DILocation(line: 173, column: 3, scope: !1794)
!1945 = !DILocation(line: 175, column: 6, scope: !1794)
!1946 = !DILocation(line: 175, column: 14, scope: !1794)
!1947 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 179, column: 10, scope: !1794)
!1952 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1948)
!1953 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1949)
!1954 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !1950)
!1955 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !1951)
!1956 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !1951)
!1957 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !1951)
!1959 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !1958)
!1960 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !1958)
!1961 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !1951)
!1962 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !1951)
!1963 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !1951)
!1964 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !1951)
!1966 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !1965)
!1967 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !1965)
!1968 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !1965)
!1970 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !1969)
!1971 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !1969)
!1972 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !1969)
!1973 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !1969)
!1974 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !1969)
!1975 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !1965)
!1977 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1976)
!1978 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1976)
!1979 = !DILocation(line: 180, column: 8, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1794, file: !124, line: 180, column: 7)
!1981 = !DILocation(line: 180, column: 7, scope: !1794)
!1982 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 181, column: 12, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1980, file: !124, line: 180, column: 16)
!1987 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1983)
!1988 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1984)
!1989 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !1985)
!1990 = !DILocation(line: 182, column: 3, scope: !1986)
!1991 = !DILocation(line: 0, scope: !1794)
!1992 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 183, column: 3, scope: !1794)
!1995 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !1993)
!1996 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !1994)
!1997 = !DILocation(line: 183, column: 23, scope: !1794)
!1998 = !DILocation(line: 183, column: 34, scope: !1794)
!1999 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 186, column: 19, scope: !1794)
!2002 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2000)
!2003 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2001)
!2004 = !DILocation(line: 186, column: 39, scope: !1794)
!2005 = !DILocation(line: 186, column: 51, scope: !1794)
!2006 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 186, column: 3, scope: !1794)
!2008 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !2007)
!2009 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !2007)
!2010 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !2007)
!2012 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !2011)
!2013 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !2011)
!2014 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !2011)
!2015 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !2011)
!2016 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !2011)
!2017 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !2007)
!2019 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2018)
!2020 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2018)
!2021 = !DILocation(line: 189, column: 3, scope: !1794)
!2022 = !DILocation(line: 190, column: 3, scope: !1794)
!2023 = !DILocation(line: 193, column: 3, scope: !1794)
!2024 = !DILocation(line: 196, column: 1, scope: !1794)
!2025 = !DILocation(line: 663, column: 30, scope: !1840)
!2026 = !DILocation(line: 663, column: 41, scope: !1840)
!2027 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 666, column: 30, scope: !1840)
!2031 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2028)
!2032 = !DILocation(line: 666, column: 16, scope: !1840)
!2033 = !DILocation(line: 669, column: 7, scope: !1875)
!2034 = !DILocation(line: 669, column: 7, scope: !1840)
!2035 = !DILocation(line: 366, column: 29, scope: !1857, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 373, column: 20, scope: !1865, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 670, column: 19, scope: !1874)
!2038 = !DILocation(line: 366, column: 29, scope: !1858, inlinedAt: !2036)
!2039 = !DILocation(line: 366, column: 23, scope: !1859, inlinedAt: !2036)
!2040 = !DILocation(line: 358, column: 5, scope: !1880, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 367, column: 18, scope: !1859, inlinedAt: !2036)
!2042 = !DILocation(line: 359, column: 5, scope: !1880, inlinedAt: !2041)
!2043 = !DILocation(line: 360, column: 12, scope: !1880, inlinedAt: !2041)
!2044 = !DILocation(line: 358, column: 14, scope: !1880, inlinedAt: !2041)
!2045 = !DILocation(line: 361, column: 1, scope: !1880, inlinedAt: !2041)
!2046 = !DILocation(line: 367, column: 39, scope: !1859, inlinedAt: !2036)
!2047 = !DILocation(line: 367, column: 34, scope: !1859, inlinedAt: !2036)
!2048 = !DILocation(line: 367, column: 32, scope: !1859, inlinedAt: !2036)
!2049 = !DILocation(line: 374, column: 27, scope: !1872, inlinedAt: !2037)
!2050 = !DILocation(line: 374, column: 27, scope: !1870, inlinedAt: !2037)
!2051 = !DILocation(line: 374, column: 21, scope: !1865, inlinedAt: !2037)
!2052 = !DILocation(line: 375, column: 10, scope: !1865, inlinedAt: !2037)
!2053 = !DILocation(line: 671, column: 3, scope: !1874)
!2054 = !DILocation(line: 0, scope: !1840)
!2055 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 674, column: 41, scope: !1840)
!2059 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2056)
!2060 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2057)
!2061 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !2058)
!2062 = !DILocation(line: 674, column: 21, scope: !1840)
!2063 = !DILocation(line: 678, column: 6, scope: !1840)
!2064 = !DILocation(line: 678, column: 15, scope: !1840)
!2065 = !DILocation(line: 679, column: 22, scope: !1840)
!2066 = !DILocation(line: 116, column: 52, scope: !1911, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 679, column: 3, scope: !1840)
!2068 = !DILocation(line: 116, column: 76, scope: !1911, inlinedAt: !2067)
!2069 = !DILocation(line: 118, column: 25, scope: !1911, inlinedAt: !2067)
!2070 = !DILocation(line: 85, column: 49, scope: !1919, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 118, column: 2, scope: !1911, inlinedAt: !2067)
!2072 = !DILocation(line: 86, column: 28, scope: !1919, inlinedAt: !2071)
!2073 = !DILocation(line: 87, column: 28, scope: !1919, inlinedAt: !2071)
!2074 = !DILocation(line: 89, column: 13, scope: !1919, inlinedAt: !2071)
!2075 = !DILocation(line: 90, column: 8, scope: !1919, inlinedAt: !2071)
!2076 = !DILocation(line: 90, column: 13, scope: !1919, inlinedAt: !2071)
!2077 = !DILocation(line: 91, column: 8, scope: !1919, inlinedAt: !2071)
!2078 = !DILocation(line: 91, column: 13, scope: !1919, inlinedAt: !2071)
!2079 = !DILocation(line: 92, column: 8, scope: !1919, inlinedAt: !2071)
!2080 = !DILocation(line: 92, column: 13, scope: !1919, inlinedAt: !2071)
!2081 = !DILocation(line: 683, column: 20, scope: !1937)
!2082 = !DILocation(line: 683, column: 7, scope: !1937)
!2083 = !DILocation(line: 683, column: 7, scope: !1840)
!2084 = !DILocation(line: 687, column: 5, scope: !1941)
!2085 = !DILocation(line: 688, column: 3, scope: !1941)
!2086 = !DILocation(line: 690, column: 3, scope: !1840)
!2087 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !650, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2088)
!2088 = !{!2089}
!2089 = !DILocalVariable(name: "f_to", arg: 1, scope: !2087, file: !124, line: 198, type: !240)
!2090 = !DILocation(line: 198, column: 33, scope: !2087)
!2091 = !DILocation(line: 202, column: 9, scope: !2087)
!2092 = !DILocation(line: 202, column: 19, scope: !2087)
!2093 = !DILocation(line: 202, column: 32, scope: !2087)
!2094 = !DILocation(line: 202, column: 3, scope: !2087)
!2095 = !DILocation(line: 208, column: 3, scope: !2087)
!2096 = !DILocation(line: 210, column: 3, scope: !2087)
!2097 = !DILocation(line: 274, column: 33, scope: !649)
!2098 = !DILocation(line: 276, column: 26, scope: !649)
!2099 = !DILocation(line: 276, column: 37, scope: !649)
!2100 = !DILocation(line: 276, column: 6, scope: !649)
!2101 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 277, column: 3, scope: !649)
!2103 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2102)
!2104 = !DILocation(line: 276, column: 32, scope: !649)
!2105 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2102)
!2106 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2102)
!2107 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2102)
!2108 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 278, column: 3, scope: !649)
!2110 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2109)
!2111 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2109)
!2112 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2109)
!2113 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2109)
!2114 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 279, column: 3, scope: !649)
!2116 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2115)
!2117 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2115)
!2118 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2115)
!2119 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2115)
!2120 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 280, column: 3, scope: !649)
!2122 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2121)
!2123 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2121)
!2124 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2121)
!2125 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2121)
!2126 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 281, column: 3, scope: !649)
!2128 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2127)
!2129 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2127)
!2130 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2127)
!2131 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2127)
!2132 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 282, column: 3, scope: !649)
!2134 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2133)
!2135 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2133)
!2136 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2133)
!2137 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2133)
!2138 = !DILocation(line: 283, column: 18, scope: !649)
!2139 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 283, column: 3, scope: !649)
!2141 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2140)
!2142 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2140)
!2143 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2140)
!2144 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2140)
!2145 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 284, column: 3, scope: !649)
!2147 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2146)
!2148 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2146)
!2149 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2146)
!2150 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2146)
!2151 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 285, column: 3, scope: !649)
!2153 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2152)
!2154 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2152)
!2155 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2152)
!2156 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2152)
!2157 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 286, column: 3, scope: !649)
!2159 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2158)
!2160 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2158)
!2161 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2158)
!2162 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2158)
!2163 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 287, column: 3, scope: !649)
!2165 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2164)
!2166 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2164)
!2167 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2164)
!2168 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2164)
!2169 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 288, column: 3, scope: !649)
!2171 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2170)
!2172 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2170)
!2173 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2170)
!2174 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2170)
!2175 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 289, column: 3, scope: !649)
!2177 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2176)
!2178 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2176)
!2179 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2176)
!2180 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2176)
!2181 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 290, column: 3, scope: !649)
!2183 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2182)
!2184 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2182)
!2185 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2182)
!2186 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2182)
!2187 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 291, column: 3, scope: !649)
!2189 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2188)
!2190 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2188)
!2191 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2188)
!2192 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2188)
!2193 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 292, column: 3, scope: !649)
!2195 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2194)
!2196 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2194)
!2197 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2194)
!2198 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2194)
!2199 = !DILocation(line: 294, column: 3, scope: !649)
!2200 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !2201, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!48, !240}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "f_to", arg: 1, scope: !2200, file: !124, line: 299, type: !240)
!2205 = !DILocalVariable(name: "f_from", scope: !2200, file: !124, line: 302, type: !240)
!2206 = !DILocalVariable(name: "fiber_sched_queue", scope: !2207, file: !124, line: 312, type: !150)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !124, line: 310, column: 63)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !124, line: 310, column: 7)
!2209 = !DILocation(line: 299, column: 36, scope: !2200)
!2210 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 302, column: 24, scope: !2200)
!2214 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2211)
!2215 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2212)
!2216 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !2213)
!2217 = !DILocation(line: 302, column: 15, scope: !2200)
!2218 = !DILocation(line: 305, column: 15, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2200, file: !124, line: 305, column: 7)
!2220 = !DILocation(line: 305, column: 32, scope: !2219)
!2221 = !DILocation(line: 306, column: 22, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !124, line: 305, column: 61)
!2223 = !DILocation(line: 307, column: 3, scope: !2222)
!2224 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 310, column: 17, scope: !2208)
!2228 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2225)
!2229 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2226)
!2230 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !2227)
!2231 = !DILocation(line: 310, column: 14, scope: !2208)
!2232 = !DILocation(line: 310, column: 34, scope: !2208)
!2233 = !DILocation(line: 310, column: 45, scope: !2208)
!2234 = !DILocation(line: 310, column: 54, scope: !2208)
!2235 = !DILocation(line: 310, column: 7, scope: !2200)
!2236 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 312, column: 43, scope: !2207)
!2240 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2237)
!2241 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2238)
!2242 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !2239)
!2243 = !DILocation(line: 312, column: 23, scope: !2207)
!2244 = !DILocation(line: 318, column: 29, scope: !2207)
!2245 = !DILocation(line: 116, column: 52, scope: !1911, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 318, column: 5, scope: !2207)
!2247 = !DILocation(line: 116, column: 76, scope: !1911, inlinedAt: !2246)
!2248 = !DILocation(line: 118, column: 25, scope: !1911, inlinedAt: !2246)
!2249 = !DILocation(line: 85, column: 49, scope: !1919, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 118, column: 2, scope: !1911, inlinedAt: !2246)
!2251 = !DILocation(line: 86, column: 28, scope: !1919, inlinedAt: !2250)
!2252 = !DILocation(line: 87, column: 28, scope: !1919, inlinedAt: !2250)
!2253 = !DILocation(line: 89, column: 13, scope: !1919, inlinedAt: !2250)
!2254 = !DILocation(line: 90, column: 8, scope: !1919, inlinedAt: !2250)
!2255 = !DILocation(line: 90, column: 13, scope: !1919, inlinedAt: !2250)
!2256 = !DILocation(line: 91, column: 8, scope: !1919, inlinedAt: !2250)
!2257 = !DILocation(line: 91, column: 13, scope: !1919, inlinedAt: !2250)
!2258 = !DILocation(line: 92, column: 8, scope: !1919, inlinedAt: !2250)
!2259 = !DILocation(line: 92, column: 13, scope: !1919, inlinedAt: !2250)
!2260 = !DILocation(line: 319, column: 3, scope: !2207)
!2261 = !DILocation(line: 323, column: 16, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2200, file: !124, line: 323, column: 7)
!2263 = !DILocation(line: 323, column: 8, scope: !2262)
!2264 = !DILocation(line: 323, column: 7, scope: !2200)
!2265 = !DILocation(line: 324, column: 29, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !124, line: 323, column: 24)
!2267 = !DILocalVariable(name: "vc", arg: 1, scope: !2268, file: !124, line: 906, type: !88)
!2268 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 906, type: !2269, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !88}
!2271 = !{!2267, !2272}
!2272 = !DILocalVariable(name: "curr_fiber", scope: !2268, file: !124, line: 909, type: !240)
!2273 = !DILocation(line: 906, column: 49, scope: !2268, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 324, column: 5, scope: !2266)
!2275 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 909, column: 28, scope: !2268, inlinedAt: !2274)
!2279 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2276)
!2280 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2277)
!2281 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !2278)
!2282 = !DILocation(line: 909, column: 15, scope: !2268, inlinedAt: !2274)
!2283 = !DILocation(line: 912, column: 15, scope: !2268, inlinedAt: !2274)
!2284 = !DILocation(line: 912, column: 18, scope: !2268, inlinedAt: !2274)
!2285 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 913, column: 3, scope: !2268, inlinedAt: !2274)
!2287 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2286)
!2288 = !DILocation(line: 913, column: 21, scope: !2268, inlinedAt: !2274)
!2289 = !DILocation(line: 913, column: 24, scope: !2268, inlinedAt: !2274)
!2290 = !DILocation(line: 325, column: 3, scope: !2266)
!2291 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 328, column: 3, scope: !2200)
!2294 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2292)
!2295 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2293)
!2296 = !DILocation(line: 328, column: 23, scope: !2200)
!2297 = !DILocation(line: 328, column: 34, scope: !2200)
!2298 = !DILocation(line: 329, column: 20, scope: !2200)
!2299 = !DILocation(line: 330, column: 9, scope: !2200)
!2300 = !DILocation(line: 330, column: 18, scope: !2200)
!2301 = !DILocation(line: 331, column: 3, scope: !2200)
!2302 = !DILocation(line: 333, column: 3, scope: !2200)
!2303 = !DILocation(line: 906, column: 49, scope: !2268)
!2304 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 909, column: 28, scope: !2268)
!2308 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2305)
!2309 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2306)
!2310 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !2307)
!2311 = !DILocation(line: 909, column: 15, scope: !2268)
!2312 = !DILocation(line: 912, column: 15, scope: !2268)
!2313 = !DILocation(line: 912, column: 18, scope: !2268)
!2314 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 913, column: 3, scope: !2268)
!2316 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2315)
!2317 = !DILocation(line: 913, column: 21, scope: !2268)
!2318 = !DILocation(line: 913, column: 24, scope: !2268)
!2319 = !DILocation(line: 914, column: 1, scope: !2268)
!2320 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !2321, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null}
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "curr", scope: !2320, file: !124, line: 338, type: !240)
!2325 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 338, column: 22, scope: !2320)
!2329 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2326)
!2330 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2327)
!2331 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !2328)
!2332 = !DILocation(line: 338, column: 15, scope: !2320)
!2333 = !DILocation(line: 340, column: 3, scope: !2320)
!2334 = !DILocation(line: 341, column: 1, scope: !2320)
!2335 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !2336, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!29, !240}
!2338 = !{!2339, !2340, !2341}
!2339 = !DILocalVariable(name: "f", arg: 1, scope: !2335, file: !124, line: 343, type: !240)
!2340 = !DILocalVariable(name: "idle_fiber", scope: !2335, file: !124, line: 345, type: !240)
!2341 = !DILocalVariable(name: "result", scope: !2335, file: !124, line: 348, type: !29)
!2342 = !DILocation(line: 343, column: 36, scope: !2335)
!2343 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 345, column: 28, scope: !2335)
!2347 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2344)
!2348 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !2345)
!2349 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !2346)
!2350 = !DILocation(line: 345, column: 15, scope: !2335)
!2351 = !DILocation(line: 348, column: 11, scope: !2335)
!2352 = !DILocation(line: 349, column: 18, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2335, file: !124, line: 349, column: 7)
!2354 = !DILocation(line: 349, column: 7, scope: !2335)
!2355 = !DILocation(line: 353, column: 3, scope: !2335)
!2356 = !DILocation(line: 366, column: 29, scope: !1857, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 373, column: 20, scope: !1865)
!2358 = !DILocation(line: 366, column: 29, scope: !1858, inlinedAt: !2357)
!2359 = !DILocation(line: 366, column: 23, scope: !1859, inlinedAt: !2357)
!2360 = !DILocation(line: 358, column: 5, scope: !1880, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 367, column: 18, scope: !1859, inlinedAt: !2357)
!2362 = !DILocation(line: 359, column: 5, scope: !1880, inlinedAt: !2361)
!2363 = !DILocation(line: 360, column: 12, scope: !1880, inlinedAt: !2361)
!2364 = !DILocation(line: 358, column: 14, scope: !1880, inlinedAt: !2361)
!2365 = !DILocation(line: 361, column: 1, scope: !1880, inlinedAt: !2361)
!2366 = !DILocation(line: 367, column: 39, scope: !1859, inlinedAt: !2357)
!2367 = !DILocation(line: 367, column: 34, scope: !1859, inlinedAt: !2357)
!2368 = !DILocation(line: 367, column: 32, scope: !1859, inlinedAt: !2357)
!2369 = !DILocation(line: 374, column: 27, scope: !1872)
!2370 = !DILocation(line: 374, column: 27, scope: !1870)
!2371 = !DILocation(line: 374, column: 21, scope: !1865)
!2372 = !DILocation(line: 375, column: 10, scope: !1865)
!2373 = !DILocation(line: 375, column: 33, scope: !1865)
!2374 = !DILocation(line: 375, column: 42, scope: !1865)
!2375 = !DILocation(line: 375, column: 3, scope: !1865)
!2376 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !2201, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2377)
!2377 = !{!2378, !2379, !2380, !2382, !2384, !2385, !2386, !2387, !2389, !2394}
!2378 = !DILocalVariable(name: "to_del", arg: 1, scope: !2376, file: !124, line: 383, type: !240)
!2379 = !DILocalVariable(name: "sys", scope: !2376, file: !124, line: 386, type: !264)
!2380 = !DILocalVariable(name: "__r", scope: !2381, file: !124, line: 386, type: !264)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !124, line: 386, column: 26)
!2382 = !DILocalVariable(name: "__r", scope: !2383, file: !124, line: 386, type: !264)
!2383 = distinct !DILexicalBlock(scope: !2381, file: !124, line: 386, column: 26)
!2384 = !DILocalVariable(name: "cpu_iter", scope: !2376, file: !124, line: 387, type: !48)
!2385 = !DILocalVariable(name: "temp", scope: !2376, file: !124, line: 390, type: !150)
!2386 = !DILocalVariable(name: "test", scope: !2376, file: !124, line: 391, type: !240)
!2387 = !DILocalVariable(name: "iter", scope: !2388, file: !124, line: 392, type: !48)
!2388 = distinct !DILexicalBlock(scope: !2376, file: !124, line: 392, column: 3)
!2389 = !DILocalVariable(name: "__mptr", scope: !2390, file: !124, line: 395, type: !1052)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !124, line: 395, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !124, line: 395, column: 5)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !124, line: 392, column: 46)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !124, line: 392, column: 3)
!2394 = !DILocalVariable(name: "__mptr", scope: !2395, file: !124, line: 395, type: !1052)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !124, line: 395, column: 5)
!2396 = distinct !DILexicalBlock(scope: !2391, file: !124, line: 395, column: 5)
!2397 = !DILocation(line: 383, column: 42, scope: !2376)
!2398 = !DILocation(line: 386, column: 26, scope: !2383)
!2399 = !{i32 -2147179109}
!2400 = !DILocation(line: 386, column: 26, scope: !2381)
!2401 = !DILocation(line: 386, column: 20, scope: !2376)
!2402 = !DILocation(line: 387, column: 23, scope: !2376)
!2403 = !DILocation(line: 387, column: 7, scope: !2376)
!2404 = !DILocation(line: 392, column: 12, scope: !2388)
!2405 = !DILocation(line: 392, column: 27, scope: !2393)
!2406 = !DILocation(line: 392, column: 3, scope: !2388)
!2407 = !DILocation(line: 394, column: 14, scope: !2392)
!2408 = !DILocation(line: 394, column: 31, scope: !2392)
!2409 = !DILocation(line: 394, column: 40, scope: !2392)
!2410 = !DILocation(line: 390, column: 21, scope: !2376)
!2411 = !DILocation(line: 395, column: 5, scope: !2390)
!2412 = !DILocation(line: 391, column: 15, scope: !2376)
!2413 = !DILocation(line: 0, scope: !2391)
!2414 = !DILocation(line: 395, column: 5, scope: !2391)
!2415 = !DILocation(line: 395, column: 5, scope: !2396)
!2416 = !DILocation(line: 400, column: 16, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !124, line: 400, column: 11)
!2418 = distinct !DILexicalBlock(scope: !2396, file: !124, line: 395, column: 48)
!2419 = !DILocation(line: 400, column: 11, scope: !2418)
!2420 = distinct !{!2420, !2414, !2421}
!2421 = !DILocation(line: 404, column: 5, scope: !2391)
!2422 = !DILocation(line: 392, column: 43, scope: !2393)
!2423 = distinct !{!2423, !2406, !2424}
!2424 = !DILocation(line: 405, column: 3, scope: !2388)
!2425 = !DILocation(line: 401, column: 33, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2417, file: !124, line: 400, column: 26)
!2427 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 401, column: 9, scope: !2426)
!2429 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !2428)
!2430 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !2428)
!2431 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !2428)
!2433 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !2432)
!2434 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !2432)
!2435 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !2432)
!2436 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !2432)
!2437 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !2432)
!2438 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !2428)
!2440 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2439)
!2441 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2439)
!2442 = !DILocation(line: 408, column: 1, scope: !2376)
!2443 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2448, !2450, !2451, !2457, !2458, !2463, !2465, !2468, !2470}
!2445 = !DILocalVariable(name: "id", scope: !2443, file: !124, line: 437, type: !291)
!2446 = !DILocalVariable(name: "__r", scope: !2447, file: !124, line: 437, type: !291)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !124, line: 437, column: 19)
!2448 = !DILocalVariable(name: "__r", scope: !2449, file: !124, line: 437, type: !291)
!2449 = distinct !DILexicalBlock(scope: !2447, file: !124, line: 437, column: 19)
!2450 = !DILocalVariable(name: "my_cpu", scope: !2443, file: !124, line: 438, type: !270)
!2451 = !DILocalVariable(name: "_p", scope: !2452, file: !124, line: 444, type: !48)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !124, line: 444, column: 2)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !124, line: 444, column: 2)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !124, line: 444, column: 2)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !124, line: 443, column: 29)
!2456 = distinct !DILexicalBlock(scope: !2443, file: !124, line: 443, column: 9)
!2457 = !DILocalVariable(name: "_t", scope: !2452, file: !124, line: 444, type: !160)
!2458 = !DILocalVariable(name: "__r", scope: !2459, file: !124, line: 444, type: !291)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !124, line: 444, column: 2)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !124, line: 444, column: 2)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !124, line: 444, column: 2)
!2462 = distinct !DILexicalBlock(scope: !2452, file: !124, line: 444, column: 2)
!2463 = !DILocalVariable(name: "__r", scope: !2464, file: !124, line: 444, type: !291)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !124, line: 444, column: 2)
!2465 = !DILocalVariable(name: "__r", scope: !2466, file: !124, line: 444, type: !291)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !124, line: 444, column: 2)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !124, line: 444, column: 2)
!2468 = !DILocalVariable(name: "__r", scope: !2469, file: !124, line: 444, type: !291)
!2469 = distinct !DILexicalBlock(scope: !2466, file: !124, line: 444, column: 2)
!2470 = !DILocalVariable(name: "_p", scope: !2471, file: !124, line: 444, type: !48)
!2471 = distinct !DILexicalBlock(scope: !2453, file: !124, line: 444, column: 2)
!2472 = !DILocation(line: 437, column: 19, scope: !2449)
!2473 = !{i32 -2147162346}
!2474 = !DILocation(line: 437, column: 19, scope: !2447)
!2475 = !DILocation(line: 437, column: 14, scope: !2443)
!2476 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 438, column: 27, scope: !2443)
!2478 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !2477)
!2479 = !DILocation(line: 438, column: 18, scope: !2443)
!2480 = !DILocation(line: 442, column: 23, scope: !2443)
!2481 = !DILocation(line: 442, column: 13, scope: !2443)
!2482 = !DILocation(line: 442, column: 21, scope: !2443)
!2483 = !DILocation(line: 443, column: 10, scope: !2456)
!2484 = !DILocation(line: 443, column: 9, scope: !2443)
!2485 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2490)
!2486 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2487, file: !2487, line: 39, type: !2488, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!2487 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!31}
!2490 = distinct !DILocation(line: 444, column: 2, scope: !2453)
!2491 = !DILocation(line: 444, column: 2, scope: !2453)
!2492 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !2497)
!2494 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2487, file: !2487, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2495)
!2495 = !{!2496}
!2496 = !DILocalVariable(name: "base", scope: !2494, file: !2487, line: 84, type: !31)
!2497 = distinct !DILocation(line: 0, scope: !2453)
!2498 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !2497)
!2499 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !2497)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !2487, line: 85, column: 9)
!2501 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !2497)
!2502 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !2497)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !2487, line: 85, column: 15)
!2504 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !2497)
!2505 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !2497)
!2506 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !2497)
!2507 = !DILocation(line: 0, scope: !2500, inlinedAt: !2497)
!2508 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !2513)
!2510 = distinct !DISubprogram(name: "preempt_disable", scope: !2487, file: !2487, line: 46, type: !2321, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2511)
!2511 = !{!2512}
!2512 = !DILocalVariable(name: "base", scope: !2510, file: !2487, line: 48, type: !31)
!2513 = distinct !DILocation(line: 0, scope: !2453)
!2514 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !2513)
!2515 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !2513)
!2516 = distinct !DILexicalBlock(scope: !2510, file: !2487, line: 49, column: 9)
!2517 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !2513)
!2518 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !2513)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !2487, line: 49, column: 15)
!2520 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !2513)
!2521 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !2513)
!2522 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !2513)
!2523 = !DILocation(line: 444, column: 2, scope: !2454)
!2524 = !DILocation(line: 444, column: 2, scope: !2452)
!2525 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 444, column: 2, scope: !2452)
!2527 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2526)
!2528 = !DILocation(line: 444, column: 2, scope: !2461)
!2529 = !DILocation(line: 0, scope: !2461)
!2530 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2537)
!2532 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2487, file: !2487, line: 94, type: !2533, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!39}
!2535 = !{!2536}
!2536 = !DILocalVariable(name: "base", scope: !2532, file: !2487, line: 96, type: !31)
!2537 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2539)
!2538 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2487, file: !2487, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1002)
!2539 = distinct !DILocation(line: 0, scope: !2461)
!2540 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2537)
!2541 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2537)
!2542 = distinct !DILexicalBlock(scope: !2532, file: !2487, line: 97, column: 9)
!2543 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2537)
!2544 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2537)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !2487, line: 97, column: 15)
!2546 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2537)
!2547 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2537)
!2548 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2537)
!2549 = !DILocation(line: 444, column: 2, scope: !2462)
!2550 = !DILocation(line: 444, column: 2, scope: !2460)
!2551 = !DILocation(line: 444, column: 2, scope: !2467)
!2552 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2557)
!2554 = distinct !DISubprogram(name: "preempt_enable", scope: !2487, file: !2487, line: 57, type: !2321, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2555)
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "base", scope: !2554, file: !2487, line: 59, type: !31)
!2557 = distinct !DILocation(line: 444, column: 2, scope: !2452)
!2558 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2557)
!2559 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2557)
!2560 = distinct !DILexicalBlock(scope: !2554, file: !2487, line: 60, column: 9)
!2561 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2557)
!2562 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2557)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !2487, line: 60, column: 15)
!2564 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2557)
!2565 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2557)
!2566 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2557)
!2567 = !DILocation(line: 444, column: 2, scope: !2471)
!2568 = !DILocation(line: 444, column: 2, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !124, line: 444, column: 2)
!2570 = distinct !DILexicalBlock(scope: !2471, file: !124, line: 444, column: 2)
!2571 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 0, scope: !2569)
!2575 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2573)
!2576 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2573)
!2577 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2573)
!2578 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2573)
!2579 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2573)
!2580 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2573)
!2581 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2573)
!2582 = !DILocation(line: 0, scope: !2569)
!2583 = !DILocation(line: 444, column: 2, scope: !2570)
!2584 = !DILocation(line: 444, column: 2, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2569, file: !124, line: 444, column: 2)
!2586 = !DILocation(line: 444, column: 2, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2569, file: !124, line: 444, column: 2)
!2588 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 444, column: 2, scope: !2471)
!2591 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2590)
!2592 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2590)
!2593 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2590)
!2594 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2590)
!2595 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2590)
!2596 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2590)
!2597 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2590)
!2598 = !DILocation(line: 0, scope: !2443)
!2599 = !DILocation(line: 449, column: 1, scope: !2443)
!2600 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !2601, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!280}
!2603 = !{!2604, !2605, !2607, !2609, !2611, !2617, !2618, !2623, !2625, !2628, !2630}
!2604 = !DILocalVariable(name: "state", scope: !2600, file: !124, line: 412, type: !280)
!2605 = !DILocalVariable(name: "p", scope: !2606, file: !124, line: 412, type: !31)
!2606 = distinct !DILexicalBlock(scope: !2600, file: !124, line: 412, column: 74)
!2607 = !DILocalVariable(name: "__r", scope: !2608, file: !124, line: 412, type: !291)
!2608 = distinct !DILexicalBlock(scope: !2606, file: !124, line: 412, column: 74)
!2609 = !DILocalVariable(name: "__r", scope: !2610, file: !124, line: 412, type: !291)
!2610 = distinct !DILexicalBlock(scope: !2608, file: !124, line: 412, column: 74)
!2611 = !DILocalVariable(name: "_p", scope: !2612, file: !124, line: 415, type: !48)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !124, line: 415, column: 9)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !124, line: 415, column: 9)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !124, line: 415, column: 9)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !124, line: 414, column: 17)
!2616 = distinct !DILexicalBlock(scope: !2600, file: !124, line: 414, column: 9)
!2617 = !DILocalVariable(name: "_t", scope: !2612, file: !124, line: 415, type: !160)
!2618 = !DILocalVariable(name: "__r", scope: !2619, file: !124, line: 415, type: !291)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !124, line: 415, column: 9)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !124, line: 415, column: 9)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !124, line: 415, column: 9)
!2622 = distinct !DILexicalBlock(scope: !2612, file: !124, line: 415, column: 9)
!2623 = !DILocalVariable(name: "__r", scope: !2624, file: !124, line: 415, type: !291)
!2624 = distinct !DILexicalBlock(scope: !2619, file: !124, line: 415, column: 9)
!2625 = !DILocalVariable(name: "__r", scope: !2626, file: !124, line: 415, type: !291)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !124, line: 415, column: 9)
!2627 = distinct !DILexicalBlock(scope: !2621, file: !124, line: 415, column: 9)
!2628 = !DILocalVariable(name: "__r", scope: !2629, file: !124, line: 415, type: !291)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !124, line: 415, column: 9)
!2630 = !DILocalVariable(name: "_p", scope: !2631, file: !124, line: 415, type: !48)
!2631 = distinct !DILexicalBlock(scope: !2613, file: !124, line: 415, column: 9)
!2632 = !DILocation(line: 412, column: 74, scope: !2610)
!2633 = !{i32 -2147173855}
!2634 = !DILocation(line: 412, column: 74, scope: !2608)
!2635 = !DILocation(line: 412, column: 74, scope: !2606)
!2636 = !DILocation(line: 414, column: 10, scope: !2616)
!2637 = !DILocation(line: 414, column: 9, scope: !2600)
!2638 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 415, column: 9, scope: !2613)
!2640 = !DILocation(line: 415, column: 9, scope: !2613)
!2641 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 0, scope: !2613)
!2644 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !2643)
!2645 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !2643)
!2646 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !2643)
!2647 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !2643)
!2648 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !2643)
!2649 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !2643)
!2650 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !2643)
!2651 = !DILocation(line: 0, scope: !2500, inlinedAt: !2643)
!2652 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 0, scope: !2613)
!2655 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !2654)
!2656 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !2654)
!2657 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !2654)
!2658 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !2654)
!2659 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !2654)
!2660 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !2654)
!2661 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !2654)
!2662 = !DILocation(line: 415, column: 9, scope: !2614)
!2663 = !DILocation(line: 415, column: 9, scope: !2612)
!2664 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 415, column: 9, scope: !2612)
!2666 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2665)
!2667 = !DILocation(line: 415, column: 9, scope: !2621)
!2668 = !DILocation(line: 0, scope: !2621)
!2669 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 0, scope: !2621)
!2673 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2671)
!2674 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2671)
!2675 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2671)
!2676 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2671)
!2677 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2671)
!2678 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2671)
!2679 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2671)
!2680 = !DILocation(line: 415, column: 9, scope: !2622)
!2681 = !DILocation(line: 415, column: 9, scope: !2620)
!2682 = !DILocation(line: 415, column: 9, scope: !2627)
!2683 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 415, column: 9, scope: !2612)
!2686 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2685)
!2687 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2685)
!2688 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2685)
!2689 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2685)
!2690 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2685)
!2691 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2685)
!2692 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2685)
!2693 = !DILocation(line: 415, column: 9, scope: !2631)
!2694 = !DILocation(line: 415, column: 9, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !124, line: 415, column: 9)
!2696 = distinct !DILexicalBlock(scope: !2631, file: !124, line: 415, column: 9)
!2697 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 0, scope: !2695)
!2701 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2699)
!2702 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2699)
!2703 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2699)
!2704 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2699)
!2705 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2699)
!2706 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2699)
!2707 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2699)
!2708 = !DILocation(line: 0, scope: !2695)
!2709 = !DILocation(line: 415, column: 9, scope: !2696)
!2710 = !DILocation(line: 415, column: 9, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2695, file: !124, line: 415, column: 9)
!2712 = !DILocation(line: 415, column: 9, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2695, file: !124, line: 415, column: 9)
!2714 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 415, column: 9, scope: !2631)
!2717 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2716)
!2718 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2716)
!2719 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2716)
!2720 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2716)
!2721 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2716)
!2722 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2716)
!2723 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2716)
!2724 = !DILocation(line: 412, column: 43, scope: !2600)
!2725 = !DILocation(line: 412, column: 35, scope: !2600)
!2726 = !DILocation(line: 419, column: 2, scope: !2600)
!2727 = !DILocation(line: 421, column: 27, scope: !2600)
!2728 = !DILocation(line: 421, column: 5, scope: !2600)
!2729 = !DILocation(line: 424, column: 29, scope: !2600)
!2730 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 424, column: 5, scope: !2600)
!2732 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2731)
!2733 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2731)
!2734 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2731)
!2735 = !DILocation(line: 426, column: 5, scope: !2600)
!2736 = !DILocation(line: 429, column: 5, scope: !2600)
!2737 = !DILocation(line: 431, column: 5, scope: !2600)
!2738 = !DILocation(line: 0, scope: !2600)
!2739 = !DILocation(line: 432, column: 1, scope: !2600)
!2740 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2741)
!2741 = !{!2742, !2743, !2747, !2748, !2753, !2755, !2758, !2760, !2762, !2768, !2769, !2774, !2776, !2779, !2781}
!2742 = !DILocalVariable(name: "my_cpu", scope: !2740, file: !124, line: 454, type: !270)
!2743 = !DILocalVariable(name: "_p", scope: !2744, file: !124, line: 456, type: !48)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !124, line: 456, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !124, line: 456, column: 5)
!2746 = distinct !DILexicalBlock(scope: !2740, file: !124, line: 456, column: 5)
!2747 = !DILocalVariable(name: "_t", scope: !2744, file: !124, line: 456, type: !160)
!2748 = !DILocalVariable(name: "__r", scope: !2749, file: !124, line: 456, type: !291)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !124, line: 456, column: 5)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !124, line: 456, column: 5)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !124, line: 456, column: 5)
!2752 = distinct !DILexicalBlock(scope: !2744, file: !124, line: 456, column: 5)
!2753 = !DILocalVariable(name: "__r", scope: !2754, file: !124, line: 456, type: !291)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !124, line: 456, column: 5)
!2755 = !DILocalVariable(name: "__r", scope: !2756, file: !124, line: 456, type: !291)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !124, line: 456, column: 5)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !124, line: 456, column: 5)
!2758 = !DILocalVariable(name: "__r", scope: !2759, file: !124, line: 456, type: !291)
!2759 = distinct !DILexicalBlock(scope: !2756, file: !124, line: 456, column: 5)
!2760 = !DILocalVariable(name: "_p", scope: !2761, file: !124, line: 456, type: !48)
!2761 = distinct !DILexicalBlock(scope: !2745, file: !124, line: 456, column: 5)
!2762 = !DILocalVariable(name: "_p", scope: !2763, file: !124, line: 464, type: !48)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !124, line: 464, column: 2)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !124, line: 464, column: 2)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !124, line: 464, column: 2)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !124, line: 463, column: 29)
!2767 = distinct !DILexicalBlock(scope: !2740, file: !124, line: 463, column: 9)
!2768 = !DILocalVariable(name: "_t", scope: !2763, file: !124, line: 464, type: !160)
!2769 = !DILocalVariable(name: "__r", scope: !2770, file: !124, line: 464, type: !291)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !124, line: 464, column: 2)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !124, line: 464, column: 2)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !124, line: 464, column: 2)
!2773 = distinct !DILexicalBlock(scope: !2763, file: !124, line: 464, column: 2)
!2774 = !DILocalVariable(name: "__r", scope: !2775, file: !124, line: 464, type: !291)
!2775 = distinct !DILexicalBlock(scope: !2770, file: !124, line: 464, column: 2)
!2776 = !DILocalVariable(name: "__r", scope: !2777, file: !124, line: 464, type: !291)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !124, line: 464, column: 2)
!2778 = distinct !DILexicalBlock(scope: !2772, file: !124, line: 464, column: 2)
!2779 = !DILocalVariable(name: "__r", scope: !2780, file: !124, line: 464, type: !291)
!2780 = distinct !DILexicalBlock(scope: !2777, file: !124, line: 464, column: 2)
!2781 = !DILocalVariable(name: "_p", scope: !2782, file: !124, line: 464, type: !48)
!2782 = distinct !DILexicalBlock(scope: !2764, file: !124, line: 464, column: 2)
!2783 = !DILocation(line: 454, column: 88, scope: !2740)
!2784 = !DILocation(line: 454, column: 27, scope: !2740)
!2785 = !DILocation(line: 454, column: 18, scope: !2740)
!2786 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 456, column: 5, scope: !2745)
!2788 = !DILocation(line: 456, column: 5, scope: !2745)
!2789 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 0, scope: !2745)
!2792 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !2791)
!2793 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !2791)
!2794 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !2791)
!2795 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !2791)
!2796 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !2791)
!2797 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !2791)
!2798 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !2791)
!2799 = !DILocation(line: 0, scope: !2500, inlinedAt: !2791)
!2800 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 0, scope: !2745)
!2803 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !2802)
!2804 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !2802)
!2805 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !2802)
!2806 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !2802)
!2807 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !2802)
!2808 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !2802)
!2809 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !2802)
!2810 = !DILocation(line: 456, column: 5, scope: !2746)
!2811 = !DILocation(line: 456, column: 5, scope: !2744)
!2812 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 456, column: 5, scope: !2744)
!2814 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2813)
!2815 = !DILocation(line: 456, column: 5, scope: !2751)
!2816 = !DILocation(line: 0, scope: !2751)
!2817 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 0, scope: !2751)
!2821 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2819)
!2822 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2819)
!2823 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2819)
!2824 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2819)
!2825 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2819)
!2826 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2819)
!2827 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2819)
!2828 = !DILocation(line: 456, column: 5, scope: !2752)
!2829 = !DILocation(line: 456, column: 5, scope: !2750)
!2830 = !DILocation(line: 456, column: 5, scope: !2757)
!2831 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 456, column: 5, scope: !2744)
!2834 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2833)
!2835 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2833)
!2836 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2833)
!2837 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2833)
!2838 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2833)
!2839 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2833)
!2840 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2833)
!2841 = !DILocation(line: 456, column: 5, scope: !2761)
!2842 = !DILocation(line: 456, column: 5, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !124, line: 456, column: 5)
!2844 = distinct !DILexicalBlock(scope: !2761, file: !124, line: 456, column: 5)
!2845 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 0, scope: !2843)
!2849 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2847)
!2850 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2847)
!2851 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2847)
!2852 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2847)
!2853 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2847)
!2854 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2847)
!2855 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2847)
!2856 = !DILocation(line: 0, scope: !2843)
!2857 = !DILocation(line: 456, column: 5, scope: !2844)
!2858 = !DILocation(line: 456, column: 5, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2843, file: !124, line: 456, column: 5)
!2860 = !DILocation(line: 456, column: 5, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2843, file: !124, line: 456, column: 5)
!2862 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 456, column: 5, scope: !2761)
!2865 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2864)
!2866 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2864)
!2867 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2864)
!2868 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2864)
!2869 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2864)
!2870 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2864)
!2871 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2864)
!2872 = !DILocation(line: 462, column: 23, scope: !2740)
!2873 = !DILocation(line: 462, column: 13, scope: !2740)
!2874 = !DILocation(line: 462, column: 21, scope: !2740)
!2875 = !DILocation(line: 463, column: 10, scope: !2767)
!2876 = !DILocation(line: 463, column: 9, scope: !2740)
!2877 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 464, column: 2, scope: !2764)
!2879 = !DILocation(line: 464, column: 2, scope: !2764)
!2880 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 0, scope: !2764)
!2883 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !2882)
!2884 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !2882)
!2885 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !2882)
!2886 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !2882)
!2887 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !2882)
!2888 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !2882)
!2889 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !2882)
!2890 = !DILocation(line: 0, scope: !2500, inlinedAt: !2882)
!2891 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 0, scope: !2764)
!2894 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !2893)
!2895 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !2893)
!2896 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !2893)
!2897 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !2893)
!2898 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !2893)
!2899 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !2893)
!2900 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !2893)
!2901 = !DILocation(line: 464, column: 2, scope: !2765)
!2902 = !DILocation(line: 464, column: 2, scope: !2763)
!2903 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 464, column: 2, scope: !2763)
!2905 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2904)
!2906 = !DILocation(line: 464, column: 2, scope: !2772)
!2907 = !DILocation(line: 0, scope: !2772)
!2908 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 0, scope: !2772)
!2912 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2910)
!2913 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2910)
!2914 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2910)
!2915 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2910)
!2916 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2910)
!2917 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2910)
!2918 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2910)
!2919 = !DILocation(line: 464, column: 2, scope: !2773)
!2920 = !DILocation(line: 464, column: 2, scope: !2771)
!2921 = !DILocation(line: 464, column: 2, scope: !2778)
!2922 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 464, column: 2, scope: !2763)
!2925 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2924)
!2926 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2924)
!2927 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2924)
!2928 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2924)
!2929 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2924)
!2930 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2924)
!2931 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2924)
!2932 = !DILocation(line: 464, column: 2, scope: !2782)
!2933 = !DILocation(line: 464, column: 2, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !124, line: 464, column: 2)
!2935 = distinct !DILexicalBlock(scope: !2782, file: !124, line: 464, column: 2)
!2936 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 0, scope: !2934)
!2940 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !2938)
!2941 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !2938)
!2942 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !2938)
!2943 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !2938)
!2944 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !2938)
!2945 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !2938)
!2946 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !2938)
!2947 = !DILocation(line: 0, scope: !2934)
!2948 = !DILocation(line: 464, column: 2, scope: !2935)
!2949 = !DILocation(line: 464, column: 2, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2934, file: !124, line: 464, column: 2)
!2951 = !DILocation(line: 464, column: 2, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2934, file: !124, line: 464, column: 2)
!2953 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 464, column: 2, scope: !2782)
!2956 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !2955)
!2957 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !2955)
!2958 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !2955)
!2959 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !2955)
!2960 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !2955)
!2961 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !2955)
!2962 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !2955)
!2963 = !DILocation(line: 0, scope: !2740)
!2964 = !DILocation(line: 469, column: 1, scope: !2740)
!2965 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2966)
!2966 = !{!2967, !2968, !2969, !2975, !2976, !2981, !2983, !2986, !2988, !2990, !3016, !3022, !3023, !3028, !3030, !3033, !3035, !3037, !3038, !3044, !3045, !3050, !3052, !3055, !3057, !3059, !3060, !3066, !3067, !3072, !3074, !3077, !3079}
!2967 = !DILocalVariable(name: "in", arg: 1, scope: !2965, file: !124, line: 511, type: !31)
!2968 = !DILocalVariable(name: "out", arg: 2, scope: !2965, file: !124, line: 511, type: !75)
!2969 = !DILocalVariable(name: "_p", scope: !2970, file: !124, line: 515, type: !48)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !124, line: 515, column: 5)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !124, line: 515, column: 5)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !124, line: 515, column: 5)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !124, line: 514, column: 51)
!2974 = distinct !DILexicalBlock(scope: !2965, file: !124, line: 514, column: 7)
!2975 = !DILocalVariable(name: "_t", scope: !2970, file: !124, line: 515, type: !160)
!2976 = !DILocalVariable(name: "__r", scope: !2977, file: !124, line: 515, type: !291)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !124, line: 515, column: 5)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !124, line: 515, column: 5)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !124, line: 515, column: 5)
!2980 = distinct !DILexicalBlock(scope: !2970, file: !124, line: 515, column: 5)
!2981 = !DILocalVariable(name: "__r", scope: !2982, file: !124, line: 515, type: !291)
!2982 = distinct !DILexicalBlock(scope: !2977, file: !124, line: 515, column: 5)
!2983 = !DILocalVariable(name: "__r", scope: !2984, file: !124, line: 515, type: !291)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !124, line: 515, column: 5)
!2985 = distinct !DILexicalBlock(scope: !2979, file: !124, line: 515, column: 5)
!2986 = !DILocalVariable(name: "__r", scope: !2987, file: !124, line: 515, type: !291)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !124, line: 515, column: 5)
!2988 = !DILocalVariable(name: "_p", scope: !2989, file: !124, line: 515, type: !48)
!2989 = distinct !DILexicalBlock(scope: !2971, file: !124, line: 515, column: 5)
!2990 = !DILocalVariable(name: "c", scope: !2965, file: !124, line: 520, type: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !2992)
!2992 = !{!2993, !2995, !2996}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2991, file: !86, line: 68, baseType: !2994, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2991, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2991, file: !86, line: 80, baseType: !2997, size: 256, offset: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2991, file: !86, line: 80, size: 256, elements: !2998)
!2998 = !{!2999, !3005, !3012}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2997, file: !86, line: 81, baseType: !3000, size: 192)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !3001)
!3001 = !{!3002, !3003, !3004}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3000, file: !86, line: 50, baseType: !25, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3000, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3000, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2997, file: !86, line: 82, baseType: !3006, size: 256)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3011}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3006, file: !86, line: 56, baseType: !25, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3006, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3006, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !3006, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2997, file: !86, line: 83, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !3014)
!3014 = !{!3015}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3013, file: !86, line: 63, baseType: !25, size: 64)
!3016 = !DILocalVariable(name: "_p", scope: !3017, file: !124, line: 525, type: !48)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !124, line: 525, column: 5)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !124, line: 525, column: 5)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !124, line: 525, column: 5)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !124, line: 524, column: 47)
!3021 = distinct !DILexicalBlock(scope: !2965, file: !124, line: 524, column: 7)
!3022 = !DILocalVariable(name: "_t", scope: !3017, file: !124, line: 525, type: !160)
!3023 = !DILocalVariable(name: "__r", scope: !3024, file: !124, line: 525, type: !291)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !124, line: 525, column: 5)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !124, line: 525, column: 5)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !124, line: 525, column: 5)
!3027 = distinct !DILexicalBlock(scope: !3017, file: !124, line: 525, column: 5)
!3028 = !DILocalVariable(name: "__r", scope: !3029, file: !124, line: 525, type: !291)
!3029 = distinct !DILexicalBlock(scope: !3024, file: !124, line: 525, column: 5)
!3030 = !DILocalVariable(name: "__r", scope: !3031, file: !124, line: 525, type: !291)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !124, line: 525, column: 5)
!3032 = distinct !DILexicalBlock(scope: !3026, file: !124, line: 525, column: 5)
!3033 = !DILocalVariable(name: "__r", scope: !3034, file: !124, line: 525, type: !291)
!3034 = distinct !DILexicalBlock(scope: !3031, file: !124, line: 525, column: 5)
!3035 = !DILocalVariable(name: "_p", scope: !3036, file: !124, line: 525, type: !48)
!3036 = distinct !DILexicalBlock(scope: !3018, file: !124, line: 525, column: 5)
!3037 = !DILocalVariable(name: "state", scope: !2965, file: !124, line: 534, type: !1013)
!3038 = !DILocalVariable(name: "_p", scope: !3039, file: !124, line: 536, type: !48)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !124, line: 536, column: 5)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !124, line: 536, column: 5)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !124, line: 536, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !124, line: 535, column: 17)
!3043 = distinct !DILexicalBlock(scope: !2965, file: !124, line: 535, column: 7)
!3044 = !DILocalVariable(name: "_t", scope: !3039, file: !124, line: 536, type: !160)
!3045 = !DILocalVariable(name: "__r", scope: !3046, file: !124, line: 536, type: !291)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !124, line: 536, column: 5)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !124, line: 536, column: 5)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !124, line: 536, column: 5)
!3049 = distinct !DILexicalBlock(scope: !3039, file: !124, line: 536, column: 5)
!3050 = !DILocalVariable(name: "__r", scope: !3051, file: !124, line: 536, type: !291)
!3051 = distinct !DILexicalBlock(scope: !3046, file: !124, line: 536, column: 5)
!3052 = !DILocalVariable(name: "__r", scope: !3053, file: !124, line: 536, type: !291)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !124, line: 536, column: 5)
!3054 = distinct !DILexicalBlock(scope: !3048, file: !124, line: 536, column: 5)
!3055 = !DILocalVariable(name: "__r", scope: !3056, file: !124, line: 536, type: !291)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !124, line: 536, column: 5)
!3057 = !DILocalVariable(name: "_p", scope: !3058, file: !124, line: 536, type: !48)
!3058 = distinct !DILexicalBlock(scope: !3040, file: !124, line: 536, column: 5)
!3059 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2965, file: !124, line: 541, type: !240)
!3060 = !DILocalVariable(name: "_p", scope: !3061, file: !124, line: 543, type: !48)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !124, line: 543, column: 5)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !124, line: 543, column: 5)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !124, line: 543, column: 5)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !124, line: 542, column: 71)
!3065 = distinct !DILexicalBlock(scope: !2965, file: !124, line: 542, column: 7)
!3066 = !DILocalVariable(name: "_t", scope: !3061, file: !124, line: 543, type: !160)
!3067 = !DILocalVariable(name: "__r", scope: !3068, file: !124, line: 543, type: !291)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !124, line: 543, column: 5)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !124, line: 543, column: 5)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !124, line: 543, column: 5)
!3071 = distinct !DILexicalBlock(scope: !3061, file: !124, line: 543, column: 5)
!3072 = !DILocalVariable(name: "__r", scope: !3073, file: !124, line: 543, type: !291)
!3073 = distinct !DILexicalBlock(scope: !3068, file: !124, line: 543, column: 5)
!3074 = !DILocalVariable(name: "__r", scope: !3075, file: !124, line: 543, type: !291)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !124, line: 543, column: 5)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !124, line: 543, column: 5)
!3077 = !DILocalVariable(name: "__r", scope: !3078, file: !124, line: 543, type: !291)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !124, line: 543, column: 5)
!3079 = !DILocalVariable(name: "_p", scope: !3080, file: !124, line: 543, type: !48)
!3080 = distinct !DILexicalBlock(scope: !3062, file: !124, line: 543, column: 5)
!3081 = !DILocation(line: 511, column: 27, scope: !2965)
!3082 = !DILocation(line: 511, column: 38, scope: !2965)
!3083 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 514, column: 22, scope: !2974)
!3085 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3084)
!3086 = !DILocation(line: 514, column: 22, scope: !2974)
!3087 = !DILocation(line: 514, column: 7, scope: !2974)
!3088 = !DILocation(line: 514, column: 7, scope: !2965)
!3089 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 515, column: 5, scope: !2971)
!3091 = !DILocation(line: 515, column: 5, scope: !2971)
!3092 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 0, scope: !2971)
!3095 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !3094)
!3096 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !3094)
!3097 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !3094)
!3098 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !3094)
!3099 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !3094)
!3100 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !3094)
!3101 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !3094)
!3102 = !DILocation(line: 0, scope: !2500, inlinedAt: !3094)
!3103 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 0, scope: !2971)
!3106 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !3105)
!3107 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !3105)
!3108 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !3105)
!3109 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !3105)
!3110 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !3105)
!3111 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !3105)
!3112 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !3105)
!3113 = !DILocation(line: 515, column: 5, scope: !2972)
!3114 = !DILocation(line: 515, column: 5, scope: !2970)
!3115 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 515, column: 5, scope: !2970)
!3117 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3116)
!3118 = !DILocation(line: 515, column: 5, scope: !2979)
!3119 = !DILocation(line: 0, scope: !2979)
!3120 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 0, scope: !2979)
!3124 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3122)
!3125 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3122)
!3126 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3122)
!3127 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3122)
!3128 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3122)
!3129 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3122)
!3130 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3122)
!3131 = !DILocation(line: 515, column: 5, scope: !2980)
!3132 = !DILocation(line: 515, column: 5, scope: !2978)
!3133 = !DILocation(line: 515, column: 5, scope: !2985)
!3134 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 515, column: 5, scope: !2970)
!3137 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3136)
!3138 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3136)
!3139 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3136)
!3140 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3136)
!3141 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3136)
!3142 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3136)
!3143 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3136)
!3144 = !DILocation(line: 515, column: 5, scope: !2989)
!3145 = !DILocation(line: 515, column: 5, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !124, line: 515, column: 5)
!3147 = distinct !DILexicalBlock(scope: !2989, file: !124, line: 515, column: 5)
!3148 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 0, scope: !3146)
!3152 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3150)
!3153 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3150)
!3154 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3150)
!3155 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3150)
!3156 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3150)
!3157 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3150)
!3158 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3150)
!3159 = !DILocation(line: 0, scope: !3146)
!3160 = !DILocation(line: 515, column: 5, scope: !3147)
!3161 = !DILocation(line: 515, column: 5, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3146, file: !124, line: 515, column: 5)
!3163 = !DILocation(line: 515, column: 5, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3146, file: !124, line: 515, column: 5)
!3165 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 515, column: 5, scope: !2989)
!3168 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3167)
!3169 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3167)
!3170 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3167)
!3171 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3167)
!3172 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3167)
!3173 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3167)
!3174 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3167)
!3175 = !DILocation(line: 520, column: 3, scope: !2965)
!3176 = !DILocation(line: 520, column: 31, scope: !2965)
!3177 = !DILocation(line: 524, column: 7, scope: !3021)
!3178 = !DILocation(line: 0, scope: !2965)
!3179 = !DILocation(line: 524, column: 7, scope: !2965)
!3180 = !DILocation(line: 525, column: 5, scope: !3018)
!3181 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 0, scope: !3018)
!3184 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !3183)
!3185 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !3183)
!3186 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !3183)
!3187 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !3183)
!3188 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !3183)
!3189 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !3183)
!3190 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !3183)
!3191 = !DILocation(line: 0, scope: !2500, inlinedAt: !3183)
!3192 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 0, scope: !3018)
!3195 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !3194)
!3196 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !3194)
!3197 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !3194)
!3198 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !3194)
!3199 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !3194)
!3200 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !3194)
!3201 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !3194)
!3202 = !DILocation(line: 525, column: 5, scope: !3019)
!3203 = !DILocation(line: 525, column: 5, scope: !3017)
!3204 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 525, column: 5, scope: !3017)
!3206 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3205)
!3207 = !DILocation(line: 525, column: 5, scope: !3026)
!3208 = !DILocation(line: 0, scope: !3026)
!3209 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 0, scope: !3026)
!3213 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3211)
!3214 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3211)
!3215 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3211)
!3216 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3211)
!3217 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3211)
!3218 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3211)
!3219 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3211)
!3220 = !DILocation(line: 525, column: 5, scope: !3027)
!3221 = !DILocation(line: 525, column: 5, scope: !3025)
!3222 = !DILocation(line: 525, column: 5, scope: !3032)
!3223 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 525, column: 5, scope: !3017)
!3226 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3225)
!3227 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3225)
!3228 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3225)
!3229 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3225)
!3230 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3225)
!3231 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3225)
!3232 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3225)
!3233 = !DILocation(line: 525, column: 5, scope: !3036)
!3234 = !DILocation(line: 525, column: 5, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !124, line: 525, column: 5)
!3236 = distinct !DILexicalBlock(scope: !3036, file: !124, line: 525, column: 5)
!3237 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 0, scope: !3235)
!3241 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3239)
!3242 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3239)
!3243 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3239)
!3244 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3239)
!3245 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3239)
!3246 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3239)
!3247 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3239)
!3248 = !DILocation(line: 0, scope: !3235)
!3249 = !DILocation(line: 525, column: 5, scope: !3236)
!3250 = !DILocation(line: 525, column: 5, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3235, file: !124, line: 525, column: 5)
!3252 = !DILocation(line: 525, column: 5, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3235, file: !124, line: 525, column: 5)
!3254 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 525, column: 5, scope: !3036)
!3257 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3256)
!3258 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3256)
!3259 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3256)
!3260 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3256)
!3261 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3256)
!3262 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3256)
!3263 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3256)
!3264 = !DILocation(line: 526, column: 5, scope: !3020)
!3265 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 534, column: 24, scope: !2965)
!3268 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3267)
!3269 = !DILocation(line: 534, column: 16, scope: !2965)
!3270 = !DILocation(line: 535, column: 8, scope: !3043)
!3271 = !DILocation(line: 535, column: 7, scope: !2965)
!3272 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 536, column: 5, scope: !3040)
!3274 = !DILocation(line: 536, column: 5, scope: !3040)
!3275 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 0, scope: !3040)
!3278 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !3277)
!3279 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !3277)
!3280 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !3277)
!3281 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !3277)
!3282 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !3277)
!3283 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !3277)
!3284 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !3277)
!3285 = !DILocation(line: 0, scope: !2500, inlinedAt: !3277)
!3286 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 0, scope: !3040)
!3289 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !3288)
!3290 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !3288)
!3291 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !3288)
!3292 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !3288)
!3293 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !3288)
!3294 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !3288)
!3295 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !3288)
!3296 = !DILocation(line: 536, column: 5, scope: !3041)
!3297 = !DILocation(line: 536, column: 5, scope: !3039)
!3298 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 536, column: 5, scope: !3039)
!3300 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3299)
!3301 = !DILocation(line: 536, column: 5, scope: !3048)
!3302 = !DILocation(line: 0, scope: !3048)
!3303 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 0, scope: !3048)
!3307 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3305)
!3308 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3305)
!3309 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3305)
!3310 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3305)
!3311 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3305)
!3312 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3305)
!3313 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3305)
!3314 = !DILocation(line: 536, column: 5, scope: !3049)
!3315 = !DILocation(line: 536, column: 5, scope: !3047)
!3316 = !DILocation(line: 536, column: 5, scope: !3054)
!3317 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 536, column: 5, scope: !3039)
!3320 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3319)
!3321 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3319)
!3322 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3319)
!3323 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3319)
!3324 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3319)
!3325 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3319)
!3326 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3319)
!3327 = !DILocation(line: 536, column: 5, scope: !3058)
!3328 = !DILocation(line: 536, column: 5, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !124, line: 536, column: 5)
!3330 = distinct !DILexicalBlock(scope: !3058, file: !124, line: 536, column: 5)
!3331 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 0, scope: !3329)
!3335 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3333)
!3336 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3333)
!3337 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3333)
!3338 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3333)
!3339 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3333)
!3340 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3333)
!3341 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3333)
!3342 = !DILocation(line: 0, scope: !3329)
!3343 = !DILocation(line: 536, column: 5, scope: !3330)
!3344 = !DILocation(line: 536, column: 5, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3329, file: !124, line: 536, column: 5)
!3346 = !DILocation(line: 536, column: 5, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3329, file: !124, line: 536, column: 5)
!3348 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 536, column: 5, scope: !3058)
!3351 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3350)
!3352 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3350)
!3353 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3350)
!3354 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3350)
!3355 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3350)
!3356 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3350)
!3357 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3350)
!3358 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 538, column: 25, scope: !2965)
!3360 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3359)
!3361 = !DILocation(line: 538, column: 10, scope: !2965)
!3362 = !DILocation(line: 538, column: 23, scope: !2965)
!3363 = !DILocation(line: 541, column: 3, scope: !2965)
!3364 = !DILocation(line: 541, column: 15, scope: !2965)
!3365 = !DILocation(line: 542, column: 7, scope: !3065)
!3366 = !DILocation(line: 542, column: 66, scope: !3065)
!3367 = !DILocation(line: 542, column: 7, scope: !2965)
!3368 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 543, column: 5, scope: !3062)
!3370 = !DILocation(line: 543, column: 5, scope: !3062)
!3371 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 0, scope: !3062)
!3374 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !3373)
!3375 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !3373)
!3376 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !3373)
!3377 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !3373)
!3378 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !3373)
!3379 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !3373)
!3380 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !3373)
!3381 = !DILocation(line: 0, scope: !2500, inlinedAt: !3373)
!3382 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 0, scope: !3062)
!3385 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !3384)
!3386 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !3384)
!3387 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !3384)
!3388 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !3384)
!3389 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !3384)
!3390 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !3384)
!3391 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !3384)
!3392 = !DILocation(line: 543, column: 5, scope: !3063)
!3393 = !DILocation(line: 543, column: 5, scope: !3061)
!3394 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 543, column: 5, scope: !3061)
!3396 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3395)
!3397 = !DILocation(line: 543, column: 5, scope: !3070)
!3398 = !DILocation(line: 0, scope: !3070)
!3399 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 0, scope: !3070)
!3403 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3401)
!3404 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3401)
!3405 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3401)
!3406 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3401)
!3407 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3401)
!3408 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3401)
!3409 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3401)
!3410 = !DILocation(line: 543, column: 5, scope: !3071)
!3411 = !DILocation(line: 543, column: 5, scope: !3069)
!3412 = !DILocation(line: 543, column: 5, scope: !3076)
!3413 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 543, column: 5, scope: !3061)
!3416 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3415)
!3417 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3415)
!3418 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3415)
!3419 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3415)
!3420 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3415)
!3421 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3415)
!3422 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3415)
!3423 = !DILocation(line: 543, column: 5, scope: !3080)
!3424 = !DILocation(line: 543, column: 5, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !124, line: 543, column: 5)
!3426 = distinct !DILexicalBlock(scope: !3080, file: !124, line: 543, column: 5)
!3427 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 0, scope: !3425)
!3431 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3429)
!3432 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3429)
!3433 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3429)
!3434 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3429)
!3435 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3429)
!3436 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3429)
!3437 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3429)
!3438 = !DILocation(line: 0, scope: !3425)
!3439 = !DILocation(line: 543, column: 5, scope: !3426)
!3440 = !DILocation(line: 543, column: 5, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3425, file: !124, line: 543, column: 5)
!3442 = !DILocation(line: 543, column: 5, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3425, file: !124, line: 543, column: 5)
!3444 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 543, column: 5, scope: !3080)
!3447 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3446)
!3448 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3446)
!3449 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3446)
!3450 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3446)
!3451 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3446)
!3452 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3446)
!3453 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3446)
!3454 = !DILocation(line: 547, column: 23, scope: !2965)
!3455 = !DILocation(line: 547, column: 10, scope: !2965)
!3456 = !DILocation(line: 547, column: 21, scope: !2965)
!3457 = !DILocation(line: 548, column: 10, scope: !2965)
!3458 = !DILocation(line: 548, column: 21, scope: !2965)
!3459 = !DILocation(line: 551, column: 3, scope: !2965)
!3460 = !DILocation(line: 551, column: 19, scope: !2965)
!3461 = !DILocation(line: 551, column: 27, scope: !2965)
!3462 = !DILocation(line: 198, column: 33, scope: !2087, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 554, column: 3, scope: !2965)
!3464 = !DILocation(line: 202, column: 9, scope: !2087, inlinedAt: !3463)
!3465 = !DILocation(line: 202, column: 19, scope: !2087, inlinedAt: !3463)
!3466 = !DILocation(line: 202, column: 32, scope: !2087, inlinedAt: !3463)
!3467 = !DILocation(line: 202, column: 3, scope: !2087, inlinedAt: !3463)
!3468 = !DILocation(line: 208, column: 3, scope: !2087, inlinedAt: !3463)
!3469 = !DILocation(line: 557, column: 1, scope: !2965)
!3470 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3471)
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "in", arg: 1, scope: !3470, file: !124, line: 479, type: !31)
!3473 = !DILocalVariable(name: "out", arg: 2, scope: !3470, file: !124, line: 479, type: !75)
!3474 = !DILocation(line: 479, column: 35, scope: !3470)
!3475 = !DILocation(line: 479, column: 46, scope: !3470)
!3476 = !DILocation(line: 481, column: 3, scope: !3470)
!3477 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 704, column: 7, scope: !1018, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 489, column: 5, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3470, file: !124, line: 481, column: 13)
!3483 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3478)
!3484 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3479)
!3485 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !3480)
!3486 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 704, column: 30, scope: !1018, inlinedAt: !3481)
!3488 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3487)
!3489 = !DILocation(line: 704, column: 27, scope: !1018, inlinedAt: !3481)
!3490 = !DILocation(line: 704, column: 7, scope: !1019, inlinedAt: !3481)
!3491 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 708, column: 22, scope: !1019, inlinedAt: !3481)
!3496 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3492)
!3497 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3493)
!3498 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !3494)
!3499 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !3495)
!3500 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !3495)
!3501 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !3495)
!3503 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !3502)
!3504 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !3502)
!3505 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !3495)
!3506 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !3495)
!3507 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !3495)
!3508 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !3495)
!3510 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !3509)
!3511 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !3509)
!3512 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !3509)
!3514 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !3513)
!3515 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !3513)
!3516 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !3513)
!3517 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !3513)
!3518 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !3513)
!3519 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !3509)
!3521 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3520)
!3522 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3520)
!3523 = !DILocation(line: 708, column: 15, scope: !1019, inlinedAt: !3481)
!3524 = !DILocation(line: 718, column: 12, scope: !1098, inlinedAt: !3481)
!3525 = !DILocation(line: 718, column: 7, scope: !1019, inlinedAt: !3481)
!3526 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 719, column: 9, scope: !1105, inlinedAt: !3481)
!3530 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3527)
!3531 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3528)
!3532 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !3529)
!3533 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 719, column: 31, scope: !1105, inlinedAt: !3481)
!3537 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3534)
!3538 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3535)
!3539 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !3536)
!3540 = !DILocation(line: 719, column: 28, scope: !1105, inlinedAt: !3481)
!3541 = !DILocation(line: 719, column: 9, scope: !1106, inlinedAt: !3481)
!3542 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 723, column: 16, scope: !1124, inlinedAt: !3481)
!3546 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3543)
!3547 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3544)
!3548 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !3545)
!3549 = !DILocation(line: 725, column: 3, scope: !1106, inlinedAt: !3481)
!3550 = !DILocation(line: 0, scope: !1019, inlinedAt: !3481)
!3551 = !DILocation(line: 727, column: 10, scope: !1019, inlinedAt: !3481)
!3552 = !DILocation(line: 727, column: 3, scope: !1019, inlinedAt: !3481)
!3553 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 490, column: 28, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3482, file: !124, line: 490, column: 9)
!3558 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3554)
!3559 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3555)
!3560 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !3556)
!3561 = !DILocalVariable(name: "head", arg: 1, scope: !3562, file: !53, line: 201, type: !1052)
!3562 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1062, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3563)
!3563 = !{!3561, !3564}
!3564 = !DILocalVariable(name: "next", scope: !3562, file: !53, line: 203, type: !150)
!3565 = !DILocation(line: 201, column: 62, scope: !3562, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 490, column: 9, scope: !3557)
!3567 = !DILocation(line: 203, column: 33, scope: !3562, inlinedAt: !3566)
!3568 = !DILocation(line: 203, column: 20, scope: !3562, inlinedAt: !3566)
!3569 = !DILocation(line: 204, column: 15, scope: !3562, inlinedAt: !3566)
!3570 = !DILocation(line: 204, column: 24, scope: !3562, inlinedAt: !3566)
!3571 = !DILocation(line: 204, column: 42, scope: !3562, inlinedAt: !3566)
!3572 = !DILocation(line: 204, column: 33, scope: !3562, inlinedAt: !3566)
!3573 = !DILocation(line: 490, column: 9, scope: !3482)
!3574 = !DILocation(line: 489, column: 5, scope: !3482)
!3575 = distinct !{!3575, !3476, !3576}
!3576 = !DILocation(line: 508, column: 3, scope: !3470)
!3577 = !DILocation(line: 492, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3557, file: !124, line: 490, column: 47)
!3579 = !DILocation(line: 494, column: 5, scope: !3578)
!3580 = !DILocation(line: 602, column: 36, scope: !602)
!3581 = !DILocation(line: 602, column: 47, scope: !602)
!3582 = !DILocation(line: 602, column: 61, scope: !602)
!3583 = !DILocation(line: 602, column: 85, scope: !602)
!3584 = !DILocation(line: 602, column: 110, scope: !602)
!3585 = !DILocation(line: 605, column: 15, scope: !602)
!3586 = !DILocation(line: 608, column: 41, scope: !602)
!3587 = !DILocation(line: 608, column: 19, scope: !602)
!3588 = !DILocation(line: 611, column: 11, scope: !613)
!3589 = !DILocation(line: 614, column: 8, scope: !626)
!3590 = !DILocation(line: 614, column: 7, scope: !602)
!3591 = !DILocation(line: 620, column: 3, scope: !602)
!3592 = !DILocation(line: 623, column: 10, scope: !602)
!3593 = !DILocation(line: 623, column: 19, scope: !602)
!3594 = !DILocation(line: 625, column: 10, scope: !602)
!3595 = !DILocation(line: 625, column: 21, scope: !602)
!3596 = !DILocation(line: 628, column: 26, scope: !615)
!3597 = !DILocation(line: 628, column: 10, scope: !602)
!3598 = !DILocation(line: 628, column: 16, scope: !602)
!3599 = !DILocation(line: 631, column: 8, scope: !637)
!3600 = !DILocation(line: 631, column: 7, scope: !602)
!3601 = !DILocation(line: 634, column: 5, scope: !640)
!3602 = !DILocation(line: 635, column: 5, scope: !640)
!3603 = !DILocation(line: 639, column: 10, scope: !602)
!3604 = !DILocation(line: 639, column: 14, scope: !602)
!3605 = !DILocation(line: 640, column: 10, scope: !602)
!3606 = !DILocation(line: 640, column: 16, scope: !602)
!3607 = !DILocation(line: 641, column: 10, scope: !602)
!3608 = !DILocation(line: 641, column: 17, scope: !602)
!3609 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 644, column: 3, scope: !602)
!3611 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !3610)
!3612 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !3610)
!3613 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !3610)
!3615 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3614)
!3616 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !3610)
!3617 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3614)
!3618 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3614)
!3619 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3614)
!3620 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !3610)
!3622 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3621)
!3623 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3621)
!3624 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3621)
!3625 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3621)
!3626 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !3610)
!3628 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3627)
!3629 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3627)
!3630 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3627)
!3631 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3627)
!3632 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !3610)
!3634 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3633)
!3635 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3633)
!3636 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3633)
!3637 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3633)
!3638 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !3610)
!3640 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3639)
!3641 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3639)
!3642 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3639)
!3643 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3639)
!3644 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !3610)
!3646 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3645)
!3647 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3645)
!3648 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3645)
!3649 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3645)
!3650 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !3610)
!3651 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !3610)
!3653 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3652)
!3654 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3652)
!3655 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3652)
!3656 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3652)
!3657 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !3610)
!3659 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3658)
!3660 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3658)
!3661 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3658)
!3662 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3658)
!3663 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !3610)
!3665 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3664)
!3666 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3664)
!3667 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3664)
!3668 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3664)
!3669 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !3610)
!3671 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3670)
!3672 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3670)
!3673 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3670)
!3674 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3670)
!3675 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !3610)
!3677 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3676)
!3678 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3676)
!3679 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3676)
!3680 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3676)
!3681 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !3610)
!3683 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3682)
!3684 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3682)
!3685 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3682)
!3686 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3682)
!3687 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !3610)
!3689 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3688)
!3690 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3688)
!3691 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3688)
!3692 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3688)
!3693 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !3610)
!3695 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3694)
!3696 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3694)
!3697 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3694)
!3698 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3694)
!3699 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !3610)
!3701 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3700)
!3702 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3700)
!3703 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3700)
!3704 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3700)
!3705 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !3610)
!3707 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3706)
!3708 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3706)
!3709 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3706)
!3710 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3706)
!3711 = !DILocation(line: 647, column: 7, scope: !763)
!3712 = !DILocation(line: 647, column: 7, scope: !602)
!3713 = !DILocation(line: 648, column: 19, scope: !762)
!3714 = !DILocation(line: 649, column: 3, scope: !762)
!3715 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 650, column: 15, scope: !602)
!3717 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3716)
!3718 = !DILocation(line: 650, column: 33, scope: !602)
!3719 = !DILocation(line: 650, column: 10, scope: !602)
!3720 = !DILocation(line: 650, column: 13, scope: !602)
!3721 = !DILocation(line: 653, column: 27, scope: !602)
!3722 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 653, column: 3, scope: !602)
!3724 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3723)
!3725 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3723)
!3726 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3723)
!3727 = !DILocation(line: 656, column: 10, scope: !602)
!3728 = !DILocation(line: 656, column: 19, scope: !602)
!3729 = !DILocation(line: 657, column: 27, scope: !602)
!3730 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 657, column: 3, scope: !602)
!3732 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3731)
!3733 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3731)
!3734 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3731)
!3735 = !DILocation(line: 658, column: 27, scope: !602)
!3736 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 658, column: 3, scope: !602)
!3738 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3737)
!3739 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3737)
!3740 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3737)
!3741 = !DILocation(line: 660, column: 3, scope: !602)
!3742 = !DILocation(line: 0, scope: !602)
!3743 = !DILocation(line: 661, column: 1, scope: !602)
!3744 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 704, column: 7, scope: !1018)
!3748 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3745)
!3749 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3746)
!3750 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !3747)
!3751 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 704, column: 30, scope: !1018)
!3753 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3752)
!3754 = !DILocation(line: 704, column: 27, scope: !1018)
!3755 = !DILocation(line: 704, column: 7, scope: !1019)
!3756 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 708, column: 22, scope: !1019)
!3761 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3757)
!3762 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3758)
!3763 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !3759)
!3764 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !3760)
!3765 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !3760)
!3766 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !3760)
!3768 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !3767)
!3769 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !3767)
!3770 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !3760)
!3771 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !3760)
!3772 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !3760)
!3773 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !3760)
!3775 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !3774)
!3776 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !3774)
!3777 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !3774)
!3779 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !3778)
!3780 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !3778)
!3781 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !3778)
!3782 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !3778)
!3783 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !3778)
!3784 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !3774)
!3786 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3785)
!3787 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3785)
!3788 = !DILocation(line: 708, column: 15, scope: !1019)
!3789 = !DILocation(line: 718, column: 12, scope: !1098)
!3790 = !DILocation(line: 718, column: 7, scope: !1019)
!3791 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 719, column: 9, scope: !1105)
!3795 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3792)
!3796 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3793)
!3797 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !3794)
!3798 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 719, column: 31, scope: !1105)
!3802 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3799)
!3803 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3800)
!3804 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !3801)
!3805 = !DILocation(line: 719, column: 28, scope: !1105)
!3806 = !DILocation(line: 719, column: 9, scope: !1106)
!3807 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 723, column: 16, scope: !1124)
!3811 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3808)
!3812 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !3809)
!3813 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !3810)
!3814 = !DILocation(line: 725, column: 3, scope: !1106)
!3815 = !DILocation(line: 0, scope: !1019)
!3816 = !DILocation(line: 727, column: 10, scope: !1019)
!3817 = !DILocation(line: 727, column: 3, scope: !1019)
!3818 = !DILocation(line: 728, column: 1, scope: !1019)
!3819 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !2321, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3820)
!3820 = !{!3821, !3822, !3826, !3827, !3832, !3834, !3837, !3839, !3841, !3847, !3848, !3853, !3855, !3858, !3860}
!3821 = !DILocalVariable(name: "my_cpu", scope: !3819, file: !124, line: 572, type: !270)
!3822 = !DILocalVariable(name: "_p", scope: !3823, file: !124, line: 573, type: !48)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !124, line: 573, column: 5)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !124, line: 573, column: 5)
!3825 = distinct !DILexicalBlock(scope: !3819, file: !124, line: 573, column: 5)
!3826 = !DILocalVariable(name: "_t", scope: !3823, file: !124, line: 573, type: !160)
!3827 = !DILocalVariable(name: "__r", scope: !3828, file: !124, line: 573, type: !291)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !124, line: 573, column: 5)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !124, line: 573, column: 5)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !124, line: 573, column: 5)
!3831 = distinct !DILexicalBlock(scope: !3823, file: !124, line: 573, column: 5)
!3832 = !DILocalVariable(name: "__r", scope: !3833, file: !124, line: 573, type: !291)
!3833 = distinct !DILexicalBlock(scope: !3828, file: !124, line: 573, column: 5)
!3834 = !DILocalVariable(name: "__r", scope: !3835, file: !124, line: 573, type: !291)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !124, line: 573, column: 5)
!3836 = distinct !DILexicalBlock(scope: !3830, file: !124, line: 573, column: 5)
!3837 = !DILocalVariable(name: "__r", scope: !3838, file: !124, line: 573, type: !291)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !124, line: 573, column: 5)
!3839 = !DILocalVariable(name: "_p", scope: !3840, file: !124, line: 573, type: !48)
!3840 = distinct !DILexicalBlock(scope: !3824, file: !124, line: 573, column: 5)
!3841 = !DILocalVariable(name: "_p", scope: !3842, file: !124, line: 575, type: !48)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !124, line: 575, column: 2)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !124, line: 575, column: 2)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !124, line: 575, column: 2)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !124, line: 574, column: 45)
!3846 = distinct !DILexicalBlock(scope: !3819, file: !124, line: 574, column: 9)
!3847 = !DILocalVariable(name: "_t", scope: !3842, file: !124, line: 575, type: !160)
!3848 = !DILocalVariable(name: "__r", scope: !3849, file: !124, line: 575, type: !291)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !124, line: 575, column: 2)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !124, line: 575, column: 2)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !124, line: 575, column: 2)
!3852 = distinct !DILexicalBlock(scope: !3842, file: !124, line: 575, column: 2)
!3853 = !DILocalVariable(name: "__r", scope: !3854, file: !124, line: 575, type: !291)
!3854 = distinct !DILexicalBlock(scope: !3849, file: !124, line: 575, column: 2)
!3855 = !DILocalVariable(name: "__r", scope: !3856, file: !124, line: 575, type: !291)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !124, line: 575, column: 2)
!3857 = distinct !DILexicalBlock(scope: !3851, file: !124, line: 575, column: 2)
!3858 = !DILocalVariable(name: "__r", scope: !3859, file: !124, line: 575, type: !291)
!3859 = distinct !DILexicalBlock(scope: !3856, file: !124, line: 575, column: 2)
!3860 = !DILocalVariable(name: "_p", scope: !3861, file: !124, line: 575, type: !48)
!3861 = distinct !DILexicalBlock(scope: !3843, file: !124, line: 575, column: 2)
!3862 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 572, column: 26, scope: !3819)
!3864 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !3863)
!3865 = !DILocation(line: 572, column: 17, scope: !3819)
!3866 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 573, column: 5, scope: !3824)
!3868 = !DILocation(line: 573, column: 5, scope: !3824)
!3869 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 0, scope: !3824)
!3872 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !3871)
!3873 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !3871)
!3874 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !3871)
!3875 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !3871)
!3876 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !3871)
!3877 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !3871)
!3878 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !3871)
!3879 = !DILocation(line: 0, scope: !2500, inlinedAt: !3871)
!3880 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 0, scope: !3824)
!3883 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !3882)
!3884 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !3882)
!3885 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !3882)
!3886 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !3882)
!3887 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !3882)
!3888 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !3882)
!3889 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !3882)
!3890 = !DILocation(line: 573, column: 5, scope: !3825)
!3891 = !DILocation(line: 573, column: 5, scope: !3823)
!3892 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 573, column: 5, scope: !3823)
!3894 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3893)
!3895 = !DILocation(line: 573, column: 5, scope: !3830)
!3896 = !DILocation(line: 0, scope: !3830)
!3897 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 0, scope: !3830)
!3901 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3899)
!3902 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3899)
!3903 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3899)
!3904 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3899)
!3905 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3899)
!3906 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3899)
!3907 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3899)
!3908 = !DILocation(line: 573, column: 5, scope: !3831)
!3909 = !DILocation(line: 573, column: 5, scope: !3829)
!3910 = !DILocation(line: 573, column: 5, scope: !3836)
!3911 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 573, column: 5, scope: !3823)
!3914 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3913)
!3915 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3913)
!3916 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3913)
!3917 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3913)
!3918 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3913)
!3919 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3913)
!3920 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3913)
!3921 = !DILocation(line: 573, column: 5, scope: !3840)
!3922 = !DILocation(line: 573, column: 5, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !124, line: 573, column: 5)
!3924 = distinct !DILexicalBlock(scope: !3840, file: !124, line: 573, column: 5)
!3925 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 0, scope: !3923)
!3929 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !3927)
!3930 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !3927)
!3931 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !3927)
!3932 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !3927)
!3933 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !3927)
!3934 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !3927)
!3935 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !3927)
!3936 = !DILocation(line: 0, scope: !3923)
!3937 = !DILocation(line: 573, column: 5, scope: !3924)
!3938 = !DILocation(line: 573, column: 5, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3923, file: !124, line: 573, column: 5)
!3940 = !DILocation(line: 573, column: 5, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3923, file: !124, line: 573, column: 5)
!3942 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 573, column: 5, scope: !3840)
!3945 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !3944)
!3946 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !3944)
!3947 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !3944)
!3948 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !3944)
!3949 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !3944)
!3950 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !3944)
!3951 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !3944)
!3952 = !DILocation(line: 561, column: 3, scope: !3953, inlinedAt: !3982)
!3953 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3954)
!3954 = !{!3955, !3957, !3960, !3962, !3967, !3968, !3973, !3975, !3978, !3980}
!3955 = !DILocalVariable(name: "tid", scope: !3953, file: !124, line: 561, type: !3956)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!3957 = !DILocalVariable(name: "__r", scope: !3958, file: !124, line: 562, type: !291)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !124, line: 562, column: 79)
!3959 = distinct !DILexicalBlock(scope: !3953, file: !124, line: 562, column: 7)
!3960 = !DILocalVariable(name: "__r", scope: !3961, file: !124, line: 562, type: !291)
!3961 = distinct !DILexicalBlock(scope: !3958, file: !124, line: 562, column: 79)
!3962 = !DILocalVariable(name: "_p", scope: !3963, file: !124, line: 563, type: !48)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !124, line: 563, column: 7)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !124, line: 563, column: 7)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !124, line: 563, column: 7)
!3966 = distinct !DILexicalBlock(scope: !3959, file: !124, line: 562, column: 93)
!3967 = !DILocalVariable(name: "_t", scope: !3963, file: !124, line: 563, type: !160)
!3968 = !DILocalVariable(name: "__r", scope: !3969, file: !124, line: 563, type: !291)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !124, line: 563, column: 7)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !124, line: 563, column: 7)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !124, line: 563, column: 7)
!3972 = distinct !DILexicalBlock(scope: !3963, file: !124, line: 563, column: 7)
!3973 = !DILocalVariable(name: "__r", scope: !3974, file: !124, line: 563, type: !291)
!3974 = distinct !DILexicalBlock(scope: !3969, file: !124, line: 563, column: 7)
!3975 = !DILocalVariable(name: "__r", scope: !3976, file: !124, line: 563, type: !291)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !124, line: 563, column: 7)
!3977 = distinct !DILexicalBlock(scope: !3971, file: !124, line: 563, column: 7)
!3978 = !DILocalVariable(name: "__r", scope: !3979, file: !124, line: 563, type: !291)
!3979 = distinct !DILexicalBlock(scope: !3976, file: !124, line: 563, column: 7)
!3980 = !DILocalVariable(name: "_p", scope: !3981, file: !124, line: 563, type: !48)
!3981 = distinct !DILexicalBlock(scope: !3964, file: !124, line: 563, column: 7)
!3982 = distinct !DILocation(line: 574, column: 9, scope: !3846)
!3983 = !DILocation(line: 562, column: 79, scope: !3961, inlinedAt: !3982)
!3984 = !{i32 -2147099479}
!3985 = !DILocation(line: 562, column: 79, scope: !3958, inlinedAt: !3982)
!3986 = !DILocation(line: 561, column: 18, scope: !3953, inlinedAt: !3982)
!3987 = !DILocation(line: 562, column: 7, scope: !3959, inlinedAt: !3982)
!3988 = !DILocation(line: 562, column: 7, scope: !3953, inlinedAt: !3982)
!3989 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 563, column: 7, scope: !3964, inlinedAt: !3982)
!3991 = !DILocation(line: 563, column: 7, scope: !3964, inlinedAt: !3982)
!3992 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 0, scope: !3964, inlinedAt: !3982)
!3995 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !3994)
!3996 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !3994)
!3997 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !3994)
!3998 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !3994)
!3999 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !3994)
!4000 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !3994)
!4001 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !3994)
!4002 = !DILocation(line: 0, scope: !2500, inlinedAt: !3994)
!4003 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 0, scope: !3964, inlinedAt: !3982)
!4006 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !4005)
!4007 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !4005)
!4008 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !4005)
!4009 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !4005)
!4010 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !4005)
!4011 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !4005)
!4012 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !4005)
!4013 = !DILocation(line: 563, column: 7, scope: !3965, inlinedAt: !3982)
!4014 = !DILocation(line: 563, column: 7, scope: !3963, inlinedAt: !3982)
!4015 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 563, column: 7, scope: !3963, inlinedAt: !3982)
!4017 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4016)
!4018 = !DILocation(line: 563, column: 7, scope: !3971, inlinedAt: !3982)
!4019 = !DILocation(line: 0, scope: !3971, inlinedAt: !3982)
!4020 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 0, scope: !3971, inlinedAt: !3982)
!4024 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !4022)
!4025 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !4022)
!4026 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !4022)
!4027 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !4022)
!4028 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !4022)
!4029 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !4022)
!4030 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !4022)
!4031 = !DILocation(line: 563, column: 7, scope: !3972, inlinedAt: !3982)
!4032 = !DILocation(line: 563, column: 7, scope: !3970, inlinedAt: !3982)
!4033 = !DILocation(line: 563, column: 7, scope: !3977, inlinedAt: !3982)
!4034 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 563, column: 7, scope: !3963, inlinedAt: !3982)
!4037 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !4036)
!4038 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !4036)
!4039 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !4036)
!4040 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !4036)
!4041 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !4036)
!4042 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !4036)
!4043 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !4036)
!4044 = !DILocation(line: 563, column: 7, scope: !3981, inlinedAt: !3982)
!4045 = !DILocation(line: 563, column: 7, scope: !4046, inlinedAt: !3982)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !124, line: 563, column: 7)
!4047 = distinct !DILexicalBlock(scope: !3981, file: !124, line: 563, column: 7)
!4048 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 0, scope: !4046, inlinedAt: !3982)
!4052 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !4050)
!4053 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !4050)
!4054 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !4050)
!4055 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !4050)
!4056 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !4050)
!4057 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !4050)
!4058 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !4050)
!4059 = !DILocation(line: 0, scope: !4046, inlinedAt: !3982)
!4060 = !DILocation(line: 563, column: 7, scope: !4047, inlinedAt: !3982)
!4061 = !DILocation(line: 563, column: 7, scope: !4062, inlinedAt: !3982)
!4062 = distinct !DILexicalBlock(scope: !4046, file: !124, line: 563, column: 7)
!4063 = !DILocation(line: 563, column: 7, scope: !4064, inlinedAt: !3982)
!4064 = distinct !DILexicalBlock(scope: !4046, file: !124, line: 563, column: 7)
!4065 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 563, column: 7, scope: !3981, inlinedAt: !3982)
!4068 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !4067)
!4069 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !4067)
!4070 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !4067)
!4071 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !4067)
!4072 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !4067)
!4073 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !4067)
!4074 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !4067)
!4075 = !DILocation(line: 568, column: 1, scope: !3953, inlinedAt: !3982)
!4076 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 575, column: 2, scope: !3843)
!4078 = !DILocation(line: 575, column: 2, scope: !3843)
!4079 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 84, column: 18, scope: !2494, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 0, scope: !3843)
!4082 = !DILocation(line: 84, column: 11, scope: !2494, inlinedAt: !4081)
!4083 = !DILocation(line: 85, column: 9, scope: !2500, inlinedAt: !4081)
!4084 = !DILocation(line: 85, column: 9, scope: !2494, inlinedAt: !4081)
!4085 = !DILocation(line: 87, column: 57, scope: !2503, inlinedAt: !4081)
!4086 = !DILocation(line: 87, column: 30, scope: !2503, inlinedAt: !4081)
!4087 = !DILocation(line: 87, column: 9, scope: !2503, inlinedAt: !4081)
!4088 = !DILocation(line: 87, column: 2, scope: !2503, inlinedAt: !4081)
!4089 = !DILocation(line: 0, scope: !2500, inlinedAt: !4081)
!4090 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 48, column: 18, scope: !2510, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 0, scope: !3843)
!4093 = !DILocation(line: 48, column: 11, scope: !2510, inlinedAt: !4092)
!4094 = !DILocation(line: 49, column: 9, scope: !2516, inlinedAt: !4092)
!4095 = !DILocation(line: 49, column: 9, scope: !2510, inlinedAt: !4092)
!4096 = !DILocation(line: 51, column: 50, scope: !2519, inlinedAt: !4092)
!4097 = !DILocation(line: 51, column: 23, scope: !2519, inlinedAt: !4092)
!4098 = !DILocation(line: 51, column: 2, scope: !2519, inlinedAt: !4092)
!4099 = !DILocation(line: 52, column: 5, scope: !2519, inlinedAt: !4092)
!4100 = !DILocation(line: 575, column: 2, scope: !3844)
!4101 = !DILocation(line: 575, column: 2, scope: !3842)
!4102 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 575, column: 2, scope: !3842)
!4104 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4103)
!4105 = !DILocation(line: 575, column: 2, scope: !3851)
!4106 = !DILocation(line: 0, scope: !3851)
!4107 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 0, scope: !3851)
!4111 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !4109)
!4112 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !4109)
!4113 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !4109)
!4114 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !4109)
!4115 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !4109)
!4116 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !4109)
!4117 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !4109)
!4118 = !DILocation(line: 575, column: 2, scope: !3852)
!4119 = !DILocation(line: 575, column: 2, scope: !3850)
!4120 = !DILocation(line: 575, column: 2, scope: !3857)
!4121 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 575, column: 2, scope: !3842)
!4124 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !4123)
!4125 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !4123)
!4126 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !4123)
!4127 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !4123)
!4128 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !4123)
!4129 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !4123)
!4130 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !4123)
!4131 = !DILocation(line: 575, column: 2, scope: !3861)
!4132 = !DILocation(line: 575, column: 2, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !124, line: 575, column: 2)
!4134 = distinct !DILexicalBlock(scope: !3861, file: !124, line: 575, column: 2)
!4135 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 96, column: 18, scope: !2532, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 107, column: 12, scope: !2538, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 0, scope: !4133)
!4139 = !DILocation(line: 96, column: 11, scope: !2532, inlinedAt: !4137)
!4140 = !DILocation(line: 97, column: 9, scope: !2542, inlinedAt: !4137)
!4141 = !DILocation(line: 97, column: 9, scope: !2532, inlinedAt: !4137)
!4142 = !DILocation(line: 98, column: 57, scope: !2545, inlinedAt: !4137)
!4143 = !DILocation(line: 98, column: 30, scope: !2545, inlinedAt: !4137)
!4144 = !DILocation(line: 98, column: 9, scope: !2545, inlinedAt: !4137)
!4145 = !DILocation(line: 98, column: 2, scope: !2545, inlinedAt: !4137)
!4146 = !DILocation(line: 0, scope: !4133)
!4147 = !DILocation(line: 575, column: 2, scope: !4134)
!4148 = !DILocation(line: 575, column: 2, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4133, file: !124, line: 575, column: 2)
!4150 = !DILocation(line: 575, column: 2, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4133, file: !124, line: 575, column: 2)
!4152 = !DILocation(line: 43, column: 21, scope: !2486, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 59, column: 18, scope: !2554, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 575, column: 2, scope: !3861)
!4155 = !DILocation(line: 59, column: 11, scope: !2554, inlinedAt: !4154)
!4156 = !DILocation(line: 60, column: 9, scope: !2560, inlinedAt: !4154)
!4157 = !DILocation(line: 60, column: 9, scope: !2554, inlinedAt: !4154)
!4158 = !DILocation(line: 62, column: 50, scope: !2563, inlinedAt: !4154)
!4159 = !DILocation(line: 62, column: 23, scope: !2563, inlinedAt: !4154)
!4160 = !DILocation(line: 62, column: 2, scope: !2563, inlinedAt: !4154)
!4161 = !DILocation(line: 63, column: 5, scope: !2563, inlinedAt: !4154)
!4162 = !DILocation(line: 576, column: 2, scope: !3845)
!4163 = !DILocation(line: 579, column: 1, scope: !3819)
!4164 = !DILocation(line: 693, column: 35, scope: !584)
!4165 = !DILocation(line: 693, column: 46, scope: !584)
!4166 = !DILocation(line: 693, column: 60, scope: !584)
!4167 = !DILocation(line: 693, column: 84, scope: !584)
!4168 = !DILocation(line: 693, column: 104, scope: !584)
!4169 = !DILocation(line: 693, column: 134, scope: !584)
!4170 = !DILocation(line: 695, column: 3, scope: !584)
!4171 = !DILocation(line: 696, column: 16, scope: !584)
!4172 = !DILocation(line: 696, column: 3, scope: !584)
!4173 = !DILocation(line: 698, column: 3, scope: !584)
!4174 = !DILocation(line: 732, column: 3, scope: !1001)
!4175 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 704, column: 7, scope: !1018, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 733, column: 10, scope: !1001)
!4180 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4176)
!4181 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4177)
!4182 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !4178)
!4183 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 704, column: 30, scope: !1018, inlinedAt: !4179)
!4185 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4184)
!4186 = !DILocation(line: 704, column: 27, scope: !1018, inlinedAt: !4179)
!4187 = !DILocation(line: 704, column: 7, scope: !1019, inlinedAt: !4179)
!4188 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 708, column: 22, scope: !1019, inlinedAt: !4179)
!4193 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4189)
!4194 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4190)
!4195 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !4191)
!4196 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !4192)
!4197 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !4192)
!4198 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !4192)
!4200 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !4199)
!4201 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !4199)
!4202 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !4192)
!4203 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !4192)
!4204 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !4192)
!4205 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !4192)
!4207 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !4206)
!4208 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !4206)
!4209 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !4206)
!4211 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !4210)
!4212 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !4210)
!4213 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !4210)
!4214 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !4210)
!4215 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !4210)
!4216 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !4206)
!4218 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4217)
!4219 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4217)
!4220 = !DILocation(line: 708, column: 15, scope: !1019, inlinedAt: !4179)
!4221 = !DILocation(line: 718, column: 12, scope: !1098, inlinedAt: !4179)
!4222 = !DILocation(line: 718, column: 7, scope: !1019, inlinedAt: !4179)
!4223 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 719, column: 9, scope: !1105, inlinedAt: !4179)
!4227 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4224)
!4228 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4225)
!4229 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !4226)
!4230 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 719, column: 31, scope: !1105, inlinedAt: !4179)
!4234 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4231)
!4235 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4232)
!4236 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4233)
!4237 = !DILocation(line: 719, column: 28, scope: !1105, inlinedAt: !4179)
!4238 = !DILocation(line: 719, column: 9, scope: !1106, inlinedAt: !4179)
!4239 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 723, column: 16, scope: !1124, inlinedAt: !4179)
!4243 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4240)
!4244 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4241)
!4245 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4242)
!4246 = !DILocation(line: 725, column: 3, scope: !1106, inlinedAt: !4179)
!4247 = !DILocation(line: 0, scope: !1019, inlinedAt: !4179)
!4248 = !DILocation(line: 727, column: 10, scope: !1019, inlinedAt: !4179)
!4249 = !DILocation(line: 727, column: 3, scope: !1019, inlinedAt: !4179)
!4250 = !DILocation(line: 733, column: 3, scope: !1001)
!4251 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 736, type: !2201, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4252)
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "f_to", arg: 1, scope: !4251, file: !124, line: 736, type: !240)
!4254 = !DILocalVariable(name: "new_to", scope: !4255, file: !124, line: 744, type: !240)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !124, line: 740, column: 38)
!4256 = distinct !DILexicalBlock(scope: !4251, file: !124, line: 740, column: 7)
!4257 = !DILocation(line: 736, column: 35, scope: !4251)
!4258 = !DILocation(line: 383, column: 42, scope: !2376, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 740, column: 7, scope: !4256)
!4260 = !DILocation(line: 386, column: 26, scope: !2383, inlinedAt: !4259)
!4261 = !DILocation(line: 386, column: 26, scope: !2381, inlinedAt: !4259)
!4262 = !DILocation(line: 386, column: 20, scope: !2376, inlinedAt: !4259)
!4263 = !DILocation(line: 387, column: 23, scope: !2376, inlinedAt: !4259)
!4264 = !DILocation(line: 387, column: 7, scope: !2376, inlinedAt: !4259)
!4265 = !DILocation(line: 392, column: 12, scope: !2388, inlinedAt: !4259)
!4266 = !DILocation(line: 392, column: 27, scope: !2393, inlinedAt: !4259)
!4267 = !DILocation(line: 392, column: 3, scope: !2388, inlinedAt: !4259)
!4268 = !DILocation(line: 394, column: 14, scope: !2392, inlinedAt: !4259)
!4269 = !DILocation(line: 394, column: 31, scope: !2392, inlinedAt: !4259)
!4270 = !DILocation(line: 394, column: 40, scope: !2392, inlinedAt: !4259)
!4271 = !DILocation(line: 390, column: 21, scope: !2376, inlinedAt: !4259)
!4272 = !DILocation(line: 395, column: 5, scope: !2390, inlinedAt: !4259)
!4273 = !DILocation(line: 391, column: 15, scope: !2376, inlinedAt: !4259)
!4274 = !DILocation(line: 0, scope: !2391, inlinedAt: !4259)
!4275 = !DILocation(line: 395, column: 5, scope: !2391, inlinedAt: !4259)
!4276 = !DILocation(line: 395, column: 5, scope: !2396, inlinedAt: !4259)
!4277 = !DILocation(line: 400, column: 16, scope: !2417, inlinedAt: !4259)
!4278 = !DILocation(line: 400, column: 11, scope: !2418, inlinedAt: !4259)
!4279 = !DILocation(line: 392, column: 43, scope: !2393, inlinedAt: !4259)
!4280 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 744, column: 26, scope: !4255)
!4285 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4281)
!4286 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4282)
!4287 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !4283)
!4288 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !4284)
!4289 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !4284)
!4290 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !4284)
!4292 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !4291)
!4293 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !4291)
!4294 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !4284)
!4295 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !4284)
!4296 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !4284)
!4297 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !4284)
!4299 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !4298)
!4300 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !4298)
!4301 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !4298)
!4303 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !4302)
!4304 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !4302)
!4305 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !4302)
!4306 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !4302)
!4307 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !4302)
!4308 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !4298)
!4310 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4309)
!4311 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4309)
!4312 = !DILocation(line: 744, column: 17, scope: !4255)
!4313 = !DILocation(line: 746, column: 16, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4255, file: !124, line: 746, column: 9)
!4315 = !DILocation(line: 746, column: 9, scope: !4255)
!4316 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 747, column: 11, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !124, line: 747, column: 11)
!4321 = distinct !DILexicalBlock(scope: !4314, file: !124, line: 746, column: 25)
!4322 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4317)
!4323 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4318)
!4324 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !4319)
!4325 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 747, column: 33, scope: !4320)
!4329 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4326)
!4330 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4327)
!4331 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4328)
!4332 = !DILocation(line: 747, column: 30, scope: !4320)
!4333 = !DILocation(line: 747, column: 11, scope: !4321)
!4334 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 751, column: 20, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4320, file: !124, line: 750, column: 14)
!4339 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4335)
!4340 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4336)
!4341 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4337)
!4342 = !DILocation(line: 753, column: 5, scope: !4321)
!4343 = !DILocation(line: 0, scope: !4255)
!4344 = !DILocation(line: 756, column: 5, scope: !4255)
!4345 = !DILocation(line: 758, column: 5, scope: !4255)
!4346 = !DILocation(line: 401, column: 33, scope: !2426, inlinedAt: !4259)
!4347 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 401, column: 9, scope: !2426, inlinedAt: !4259)
!4349 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !4348)
!4350 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !4348)
!4351 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !4348)
!4353 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !4352)
!4354 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !4352)
!4355 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !4352)
!4356 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !4352)
!4357 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !4352)
!4358 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !4348)
!4360 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4359)
!4361 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4359)
!4362 = !DILocation(line: 762, column: 3, scope: !4251)
!4363 = !DILocation(line: 765, column: 3, scope: !4251)
!4364 = !DILocation(line: 0, scope: !4251)
!4365 = !DILocation(line: 766, column: 1, scope: !4251)
!4366 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 768, type: !4367, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4372)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!48, !4369, !31}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!29, !31}
!4372 = !{!4373, !4374}
!4373 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4366, file: !124, line: 768, type: !4369)
!4374 = !DILocalVariable(name: "state", arg: 2, scope: !4366, file: !124, line: 768, type: !31)
!4375 = !DILocation(line: 768, column: 42, scope: !4366)
!4376 = !DILocation(line: 768, column: 77, scope: !4366)
!4377 = !DILocation(line: 770, column: 7, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4366, file: !124, line: 770, column: 7)
!4379 = !DILocation(line: 770, column: 7, scope: !4366)
!4380 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 704, column: 7, scope: !1018, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 771, column: 12, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4378, file: !124, line: 770, column: 28)
!4386 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4381)
!4387 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4382)
!4388 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !4383)
!4389 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 704, column: 30, scope: !1018, inlinedAt: !4384)
!4391 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4390)
!4392 = !DILocation(line: 704, column: 27, scope: !1018, inlinedAt: !4384)
!4393 = !DILocation(line: 704, column: 7, scope: !1019, inlinedAt: !4384)
!4394 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 708, column: 22, scope: !1019, inlinedAt: !4384)
!4399 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4395)
!4400 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4396)
!4401 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !4397)
!4402 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !4398)
!4403 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !4398)
!4404 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !4398)
!4406 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !4405)
!4407 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !4405)
!4408 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !4398)
!4409 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !4398)
!4410 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !4398)
!4411 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !4398)
!4413 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !4412)
!4414 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !4412)
!4415 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !4412)
!4417 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !4416)
!4418 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !4416)
!4419 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !4416)
!4420 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !4416)
!4421 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !4416)
!4422 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !4412)
!4424 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4423)
!4425 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4423)
!4426 = !DILocation(line: 708, column: 15, scope: !1019, inlinedAt: !4384)
!4427 = !DILocation(line: 718, column: 12, scope: !1098, inlinedAt: !4384)
!4428 = !DILocation(line: 718, column: 7, scope: !1019, inlinedAt: !4384)
!4429 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 719, column: 9, scope: !1105, inlinedAt: !4384)
!4433 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4430)
!4434 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4431)
!4435 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !4432)
!4436 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 719, column: 31, scope: !1105, inlinedAt: !4384)
!4440 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4437)
!4441 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4438)
!4442 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4439)
!4443 = !DILocation(line: 719, column: 28, scope: !1105, inlinedAt: !4384)
!4444 = !DILocation(line: 719, column: 9, scope: !1106, inlinedAt: !4384)
!4445 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 723, column: 16, scope: !1124, inlinedAt: !4384)
!4449 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4446)
!4450 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4447)
!4451 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4448)
!4452 = !DILocation(line: 725, column: 3, scope: !1106, inlinedAt: !4384)
!4453 = !DILocation(line: 0, scope: !1019, inlinedAt: !4384)
!4454 = !DILocation(line: 727, column: 10, scope: !1019, inlinedAt: !4384)
!4455 = !DILocation(line: 727, column: 3, scope: !1019, inlinedAt: !4384)
!4456 = !DILocation(line: 771, column: 5, scope: !4385)
!4457 = !DILocation(line: 0, scope: !4366)
!4458 = !DILocation(line: 774, column: 1, scope: !4366)
!4459 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 776, type: !4460, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4462)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!48, !240, !4369, !31}
!4462 = !{!4463, !4464, !4465}
!4463 = !DILocalVariable(name: "fib", arg: 1, scope: !4459, file: !124, line: 776, type: !240)
!4464 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4459, file: !124, line: 776, type: !4369)
!4465 = !DILocalVariable(name: "state", arg: 3, scope: !4459, file: !124, line: 776, type: !31)
!4466 = !DILocation(line: 776, column: 47, scope: !4459)
!4467 = !DILocation(line: 776, column: 62, scope: !4459)
!4468 = !DILocation(line: 776, column: 97, scope: !4459)
!4469 = !DILocation(line: 778, column: 7, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4459, file: !124, line: 778, column: 7)
!4471 = !DILocation(line: 778, column: 7, scope: !4459)
!4472 = !DILocation(line: 779, column: 12, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4470, file: !124, line: 778, column: 28)
!4474 = !DILocation(line: 779, column: 5, scope: !4473)
!4475 = !DILocation(line: 0, scope: !4459)
!4476 = !DILocation(line: 782, column: 1, scope: !4459)
!4477 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 784, type: !1039, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4478)
!4478 = !{!4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495}
!4479 = !DILocalVariable(name: "curr", scope: !4477, file: !124, line: 787, type: !240)
!4480 = !DILocalVariable(name: "size", scope: !4477, file: !124, line: 790, type: !25)
!4481 = !DILocalVariable(name: "alloc_size", scope: !4477, file: !124, line: 790, type: !25)
!4482 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4477, file: !124, line: 791, type: !25)
!4483 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4477, file: !124, line: 792, type: !25)
!4484 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4477, file: !124, line: 793, type: !25)
!4485 = !DILocalVariable(name: "child_stack", scope: !4477, file: !124, line: 794, type: !31)
!4486 = !DILocalVariable(name: "rsp", scope: !4477, file: !124, line: 795, type: !25)
!4487 = !DILocalVariable(name: "rbp0", scope: !4477, file: !124, line: 800, type: !31)
!4488 = !DILocalVariable(name: "rbp1", scope: !4477, file: !124, line: 801, type: !31)
!4489 = !DILocalVariable(name: "rbp_tos", scope: !4477, file: !124, line: 802, type: !31)
!4490 = !DILocalVariable(name: "ret0_addr", scope: !4477, file: !124, line: 803, type: !31)
!4491 = !DILocalVariable(name: "rbp_stash_addr", scope: !4477, file: !124, line: 815, type: !31)
!4492 = !DILocalVariable(name: "new", scope: !4477, file: !124, line: 831, type: !240)
!4493 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4477, file: !124, line: 847, type: !75)
!4494 = !DILocalVariable(name: "rbp2_ptr", scope: !4477, file: !124, line: 851, type: !75)
!4495 = !DILocalVariable(name: "ret2_ptr", scope: !4477, file: !124, line: 852, type: !75)
!4496 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 787, column: 22, scope: !4477)
!4500 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4497)
!4501 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4498)
!4502 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !4499)
!4503 = !DILocation(line: 787, column: 15, scope: !4477)
!4504 = !DILocation(line: 798, column: 3, scope: !4477)
!4505 = !{i32 23631}
!4506 = !DILocation(line: 795, column: 16, scope: !4477)
!4507 = !DILocation(line: 800, column: 21, scope: !4477)
!4508 = !DILocation(line: 800, column: 9, scope: !4477)
!4509 = !DILocation(line: 801, column: 21, scope: !4477)
!4510 = !DILocation(line: 801, column: 9, scope: !4477)
!4511 = !DILocation(line: 802, column: 21, scope: !4477)
!4512 = !DILocation(line: 802, column: 9, scope: !4477)
!4513 = !DILocation(line: 803, column: 26, scope: !4477)
!4514 = !DILocation(line: 803, column: 9, scope: !4477)
!4515 = !DILocation(line: 805, column: 44, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4477, file: !124, line: 805, column: 7)
!4517 = !DILocation(line: 805, column: 25, scope: !4516)
!4518 = !DILocation(line: 0, scope: !4477)
!4519 = !DILocation(line: 806, column: 46, scope: !4516)
!4520 = !DILocation(line: 806, column: 20, scope: !4516)
!4521 = !DILocation(line: 805, column: 50, scope: !4516)
!4522 = !DILocation(line: 815, column: 36, scope: !4477)
!4523 = !DILocation(line: 815, column: 9, scope: !4477)
!4524 = !DILocation(line: 821, column: 19, scope: !4477)
!4525 = !DILocation(line: 821, column: 24, scope: !4477)
!4526 = !DILocation(line: 790, column: 12, scope: !4477)
!4527 = !DILocation(line: 822, column: 37, scope: !4477)
!4528 = !DILocation(line: 791, column: 16, scope: !4477)
!4529 = !DILocation(line: 792, column: 16, scope: !4477)
!4530 = !DILocation(line: 825, column: 32, scope: !4477)
!4531 = !DILocation(line: 825, column: 57, scope: !4477)
!4532 = !DILocation(line: 793, column: 16, scope: !4477)
!4533 = !DILocation(line: 790, column: 18, scope: !4477)
!4534 = !DILocation(line: 831, column: 3, scope: !4477)
!4535 = !DILocation(line: 831, column: 15, scope: !4477)
!4536 = !DILocation(line: 832, column: 3, scope: !4477)
!4537 = !DILocation(line: 835, column: 15, scope: !4477)
!4538 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 835, column: 3, scope: !4477)
!4540 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4539)
!4541 = !DILocation(line: 115, column: 8, scope: !658, inlinedAt: !4539)
!4542 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4539)
!4543 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4539)
!4544 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4539)
!4545 = !DILocation(line: 837, column: 17, scope: !4477)
!4546 = !DILocation(line: 837, column: 22, scope: !4477)
!4547 = !DILocation(line: 794, column: 17, scope: !4477)
!4548 = !DILocation(line: 839, column: 22, scope: !4477)
!4549 = !DILocation(line: 839, column: 35, scope: !4477)
!4550 = !DILocation(line: 839, column: 3, scope: !4477)
!4551 = !DILocation(line: 840, column: 57, scope: !4477)
!4552 = !DILocation(line: 840, column: 14, scope: !4477)
!4553 = !DILocation(line: 840, column: 3, scope: !4477)
!4554 = !DILocation(line: 840, column: 8, scope: !4477)
!4555 = !DILocation(line: 840, column: 12, scope: !4477)
!4556 = !DILocation(line: 847, column: 35, scope: !4477)
!4557 = !DILocation(line: 847, column: 40, scope: !4477)
!4558 = !DILocation(line: 847, column: 78, scope: !4477)
!4559 = !DILocation(line: 847, column: 26, scope: !4477)
!4560 = !DILocation(line: 847, column: 10, scope: !4477)
!4561 = !DILocation(line: 848, column: 37, scope: !4477)
!4562 = !DILocation(line: 848, column: 20, scope: !4477)
!4563 = !DILocation(line: 848, column: 18, scope: !4477)
!4564 = !DILocation(line: 851, column: 30, scope: !4477)
!4565 = !DILocation(line: 851, column: 35, scope: !4477)
!4566 = !DILocation(line: 851, column: 39, scope: !4477)
!4567 = !DILocation(line: 851, column: 68, scope: !4477)
!4568 = !DILocation(line: 851, column: 21, scope: !4477)
!4569 = !DILocation(line: 851, column: 10, scope: !4477)
!4570 = !DILocation(line: 852, column: 29, scope: !4477)
!4571 = !DILocation(line: 852, column: 10, scope: !4477)
!4572 = !DILocation(line: 861, column: 13, scope: !4477)
!4573 = !DILocation(line: 868, column: 16, scope: !4477)
!4574 = !DILocation(line: 868, column: 21, scope: !4477)
!4575 = !DILocation(line: 868, column: 24, scope: !4477)
!4576 = !DILocation(line: 868, column: 4, scope: !4477)
!4577 = !DILocation(line: 868, column: 41, scope: !4477)
!4578 = !DILocation(line: 871, column: 16, scope: !4477)
!4579 = !DILocation(line: 663, column: 30, scope: !1840, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 871, column: 3, scope: !4477)
!4581 = !DILocation(line: 663, column: 41, scope: !1840, inlinedAt: !4580)
!4582 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 666, column: 30, scope: !1840, inlinedAt: !4580)
!4586 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4583)
!4587 = !DILocation(line: 666, column: 16, scope: !1840, inlinedAt: !4580)
!4588 = !DILocation(line: 0, scope: !1840, inlinedAt: !4580)
!4589 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 674, column: 41, scope: !1840, inlinedAt: !4580)
!4593 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4590)
!4594 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4591)
!4595 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !4592)
!4596 = !DILocation(line: 674, column: 21, scope: !1840, inlinedAt: !4580)
!4597 = !DILocation(line: 678, column: 6, scope: !1840, inlinedAt: !4580)
!4598 = !DILocation(line: 678, column: 15, scope: !1840, inlinedAt: !4580)
!4599 = !DILocation(line: 679, column: 22, scope: !1840, inlinedAt: !4580)
!4600 = !DILocation(line: 116, column: 52, scope: !1911, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 679, column: 3, scope: !1840, inlinedAt: !4580)
!4602 = !DILocation(line: 116, column: 76, scope: !1911, inlinedAt: !4601)
!4603 = !DILocation(line: 118, column: 25, scope: !1911, inlinedAt: !4601)
!4604 = !DILocation(line: 85, column: 49, scope: !1919, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 118, column: 2, scope: !1911, inlinedAt: !4601)
!4606 = !DILocation(line: 86, column: 28, scope: !1919, inlinedAt: !4605)
!4607 = !DILocation(line: 87, column: 28, scope: !1919, inlinedAt: !4605)
!4608 = !DILocation(line: 89, column: 13, scope: !1919, inlinedAt: !4605)
!4609 = !DILocation(line: 90, column: 8, scope: !1919, inlinedAt: !4605)
!4610 = !DILocation(line: 90, column: 13, scope: !1919, inlinedAt: !4605)
!4611 = !DILocation(line: 91, column: 8, scope: !1919, inlinedAt: !4605)
!4612 = !DILocation(line: 91, column: 13, scope: !1919, inlinedAt: !4605)
!4613 = !DILocation(line: 92, column: 8, scope: !1919, inlinedAt: !4605)
!4614 = !DILocation(line: 92, column: 13, scope: !1919, inlinedAt: !4605)
!4615 = !DILocation(line: 683, column: 20, scope: !1937, inlinedAt: !4580)
!4616 = !DILocation(line: 683, column: 7, scope: !1937, inlinedAt: !4580)
!4617 = !DILocation(line: 683, column: 7, scope: !1840, inlinedAt: !4580)
!4618 = !DILocation(line: 687, column: 5, scope: !1941, inlinedAt: !4580)
!4619 = !DILocation(line: 688, column: 3, scope: !1941, inlinedAt: !4580)
!4620 = !DILocation(line: 873, column: 10, scope: !4477)
!4621 = !DILocation(line: 874, column: 1, scope: !4477)
!4622 = !DILocation(line: 873, column: 3, scope: !4477)
!4623 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 877, type: !2201, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4624)
!4624 = !{!4625, !4626, !4627}
!4625 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4623, file: !124, line: 877, type: !240)
!4626 = !DILocalVariable(name: "curr_fiber", scope: !4623, file: !124, line: 887, type: !240)
!4627 = !DILocalVariable(name: "wait_q", scope: !4623, file: !124, line: 896, type: !150)
!4628 = !DILocation(line: 877, column: 31, scope: !4623)
!4629 = !DILocation(line: 883, column: 8, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4623, file: !124, line: 883, column: 7)
!4631 = !DILocation(line: 883, column: 7, scope: !4623)
!4632 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 887, column: 28, scope: !4623)
!4636 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4633)
!4637 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4634)
!4638 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !4635)
!4639 = !DILocation(line: 887, column: 15, scope: !4623)
!4640 = !DILocation(line: 896, column: 41, scope: !4623)
!4641 = !DILocation(line: 896, column: 21, scope: !4623)
!4642 = !DILocation(line: 897, column: 31, scope: !4623)
!4643 = !DILocation(line: 116, column: 52, scope: !1911, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 897, column: 3, scope: !4623)
!4645 = !DILocation(line: 116, column: 76, scope: !1911, inlinedAt: !4644)
!4646 = !DILocation(line: 118, column: 25, scope: !1911, inlinedAt: !4644)
!4647 = !DILocation(line: 85, column: 49, scope: !1919, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 118, column: 2, scope: !1911, inlinedAt: !4644)
!4649 = !DILocation(line: 86, column: 28, scope: !1919, inlinedAt: !4648)
!4650 = !DILocation(line: 87, column: 28, scope: !1919, inlinedAt: !4648)
!4651 = !DILocation(line: 89, column: 13, scope: !1919, inlinedAt: !4648)
!4652 = !DILocation(line: 90, column: 8, scope: !1919, inlinedAt: !4648)
!4653 = !DILocation(line: 90, column: 13, scope: !1919, inlinedAt: !4648)
!4654 = !DILocation(line: 91, column: 8, scope: !1919, inlinedAt: !4648)
!4655 = !DILocation(line: 91, column: 13, scope: !1919, inlinedAt: !4648)
!4656 = !DILocation(line: 92, column: 8, scope: !1919, inlinedAt: !4648)
!4657 = !DILocation(line: 92, column: 13, scope: !1919, inlinedAt: !4648)
!4658 = !DILocation(line: 898, column: 12, scope: !4623)
!4659 = !DILocation(line: 898, column: 20, scope: !4623)
!4660 = !DILocation(line: 899, column: 15, scope: !4623)
!4661 = !DILocation(line: 899, column: 24, scope: !4623)
!4662 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 98, column: 10, scope: !1016, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 704, column: 7, scope: !1018, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 903, column: 10, scope: !4623)
!4667 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4663)
!4668 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4664)
!4669 = !DILocation(line: 98, column: 30, scope: !1016, inlinedAt: !4665)
!4670 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 704, column: 30, scope: !1018, inlinedAt: !4666)
!4672 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4671)
!4673 = !DILocation(line: 704, column: 27, scope: !1018, inlinedAt: !4666)
!4674 = !DILocation(line: 704, column: 7, scope: !1019, inlinedAt: !4666)
!4675 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 105, column: 12, scope: !1034, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 122, column: 41, scope: !1038, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 708, column: 22, scope: !1019, inlinedAt: !4666)
!4680 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4676)
!4681 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4677)
!4682 = !DILocation(line: 105, column: 32, scope: !1034, inlinedAt: !4678)
!4683 = !DILocation(line: 122, column: 21, scope: !1038, inlinedAt: !4679)
!4684 = !DILocation(line: 125, column: 15, scope: !1038, inlinedAt: !4679)
!4685 = !DILocation(line: 184, column: 54, scope: !1061, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 126, column: 9, scope: !1047, inlinedAt: !4679)
!4687 = !DILocation(line: 186, column: 15, scope: !1061, inlinedAt: !4686)
!4688 = !DILocation(line: 186, column: 20, scope: !1061, inlinedAt: !4686)
!4689 = !DILocation(line: 126, column: 7, scope: !1038, inlinedAt: !4679)
!4690 = !DILocation(line: 128, column: 25, scope: !1045, inlinedAt: !4679)
!4691 = !DILocation(line: 131, column: 40, scope: !1046, inlinedAt: !4679)
!4692 = !DILocation(line: 151, column: 52, scope: !1073, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 131, column: 5, scope: !1046, inlinedAt: !4679)
!4694 = !DILocation(line: 153, column: 20, scope: !1073, inlinedAt: !4693)
!4695 = !DILocation(line: 153, column: 33, scope: !1073, inlinedAt: !4693)
!4696 = !DILocation(line: 128, column: 50, scope: !1080, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 153, column: 2, scope: !1073, inlinedAt: !4693)
!4698 = !DILocation(line: 128, column: 75, scope: !1080, inlinedAt: !4697)
!4699 = !DILocation(line: 130, column: 8, scope: !1080, inlinedAt: !4697)
!4700 = !DILocation(line: 130, column: 13, scope: !1080, inlinedAt: !4697)
!4701 = !DILocation(line: 131, column: 8, scope: !1080, inlinedAt: !4697)
!4702 = !DILocation(line: 131, column: 13, scope: !1080, inlinedAt: !4697)
!4703 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 154, column: 2, scope: !1073, inlinedAt: !4693)
!4705 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4704)
!4706 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4704)
!4707 = !DILocation(line: 708, column: 15, scope: !1019, inlinedAt: !4666)
!4708 = !DILocation(line: 718, column: 12, scope: !1098, inlinedAt: !4666)
!4709 = !DILocation(line: 718, column: 7, scope: !1019, inlinedAt: !4666)
!4710 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 85, column: 10, scope: !1103, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 719, column: 9, scope: !1105, inlinedAt: !4666)
!4714 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4711)
!4715 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4712)
!4716 = !DILocation(line: 85, column: 30, scope: !1103, inlinedAt: !4713)
!4717 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 719, column: 31, scope: !1105, inlinedAt: !4666)
!4721 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4718)
!4722 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4719)
!4723 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4720)
!4724 = !DILocation(line: 719, column: 28, scope: !1105, inlinedAt: !4666)
!4725 = !DILocation(line: 719, column: 9, scope: !1106, inlinedAt: !4666)
!4726 = !DILocation(line: 129, column: 25, scope: !1005, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 78, column: 10, scope: !1010, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 92, column: 10, scope: !1113, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 723, column: 16, scope: !1124, inlinedAt: !4666)
!4730 = !DILocation(line: 129, column: 12, scope: !1005, inlinedAt: !4727)
!4731 = !DILocation(line: 78, column: 21, scope: !1010, inlinedAt: !4728)
!4732 = !DILocation(line: 92, column: 30, scope: !1113, inlinedAt: !4729)
!4733 = !DILocation(line: 725, column: 3, scope: !1106, inlinedAt: !4666)
!4734 = !DILocation(line: 0, scope: !1019, inlinedAt: !4666)
!4735 = !DILocation(line: 727, column: 10, scope: !1019, inlinedAt: !4666)
!4736 = !DILocation(line: 727, column: 3, scope: !1019, inlinedAt: !4666)
!4737 = !DILocation(line: 0, scope: !4623)
!4738 = !DILocation(line: 904, column: 1, scope: !4623)
