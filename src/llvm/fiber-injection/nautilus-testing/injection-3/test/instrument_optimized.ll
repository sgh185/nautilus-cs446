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
  %3 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !989
  %4 = call i64 @msr_read(i32 -1073741567) #12, !dbg !993
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1012
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !1013
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !1013
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !1014
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !1014
  %10 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1015, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !1015
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !1017
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !1018
  br i1 %11, label %12, label %wrapper_nk_fiber_yield.exit6, !dbg !1019

; <label>:12:                                     ; preds = %2
  %13 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1020
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !1044
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !1045
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !1045
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !1046
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1031, metadata !DIExpression()) #11, !dbg !1047
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1049, metadata !DIExpression()) #11, !dbg !1054
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1056
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1056
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !1057
  br i1 %20, label %33, label %21, !dbg !1058

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1059
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !1059
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1033, metadata !DIExpression()) #11, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1032, metadata !DIExpression()) #11, !dbg !1048
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !1060
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1061, metadata !DIExpression()) #11, !dbg !1064
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !1066
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !1066
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !1067
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1068, metadata !DIExpression()) #11, !dbg !1074
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1073, metadata !DIExpression()) #11, !dbg !1076
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !1077
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !1078
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !1079
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !1080
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !1081
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !1083
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !1083
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !1084
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !1084
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1032, metadata !DIExpression()) #11, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1010, metadata !DIExpression()) #11, !dbg !1085
  %32 = icmp eq %struct.list_head** %22, null, !dbg !1086
  br i1 %32, label %33, label %54, !dbg !1088

; <label>:33:                                     ; preds = %21, %12
  %34 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1089
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !1096
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !1097
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !1097
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !1098
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !1098
  %40 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1099
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !1104
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !1105
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !1105
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !1106
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !1106
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !1107
  br i1 %46, label %wrapper_nk_fiber_yield.exit6, label %47, !dbg !1108

; <label>:47:                                     ; preds = %33
  %48 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1109
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !1114
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !1115
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !1115
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !1116
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !1116
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1010, metadata !DIExpression()) #11, !dbg !1085
  br label %54, !dbg !1117

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !1118
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1010, metadata !DIExpression()) #11, !dbg !1085
  %56 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !1119
  br label %wrapper_nk_fiber_yield.exit6, !dbg !1120

wrapper_nk_fiber_yield.exit6:                     ; preds = %2, %33, %54
  %57 = phi i32 [ 1, %2 ], [ 0, %33 ], [ 0, %54 ], !dbg !1118
  %58 = bitcast i8* %0 to i64*, !dbg !1121
  call void @llvm.dbg.value(metadata i64* %58, metadata !985, metadata !DIExpression()), !dbg !1122
  %59 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1123
  %60 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1124
  %61 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1126
  %62 = inttoptr i64 %61 to %struct.cpu*, !dbg !1131
  %63 = getelementptr inbounds %struct.cpu, %struct.cpu* %62, i64 0, i32 5, !dbg !1132
  %64 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %63, align 8, !dbg !1132
  %65 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %64, i64 0, i32 1, !dbg !1133
  %66 = load %struct.nk_thread*, %struct.nk_thread** %65, align 8, !dbg !1133
  %67 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1134, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %67, metadata !772, metadata !DIExpression()) #11, !dbg !1134
  call void @llvm.dbg.value(metadata %struct.nk_thread* %67, metadata !771, metadata !DIExpression()) #11, !dbg !1136
  %68 = icmp eq %struct.nk_thread* %66, %67, !dbg !1137
  br i1 %68, label %69, label %wrapper_nk_fiber_yield.exit5, !dbg !1138

; <label>:69:                                     ; preds = %wrapper_nk_fiber_yield.exit6
  %70 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1139
  %71 = inttoptr i64 %70 to %struct.cpu*, !dbg !1144
  %72 = getelementptr inbounds %struct.cpu, %struct.cpu* %71, i64 0, i32 5, !dbg !1145
  %73 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %72, align 8, !dbg !1145
  %74 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %73, i64 0, i32 4, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.list_head* %74, metadata !1031, metadata !DIExpression()) #11, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1148
  call void @llvm.dbg.value(metadata %struct.list_head* %74, metadata !1049, metadata !DIExpression()) #11, !dbg !1149
  %75 = getelementptr inbounds %struct.list_head, %struct.list_head* %74, i64 0, i32 0, !dbg !1151
  %76 = load %struct.list_head*, %struct.list_head** %75, align 8, !dbg !1151
  %77 = icmp eq %struct.list_head* %76, %74, !dbg !1152
  br i1 %77, label %90, label %78, !dbg !1153

; <label>:78:                                     ; preds = %69
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1154
  %79 = getelementptr %struct.list_head, %struct.list_head* %76, i64 -7, i32 1, !dbg !1154
  %80 = bitcast %struct.list_head** %79 to %struct.nk_fiber*, !dbg !1154
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1033, metadata !DIExpression()) #11, !dbg !1154
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1032, metadata !DIExpression()) #11, !dbg !1148
  %81 = getelementptr inbounds %struct.list_head*, %struct.list_head** %79, i64 13, !dbg !1155
  call void @llvm.dbg.value(metadata %struct.list_head** %81, metadata !1061, metadata !DIExpression()) #11, !dbg !1156
  %82 = getelementptr inbounds %struct.list_head*, %struct.list_head** %79, i64 14, !dbg !1158
  %83 = load %struct.list_head*, %struct.list_head** %82, align 8, !dbg !1158
  %84 = load %struct.list_head*, %struct.list_head** %81, align 8, !dbg !1159
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1068, metadata !DIExpression()) #11, !dbg !1160
  call void @llvm.dbg.value(metadata %struct.list_head* %84, metadata !1073, metadata !DIExpression()) #11, !dbg !1162
  %85 = getelementptr inbounds %struct.list_head, %struct.list_head* %84, i64 0, i32 1, !dbg !1163
  store %struct.list_head* %83, %struct.list_head** %85, align 8, !dbg !1164
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !1165
  store %struct.list_head* %84, %struct.list_head** %86, align 8, !dbg !1166
  call void @llvm.dbg.value(metadata %struct.list_head** %81, metadata !780, metadata !DIExpression()) #11, !dbg !1167
  %87 = bitcast %struct.list_head** %81 to %struct.list_head***, !dbg !1169
  store %struct.list_head** %81, %struct.list_head*** %87, align 8, !dbg !1169
  %88 = bitcast %struct.list_head** %82 to %struct.list_head***, !dbg !1170
  store %struct.list_head** %81, %struct.list_head*** %88, align 8, !dbg !1170
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1032, metadata !DIExpression()) #11, !dbg !1148
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1010, metadata !DIExpression()) #11, !dbg !1171
  %89 = icmp eq %struct.list_head** %79, null, !dbg !1172
  br i1 %89, label %90, label %111, !dbg !1173

; <label>:90:                                     ; preds = %78, %69
  %91 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1174
  %92 = inttoptr i64 %91 to %struct.cpu*, !dbg !1178
  %93 = getelementptr inbounds %struct.cpu, %struct.cpu* %92, i64 0, i32 5, !dbg !1179
  %94 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %93, align 8, !dbg !1179
  %95 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %94, i64 0, i32 2, !dbg !1180
  %96 = load %struct.nk_fiber*, %struct.nk_fiber** %95, align 8, !dbg !1180
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1181
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1185
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1186
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1186
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 3, !dbg !1187
  %102 = load %struct.nk_fiber*, %struct.nk_fiber** %101, align 8, !dbg !1187
  %103 = icmp eq %struct.nk_fiber* %96, %102, !dbg !1188
  br i1 %103, label %wrapper_nk_fiber_yield.exit5, label %104, !dbg !1189

; <label>:104:                                    ; preds = %90
  %105 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1190
  %106 = inttoptr i64 %105 to %struct.cpu*, !dbg !1194
  %107 = getelementptr inbounds %struct.cpu, %struct.cpu* %106, i64 0, i32 5, !dbg !1195
  %108 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %107, align 8, !dbg !1195
  %109 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %108, i64 0, i32 3, !dbg !1196
  %110 = load %struct.nk_fiber*, %struct.nk_fiber** %109, align 8, !dbg !1196
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %110, metadata !1010, metadata !DIExpression()) #11, !dbg !1171
  br label %111, !dbg !1197

; <label>:111:                                    ; preds = %104, %78
  %112 = phi %struct.nk_fiber* [ %110, %104 ], [ %80, %78 ], !dbg !1198
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %112, metadata !1010, metadata !DIExpression()) #11, !dbg !1171
  %113 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %112) #12, !dbg !1199
  br label %wrapper_nk_fiber_yield.exit5, !dbg !1200

wrapper_nk_fiber_yield.exit5:                     ; preds = %wrapper_nk_fiber_yield.exit6, %90, %111
  %114 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit6 ], [ 0, %90 ], [ 0, %111 ], !dbg !1198
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %59) #12, !dbg !1201
  call void @llvm.dbg.value(metadata i32 0, metadata !986, metadata !DIExpression()), !dbg !1202
  %115 = load i64, i64* %58, align 8, !dbg !1203
  %116 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1204
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1206
  %118 = inttoptr i64 %117 to %struct.cpu*, !dbg !1211
  %119 = getelementptr inbounds %struct.cpu, %struct.cpu* %118, i64 0, i32 5, !dbg !1212
  %120 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %119, align 8, !dbg !1212
  %121 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %120, i64 0, i32 1, !dbg !1213
  %122 = load %struct.nk_thread*, %struct.nk_thread** %121, align 8, !dbg !1213
  %123 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1214, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %123, metadata !772, metadata !DIExpression()) #11, !dbg !1214
  call void @llvm.dbg.value(metadata %struct.nk_thread* %123, metadata !771, metadata !DIExpression()) #11, !dbg !1216
  %124 = icmp eq %struct.nk_thread* %122, %123, !dbg !1217
  br i1 %124, label %125, label %wrapper_nk_fiber_yield.exit4, !dbg !1218

; <label>:125:                                    ; preds = %wrapper_nk_fiber_yield.exit5
  %126 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1219
  %127 = inttoptr i64 %126 to %struct.cpu*, !dbg !1224
  %128 = getelementptr inbounds %struct.cpu, %struct.cpu* %127, i64 0, i32 5, !dbg !1225
  %129 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %128, align 8, !dbg !1225
  %130 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %129, i64 0, i32 4, !dbg !1226
  call void @llvm.dbg.value(metadata %struct.list_head* %130, metadata !1031, metadata !DIExpression()) #11, !dbg !1227
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.list_head* %130, metadata !1049, metadata !DIExpression()) #11, !dbg !1229
  %131 = getelementptr inbounds %struct.list_head, %struct.list_head* %130, i64 0, i32 0, !dbg !1231
  %132 = load %struct.list_head*, %struct.list_head** %131, align 8, !dbg !1231
  %133 = icmp eq %struct.list_head* %132, %130, !dbg !1232
  br i1 %133, label %146, label %134, !dbg !1233

; <label>:134:                                    ; preds = %125
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1234
  %135 = getelementptr %struct.list_head, %struct.list_head* %132, i64 -7, i32 1, !dbg !1234
  %136 = bitcast %struct.list_head** %135 to %struct.nk_fiber*, !dbg !1234
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %136, metadata !1033, metadata !DIExpression()) #11, !dbg !1234
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %136, metadata !1032, metadata !DIExpression()) #11, !dbg !1228
  %137 = getelementptr inbounds %struct.list_head*, %struct.list_head** %135, i64 13, !dbg !1235
  call void @llvm.dbg.value(metadata %struct.list_head** %137, metadata !1061, metadata !DIExpression()) #11, !dbg !1236
  %138 = getelementptr inbounds %struct.list_head*, %struct.list_head** %135, i64 14, !dbg !1238
  %139 = load %struct.list_head*, %struct.list_head** %138, align 8, !dbg !1238
  %140 = load %struct.list_head*, %struct.list_head** %137, align 8, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.list_head* %139, metadata !1068, metadata !DIExpression()) #11, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.list_head* %140, metadata !1073, metadata !DIExpression()) #11, !dbg !1242
  %141 = getelementptr inbounds %struct.list_head, %struct.list_head* %140, i64 0, i32 1, !dbg !1243
  store %struct.list_head* %139, %struct.list_head** %141, align 8, !dbg !1244
  %142 = getelementptr inbounds %struct.list_head, %struct.list_head* %139, i64 0, i32 0, !dbg !1245
  store %struct.list_head* %140, %struct.list_head** %142, align 8, !dbg !1246
  call void @llvm.dbg.value(metadata %struct.list_head** %137, metadata !780, metadata !DIExpression()) #11, !dbg !1247
  %143 = bitcast %struct.list_head** %137 to %struct.list_head***, !dbg !1249
  store %struct.list_head** %137, %struct.list_head*** %143, align 8, !dbg !1249
  %144 = bitcast %struct.list_head** %138 to %struct.list_head***, !dbg !1250
  store %struct.list_head** %137, %struct.list_head*** %144, align 8, !dbg !1250
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %136, metadata !1032, metadata !DIExpression()) #11, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %136, metadata !1010, metadata !DIExpression()) #11, !dbg !1251
  %145 = icmp eq %struct.list_head** %135, null, !dbg !1252
  br i1 %145, label %146, label %167, !dbg !1253

; <label>:146:                                    ; preds = %134, %125
  %147 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1254
  %148 = inttoptr i64 %147 to %struct.cpu*, !dbg !1258
  %149 = getelementptr inbounds %struct.cpu, %struct.cpu* %148, i64 0, i32 5, !dbg !1259
  %150 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %149, align 8, !dbg !1259
  %151 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %150, i64 0, i32 2, !dbg !1260
  %152 = load %struct.nk_fiber*, %struct.nk_fiber** %151, align 8, !dbg !1260
  %153 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1261
  %154 = inttoptr i64 %153 to %struct.cpu*, !dbg !1265
  %155 = getelementptr inbounds %struct.cpu, %struct.cpu* %154, i64 0, i32 5, !dbg !1266
  %156 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %155, align 8, !dbg !1266
  %157 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %156, i64 0, i32 3, !dbg !1267
  %158 = load %struct.nk_fiber*, %struct.nk_fiber** %157, align 8, !dbg !1267
  %159 = icmp eq %struct.nk_fiber* %152, %158, !dbg !1268
  br i1 %159, label %wrapper_nk_fiber_yield.exit4, label %160, !dbg !1269

; <label>:160:                                    ; preds = %146
  %161 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1270
  %162 = inttoptr i64 %161 to %struct.cpu*, !dbg !1274
  %163 = getelementptr inbounds %struct.cpu, %struct.cpu* %162, i64 0, i32 5, !dbg !1275
  %164 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %163, align 8, !dbg !1275
  %165 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %164, i64 0, i32 3, !dbg !1276
  %166 = load %struct.nk_fiber*, %struct.nk_fiber** %165, align 8, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %166, metadata !1010, metadata !DIExpression()) #11, !dbg !1251
  br label %167, !dbg !1277

; <label>:167:                                    ; preds = %160, %134
  %168 = phi %struct.nk_fiber* [ %166, %160 ], [ %136, %134 ], !dbg !1278
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %168, metadata !1010, metadata !DIExpression()) #11, !dbg !1251
  %169 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %168) #12, !dbg !1279
  br label %wrapper_nk_fiber_yield.exit4, !dbg !1280

wrapper_nk_fiber_yield.exit4:                     ; preds = %wrapper_nk_fiber_yield.exit5, %146, %167
  %170 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit5 ], [ 0, %146 ], [ 0, %167 ], !dbg !1278
  %171 = icmp eq i64 %115, 0, !dbg !1281
  br i1 %171, label %344, label %172, !dbg !1282

; <label>:172:                                    ; preds = %wrapper_nk_fiber_yield.exit4, %wrapper_nk_fiber_yield.exit1
  %173 = phi i32 [ %229, %wrapper_nk_fiber_yield.exit1 ], [ 0, %wrapper_nk_fiber_yield.exit4 ]
  call void @llvm.dbg.value(metadata i32 %173, metadata !986, metadata !DIExpression()), !dbg !1202
  %174 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1283
  %175 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1286
  %176 = inttoptr i64 %175 to %struct.cpu*, !dbg !1291
  %177 = getelementptr inbounds %struct.cpu, %struct.cpu* %176, i64 0, i32 5, !dbg !1292
  %178 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %177, align 8, !dbg !1292
  %179 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %178, i64 0, i32 1, !dbg !1293
  %180 = load %struct.nk_thread*, %struct.nk_thread** %179, align 8, !dbg !1293
  %181 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1294, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %181, metadata !772, metadata !DIExpression()) #11, !dbg !1294
  call void @llvm.dbg.value(metadata %struct.nk_thread* %181, metadata !771, metadata !DIExpression()) #11, !dbg !1296
  %182 = icmp eq %struct.nk_thread* %180, %181, !dbg !1297
  br i1 %182, label %183, label %wrapper_nk_fiber_yield.exit3, !dbg !1298

; <label>:183:                                    ; preds = %172
  %184 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1299
  %185 = inttoptr i64 %184 to %struct.cpu*, !dbg !1304
  %186 = getelementptr inbounds %struct.cpu, %struct.cpu* %185, i64 0, i32 5, !dbg !1305
  %187 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %186, align 8, !dbg !1305
  %188 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %187, i64 0, i32 4, !dbg !1306
  call void @llvm.dbg.value(metadata %struct.list_head* %188, metadata !1031, metadata !DIExpression()) #11, !dbg !1307
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.list_head* %188, metadata !1049, metadata !DIExpression()) #11, !dbg !1309
  %189 = getelementptr inbounds %struct.list_head, %struct.list_head* %188, i64 0, i32 0, !dbg !1311
  %190 = load %struct.list_head*, %struct.list_head** %189, align 8, !dbg !1311
  %191 = icmp eq %struct.list_head* %190, %188, !dbg !1312
  br i1 %191, label %204, label %192, !dbg !1313

; <label>:192:                                    ; preds = %183
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1314
  %193 = getelementptr %struct.list_head, %struct.list_head* %190, i64 -7, i32 1, !dbg !1314
  %194 = bitcast %struct.list_head** %193 to %struct.nk_fiber*, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %194, metadata !1033, metadata !DIExpression()) #11, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %194, metadata !1032, metadata !DIExpression()) #11, !dbg !1308
  %195 = getelementptr inbounds %struct.list_head*, %struct.list_head** %193, i64 13, !dbg !1315
  call void @llvm.dbg.value(metadata %struct.list_head** %195, metadata !1061, metadata !DIExpression()) #11, !dbg !1316
  %196 = getelementptr inbounds %struct.list_head*, %struct.list_head** %193, i64 14, !dbg !1318
  %197 = load %struct.list_head*, %struct.list_head** %196, align 8, !dbg !1318
  %198 = load %struct.list_head*, %struct.list_head** %195, align 8, !dbg !1319
  call void @llvm.dbg.value(metadata %struct.list_head* %197, metadata !1068, metadata !DIExpression()) #11, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.list_head* %198, metadata !1073, metadata !DIExpression()) #11, !dbg !1322
  %199 = getelementptr inbounds %struct.list_head, %struct.list_head* %198, i64 0, i32 1, !dbg !1323
  store %struct.list_head* %197, %struct.list_head** %199, align 8, !dbg !1324
  %200 = getelementptr inbounds %struct.list_head, %struct.list_head* %197, i64 0, i32 0, !dbg !1325
  store %struct.list_head* %198, %struct.list_head** %200, align 8, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.list_head** %195, metadata !780, metadata !DIExpression()) #11, !dbg !1327
  %201 = bitcast %struct.list_head** %195 to %struct.list_head***, !dbg !1329
  store %struct.list_head** %195, %struct.list_head*** %201, align 8, !dbg !1329
  %202 = bitcast %struct.list_head** %196 to %struct.list_head***, !dbg !1330
  store %struct.list_head** %195, %struct.list_head*** %202, align 8, !dbg !1330
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %194, metadata !1032, metadata !DIExpression()) #11, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %194, metadata !1010, metadata !DIExpression()) #11, !dbg !1331
  %203 = icmp eq %struct.list_head** %193, null, !dbg !1332
  br i1 %203, label %204, label %225, !dbg !1333

; <label>:204:                                    ; preds = %192, %183
  %205 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1334
  %206 = inttoptr i64 %205 to %struct.cpu*, !dbg !1338
  %207 = getelementptr inbounds %struct.cpu, %struct.cpu* %206, i64 0, i32 5, !dbg !1339
  %208 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %207, align 8, !dbg !1339
  %209 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %208, i64 0, i32 2, !dbg !1340
  %210 = load %struct.nk_fiber*, %struct.nk_fiber** %209, align 8, !dbg !1340
  %211 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1341
  %212 = inttoptr i64 %211 to %struct.cpu*, !dbg !1345
  %213 = getelementptr inbounds %struct.cpu, %struct.cpu* %212, i64 0, i32 5, !dbg !1346
  %214 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %213, align 8, !dbg !1346
  %215 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %214, i64 0, i32 3, !dbg !1347
  %216 = load %struct.nk_fiber*, %struct.nk_fiber** %215, align 8, !dbg !1347
  %217 = icmp eq %struct.nk_fiber* %210, %216, !dbg !1348
  br i1 %217, label %wrapper_nk_fiber_yield.exit3, label %218, !dbg !1349

; <label>:218:                                    ; preds = %204
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1350
  %220 = inttoptr i64 %219 to %struct.cpu*, !dbg !1354
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !1355
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !1355
  %223 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !1356
  %224 = load %struct.nk_fiber*, %struct.nk_fiber** %223, align 8, !dbg !1356
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %224, metadata !1010, metadata !DIExpression()) #11, !dbg !1331
  br label %225, !dbg !1357

; <label>:225:                                    ; preds = %218, %192
  %226 = phi %struct.nk_fiber* [ %224, %218 ], [ %194, %192 ], !dbg !1358
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %226, metadata !1010, metadata !DIExpression()) #11, !dbg !1331
  %227 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %226) #12, !dbg !1359
  br label %wrapper_nk_fiber_yield.exit3, !dbg !1360

wrapper_nk_fiber_yield.exit3:                     ; preds = %172, %204, %225
  %228 = phi i32 [ 1, %172 ], [ 0, %204 ], [ 0, %225 ], !dbg !1358
  %229 = add i32 %173, 1, !dbg !1361
  %230 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %173) #12, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %229, metadata !986, metadata !DIExpression()), !dbg !1202
  %231 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1363
  %232 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1365
  %233 = inttoptr i64 %232 to %struct.cpu*, !dbg !1370
  %234 = getelementptr inbounds %struct.cpu, %struct.cpu* %233, i64 0, i32 5, !dbg !1371
  %235 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %234, align 8, !dbg !1371
  %236 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %235, i64 0, i32 1, !dbg !1372
  %237 = load %struct.nk_thread*, %struct.nk_thread** %236, align 8, !dbg !1372
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1373, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !772, metadata !DIExpression()) #11, !dbg !1373
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !771, metadata !DIExpression()) #11, !dbg !1375
  %239 = icmp eq %struct.nk_thread* %237, %238, !dbg !1376
  br i1 %239, label %240, label %wrapper_nk_fiber_yield.exit2, !dbg !1377

; <label>:240:                                    ; preds = %wrapper_nk_fiber_yield.exit3
  %241 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1378
  %242 = inttoptr i64 %241 to %struct.cpu*, !dbg !1383
  %243 = getelementptr inbounds %struct.cpu, %struct.cpu* %242, i64 0, i32 5, !dbg !1384
  %244 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %243, align 8, !dbg !1384
  %245 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %244, i64 0, i32 4, !dbg !1385
  call void @llvm.dbg.value(metadata %struct.list_head* %245, metadata !1031, metadata !DIExpression()) #11, !dbg !1386
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1387
  call void @llvm.dbg.value(metadata %struct.list_head* %245, metadata !1049, metadata !DIExpression()) #11, !dbg !1388
  %246 = getelementptr inbounds %struct.list_head, %struct.list_head* %245, i64 0, i32 0, !dbg !1390
  %247 = load %struct.list_head*, %struct.list_head** %246, align 8, !dbg !1390
  %248 = icmp eq %struct.list_head* %247, %245, !dbg !1391
  br i1 %248, label %261, label %249, !dbg !1392

; <label>:249:                                    ; preds = %240
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1393
  %250 = getelementptr %struct.list_head, %struct.list_head* %247, i64 -7, i32 1, !dbg !1393
  %251 = bitcast %struct.list_head** %250 to %struct.nk_fiber*, !dbg !1393
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %251, metadata !1033, metadata !DIExpression()) #11, !dbg !1393
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %251, metadata !1032, metadata !DIExpression()) #11, !dbg !1387
  %252 = getelementptr inbounds %struct.list_head*, %struct.list_head** %250, i64 13, !dbg !1394
  call void @llvm.dbg.value(metadata %struct.list_head** %252, metadata !1061, metadata !DIExpression()) #11, !dbg !1395
  %253 = getelementptr inbounds %struct.list_head*, %struct.list_head** %250, i64 14, !dbg !1397
  %254 = load %struct.list_head*, %struct.list_head** %253, align 8, !dbg !1397
  %255 = load %struct.list_head*, %struct.list_head** %252, align 8, !dbg !1398
  call void @llvm.dbg.value(metadata %struct.list_head* %254, metadata !1068, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata %struct.list_head* %255, metadata !1073, metadata !DIExpression()) #11, !dbg !1401
  %256 = getelementptr inbounds %struct.list_head, %struct.list_head* %255, i64 0, i32 1, !dbg !1402
  store %struct.list_head* %254, %struct.list_head** %256, align 8, !dbg !1403
  %257 = getelementptr inbounds %struct.list_head, %struct.list_head* %254, i64 0, i32 0, !dbg !1404
  store %struct.list_head* %255, %struct.list_head** %257, align 8, !dbg !1405
  call void @llvm.dbg.value(metadata %struct.list_head** %252, metadata !780, metadata !DIExpression()) #11, !dbg !1406
  %258 = bitcast %struct.list_head** %252 to %struct.list_head***, !dbg !1408
  store %struct.list_head** %252, %struct.list_head*** %258, align 8, !dbg !1408
  %259 = bitcast %struct.list_head** %253 to %struct.list_head***, !dbg !1409
  store %struct.list_head** %252, %struct.list_head*** %259, align 8, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %251, metadata !1032, metadata !DIExpression()) #11, !dbg !1387
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %251, metadata !1010, metadata !DIExpression()) #11, !dbg !1410
  %260 = icmp eq %struct.list_head** %250, null, !dbg !1411
  br i1 %260, label %261, label %282, !dbg !1412

; <label>:261:                                    ; preds = %249, %240
  %262 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1413
  %263 = inttoptr i64 %262 to %struct.cpu*, !dbg !1417
  %264 = getelementptr inbounds %struct.cpu, %struct.cpu* %263, i64 0, i32 5, !dbg !1418
  %265 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %264, align 8, !dbg !1418
  %266 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %265, i64 0, i32 2, !dbg !1419
  %267 = load %struct.nk_fiber*, %struct.nk_fiber** %266, align 8, !dbg !1419
  %268 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1420
  %269 = inttoptr i64 %268 to %struct.cpu*, !dbg !1424
  %270 = getelementptr inbounds %struct.cpu, %struct.cpu* %269, i64 0, i32 5, !dbg !1425
  %271 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %270, align 8, !dbg !1425
  %272 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %271, i64 0, i32 3, !dbg !1426
  %273 = load %struct.nk_fiber*, %struct.nk_fiber** %272, align 8, !dbg !1426
  %274 = icmp eq %struct.nk_fiber* %267, %273, !dbg !1427
  br i1 %274, label %wrapper_nk_fiber_yield.exit2, label %275, !dbg !1428

; <label>:275:                                    ; preds = %261
  %276 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1429
  %277 = inttoptr i64 %276 to %struct.cpu*, !dbg !1433
  %278 = getelementptr inbounds %struct.cpu, %struct.cpu* %277, i64 0, i32 5, !dbg !1434
  %279 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %278, align 8, !dbg !1434
  %280 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %279, i64 0, i32 3, !dbg !1435
  %281 = load %struct.nk_fiber*, %struct.nk_fiber** %280, align 8, !dbg !1435
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %281, metadata !1010, metadata !DIExpression()) #11, !dbg !1410
  br label %282, !dbg !1436

; <label>:282:                                    ; preds = %275, %249
  %283 = phi %struct.nk_fiber* [ %281, %275 ], [ %251, %249 ], !dbg !1437
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %283, metadata !1010, metadata !DIExpression()) #11, !dbg !1410
  %284 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %283) #12, !dbg !1438
  br label %wrapper_nk_fiber_yield.exit2, !dbg !1439

wrapper_nk_fiber_yield.exit2:                     ; preds = %wrapper_nk_fiber_yield.exit3, %261, %282
  %285 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit3 ], [ 0, %261 ], [ 0, %282 ], !dbg !1437
  %286 = zext i32 %229 to i64, !dbg !1440
  %287 = load i64, i64* %58, align 8, !dbg !1203
  %288 = icmp ugt i64 %287, %286, !dbg !1281
  %289 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1441
  %290 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1443
  %291 = inttoptr i64 %290 to %struct.cpu*, !dbg !1448
  %292 = getelementptr inbounds %struct.cpu, %struct.cpu* %291, i64 0, i32 5, !dbg !1449
  %293 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %292, align 8, !dbg !1449
  %294 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %293, i64 0, i32 1, !dbg !1450
  %295 = load %struct.nk_thread*, %struct.nk_thread** %294, align 8, !dbg !1450
  %296 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1451, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %296, metadata !772, metadata !DIExpression()) #11, !dbg !1451
  call void @llvm.dbg.value(metadata %struct.nk_thread* %296, metadata !771, metadata !DIExpression()) #11, !dbg !1453
  %297 = icmp eq %struct.nk_thread* %295, %296, !dbg !1454
  br i1 %297, label %298, label %wrapper_nk_fiber_yield.exit1, !dbg !1455

; <label>:298:                                    ; preds = %wrapper_nk_fiber_yield.exit2
  %299 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1456
  %300 = inttoptr i64 %299 to %struct.cpu*, !dbg !1461
  %301 = getelementptr inbounds %struct.cpu, %struct.cpu* %300, i64 0, i32 5, !dbg !1462
  %302 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %301, align 8, !dbg !1462
  %303 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %302, i64 0, i32 4, !dbg !1463
  call void @llvm.dbg.value(metadata %struct.list_head* %303, metadata !1031, metadata !DIExpression()) #11, !dbg !1464
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1465
  call void @llvm.dbg.value(metadata %struct.list_head* %303, metadata !1049, metadata !DIExpression()) #11, !dbg !1466
  %304 = getelementptr inbounds %struct.list_head, %struct.list_head* %303, i64 0, i32 0, !dbg !1468
  %305 = load %struct.list_head*, %struct.list_head** %304, align 8, !dbg !1468
  %306 = icmp eq %struct.list_head* %305, %303, !dbg !1469
  br i1 %306, label %319, label %307, !dbg !1470

; <label>:307:                                    ; preds = %298
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1471
  %308 = getelementptr %struct.list_head, %struct.list_head* %305, i64 -7, i32 1, !dbg !1471
  %309 = bitcast %struct.list_head** %308 to %struct.nk_fiber*, !dbg !1471
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %309, metadata !1033, metadata !DIExpression()) #11, !dbg !1471
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %309, metadata !1032, metadata !DIExpression()) #11, !dbg !1465
  %310 = getelementptr inbounds %struct.list_head*, %struct.list_head** %308, i64 13, !dbg !1472
  call void @llvm.dbg.value(metadata %struct.list_head** %310, metadata !1061, metadata !DIExpression()) #11, !dbg !1473
  %311 = getelementptr inbounds %struct.list_head*, %struct.list_head** %308, i64 14, !dbg !1475
  %312 = load %struct.list_head*, %struct.list_head** %311, align 8, !dbg !1475
  %313 = load %struct.list_head*, %struct.list_head** %310, align 8, !dbg !1476
  call void @llvm.dbg.value(metadata %struct.list_head* %312, metadata !1068, metadata !DIExpression()) #11, !dbg !1477
  call void @llvm.dbg.value(metadata %struct.list_head* %313, metadata !1073, metadata !DIExpression()) #11, !dbg !1479
  %314 = getelementptr inbounds %struct.list_head, %struct.list_head* %313, i64 0, i32 1, !dbg !1480
  store %struct.list_head* %312, %struct.list_head** %314, align 8, !dbg !1481
  %315 = getelementptr inbounds %struct.list_head, %struct.list_head* %312, i64 0, i32 0, !dbg !1482
  store %struct.list_head* %313, %struct.list_head** %315, align 8, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.list_head** %310, metadata !780, metadata !DIExpression()) #11, !dbg !1484
  %316 = bitcast %struct.list_head** %310 to %struct.list_head***, !dbg !1486
  store %struct.list_head** %310, %struct.list_head*** %316, align 8, !dbg !1486
  %317 = bitcast %struct.list_head** %311 to %struct.list_head***, !dbg !1487
  store %struct.list_head** %310, %struct.list_head*** %317, align 8, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %309, metadata !1032, metadata !DIExpression()) #11, !dbg !1465
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %309, metadata !1010, metadata !DIExpression()) #11, !dbg !1488
  %318 = icmp eq %struct.list_head** %308, null, !dbg !1489
  br i1 %318, label %319, label %340, !dbg !1490

; <label>:319:                                    ; preds = %307, %298
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1491
  %321 = inttoptr i64 %320 to %struct.cpu*, !dbg !1495
  %322 = getelementptr inbounds %struct.cpu, %struct.cpu* %321, i64 0, i32 5, !dbg !1496
  %323 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %322, align 8, !dbg !1496
  %324 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %323, i64 0, i32 2, !dbg !1497
  %325 = load %struct.nk_fiber*, %struct.nk_fiber** %324, align 8, !dbg !1497
  %326 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1498
  %327 = inttoptr i64 %326 to %struct.cpu*, !dbg !1502
  %328 = getelementptr inbounds %struct.cpu, %struct.cpu* %327, i64 0, i32 5, !dbg !1503
  %329 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %328, align 8, !dbg !1503
  %330 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %329, i64 0, i32 3, !dbg !1504
  %331 = load %struct.nk_fiber*, %struct.nk_fiber** %330, align 8, !dbg !1504
  %332 = icmp eq %struct.nk_fiber* %325, %331, !dbg !1505
  br i1 %332, label %wrapper_nk_fiber_yield.exit1, label %333, !dbg !1506

; <label>:333:                                    ; preds = %319
  %334 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1507
  %335 = inttoptr i64 %334 to %struct.cpu*, !dbg !1511
  %336 = getelementptr inbounds %struct.cpu, %struct.cpu* %335, i64 0, i32 5, !dbg !1512
  %337 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %336, align 8, !dbg !1512
  %338 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %337, i64 0, i32 3, !dbg !1513
  %339 = load %struct.nk_fiber*, %struct.nk_fiber** %338, align 8, !dbg !1513
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %339, metadata !1010, metadata !DIExpression()) #11, !dbg !1488
  br label %340, !dbg !1514

; <label>:340:                                    ; preds = %333, %307
  %341 = phi %struct.nk_fiber* [ %339, %333 ], [ %309, %307 ], !dbg !1515
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %341, metadata !1010, metadata !DIExpression()) #11, !dbg !1488
  %342 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %341) #12, !dbg !1516
  br label %wrapper_nk_fiber_yield.exit1, !dbg !1517

wrapper_nk_fiber_yield.exit1:                     ; preds = %wrapper_nk_fiber_yield.exit2, %319, %340
  %343 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit2 ], [ 0, %319 ], [ 0, %340 ], !dbg !1515
  br i1 %288, label %172, label %344, !dbg !1282, !llvm.loop !1518

; <label>:344:                                    ; preds = %wrapper_nk_fiber_yield.exit1, %wrapper_nk_fiber_yield.exit4
  %345 = phi i32 [ 0, %wrapper_nk_fiber_yield.exit4 ], [ %229, %wrapper_nk_fiber_yield.exit1 ], !dbg !1520
  call void @llvm.dbg.value(metadata i32 %345, metadata !986, metadata !DIExpression()), !dbg !1202
  %346 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %345) #12, !dbg !1521
  %347 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1522
  %348 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1524
  %349 = inttoptr i64 %348 to %struct.cpu*, !dbg !1529
  %350 = getelementptr inbounds %struct.cpu, %struct.cpu* %349, i64 0, i32 5, !dbg !1530
  %351 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %350, align 8, !dbg !1530
  %352 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %351, i64 0, i32 1, !dbg !1531
  %353 = load %struct.nk_thread*, %struct.nk_thread** %352, align 8, !dbg !1531
  %354 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1532, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %354, metadata !772, metadata !DIExpression()) #11, !dbg !1532
  call void @llvm.dbg.value(metadata %struct.nk_thread* %354, metadata !771, metadata !DIExpression()) #11, !dbg !1534
  %355 = icmp eq %struct.nk_thread* %353, %354, !dbg !1535
  br i1 %355, label %356, label %wrapper_nk_fiber_yield.exit, !dbg !1536

; <label>:356:                                    ; preds = %344
  %357 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1537
  %358 = inttoptr i64 %357 to %struct.cpu*, !dbg !1542
  %359 = getelementptr inbounds %struct.cpu, %struct.cpu* %358, i64 0, i32 5, !dbg !1543
  %360 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %359, align 8, !dbg !1543
  %361 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %360, i64 0, i32 4, !dbg !1544
  call void @llvm.dbg.value(metadata %struct.list_head* %361, metadata !1031, metadata !DIExpression()) #11, !dbg !1545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1546
  call void @llvm.dbg.value(metadata %struct.list_head* %361, metadata !1049, metadata !DIExpression()) #11, !dbg !1547
  %362 = getelementptr inbounds %struct.list_head, %struct.list_head* %361, i64 0, i32 0, !dbg !1549
  %363 = load %struct.list_head*, %struct.list_head** %362, align 8, !dbg !1549
  %364 = icmp eq %struct.list_head* %363, %361, !dbg !1550
  br i1 %364, label %377, label %365, !dbg !1551

; <label>:365:                                    ; preds = %356
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1552
  %366 = getelementptr %struct.list_head, %struct.list_head* %363, i64 -7, i32 1, !dbg !1552
  %367 = bitcast %struct.list_head** %366 to %struct.nk_fiber*, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %367, metadata !1033, metadata !DIExpression()) #11, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %367, metadata !1032, metadata !DIExpression()) #11, !dbg !1546
  %368 = getelementptr inbounds %struct.list_head*, %struct.list_head** %366, i64 13, !dbg !1553
  call void @llvm.dbg.value(metadata %struct.list_head** %368, metadata !1061, metadata !DIExpression()) #11, !dbg !1554
  %369 = getelementptr inbounds %struct.list_head*, %struct.list_head** %366, i64 14, !dbg !1556
  %370 = load %struct.list_head*, %struct.list_head** %369, align 8, !dbg !1556
  %371 = load %struct.list_head*, %struct.list_head** %368, align 8, !dbg !1557
  call void @llvm.dbg.value(metadata %struct.list_head* %370, metadata !1068, metadata !DIExpression()) #11, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.list_head* %371, metadata !1073, metadata !DIExpression()) #11, !dbg !1560
  %372 = getelementptr inbounds %struct.list_head, %struct.list_head* %371, i64 0, i32 1, !dbg !1561
  store %struct.list_head* %370, %struct.list_head** %372, align 8, !dbg !1562
  %373 = getelementptr inbounds %struct.list_head, %struct.list_head* %370, i64 0, i32 0, !dbg !1563
  store %struct.list_head* %371, %struct.list_head** %373, align 8, !dbg !1564
  call void @llvm.dbg.value(metadata %struct.list_head** %368, metadata !780, metadata !DIExpression()) #11, !dbg !1565
  %374 = bitcast %struct.list_head** %368 to %struct.list_head***, !dbg !1567
  store %struct.list_head** %368, %struct.list_head*** %374, align 8, !dbg !1567
  %375 = bitcast %struct.list_head** %369 to %struct.list_head***, !dbg !1568
  store %struct.list_head** %368, %struct.list_head*** %375, align 8, !dbg !1568
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %367, metadata !1032, metadata !DIExpression()) #11, !dbg !1546
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %367, metadata !1010, metadata !DIExpression()) #11, !dbg !1569
  %376 = icmp eq %struct.list_head** %366, null, !dbg !1570
  br i1 %376, label %377, label %398, !dbg !1571

; <label>:377:                                    ; preds = %365, %356
  %378 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1572
  %379 = inttoptr i64 %378 to %struct.cpu*, !dbg !1576
  %380 = getelementptr inbounds %struct.cpu, %struct.cpu* %379, i64 0, i32 5, !dbg !1577
  %381 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %380, align 8, !dbg !1577
  %382 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %381, i64 0, i32 2, !dbg !1578
  %383 = load %struct.nk_fiber*, %struct.nk_fiber** %382, align 8, !dbg !1578
  %384 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1579
  %385 = inttoptr i64 %384 to %struct.cpu*, !dbg !1583
  %386 = getelementptr inbounds %struct.cpu, %struct.cpu* %385, i64 0, i32 5, !dbg !1584
  %387 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %386, align 8, !dbg !1584
  %388 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %387, i64 0, i32 3, !dbg !1585
  %389 = load %struct.nk_fiber*, %struct.nk_fiber** %388, align 8, !dbg !1585
  %390 = icmp eq %struct.nk_fiber* %383, %389, !dbg !1586
  br i1 %390, label %wrapper_nk_fiber_yield.exit, label %391, !dbg !1587

; <label>:391:                                    ; preds = %377
  %392 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1588
  %393 = inttoptr i64 %392 to %struct.cpu*, !dbg !1592
  %394 = getelementptr inbounds %struct.cpu, %struct.cpu* %393, i64 0, i32 5, !dbg !1593
  %395 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %394, align 8, !dbg !1593
  %396 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %395, i64 0, i32 3, !dbg !1594
  %397 = load %struct.nk_fiber*, %struct.nk_fiber** %396, align 8, !dbg !1594
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %397, metadata !1010, metadata !DIExpression()) #11, !dbg !1569
  br label %398, !dbg !1595

; <label>:398:                                    ; preds = %391, %365
  %399 = phi %struct.nk_fiber* [ %397, %391 ], [ %367, %365 ], !dbg !1596
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %399, metadata !1010, metadata !DIExpression()) #11, !dbg !1569
  %400 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %399) #12, !dbg !1597
  br label %wrapper_nk_fiber_yield.exit, !dbg !1598

wrapper_nk_fiber_yield.exit:                      ; preds = %344, %377, %398
  %401 = phi i32 [ 1, %344 ], [ 0, %377 ], [ 0, %398 ], !dbg !1596
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1599
  ret void, !dbg !1600
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !1601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1603, metadata !DIExpression()), !dbg !1607
  %3 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1608
  %4 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1610
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1615
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !1616
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !1616
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !1617
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !1617
  %10 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1618, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !1618
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !1620
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !1621
  br i1 %11, label %12, label %wrapper_nk_fiber_yield.exit7, !dbg !1622

; <label>:12:                                     ; preds = %2
  %13 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1623
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !1628
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !1629
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !1629
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !1630
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1031, metadata !DIExpression()) #11, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1049, metadata !DIExpression()) #11, !dbg !1633
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1635
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1635
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !1636
  br i1 %20, label %33, label %21, !dbg !1637

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1638
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !1638
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1033, metadata !DIExpression()) #11, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1032, metadata !DIExpression()) #11, !dbg !1632
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !1639
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1061, metadata !DIExpression()) #11, !dbg !1640
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !1642
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !1642
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !1643
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1068, metadata !DIExpression()) #11, !dbg !1644
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1073, metadata !DIExpression()) #11, !dbg !1646
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !1647
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !1648
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !1649
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !1650
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !1651
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !1653
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !1653
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !1654
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !1654
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1032, metadata !DIExpression()) #11, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1010, metadata !DIExpression()) #11, !dbg !1655
  %32 = icmp eq %struct.list_head** %22, null, !dbg !1656
  br i1 %32, label %33, label %54, !dbg !1657

; <label>:33:                                     ; preds = %21, %12
  %34 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1658
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !1662
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !1663
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !1663
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !1664
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !1664
  %40 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1665
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !1669
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !1670
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !1670
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !1671
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !1671
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !1672
  br i1 %46, label %wrapper_nk_fiber_yield.exit7, label %47, !dbg !1673

; <label>:47:                                     ; preds = %33
  %48 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1674
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !1678
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !1679
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !1679
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !1680
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !1680
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1010, metadata !DIExpression()) #11, !dbg !1655
  br label %54, !dbg !1681

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !1682
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1010, metadata !DIExpression()) #11, !dbg !1655
  %56 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !1683
  br label %wrapper_nk_fiber_yield.exit7, !dbg !1684

wrapper_nk_fiber_yield.exit7:                     ; preds = %2, %33, %54
  %57 = phi i32 [ 1, %2 ], [ 0, %33 ], [ 0, %54 ], !dbg !1682
  call void @llvm.dbg.value(metadata i8** undef, metadata !1604, metadata !DIExpression()), !dbg !1685
  %58 = bitcast i8* %0 to i64*, !dbg !1686
  call void @llvm.dbg.value(metadata i64* %58, metadata !1605, metadata !DIExpression()), !dbg !1687
  %59 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1688
  %60 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1690
  %61 = inttoptr i64 %60 to %struct.cpu*, !dbg !1695
  %62 = getelementptr inbounds %struct.cpu, %struct.cpu* %61, i64 0, i32 5, !dbg !1696
  %63 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %62, align 8, !dbg !1696
  %64 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %63, i64 0, i32 1, !dbg !1697
  %65 = load %struct.nk_thread*, %struct.nk_thread** %64, align 8, !dbg !1697
  %66 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1698, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %66, metadata !772, metadata !DIExpression()) #11, !dbg !1698
  call void @llvm.dbg.value(metadata %struct.nk_thread* %66, metadata !771, metadata !DIExpression()) #11, !dbg !1700
  %67 = icmp eq %struct.nk_thread* %65, %66, !dbg !1701
  br i1 %67, label %68, label %wrapper_nk_fiber_yield.exit6, !dbg !1702

; <label>:68:                                     ; preds = %wrapper_nk_fiber_yield.exit7
  %69 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1703
  %70 = inttoptr i64 %69 to %struct.cpu*, !dbg !1708
  %71 = getelementptr inbounds %struct.cpu, %struct.cpu* %70, i64 0, i32 5, !dbg !1709
  %72 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %71, align 8, !dbg !1709
  %73 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %72, i64 0, i32 4, !dbg !1710
  call void @llvm.dbg.value(metadata %struct.list_head* %73, metadata !1031, metadata !DIExpression()) #11, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1712
  call void @llvm.dbg.value(metadata %struct.list_head* %73, metadata !1049, metadata !DIExpression()) #11, !dbg !1713
  %74 = getelementptr inbounds %struct.list_head, %struct.list_head* %73, i64 0, i32 0, !dbg !1715
  %75 = load %struct.list_head*, %struct.list_head** %74, align 8, !dbg !1715
  %76 = icmp eq %struct.list_head* %75, %73, !dbg !1716
  br i1 %76, label %89, label %77, !dbg !1717

; <label>:77:                                     ; preds = %68
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1718
  %78 = getelementptr %struct.list_head, %struct.list_head* %75, i64 -7, i32 1, !dbg !1718
  %79 = bitcast %struct.list_head** %78 to %struct.nk_fiber*, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %79, metadata !1033, metadata !DIExpression()) #11, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %79, metadata !1032, metadata !DIExpression()) #11, !dbg !1712
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %78, i64 13, !dbg !1719
  call void @llvm.dbg.value(metadata %struct.list_head** %80, metadata !1061, metadata !DIExpression()) #11, !dbg !1720
  %81 = getelementptr inbounds %struct.list_head*, %struct.list_head** %78, i64 14, !dbg !1722
  %82 = load %struct.list_head*, %struct.list_head** %81, align 8, !dbg !1722
  %83 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1068, metadata !DIExpression()) #11, !dbg !1724
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1073, metadata !DIExpression()) #11, !dbg !1726
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 1, !dbg !1727
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1728
  %85 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 0, !dbg !1729
  store %struct.list_head* %83, %struct.list_head** %85, align 8, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.list_head** %80, metadata !780, metadata !DIExpression()) #11, !dbg !1731
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1733
  store %struct.list_head** %80, %struct.list_head*** %86, align 8, !dbg !1733
  %87 = bitcast %struct.list_head** %81 to %struct.list_head***, !dbg !1734
  store %struct.list_head** %80, %struct.list_head*** %87, align 8, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %79, metadata !1032, metadata !DIExpression()) #11, !dbg !1712
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %79, metadata !1010, metadata !DIExpression()) #11, !dbg !1735
  %88 = icmp eq %struct.list_head** %78, null, !dbg !1736
  br i1 %88, label %89, label %110, !dbg !1737

; <label>:89:                                     ; preds = %77, %68
  %90 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1738
  %91 = inttoptr i64 %90 to %struct.cpu*, !dbg !1742
  %92 = getelementptr inbounds %struct.cpu, %struct.cpu* %91, i64 0, i32 5, !dbg !1743
  %93 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %92, align 8, !dbg !1743
  %94 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %93, i64 0, i32 2, !dbg !1744
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %94, align 8, !dbg !1744
  %96 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1745
  %97 = inttoptr i64 %96 to %struct.cpu*, !dbg !1749
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %97, i64 0, i32 5, !dbg !1750
  %99 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %98, align 8, !dbg !1750
  %100 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %99, i64 0, i32 3, !dbg !1751
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %100, align 8, !dbg !1751
  %102 = icmp eq %struct.nk_fiber* %95, %101, !dbg !1752
  br i1 %102, label %wrapper_nk_fiber_yield.exit6, label %103, !dbg !1753

; <label>:103:                                    ; preds = %89
  %104 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1754
  %105 = inttoptr i64 %104 to %struct.cpu*, !dbg !1758
  %106 = getelementptr inbounds %struct.cpu, %struct.cpu* %105, i64 0, i32 5, !dbg !1759
  %107 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %106, align 8, !dbg !1759
  %108 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %107, i64 0, i32 3, !dbg !1760
  %109 = load %struct.nk_fiber*, %struct.nk_fiber** %108, align 8, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %109, metadata !1010, metadata !DIExpression()) #11, !dbg !1735
  br label %110, !dbg !1761

; <label>:110:                                    ; preds = %103, %77
  %111 = phi %struct.nk_fiber* [ %109, %103 ], [ %79, %77 ], !dbg !1762
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %111, metadata !1010, metadata !DIExpression()) #11, !dbg !1735
  %112 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %111) #12, !dbg !1763
  br label %wrapper_nk_fiber_yield.exit6, !dbg !1764

wrapper_nk_fiber_yield.exit6:                     ; preds = %wrapper_nk_fiber_yield.exit7, %89, %110
  %113 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit7 ], [ 0, %89 ], [ 0, %110 ], !dbg !1762
  %114 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1765
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %114) #12, !dbg !1766
  call void @llvm.dbg.value(metadata i32 0, metadata !1606, metadata !DIExpression()), !dbg !1767
  %115 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1768
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1770
  %117 = inttoptr i64 %116 to %struct.cpu*, !dbg !1775
  %118 = getelementptr inbounds %struct.cpu, %struct.cpu* %117, i64 0, i32 5, !dbg !1776
  %119 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %118, align 8, !dbg !1776
  %120 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %119, i64 0, i32 1, !dbg !1777
  %121 = load %struct.nk_thread*, %struct.nk_thread** %120, align 8, !dbg !1777
  %122 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1778, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %122, metadata !772, metadata !DIExpression()) #11, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.nk_thread* %122, metadata !771, metadata !DIExpression()) #11, !dbg !1780
  %123 = icmp eq %struct.nk_thread* %121, %122, !dbg !1781
  br i1 %123, label %124, label %wrapper_nk_fiber_yield.exit5, !dbg !1782

; <label>:124:                                    ; preds = %wrapper_nk_fiber_yield.exit6
  %125 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1783
  %126 = inttoptr i64 %125 to %struct.cpu*, !dbg !1788
  %127 = getelementptr inbounds %struct.cpu, %struct.cpu* %126, i64 0, i32 5, !dbg !1789
  %128 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %127, align 8, !dbg !1789
  %129 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %128, i64 0, i32 4, !dbg !1790
  call void @llvm.dbg.value(metadata %struct.list_head* %129, metadata !1031, metadata !DIExpression()) #11, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1792
  call void @llvm.dbg.value(metadata %struct.list_head* %129, metadata !1049, metadata !DIExpression()) #11, !dbg !1793
  %130 = getelementptr inbounds %struct.list_head, %struct.list_head* %129, i64 0, i32 0, !dbg !1795
  %131 = load %struct.list_head*, %struct.list_head** %130, align 8, !dbg !1795
  %132 = icmp eq %struct.list_head* %131, %129, !dbg !1796
  br i1 %132, label %145, label %133, !dbg !1797

; <label>:133:                                    ; preds = %124
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1798
  %134 = getelementptr %struct.list_head, %struct.list_head* %131, i64 -7, i32 1, !dbg !1798
  %135 = bitcast %struct.list_head** %134 to %struct.nk_fiber*, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %135, metadata !1033, metadata !DIExpression()) #11, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %135, metadata !1032, metadata !DIExpression()) #11, !dbg !1792
  %136 = getelementptr inbounds %struct.list_head*, %struct.list_head** %134, i64 13, !dbg !1799
  call void @llvm.dbg.value(metadata %struct.list_head** %136, metadata !1061, metadata !DIExpression()) #11, !dbg !1800
  %137 = getelementptr inbounds %struct.list_head*, %struct.list_head** %134, i64 14, !dbg !1802
  %138 = load %struct.list_head*, %struct.list_head** %137, align 8, !dbg !1802
  %139 = load %struct.list_head*, %struct.list_head** %136, align 8, !dbg !1803
  call void @llvm.dbg.value(metadata %struct.list_head* %138, metadata !1068, metadata !DIExpression()) #11, !dbg !1804
  call void @llvm.dbg.value(metadata %struct.list_head* %139, metadata !1073, metadata !DIExpression()) #11, !dbg !1806
  %140 = getelementptr inbounds %struct.list_head, %struct.list_head* %139, i64 0, i32 1, !dbg !1807
  store %struct.list_head* %138, %struct.list_head** %140, align 8, !dbg !1808
  %141 = getelementptr inbounds %struct.list_head, %struct.list_head* %138, i64 0, i32 0, !dbg !1809
  store %struct.list_head* %139, %struct.list_head** %141, align 8, !dbg !1810
  call void @llvm.dbg.value(metadata %struct.list_head** %136, metadata !780, metadata !DIExpression()) #11, !dbg !1811
  %142 = bitcast %struct.list_head** %136 to %struct.list_head***, !dbg !1813
  store %struct.list_head** %136, %struct.list_head*** %142, align 8, !dbg !1813
  %143 = bitcast %struct.list_head** %137 to %struct.list_head***, !dbg !1814
  store %struct.list_head** %136, %struct.list_head*** %143, align 8, !dbg !1814
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %135, metadata !1032, metadata !DIExpression()) #11, !dbg !1792
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %135, metadata !1010, metadata !DIExpression()) #11, !dbg !1815
  %144 = icmp eq %struct.list_head** %134, null, !dbg !1816
  br i1 %144, label %145, label %166, !dbg !1817

; <label>:145:                                    ; preds = %133, %124
  %146 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1818
  %147 = inttoptr i64 %146 to %struct.cpu*, !dbg !1822
  %148 = getelementptr inbounds %struct.cpu, %struct.cpu* %147, i64 0, i32 5, !dbg !1823
  %149 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %148, align 8, !dbg !1823
  %150 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %149, i64 0, i32 2, !dbg !1824
  %151 = load %struct.nk_fiber*, %struct.nk_fiber** %150, align 8, !dbg !1824
  %152 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1825
  %153 = inttoptr i64 %152 to %struct.cpu*, !dbg !1829
  %154 = getelementptr inbounds %struct.cpu, %struct.cpu* %153, i64 0, i32 5, !dbg !1830
  %155 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %154, align 8, !dbg !1830
  %156 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %155, i64 0, i32 3, !dbg !1831
  %157 = load %struct.nk_fiber*, %struct.nk_fiber** %156, align 8, !dbg !1831
  %158 = icmp eq %struct.nk_fiber* %151, %157, !dbg !1832
  br i1 %158, label %wrapper_nk_fiber_yield.exit5, label %159, !dbg !1833

; <label>:159:                                    ; preds = %145
  %160 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1834
  %161 = inttoptr i64 %160 to %struct.cpu*, !dbg !1838
  %162 = getelementptr inbounds %struct.cpu, %struct.cpu* %161, i64 0, i32 5, !dbg !1839
  %163 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %162, align 8, !dbg !1839
  %164 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %163, i64 0, i32 3, !dbg !1840
  %165 = load %struct.nk_fiber*, %struct.nk_fiber** %164, align 8, !dbg !1840
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %165, metadata !1010, metadata !DIExpression()) #11, !dbg !1815
  br label %166, !dbg !1841

; <label>:166:                                    ; preds = %159, %133
  %167 = phi %struct.nk_fiber* [ %165, %159 ], [ %135, %133 ], !dbg !1842
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %167, metadata !1010, metadata !DIExpression()) #11, !dbg !1815
  %168 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %167) #12, !dbg !1843
  br label %wrapper_nk_fiber_yield.exit5, !dbg !1844

wrapper_nk_fiber_yield.exit5:                     ; preds = %wrapper_nk_fiber_yield.exit6, %145, %166
  %169 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit6 ], [ 0, %145 ], [ 0, %166 ], !dbg !1842
  %170 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #12, !dbg !1845
  call void @llvm.dbg.value(metadata i32 0, metadata !1606, metadata !DIExpression()), !dbg !1767
  %171 = load i64, i64* %58, align 8, !dbg !1846
  %172 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1847
  %173 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1849
  %174 = inttoptr i64 %173 to %struct.cpu*, !dbg !1854
  %175 = getelementptr inbounds %struct.cpu, %struct.cpu* %174, i64 0, i32 5, !dbg !1855
  %176 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %175, align 8, !dbg !1855
  %177 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %176, i64 0, i32 1, !dbg !1856
  %178 = load %struct.nk_thread*, %struct.nk_thread** %177, align 8, !dbg !1856
  %179 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1857, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %179, metadata !772, metadata !DIExpression()) #11, !dbg !1857
  call void @llvm.dbg.value(metadata %struct.nk_thread* %179, metadata !771, metadata !DIExpression()) #11, !dbg !1859
  %180 = icmp eq %struct.nk_thread* %178, %179, !dbg !1860
  br i1 %180, label %181, label %wrapper_nk_fiber_yield.exit4, !dbg !1861

; <label>:181:                                    ; preds = %wrapper_nk_fiber_yield.exit5
  %182 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1862
  %183 = inttoptr i64 %182 to %struct.cpu*, !dbg !1867
  %184 = getelementptr inbounds %struct.cpu, %struct.cpu* %183, i64 0, i32 5, !dbg !1868
  %185 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %184, align 8, !dbg !1868
  %186 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %185, i64 0, i32 4, !dbg !1869
  call void @llvm.dbg.value(metadata %struct.list_head* %186, metadata !1031, metadata !DIExpression()) #11, !dbg !1870
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1871
  call void @llvm.dbg.value(metadata %struct.list_head* %186, metadata !1049, metadata !DIExpression()) #11, !dbg !1872
  %187 = getelementptr inbounds %struct.list_head, %struct.list_head* %186, i64 0, i32 0, !dbg !1874
  %188 = load %struct.list_head*, %struct.list_head** %187, align 8, !dbg !1874
  %189 = icmp eq %struct.list_head* %188, %186, !dbg !1875
  br i1 %189, label %202, label %190, !dbg !1876

; <label>:190:                                    ; preds = %181
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1877
  %191 = getelementptr %struct.list_head, %struct.list_head* %188, i64 -7, i32 1, !dbg !1877
  %192 = bitcast %struct.list_head** %191 to %struct.nk_fiber*, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %192, metadata !1033, metadata !DIExpression()) #11, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %192, metadata !1032, metadata !DIExpression()) #11, !dbg !1871
  %193 = getelementptr inbounds %struct.list_head*, %struct.list_head** %191, i64 13, !dbg !1878
  call void @llvm.dbg.value(metadata %struct.list_head** %193, metadata !1061, metadata !DIExpression()) #11, !dbg !1879
  %194 = getelementptr inbounds %struct.list_head*, %struct.list_head** %191, i64 14, !dbg !1881
  %195 = load %struct.list_head*, %struct.list_head** %194, align 8, !dbg !1881
  %196 = load %struct.list_head*, %struct.list_head** %193, align 8, !dbg !1882
  call void @llvm.dbg.value(metadata %struct.list_head* %195, metadata !1068, metadata !DIExpression()) #11, !dbg !1883
  call void @llvm.dbg.value(metadata %struct.list_head* %196, metadata !1073, metadata !DIExpression()) #11, !dbg !1885
  %197 = getelementptr inbounds %struct.list_head, %struct.list_head* %196, i64 0, i32 1, !dbg !1886
  store %struct.list_head* %195, %struct.list_head** %197, align 8, !dbg !1887
  %198 = getelementptr inbounds %struct.list_head, %struct.list_head* %195, i64 0, i32 0, !dbg !1888
  store %struct.list_head* %196, %struct.list_head** %198, align 8, !dbg !1889
  call void @llvm.dbg.value(metadata %struct.list_head** %193, metadata !780, metadata !DIExpression()) #11, !dbg !1890
  %199 = bitcast %struct.list_head** %193 to %struct.list_head***, !dbg !1892
  store %struct.list_head** %193, %struct.list_head*** %199, align 8, !dbg !1892
  %200 = bitcast %struct.list_head** %194 to %struct.list_head***, !dbg !1893
  store %struct.list_head** %193, %struct.list_head*** %200, align 8, !dbg !1893
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %192, metadata !1032, metadata !DIExpression()) #11, !dbg !1871
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %192, metadata !1010, metadata !DIExpression()) #11, !dbg !1894
  %201 = icmp eq %struct.list_head** %191, null, !dbg !1895
  br i1 %201, label %202, label %223, !dbg !1896

; <label>:202:                                    ; preds = %190, %181
  %203 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1897
  %204 = inttoptr i64 %203 to %struct.cpu*, !dbg !1901
  %205 = getelementptr inbounds %struct.cpu, %struct.cpu* %204, i64 0, i32 5, !dbg !1902
  %206 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %205, align 8, !dbg !1902
  %207 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %206, i64 0, i32 2, !dbg !1903
  %208 = load %struct.nk_fiber*, %struct.nk_fiber** %207, align 8, !dbg !1903
  %209 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1904
  %210 = inttoptr i64 %209 to %struct.cpu*, !dbg !1908
  %211 = getelementptr inbounds %struct.cpu, %struct.cpu* %210, i64 0, i32 5, !dbg !1909
  %212 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %211, align 8, !dbg !1909
  %213 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %212, i64 0, i32 3, !dbg !1910
  %214 = load %struct.nk_fiber*, %struct.nk_fiber** %213, align 8, !dbg !1910
  %215 = icmp eq %struct.nk_fiber* %208, %214, !dbg !1911
  br i1 %215, label %wrapper_nk_fiber_yield.exit4, label %216, !dbg !1912

; <label>:216:                                    ; preds = %202
  %217 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1913
  %218 = inttoptr i64 %217 to %struct.cpu*, !dbg !1917
  %219 = getelementptr inbounds %struct.cpu, %struct.cpu* %218, i64 0, i32 5, !dbg !1918
  %220 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %219, align 8, !dbg !1918
  %221 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %220, i64 0, i32 3, !dbg !1919
  %222 = load %struct.nk_fiber*, %struct.nk_fiber** %221, align 8, !dbg !1919
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %222, metadata !1010, metadata !DIExpression()) #11, !dbg !1894
  br label %223, !dbg !1920

; <label>:223:                                    ; preds = %216, %190
  %224 = phi %struct.nk_fiber* [ %222, %216 ], [ %192, %190 ], !dbg !1921
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %224, metadata !1010, metadata !DIExpression()) #11, !dbg !1894
  %225 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %224) #12, !dbg !1922
  br label %wrapper_nk_fiber_yield.exit4, !dbg !1923

wrapper_nk_fiber_yield.exit4:                     ; preds = %wrapper_nk_fiber_yield.exit5, %202, %223
  %226 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit5 ], [ 0, %202 ], [ 0, %223 ], !dbg !1921
  %227 = icmp eq i64 %171, 0, !dbg !1924
  br i1 %227, label %400, label %228, !dbg !1925

; <label>:228:                                    ; preds = %wrapper_nk_fiber_yield.exit4, %wrapper_nk_fiber_yield.exit1
  %229 = phi i32 [ %285, %wrapper_nk_fiber_yield.exit1 ], [ 0, %wrapper_nk_fiber_yield.exit4 ]
  call void @llvm.dbg.value(metadata i32 %229, metadata !1606, metadata !DIExpression()), !dbg !1767
  %230 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1926
  %231 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1929
  %232 = inttoptr i64 %231 to %struct.cpu*, !dbg !1934
  %233 = getelementptr inbounds %struct.cpu, %struct.cpu* %232, i64 0, i32 5, !dbg !1935
  %234 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %233, align 8, !dbg !1935
  %235 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %234, i64 0, i32 1, !dbg !1936
  %236 = load %struct.nk_thread*, %struct.nk_thread** %235, align 8, !dbg !1936
  %237 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1937, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %237, metadata !772, metadata !DIExpression()) #11, !dbg !1937
  call void @llvm.dbg.value(metadata %struct.nk_thread* %237, metadata !771, metadata !DIExpression()) #11, !dbg !1939
  %238 = icmp eq %struct.nk_thread* %236, %237, !dbg !1940
  br i1 %238, label %239, label %wrapper_nk_fiber_yield.exit3, !dbg !1941

; <label>:239:                                    ; preds = %228
  %240 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1942
  %241 = inttoptr i64 %240 to %struct.cpu*, !dbg !1947
  %242 = getelementptr inbounds %struct.cpu, %struct.cpu* %241, i64 0, i32 5, !dbg !1948
  %243 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %242, align 8, !dbg !1948
  %244 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %243, i64 0, i32 4, !dbg !1949
  call void @llvm.dbg.value(metadata %struct.list_head* %244, metadata !1031, metadata !DIExpression()) #11, !dbg !1950
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !1951
  call void @llvm.dbg.value(metadata %struct.list_head* %244, metadata !1049, metadata !DIExpression()) #11, !dbg !1952
  %245 = getelementptr inbounds %struct.list_head, %struct.list_head* %244, i64 0, i32 0, !dbg !1954
  %246 = load %struct.list_head*, %struct.list_head** %245, align 8, !dbg !1954
  %247 = icmp eq %struct.list_head* %246, %244, !dbg !1955
  br i1 %247, label %260, label %248, !dbg !1956

; <label>:248:                                    ; preds = %239
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !1957
  %249 = getelementptr %struct.list_head, %struct.list_head* %246, i64 -7, i32 1, !dbg !1957
  %250 = bitcast %struct.list_head** %249 to %struct.nk_fiber*, !dbg !1957
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %250, metadata !1033, metadata !DIExpression()) #11, !dbg !1957
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %250, metadata !1032, metadata !DIExpression()) #11, !dbg !1951
  %251 = getelementptr inbounds %struct.list_head*, %struct.list_head** %249, i64 13, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.list_head** %251, metadata !1061, metadata !DIExpression()) #11, !dbg !1959
  %252 = getelementptr inbounds %struct.list_head*, %struct.list_head** %249, i64 14, !dbg !1961
  %253 = load %struct.list_head*, %struct.list_head** %252, align 8, !dbg !1961
  %254 = load %struct.list_head*, %struct.list_head** %251, align 8, !dbg !1962
  call void @llvm.dbg.value(metadata %struct.list_head* %253, metadata !1068, metadata !DIExpression()) #11, !dbg !1963
  call void @llvm.dbg.value(metadata %struct.list_head* %254, metadata !1073, metadata !DIExpression()) #11, !dbg !1965
  %255 = getelementptr inbounds %struct.list_head, %struct.list_head* %254, i64 0, i32 1, !dbg !1966
  store %struct.list_head* %253, %struct.list_head** %255, align 8, !dbg !1967
  %256 = getelementptr inbounds %struct.list_head, %struct.list_head* %253, i64 0, i32 0, !dbg !1968
  store %struct.list_head* %254, %struct.list_head** %256, align 8, !dbg !1969
  call void @llvm.dbg.value(metadata %struct.list_head** %251, metadata !780, metadata !DIExpression()) #11, !dbg !1970
  %257 = bitcast %struct.list_head** %251 to %struct.list_head***, !dbg !1972
  store %struct.list_head** %251, %struct.list_head*** %257, align 8, !dbg !1972
  %258 = bitcast %struct.list_head** %252 to %struct.list_head***, !dbg !1973
  store %struct.list_head** %251, %struct.list_head*** %258, align 8, !dbg !1973
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %250, metadata !1032, metadata !DIExpression()) #11, !dbg !1951
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %250, metadata !1010, metadata !DIExpression()) #11, !dbg !1974
  %259 = icmp eq %struct.list_head** %249, null, !dbg !1975
  br i1 %259, label %260, label %281, !dbg !1976

; <label>:260:                                    ; preds = %248, %239
  %261 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1977
  %262 = inttoptr i64 %261 to %struct.cpu*, !dbg !1981
  %263 = getelementptr inbounds %struct.cpu, %struct.cpu* %262, i64 0, i32 5, !dbg !1982
  %264 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %263, align 8, !dbg !1982
  %265 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %264, i64 0, i32 2, !dbg !1983
  %266 = load %struct.nk_fiber*, %struct.nk_fiber** %265, align 8, !dbg !1983
  %267 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1984
  %268 = inttoptr i64 %267 to %struct.cpu*, !dbg !1988
  %269 = getelementptr inbounds %struct.cpu, %struct.cpu* %268, i64 0, i32 5, !dbg !1989
  %270 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %269, align 8, !dbg !1989
  %271 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %270, i64 0, i32 3, !dbg !1990
  %272 = load %struct.nk_fiber*, %struct.nk_fiber** %271, align 8, !dbg !1990
  %273 = icmp eq %struct.nk_fiber* %266, %272, !dbg !1991
  br i1 %273, label %wrapper_nk_fiber_yield.exit3, label %274, !dbg !1992

; <label>:274:                                    ; preds = %260
  %275 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1993
  %276 = inttoptr i64 %275 to %struct.cpu*, !dbg !1997
  %277 = getelementptr inbounds %struct.cpu, %struct.cpu* %276, i64 0, i32 5, !dbg !1998
  %278 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %277, align 8, !dbg !1998
  %279 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %278, i64 0, i32 3, !dbg !1999
  %280 = load %struct.nk_fiber*, %struct.nk_fiber** %279, align 8, !dbg !1999
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %280, metadata !1010, metadata !DIExpression()) #11, !dbg !1974
  br label %281, !dbg !2000

; <label>:281:                                    ; preds = %274, %248
  %282 = phi %struct.nk_fiber* [ %280, %274 ], [ %250, %248 ], !dbg !2001
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %282, metadata !1010, metadata !DIExpression()) #11, !dbg !1974
  %283 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %282) #12, !dbg !2002
  br label %wrapper_nk_fiber_yield.exit3, !dbg !2003

wrapper_nk_fiber_yield.exit3:                     ; preds = %228, %260, %281
  %284 = phi i32 [ 1, %228 ], [ 0, %260 ], [ 0, %281 ], !dbg !2001
  %285 = add i32 %229, 1, !dbg !2004
  %286 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %229) #12, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %285, metadata !1606, metadata !DIExpression()), !dbg !1767
  %287 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !2006
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2008
  %289 = inttoptr i64 %288 to %struct.cpu*, !dbg !2013
  %290 = getelementptr inbounds %struct.cpu, %struct.cpu* %289, i64 0, i32 5, !dbg !2014
  %291 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %290, align 8, !dbg !2014
  %292 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %291, i64 0, i32 1, !dbg !2015
  %293 = load %struct.nk_thread*, %struct.nk_thread** %292, align 8, !dbg !2015
  %294 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2016, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %294, metadata !772, metadata !DIExpression()) #11, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.nk_thread* %294, metadata !771, metadata !DIExpression()) #11, !dbg !2018
  %295 = icmp eq %struct.nk_thread* %293, %294, !dbg !2019
  br i1 %295, label %296, label %wrapper_nk_fiber_yield.exit2, !dbg !2020

; <label>:296:                                    ; preds = %wrapper_nk_fiber_yield.exit3
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2021
  %298 = inttoptr i64 %297 to %struct.cpu*, !dbg !2026
  %299 = getelementptr inbounds %struct.cpu, %struct.cpu* %298, i64 0, i32 5, !dbg !2027
  %300 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %299, align 8, !dbg !2027
  %301 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %300, i64 0, i32 4, !dbg !2028
  call void @llvm.dbg.value(metadata %struct.list_head* %301, metadata !1031, metadata !DIExpression()) #11, !dbg !2029
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !2030
  call void @llvm.dbg.value(metadata %struct.list_head* %301, metadata !1049, metadata !DIExpression()) #11, !dbg !2031
  %302 = getelementptr inbounds %struct.list_head, %struct.list_head* %301, i64 0, i32 0, !dbg !2033
  %303 = load %struct.list_head*, %struct.list_head** %302, align 8, !dbg !2033
  %304 = icmp eq %struct.list_head* %303, %301, !dbg !2034
  br i1 %304, label %317, label %305, !dbg !2035

; <label>:305:                                    ; preds = %296
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !2036
  %306 = getelementptr %struct.list_head, %struct.list_head* %303, i64 -7, i32 1, !dbg !2036
  %307 = bitcast %struct.list_head** %306 to %struct.nk_fiber*, !dbg !2036
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %307, metadata !1033, metadata !DIExpression()) #11, !dbg !2036
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %307, metadata !1032, metadata !DIExpression()) #11, !dbg !2030
  %308 = getelementptr inbounds %struct.list_head*, %struct.list_head** %306, i64 13, !dbg !2037
  call void @llvm.dbg.value(metadata %struct.list_head** %308, metadata !1061, metadata !DIExpression()) #11, !dbg !2038
  %309 = getelementptr inbounds %struct.list_head*, %struct.list_head** %306, i64 14, !dbg !2040
  %310 = load %struct.list_head*, %struct.list_head** %309, align 8, !dbg !2040
  %311 = load %struct.list_head*, %struct.list_head** %308, align 8, !dbg !2041
  call void @llvm.dbg.value(metadata %struct.list_head* %310, metadata !1068, metadata !DIExpression()) #11, !dbg !2042
  call void @llvm.dbg.value(metadata %struct.list_head* %311, metadata !1073, metadata !DIExpression()) #11, !dbg !2044
  %312 = getelementptr inbounds %struct.list_head, %struct.list_head* %311, i64 0, i32 1, !dbg !2045
  store %struct.list_head* %310, %struct.list_head** %312, align 8, !dbg !2046
  %313 = getelementptr inbounds %struct.list_head, %struct.list_head* %310, i64 0, i32 0, !dbg !2047
  store %struct.list_head* %311, %struct.list_head** %313, align 8, !dbg !2048
  call void @llvm.dbg.value(metadata %struct.list_head** %308, metadata !780, metadata !DIExpression()) #11, !dbg !2049
  %314 = bitcast %struct.list_head** %308 to %struct.list_head***, !dbg !2051
  store %struct.list_head** %308, %struct.list_head*** %314, align 8, !dbg !2051
  %315 = bitcast %struct.list_head** %309 to %struct.list_head***, !dbg !2052
  store %struct.list_head** %308, %struct.list_head*** %315, align 8, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %307, metadata !1032, metadata !DIExpression()) #11, !dbg !2030
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %307, metadata !1010, metadata !DIExpression()) #11, !dbg !2053
  %316 = icmp eq %struct.list_head** %306, null, !dbg !2054
  br i1 %316, label %317, label %338, !dbg !2055

; <label>:317:                                    ; preds = %305, %296
  %318 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2056
  %319 = inttoptr i64 %318 to %struct.cpu*, !dbg !2060
  %320 = getelementptr inbounds %struct.cpu, %struct.cpu* %319, i64 0, i32 5, !dbg !2061
  %321 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %320, align 8, !dbg !2061
  %322 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %321, i64 0, i32 2, !dbg !2062
  %323 = load %struct.nk_fiber*, %struct.nk_fiber** %322, align 8, !dbg !2062
  %324 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2063
  %325 = inttoptr i64 %324 to %struct.cpu*, !dbg !2067
  %326 = getelementptr inbounds %struct.cpu, %struct.cpu* %325, i64 0, i32 5, !dbg !2068
  %327 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %326, align 8, !dbg !2068
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %327, i64 0, i32 3, !dbg !2069
  %329 = load %struct.nk_fiber*, %struct.nk_fiber** %328, align 8, !dbg !2069
  %330 = icmp eq %struct.nk_fiber* %323, %329, !dbg !2070
  br i1 %330, label %wrapper_nk_fiber_yield.exit2, label %331, !dbg !2071

; <label>:331:                                    ; preds = %317
  %332 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2072
  %333 = inttoptr i64 %332 to %struct.cpu*, !dbg !2076
  %334 = getelementptr inbounds %struct.cpu, %struct.cpu* %333, i64 0, i32 5, !dbg !2077
  %335 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %334, align 8, !dbg !2077
  %336 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %335, i64 0, i32 3, !dbg !2078
  %337 = load %struct.nk_fiber*, %struct.nk_fiber** %336, align 8, !dbg !2078
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %337, metadata !1010, metadata !DIExpression()) #11, !dbg !2053
  br label %338, !dbg !2079

; <label>:338:                                    ; preds = %331, %305
  %339 = phi %struct.nk_fiber* [ %337, %331 ], [ %307, %305 ], !dbg !2080
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %339, metadata !1010, metadata !DIExpression()) #11, !dbg !2053
  %340 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %339) #12, !dbg !2081
  br label %wrapper_nk_fiber_yield.exit2, !dbg !2082

wrapper_nk_fiber_yield.exit2:                     ; preds = %wrapper_nk_fiber_yield.exit3, %317, %338
  %341 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit3 ], [ 0, %317 ], [ 0, %338 ], !dbg !2080
  %342 = zext i32 %285 to i64, !dbg !2083
  %343 = load i64, i64* %58, align 8, !dbg !1846
  %344 = icmp ugt i64 %343, %342, !dbg !1924
  %345 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !2084
  %346 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2086
  %347 = inttoptr i64 %346 to %struct.cpu*, !dbg !2091
  %348 = getelementptr inbounds %struct.cpu, %struct.cpu* %347, i64 0, i32 5, !dbg !2092
  %349 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %348, align 8, !dbg !2092
  %350 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %349, i64 0, i32 1, !dbg !2093
  %351 = load %struct.nk_thread*, %struct.nk_thread** %350, align 8, !dbg !2093
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2094, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !772, metadata !DIExpression()) #11, !dbg !2094
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !771, metadata !DIExpression()) #11, !dbg !2096
  %353 = icmp eq %struct.nk_thread* %351, %352, !dbg !2097
  br i1 %353, label %354, label %wrapper_nk_fiber_yield.exit1, !dbg !2098

; <label>:354:                                    ; preds = %wrapper_nk_fiber_yield.exit2
  %355 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2099
  %356 = inttoptr i64 %355 to %struct.cpu*, !dbg !2104
  %357 = getelementptr inbounds %struct.cpu, %struct.cpu* %356, i64 0, i32 5, !dbg !2105
  %358 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %357, align 8, !dbg !2105
  %359 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %358, i64 0, i32 4, !dbg !2106
  call void @llvm.dbg.value(metadata %struct.list_head* %359, metadata !1031, metadata !DIExpression()) #11, !dbg !2107
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !2108
  call void @llvm.dbg.value(metadata %struct.list_head* %359, metadata !1049, metadata !DIExpression()) #11, !dbg !2109
  %360 = getelementptr inbounds %struct.list_head, %struct.list_head* %359, i64 0, i32 0, !dbg !2111
  %361 = load %struct.list_head*, %struct.list_head** %360, align 8, !dbg !2111
  %362 = icmp eq %struct.list_head* %361, %359, !dbg !2112
  br i1 %362, label %375, label %363, !dbg !2113

; <label>:363:                                    ; preds = %354
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !2114
  %364 = getelementptr %struct.list_head, %struct.list_head* %361, i64 -7, i32 1, !dbg !2114
  %365 = bitcast %struct.list_head** %364 to %struct.nk_fiber*, !dbg !2114
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %365, metadata !1033, metadata !DIExpression()) #11, !dbg !2114
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %365, metadata !1032, metadata !DIExpression()) #11, !dbg !2108
  %366 = getelementptr inbounds %struct.list_head*, %struct.list_head** %364, i64 13, !dbg !2115
  call void @llvm.dbg.value(metadata %struct.list_head** %366, metadata !1061, metadata !DIExpression()) #11, !dbg !2116
  %367 = getelementptr inbounds %struct.list_head*, %struct.list_head** %364, i64 14, !dbg !2118
  %368 = load %struct.list_head*, %struct.list_head** %367, align 8, !dbg !2118
  %369 = load %struct.list_head*, %struct.list_head** %366, align 8, !dbg !2119
  call void @llvm.dbg.value(metadata %struct.list_head* %368, metadata !1068, metadata !DIExpression()) #11, !dbg !2120
  call void @llvm.dbg.value(metadata %struct.list_head* %369, metadata !1073, metadata !DIExpression()) #11, !dbg !2122
  %370 = getelementptr inbounds %struct.list_head, %struct.list_head* %369, i64 0, i32 1, !dbg !2123
  store %struct.list_head* %368, %struct.list_head** %370, align 8, !dbg !2124
  %371 = getelementptr inbounds %struct.list_head, %struct.list_head* %368, i64 0, i32 0, !dbg !2125
  store %struct.list_head* %369, %struct.list_head** %371, align 8, !dbg !2126
  call void @llvm.dbg.value(metadata %struct.list_head** %366, metadata !780, metadata !DIExpression()) #11, !dbg !2127
  %372 = bitcast %struct.list_head** %366 to %struct.list_head***, !dbg !2129
  store %struct.list_head** %366, %struct.list_head*** %372, align 8, !dbg !2129
  %373 = bitcast %struct.list_head** %367 to %struct.list_head***, !dbg !2130
  store %struct.list_head** %366, %struct.list_head*** %373, align 8, !dbg !2130
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %365, metadata !1032, metadata !DIExpression()) #11, !dbg !2108
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %365, metadata !1010, metadata !DIExpression()) #11, !dbg !2131
  %374 = icmp eq %struct.list_head** %364, null, !dbg !2132
  br i1 %374, label %375, label %396, !dbg !2133

; <label>:375:                                    ; preds = %363, %354
  %376 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2134
  %377 = inttoptr i64 %376 to %struct.cpu*, !dbg !2138
  %378 = getelementptr inbounds %struct.cpu, %struct.cpu* %377, i64 0, i32 5, !dbg !2139
  %379 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %378, align 8, !dbg !2139
  %380 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %379, i64 0, i32 2, !dbg !2140
  %381 = load %struct.nk_fiber*, %struct.nk_fiber** %380, align 8, !dbg !2140
  %382 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2141
  %383 = inttoptr i64 %382 to %struct.cpu*, !dbg !2145
  %384 = getelementptr inbounds %struct.cpu, %struct.cpu* %383, i64 0, i32 5, !dbg !2146
  %385 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %384, align 8, !dbg !2146
  %386 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %385, i64 0, i32 3, !dbg !2147
  %387 = load %struct.nk_fiber*, %struct.nk_fiber** %386, align 8, !dbg !2147
  %388 = icmp eq %struct.nk_fiber* %381, %387, !dbg !2148
  br i1 %388, label %wrapper_nk_fiber_yield.exit1, label %389, !dbg !2149

; <label>:389:                                    ; preds = %375
  %390 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2150
  %391 = inttoptr i64 %390 to %struct.cpu*, !dbg !2154
  %392 = getelementptr inbounds %struct.cpu, %struct.cpu* %391, i64 0, i32 5, !dbg !2155
  %393 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %392, align 8, !dbg !2155
  %394 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %393, i64 0, i32 3, !dbg !2156
  %395 = load %struct.nk_fiber*, %struct.nk_fiber** %394, align 8, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %395, metadata !1010, metadata !DIExpression()) #11, !dbg !2131
  br label %396, !dbg !2157

; <label>:396:                                    ; preds = %389, %363
  %397 = phi %struct.nk_fiber* [ %395, %389 ], [ %365, %363 ], !dbg !2158
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %397, metadata !1010, metadata !DIExpression()) #11, !dbg !2131
  %398 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %397) #12, !dbg !2159
  br label %wrapper_nk_fiber_yield.exit1, !dbg !2160

wrapper_nk_fiber_yield.exit1:                     ; preds = %wrapper_nk_fiber_yield.exit2, %375, %396
  %399 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit2 ], [ 0, %375 ], [ 0, %396 ], !dbg !2158
  br i1 %344, label %228, label %400, !dbg !1925, !llvm.loop !2161

; <label>:400:                                    ; preds = %wrapper_nk_fiber_yield.exit1, %wrapper_nk_fiber_yield.exit4
  %401 = phi i32 [ 0, %wrapper_nk_fiber_yield.exit4 ], [ %285, %wrapper_nk_fiber_yield.exit1 ], !dbg !2163
  call void @llvm.dbg.value(metadata i32 %401, metadata !1606, metadata !DIExpression()), !dbg !1767
  %402 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %401) #12, !dbg !2164
  %403 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !2165
  %404 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2167
  %405 = inttoptr i64 %404 to %struct.cpu*, !dbg !2172
  %406 = getelementptr inbounds %struct.cpu, %struct.cpu* %405, i64 0, i32 5, !dbg !2173
  %407 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %406, align 8, !dbg !2173
  %408 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %407, i64 0, i32 1, !dbg !2174
  %409 = load %struct.nk_thread*, %struct.nk_thread** %408, align 8, !dbg !2174
  %410 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2175, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %410, metadata !772, metadata !DIExpression()) #11, !dbg !2175
  call void @llvm.dbg.value(metadata %struct.nk_thread* %410, metadata !771, metadata !DIExpression()) #11, !dbg !2177
  %411 = icmp eq %struct.nk_thread* %409, %410, !dbg !2178
  br i1 %411, label %412, label %wrapper_nk_fiber_yield.exit, !dbg !2179

; <label>:412:                                    ; preds = %400
  %413 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2180
  %414 = inttoptr i64 %413 to %struct.cpu*, !dbg !2185
  %415 = getelementptr inbounds %struct.cpu, %struct.cpu* %414, i64 0, i32 5, !dbg !2186
  %416 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %415, align 8, !dbg !2186
  %417 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %416, i64 0, i32 4, !dbg !2187
  call void @llvm.dbg.value(metadata %struct.list_head* %417, metadata !1031, metadata !DIExpression()) #11, !dbg !2188
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.list_head* %417, metadata !1049, metadata !DIExpression()) #11, !dbg !2190
  %418 = getelementptr inbounds %struct.list_head, %struct.list_head* %417, i64 0, i32 0, !dbg !2192
  %419 = load %struct.list_head*, %struct.list_head** %418, align 8, !dbg !2192
  %420 = icmp eq %struct.list_head* %419, %417, !dbg !2193
  br i1 %420, label %433, label %421, !dbg !2194

; <label>:421:                                    ; preds = %412
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !2195
  %422 = getelementptr %struct.list_head, %struct.list_head* %419, i64 -7, i32 1, !dbg !2195
  %423 = bitcast %struct.list_head** %422 to %struct.nk_fiber*, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %423, metadata !1033, metadata !DIExpression()) #11, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %423, metadata !1032, metadata !DIExpression()) #11, !dbg !2189
  %424 = getelementptr inbounds %struct.list_head*, %struct.list_head** %422, i64 13, !dbg !2196
  call void @llvm.dbg.value(metadata %struct.list_head** %424, metadata !1061, metadata !DIExpression()) #11, !dbg !2197
  %425 = getelementptr inbounds %struct.list_head*, %struct.list_head** %422, i64 14, !dbg !2199
  %426 = load %struct.list_head*, %struct.list_head** %425, align 8, !dbg !2199
  %427 = load %struct.list_head*, %struct.list_head** %424, align 8, !dbg !2200
  call void @llvm.dbg.value(metadata %struct.list_head* %426, metadata !1068, metadata !DIExpression()) #11, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.list_head* %427, metadata !1073, metadata !DIExpression()) #11, !dbg !2203
  %428 = getelementptr inbounds %struct.list_head, %struct.list_head* %427, i64 0, i32 1, !dbg !2204
  store %struct.list_head* %426, %struct.list_head** %428, align 8, !dbg !2205
  %429 = getelementptr inbounds %struct.list_head, %struct.list_head* %426, i64 0, i32 0, !dbg !2206
  store %struct.list_head* %427, %struct.list_head** %429, align 8, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.list_head** %424, metadata !780, metadata !DIExpression()) #11, !dbg !2208
  %430 = bitcast %struct.list_head** %424 to %struct.list_head***, !dbg !2210
  store %struct.list_head** %424, %struct.list_head*** %430, align 8, !dbg !2210
  %431 = bitcast %struct.list_head** %425 to %struct.list_head***, !dbg !2211
  store %struct.list_head** %424, %struct.list_head*** %431, align 8, !dbg !2211
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %423, metadata !1032, metadata !DIExpression()) #11, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %423, metadata !1010, metadata !DIExpression()) #11, !dbg !2212
  %432 = icmp eq %struct.list_head** %422, null, !dbg !2213
  br i1 %432, label %433, label %454, !dbg !2214

; <label>:433:                                    ; preds = %421, %412
  %434 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2215
  %435 = inttoptr i64 %434 to %struct.cpu*, !dbg !2219
  %436 = getelementptr inbounds %struct.cpu, %struct.cpu* %435, i64 0, i32 5, !dbg !2220
  %437 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %436, align 8, !dbg !2220
  %438 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %437, i64 0, i32 2, !dbg !2221
  %439 = load %struct.nk_fiber*, %struct.nk_fiber** %438, align 8, !dbg !2221
  %440 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2222
  %441 = inttoptr i64 %440 to %struct.cpu*, !dbg !2226
  %442 = getelementptr inbounds %struct.cpu, %struct.cpu* %441, i64 0, i32 5, !dbg !2227
  %443 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %442, align 8, !dbg !2227
  %444 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %443, i64 0, i32 3, !dbg !2228
  %445 = load %struct.nk_fiber*, %struct.nk_fiber** %444, align 8, !dbg !2228
  %446 = icmp eq %struct.nk_fiber* %439, %445, !dbg !2229
  br i1 %446, label %wrapper_nk_fiber_yield.exit, label %447, !dbg !2230

; <label>:447:                                    ; preds = %433
  %448 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2231
  %449 = inttoptr i64 %448 to %struct.cpu*, !dbg !2235
  %450 = getelementptr inbounds %struct.cpu, %struct.cpu* %449, i64 0, i32 5, !dbg !2236
  %451 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %450, align 8, !dbg !2236
  %452 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %451, i64 0, i32 3, !dbg !2237
  %453 = load %struct.nk_fiber*, %struct.nk_fiber** %452, align 8, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %453, metadata !1010, metadata !DIExpression()) #11, !dbg !2212
  br label %454, !dbg !2238

; <label>:454:                                    ; preds = %447, %421
  %455 = phi %struct.nk_fiber* [ %453, %447 ], [ %423, %421 ], !dbg !2239
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %455, metadata !1010, metadata !DIExpression()) #11, !dbg !2212
  %456 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %455) #12, !dbg !2240
  br label %wrapper_nk_fiber_yield.exit, !dbg !2241

wrapper_nk_fiber_yield.exit:                      ; preds = %400, %433, %454
  %457 = phi i32 [ 1, %400 ], [ 0, %433 ], [ 0, %454 ], !dbg !2239
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !2242
  ret void, !dbg !2243
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !2244 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2247, metadata !DIExpression()), !dbg !2249
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !2250
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2259, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #11, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #11, !dbg !2261
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !2262
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !2262
  %9 = load i64, i64* %8, align 8, !dbg !2262
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !2263
  %10 = bitcast i64* %4 to i8*, !dbg !2264
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !2264
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !2265
  %11 = call i8* @kmem_malloc(i64 8) #12, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %11, metadata !2256, metadata !DIExpression()) #11, !dbg !2266
  %12 = icmp eq i8* %11, null, !dbg !2267
  br i1 %12, label %13, label %15, !dbg !2269

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !2270
  br label %115, !dbg !2272

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !2273
  call void @llvm.dbg.value(metadata i64* %16, metadata !2255, metadata !DIExpression()) #11, !dbg !2274
  %17 = load i64, i64* %4, align 8, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %17, metadata !2254, metadata !DIExpression()) #11, !dbg !2276
  %18 = urem i64 %17, 5000, !dbg !2277
  store i64 %18, i64* %16, align 8, !dbg !2278
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !2253, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2279
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !2280
  call void @llvm.dbg.value(metadata i8* %11, metadata !589, metadata !DIExpression()) #11, !dbg !2282
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !2283
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !2284
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !593, metadata !DIExpression()) #11, !dbg !2286
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %11, metadata !606, metadata !DIExpression()) #11, !dbg !2289
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !609, metadata !DIExpression()) #11, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !2293
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !2294
  %19 = call i8* @kmem_malloc(i64 152) #12, !dbg !2295
  call void @llvm.dbg.value(metadata i8* %19, metadata !612, metadata !DIExpression()) #11, !dbg !2295
  call void @llvm.dbg.value(metadata i8* %19, metadata !610, metadata !DIExpression()) #11, !dbg !2293
  %20 = icmp eq i8* %19, null, !dbg !2296
  br i1 %20, label %nk_fiber_create.exit, label %21, !dbg !2297

; <label>:21:                                     ; preds = %15
  %22 = call i8* @memset(i8* nonnull %19, i8 signext 0, i64 152) #12, !dbg !2298
  %23 = getelementptr inbounds i8, i8* %19, i64 44, !dbg !2299
  %24 = bitcast i8* %23 to i32*, !dbg !2299
  store i32 0, i32* %24, align 4, !dbg !2300
  %25 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !2301
  %26 = bitcast i8* %25 to i64*, !dbg !2301
  store i64 2097152, i64* %26, align 8, !dbg !2302
  %27 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !2303
  call void @llvm.dbg.value(metadata i8* %27, metadata !614, metadata !DIExpression()) #11, !dbg !2303
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !2304
  %29 = bitcast i8* %28 to i8**, !dbg !2304
  store i8* %27, i8** %29, align 8, !dbg !2305
  %30 = icmp eq i8* %27, null, !dbg !2306
  br i1 %30, label %31, label %32, !dbg !2307

; <label>:31:                                     ; preds = %21
  call void @kmem_free(i8* nonnull %19) #12, !dbg !2308
  br label %nk_fiber_create.exit, !dbg !2309

; <label>:32:                                     ; preds = %21
  %33 = ptrtoint i8* %27 to i64, !dbg !2307
  %34 = getelementptr inbounds i8, i8* %19, i64 120, !dbg !2310
  %35 = bitcast i8* %34 to void (i8*, i8**)**, !dbg !2310
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %35, align 8, !dbg !2311
  %36 = getelementptr inbounds i8, i8* %19, i64 128, !dbg !2312
  %37 = bitcast i8* %36 to i8**, !dbg !2312
  store i8* %11, i8** %37, align 8, !dbg !2313
  %38 = getelementptr inbounds i8, i8* %19, i64 136, !dbg !2314
  %39 = bitcast i8* %38 to i8***, !dbg !2314
  store i8** null, i8*** %39, align 8, !dbg !2315
  call void @llvm.dbg.value(metadata i8* %19, metadata !648, metadata !DIExpression()) #11, !dbg !2316
  %40 = load i64, i64* %26, align 8, !dbg !2318
  %41 = bitcast i8* %19 to i64*, !dbg !2319
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !2320
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !2322
  %42 = add i64 %33, -8, !dbg !2323
  %43 = add i64 %42, %40, !dbg !2324
  store i64 %43, i64* %41, align 8, !dbg !2324
  %44 = inttoptr i64 %43 to i64*, !dbg !2325
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %44, align 8, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !2327
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2329
  %45 = load i64, i64* %41, align 8, !dbg !2330
  %46 = add i64 %45, -8, !dbg !2330
  store i64 %46, i64* %41, align 8, !dbg !2330
  %47 = inttoptr i64 %46 to i64*, !dbg !2331
  store i64 0, i64* %47, align 8, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !2333
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2335
  %48 = load i64, i64* %41, align 8, !dbg !2336
  %49 = add i64 %48, -8, !dbg !2336
  store i64 %49, i64* %41, align 8, !dbg !2336
  %50 = inttoptr i64 %49 to i64*, !dbg !2337
  store i64 0, i64* %50, align 8, !dbg !2338
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !2339
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2341
  %51 = load i64, i64* %41, align 8, !dbg !2342
  %52 = add i64 %51, -8, !dbg !2342
  store i64 %52, i64* %41, align 8, !dbg !2342
  %53 = inttoptr i64 %52 to i64*, !dbg !2343
  store i64 0, i64* %53, align 8, !dbg !2344
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !2345
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2347
  %54 = load i64, i64* %41, align 8, !dbg !2348
  %55 = add i64 %54, -8, !dbg !2348
  store i64 %55, i64* %41, align 8, !dbg !2348
  %56 = inttoptr i64 %55 to i64*, !dbg !2349
  store i64 0, i64* %56, align 8, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2353
  %57 = load i64, i64* %41, align 8, !dbg !2354
  %58 = add i64 %57, -8, !dbg !2354
  store i64 %58, i64* %41, align 8, !dbg !2354
  %59 = inttoptr i64 %58 to i64*, !dbg !2355
  store i64 0, i64* %59, align 8, !dbg !2356
  %60 = ptrtoint i8* %19 to i64, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %60, metadata !662, metadata !DIExpression()) #11, !dbg !2360
  %61 = load i64, i64* %41, align 8, !dbg !2361
  %62 = add i64 %61, -8, !dbg !2361
  store i64 %62, i64* %41, align 8, !dbg !2361
  %63 = inttoptr i64 %62 to i64*, !dbg !2362
  store i64 %60, i64* %63, align 8, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2364
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2366
  %64 = load i64, i64* %41, align 8, !dbg !2367
  %65 = add i64 %64, -8, !dbg !2367
  store i64 %65, i64* %41, align 8, !dbg !2367
  %66 = inttoptr i64 %65 to i64*, !dbg !2368
  store i64 0, i64* %66, align 8, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2370
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2372
  %67 = load i64, i64* %41, align 8, !dbg !2373
  %68 = add i64 %67, -8, !dbg !2373
  store i64 %68, i64* %41, align 8, !dbg !2373
  %69 = inttoptr i64 %68 to i64*, !dbg !2374
  store i64 0, i64* %69, align 8, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2378
  %70 = load i64, i64* %41, align 8, !dbg !2379
  %71 = add i64 %70, -8, !dbg !2379
  store i64 %71, i64* %41, align 8, !dbg !2379
  %72 = inttoptr i64 %71 to i64*, !dbg !2380
  store i64 0, i64* %72, align 8, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2382
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2384
  %73 = load i64, i64* %41, align 8, !dbg !2385
  %74 = add i64 %73, -8, !dbg !2385
  store i64 %74, i64* %41, align 8, !dbg !2385
  %75 = inttoptr i64 %74 to i64*, !dbg !2386
  store i64 0, i64* %75, align 8, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2390
  %76 = load i64, i64* %41, align 8, !dbg !2391
  %77 = add i64 %76, -8, !dbg !2391
  store i64 %77, i64* %41, align 8, !dbg !2391
  %78 = inttoptr i64 %77 to i64*, !dbg !2392
  store i64 0, i64* %78, align 8, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2396
  %79 = load i64, i64* %41, align 8, !dbg !2397
  %80 = add i64 %79, -8, !dbg !2397
  store i64 %80, i64* %41, align 8, !dbg !2397
  %81 = inttoptr i64 %80 to i64*, !dbg !2398
  store i64 0, i64* %81, align 8, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2400
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2402
  %82 = load i64, i64* %41, align 8, !dbg !2403
  %83 = add i64 %82, -8, !dbg !2403
  store i64 %83, i64* %41, align 8, !dbg !2403
  %84 = inttoptr i64 %83 to i64*, !dbg !2404
  store i64 0, i64* %84, align 8, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2406
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2408
  %85 = load i64, i64* %41, align 8, !dbg !2409
  %86 = add i64 %85, -8, !dbg !2409
  store i64 %86, i64* %41, align 8, !dbg !2409
  %87 = inttoptr i64 %86 to i64*, !dbg !2410
  store i64 0, i64* %87, align 8, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !2412
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2414
  %88 = load i64, i64* %41, align 8, !dbg !2415
  %89 = add i64 %88, -8, !dbg !2415
  store i64 %89, i64* %41, align 8, !dbg !2415
  %90 = inttoptr i64 %89 to i64*, !dbg !2416
  store i64 0, i64* %90, align 8, !dbg !2417
  %91 = bitcast %struct.nk_fiber** %3 to i8**, !dbg !2418
  store i8* %19, i8** %91, align 8, !dbg !2418
  %92 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2419, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !772, metadata !DIExpression()) #11, !dbg !2419
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !771, metadata !DIExpression()) #11, !dbg !2421
  %93 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %92, i64 0, i32 24, !dbg !2422
  %94 = bitcast %struct.nk_virtual_console** %93 to i64*, !dbg !2422
  %95 = load i64, i64* %94, align 8, !dbg !2422
  %96 = getelementptr inbounds i8, i8* %19, i64 48, !dbg !2423
  %97 = bitcast i8* %96 to i64*, !dbg !2424
  store i64 %95, i64* %97, align 8, !dbg !2424
  %98 = getelementptr inbounds i8, i8* %19, i64 104, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %98, metadata !780, metadata !DIExpression()) #11, !dbg !2426
  %99 = bitcast i8* %98 to i8**, !dbg !2428
  store i8* %98, i8** %99, align 8, !dbg !2428
  %100 = getelementptr inbounds i8, i8* %19, i64 112, !dbg !2429
  %101 = bitcast i8* %100 to i8**, !dbg !2430
  store i8* %98, i8** %101, align 8, !dbg !2430
  %102 = getelementptr inbounds i8, i8* %19, i64 96, !dbg !2431
  %103 = bitcast i8* %102 to i32*, !dbg !2431
  store i32 0, i32* %103, align 8, !dbg !2432
  %104 = getelementptr inbounds i8, i8* %19, i64 64, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %104, metadata !780, metadata !DIExpression()) #11, !dbg !2434
  %105 = bitcast i8* %104 to i8**, !dbg !2436
  store i8* %104, i8** %105, align 8, !dbg !2436
  %106 = getelementptr inbounds i8, i8* %19, i64 72, !dbg !2437
  %107 = bitcast i8* %106 to i8**, !dbg !2438
  store i8* %104, i8** %107, align 8, !dbg !2438
  %108 = getelementptr inbounds i8, i8* %19, i64 80, !dbg !2439
  call void @llvm.dbg.value(metadata i8* %108, metadata !780, metadata !DIExpression()) #11, !dbg !2440
  %109 = bitcast i8* %108 to i8**, !dbg !2442
  store i8* %108, i8** %109, align 8, !dbg !2442
  %110 = getelementptr inbounds i8, i8* %19, i64 88, !dbg !2443
  %111 = bitcast i8* %110 to i8**, !dbg !2444
  store i8* %108, i8** %111, align 8, !dbg !2444
  br label %nk_fiber_create.exit, !dbg !2445

nk_fiber_create.exit:                             ; preds = %15, %31, %32
  %112 = phi i32 [ 0, %32 ], [ -22, %31 ], [ -22, %15 ], !dbg !2446
  %113 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !2447
  %114 = call i32 @nk_fiber_run(%struct.nk_fiber* %113, i8 zeroext 1) #12, !dbg !2448
  br label %115, !dbg !2449

; <label>:115:                                    ; preds = %13, %nk_fiber_create.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !2450
  ret i32 0, !dbg !2451
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !2251 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !2452
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2452
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2453, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #11, !dbg !2453
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #11, !dbg !2455
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !2456
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !2456
  %7 = load i64, i64* %6, align 8, !dbg !2456
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !2457
  %8 = bitcast i64* %2 to i8*, !dbg !2458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #11, !dbg !2458
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #12, !dbg !2459
  %9 = call i8* @kmem_malloc(i64 8) #12, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %9, metadata !2256, metadata !DIExpression()), !dbg !2460
  %10 = icmp eq i8* %9, null, !dbg !2461
  br i1 %10, label %11, label %13, !dbg !2462

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !2463
  br label %113, !dbg !2464

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !2465
  call void @llvm.dbg.value(metadata i64* %14, metadata !2255, metadata !DIExpression()), !dbg !2466
  %15 = load i64, i64* %2, align 8, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %15, metadata !2254, metadata !DIExpression()), !dbg !2468
  %16 = urem i64 %15, 5000, !dbg !2469
  store i64 %16, i64* %14, align 8, !dbg !2470
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !2253, metadata !DIExpression(DW_OP_deref)), !dbg !2471
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %9, metadata !589, metadata !DIExpression()) #11, !dbg !2474
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !2475
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !2476
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !2478
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !2479
  call void @llvm.dbg.value(metadata i8* %9, metadata !606, metadata !DIExpression()) #11, !dbg !2481
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !2482
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !609, metadata !DIExpression()) #11, !dbg !2484
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !2485
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !2486
  %17 = call i8* @kmem_malloc(i64 152) #12, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %17, metadata !612, metadata !DIExpression()) #11, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %17, metadata !610, metadata !DIExpression()) #11, !dbg !2485
  %18 = icmp eq i8* %17, null, !dbg !2488
  br i1 %18, label %nk_fiber_create.exit, label %19, !dbg !2489

; <label>:19:                                     ; preds = %13
  %20 = call i8* @memset(i8* nonnull %17, i8 signext 0, i64 152) #12, !dbg !2490
  %21 = getelementptr inbounds i8, i8* %17, i64 44, !dbg !2491
  %22 = bitcast i8* %21 to i32*, !dbg !2491
  store i32 0, i32* %22, align 4, !dbg !2492
  %23 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !2493
  %24 = bitcast i8* %23 to i64*, !dbg !2493
  store i64 2097152, i64* %24, align 8, !dbg !2494
  %25 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %25, metadata !614, metadata !DIExpression()) #11, !dbg !2495
  %26 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !2496
  %27 = bitcast i8* %26 to i8**, !dbg !2496
  store i8* %25, i8** %27, align 8, !dbg !2497
  %28 = icmp eq i8* %25, null, !dbg !2498
  br i1 %28, label %29, label %30, !dbg !2499

; <label>:29:                                     ; preds = %19
  call void @kmem_free(i8* nonnull %17) #12, !dbg !2500
  br label %nk_fiber_create.exit, !dbg !2501

; <label>:30:                                     ; preds = %19
  %31 = ptrtoint i8* %25 to i64, !dbg !2499
  %32 = getelementptr inbounds i8, i8* %17, i64 120, !dbg !2502
  %33 = bitcast i8* %32 to void (i8*, i8**)**, !dbg !2502
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %33, align 8, !dbg !2503
  %34 = getelementptr inbounds i8, i8* %17, i64 128, !dbg !2504
  %35 = bitcast i8* %34 to i8**, !dbg !2504
  store i8* %9, i8** %35, align 8, !dbg !2505
  %36 = getelementptr inbounds i8, i8* %17, i64 136, !dbg !2506
  %37 = bitcast i8* %36 to i8***, !dbg !2506
  store i8** null, i8*** %37, align 8, !dbg !2507
  call void @llvm.dbg.value(metadata i8* %17, metadata !648, metadata !DIExpression()) #11, !dbg !2508
  %38 = load i64, i64* %24, align 8, !dbg !2510
  %39 = bitcast i8* %17 to i64*, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2512
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !2514
  %40 = add i64 %31, -8, !dbg !2515
  %41 = add i64 %40, %38, !dbg !2516
  store i64 %41, i64* %39, align 8, !dbg !2516
  %42 = inttoptr i64 %41 to i64*, !dbg !2517
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %42, align 8, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2519
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2521
  %43 = load i64, i64* %39, align 8, !dbg !2522
  %44 = add i64 %43, -8, !dbg !2522
  store i64 %44, i64* %39, align 8, !dbg !2522
  %45 = inttoptr i64 %44 to i64*, !dbg !2523
  store i64 0, i64* %45, align 8, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2525
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2527
  %46 = load i64, i64* %39, align 8, !dbg !2528
  %47 = add i64 %46, -8, !dbg !2528
  store i64 %47, i64* %39, align 8, !dbg !2528
  %48 = inttoptr i64 %47 to i64*, !dbg !2529
  store i64 0, i64* %48, align 8, !dbg !2530
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2531
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2533
  %49 = load i64, i64* %39, align 8, !dbg !2534
  %50 = add i64 %49, -8, !dbg !2534
  store i64 %50, i64* %39, align 8, !dbg !2534
  %51 = inttoptr i64 %50 to i64*, !dbg !2535
  store i64 0, i64* %51, align 8, !dbg !2536
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2537
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2539
  %52 = load i64, i64* %39, align 8, !dbg !2540
  %53 = add i64 %52, -8, !dbg !2540
  store i64 %53, i64* %39, align 8, !dbg !2540
  %54 = inttoptr i64 %53 to i64*, !dbg !2541
  store i64 0, i64* %54, align 8, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2543
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2545
  %55 = load i64, i64* %39, align 8, !dbg !2546
  %56 = add i64 %55, -8, !dbg !2546
  store i64 %56, i64* %39, align 8, !dbg !2546
  %57 = inttoptr i64 %56 to i64*, !dbg !2547
  store i64 0, i64* %57, align 8, !dbg !2548
  %58 = ptrtoint i8* %17 to i64, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %58, metadata !662, metadata !DIExpression()) #11, !dbg !2552
  %59 = load i64, i64* %39, align 8, !dbg !2553
  %60 = add i64 %59, -8, !dbg !2553
  store i64 %60, i64* %39, align 8, !dbg !2553
  %61 = inttoptr i64 %60 to i64*, !dbg !2554
  store i64 %58, i64* %61, align 8, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2556
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2558
  %62 = load i64, i64* %39, align 8, !dbg !2559
  %63 = add i64 %62, -8, !dbg !2559
  store i64 %63, i64* %39, align 8, !dbg !2559
  %64 = inttoptr i64 %63 to i64*, !dbg !2560
  store i64 0, i64* %64, align 8, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2562
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2564
  %65 = load i64, i64* %39, align 8, !dbg !2565
  %66 = add i64 %65, -8, !dbg !2565
  store i64 %66, i64* %39, align 8, !dbg !2565
  %67 = inttoptr i64 %66 to i64*, !dbg !2566
  store i64 0, i64* %67, align 8, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2568
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2570
  %68 = load i64, i64* %39, align 8, !dbg !2571
  %69 = add i64 %68, -8, !dbg !2571
  store i64 %69, i64* %39, align 8, !dbg !2571
  %70 = inttoptr i64 %69 to i64*, !dbg !2572
  store i64 0, i64* %70, align 8, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2574
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2576
  %71 = load i64, i64* %39, align 8, !dbg !2577
  %72 = add i64 %71, -8, !dbg !2577
  store i64 %72, i64* %39, align 8, !dbg !2577
  %73 = inttoptr i64 %72 to i64*, !dbg !2578
  store i64 0, i64* %73, align 8, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2580
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2582
  %74 = load i64, i64* %39, align 8, !dbg !2583
  %75 = add i64 %74, -8, !dbg !2583
  store i64 %75, i64* %39, align 8, !dbg !2583
  %76 = inttoptr i64 %75 to i64*, !dbg !2584
  store i64 0, i64* %76, align 8, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2586
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2588
  %77 = load i64, i64* %39, align 8, !dbg !2589
  %78 = add i64 %77, -8, !dbg !2589
  store i64 %78, i64* %39, align 8, !dbg !2589
  %79 = inttoptr i64 %78 to i64*, !dbg !2590
  store i64 0, i64* %79, align 8, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2592
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2594
  %80 = load i64, i64* %39, align 8, !dbg !2595
  %81 = add i64 %80, -8, !dbg !2595
  store i64 %81, i64* %39, align 8, !dbg !2595
  %82 = inttoptr i64 %81 to i64*, !dbg !2596
  store i64 0, i64* %82, align 8, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2598
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2600
  %83 = load i64, i64* %39, align 8, !dbg !2601
  %84 = add i64 %83, -8, !dbg !2601
  store i64 %84, i64* %39, align 8, !dbg !2601
  %85 = inttoptr i64 %84 to i64*, !dbg !2602
  store i64 0, i64* %85, align 8, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2604
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2606
  %86 = load i64, i64* %39, align 8, !dbg !2607
  %87 = add i64 %86, -8, !dbg !2607
  store i64 %87, i64* %39, align 8, !dbg !2607
  %88 = inttoptr i64 %87 to i64*, !dbg !2608
  store i64 0, i64* %88, align 8, !dbg !2609
  %89 = bitcast %struct.nk_fiber** %1 to i8**, !dbg !2610
  store i8* %17, i8** %89, align 8, !dbg !2610
  %90 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2611, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !772, metadata !DIExpression()) #11, !dbg !2611
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !771, metadata !DIExpression()) #11, !dbg !2613
  %91 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %90, i64 0, i32 24, !dbg !2614
  %92 = bitcast %struct.nk_virtual_console** %91 to i64*, !dbg !2614
  %93 = load i64, i64* %92, align 8, !dbg !2614
  %94 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !2615
  %95 = bitcast i8* %94 to i64*, !dbg !2616
  store i64 %93, i64* %95, align 8, !dbg !2616
  %96 = getelementptr inbounds i8, i8* %17, i64 104, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()) #11, !dbg !2618
  %97 = bitcast i8* %96 to i8**, !dbg !2620
  store i8* %96, i8** %97, align 8, !dbg !2620
  %98 = getelementptr inbounds i8, i8* %17, i64 112, !dbg !2621
  %99 = bitcast i8* %98 to i8**, !dbg !2622
  store i8* %96, i8** %99, align 8, !dbg !2622
  %100 = getelementptr inbounds i8, i8* %17, i64 96, !dbg !2623
  %101 = bitcast i8* %100 to i32*, !dbg !2623
  store i32 0, i32* %101, align 8, !dbg !2624
  %102 = getelementptr inbounds i8, i8* %17, i64 64, !dbg !2625
  call void @llvm.dbg.value(metadata i8* %102, metadata !780, metadata !DIExpression()) #11, !dbg !2626
  %103 = bitcast i8* %102 to i8**, !dbg !2628
  store i8* %102, i8** %103, align 8, !dbg !2628
  %104 = getelementptr inbounds i8, i8* %17, i64 72, !dbg !2629
  %105 = bitcast i8* %104 to i8**, !dbg !2630
  store i8* %102, i8** %105, align 8, !dbg !2630
  %106 = getelementptr inbounds i8, i8* %17, i64 80, !dbg !2631
  call void @llvm.dbg.value(metadata i8* %106, metadata !780, metadata !DIExpression()) #11, !dbg !2632
  %107 = bitcast i8* %106 to i8**, !dbg !2634
  store i8* %106, i8** %107, align 8, !dbg !2634
  %108 = getelementptr inbounds i8, i8* %17, i64 88, !dbg !2635
  %109 = bitcast i8* %108 to i8**, !dbg !2636
  store i8* %106, i8** %109, align 8, !dbg !2636
  br label %nk_fiber_create.exit, !dbg !2637

nk_fiber_create.exit:                             ; preds = %13, %29, %30
  %110 = phi i32 [ 0, %30 ], [ -22, %29 ], [ -22, %13 ], !dbg !2638
  %111 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !2639
  %112 = call i32 @nk_fiber_run(%struct.nk_fiber* %111, i8 zeroext 1) #12, !dbg !2640
  br label %113, !dbg !2641

; <label>:113:                                    ; preds = %nk_fiber_create.exit, %11
  %114 = phi i32 [ 0, %nk_fiber_create.exit ], [ -1, %11 ], !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #11, !dbg !2643
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2643
  ret i32 %114, !dbg !2643
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !999 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2644
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2646
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2647
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2647
  ret %struct.nk_fiber_percpu_state* %4, !dbg !2648
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1092 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2649
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2652
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2653
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2653
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2654
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2654
  ret %struct.nk_fiber* %6, !dbg !2655
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1102 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2656
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2659
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2660
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2660
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !2661
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2661
  ret %struct.nk_fiber* %6, !dbg !2662
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1005 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2663
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2666
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2667
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2667
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !2668
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !2668
  ret %struct.nk_thread* %6, !dbg !2669
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1023 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2670
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2673
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2674
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2674
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !2675
  ret %struct.list_head* %5, !dbg !2676
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !658 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 %1, metadata !662, metadata !DIExpression()), !dbg !2678
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !2679
  %4 = load i64, i64* %3, align 8, !dbg !2680
  %5 = add i64 %4, -8, !dbg !2680
  store i64 %5, i64* %3, align 8, !dbg !2680
  %6 = inttoptr i64 %5 to i64*, !dbg !2681
  store i64 %1, i64* %6, align 8, !dbg !2682
  ret void, !dbg !2683
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1027 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2684
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2688
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2689
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2689
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !2690
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1031, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1049, metadata !DIExpression()), !dbg !2693
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !2695
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !2695
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !2696
  br i1 %8, label %20, label %9, !dbg !2697

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()), !dbg !2698
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !2698
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !2698
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1033, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1032, metadata !DIExpression()), !dbg !2692
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1061, metadata !DIExpression()), !dbg !2700
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !2702
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !2702
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1068, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1073, metadata !DIExpression()), !dbg !2706
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !2707
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !2708
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !2709
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !2710
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !780, metadata !DIExpression()), !dbg !2711
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !2713
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !2713
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !2714
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !2714
  br label %20, !dbg !2715

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !2716
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1032, metadata !DIExpression()), !dbg !2692
  ret %struct.nk_fiber* %21, !dbg !2717
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2718 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2720, metadata !DIExpression()), !dbg !2731
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2732
  store i32 4, i32* %3, align 4, !dbg !2733
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !2721, metadata !DIExpression()), !dbg !2734
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !2735
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !2723, metadata !DIExpression()), !dbg !2736
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !2737
  %6 = load i32, i32* %5, align 8, !dbg !2737
  %7 = icmp sgt i32 %6, 0, !dbg !2738
  br i1 %7, label %8, label %66, !dbg !2739

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !2739

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !2724, metadata !DIExpression()), !dbg !2740
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !2741
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !2741
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !2740
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !2740
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !2724, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !2722, metadata !DIExpression()), !dbg !2742
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !2743
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1061, metadata !DIExpression()), !dbg !2744
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !2746
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !2746
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !2747
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !2747
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1068, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1073, metadata !DIExpression()), !dbg !2750
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !2751
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !2752
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !2753
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !2754
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !780, metadata !DIExpression()), !dbg !2755
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !2757
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !2758
  %24 = load i32, i32* %5, align 8, !dbg !2759
  %25 = add i32 %24, -1, !dbg !2759
  store i32 %25, i32* %5, align 8, !dbg !2759
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !2760
  br i1 %26, label %63, label %27, !dbg !2762

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !2763, metadata !DIExpression()) #11, !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2768, metadata !DIExpression()) #11, !dbg !2774
  %28 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %28, metadata !2769, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !2779
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2780, !srcloc !2800
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !2787, metadata !DIExpression()) #11, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !2786, metadata !DIExpression()) #11, !dbg !2801
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !2785, metadata !DIExpression()) #11, !dbg !2802
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !2803
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !2810
  %30 = load i64, i64* %2, align 8, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %30, metadata !2808, metadata !DIExpression()) #11, !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !2813
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !2814
  %32 = load i32, i32* %31, align 8, !dbg !2814
  %33 = zext i32 %32 to i64, !dbg !2815
  %34 = urem i64 %30, %33, !dbg !2816
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2817, !srcloc !2818
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !2795, metadata !DIExpression()) #11, !dbg !2817
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !2793, metadata !DIExpression()) #11, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !2792, metadata !DIExpression()) #11, !dbg !2820
  %36 = shl nuw i64 %34, 32, !dbg !2821
  %37 = ashr exact i64 %36, 32, !dbg !2821
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !2821
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !2821
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !2769, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !2779
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !2822
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !2822
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !2822
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !2822
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !2769, metadata !DIExpression()) #11, !dbg !2779
  %44 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2823
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2827
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2828
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2828
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !2770, metadata !DIExpression()) #11, !dbg !2830
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !2831
  store i32 1, i32* %49, align 4, !dbg !2832
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !2834, metadata !DIExpression()) #11, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !2837, metadata !DIExpression()) #11, !dbg !2840
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !2841
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !2841
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !2842, metadata !DIExpression()) #11, !dbg !2849
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !2847, metadata !DIExpression()) #11, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !2848, metadata !DIExpression()) #11, !dbg !2852
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !2853
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !2854
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !2855
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !2856
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !2857
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !2858
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !2859
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !2860
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !2860
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !2862
  br i1 %58, label %61, label %59, !dbg !2863

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #12, !dbg !2864
  br label %61, !dbg !2866

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !2737
  br label %63, !dbg !2737

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !2737
  %65 = icmp sgt i32 %64, 0, !dbg !2738
  br i1 %65, label %11, label %66, !dbg !2739, !llvm.loop !2867

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !2869
  store i8 1, i8* %67, align 8, !dbg !2870
  %68 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2871
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !2876
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !2877
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !2877
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !2878
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1031, metadata !DIExpression()) #11, !dbg !2879
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !2880
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1049, metadata !DIExpression()) #11, !dbg !2881
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !2883
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !2883
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !2884
  br i1 %75, label %88, label %76, !dbg !2885

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !2886
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !2886
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1033, metadata !DIExpression()) #11, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1032, metadata !DIExpression()) #11, !dbg !2880
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !2887
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1061, metadata !DIExpression()) #11, !dbg !2888
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !2890
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !2890
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !2891
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1068, metadata !DIExpression()) #11, !dbg !2892
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1073, metadata !DIExpression()) #11, !dbg !2894
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !2895
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !2896
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !2897
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !2898
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !780, metadata !DIExpression()) #11, !dbg !2899
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !2901
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !2901
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !2902
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !2902
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1032, metadata !DIExpression()) #11, !dbg !2880
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !2721, metadata !DIExpression()), !dbg !2734
  %87 = icmp eq %struct.list_head** %77, null, !dbg !2903
  br i1 %87, label %88, label %95, !dbg !2905

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2906
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !2911
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !2912
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !2912
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !2913
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !2913
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !2721, metadata !DIExpression()), !dbg !2734
  br label %95, !dbg !2914

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !2915
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !2721, metadata !DIExpression()), !dbg !2734
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2916
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !2919
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !2920
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !2920
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !2921
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !2922
  %102 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2923
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !2926
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !2927
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !2927
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !2928
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !2928
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !2929
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1061, metadata !DIExpression()), !dbg !2930
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !2932
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !2932
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !2933
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !2933
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1068, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1073, metadata !DIExpression()), !dbg !2936
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !2937
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !2938
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !2939
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !2940
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !780, metadata !DIExpression()), !dbg !2941
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !2943
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !2944
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !2945
  %116 = load i8*, i8** %115, align 8, !dbg !2945
  call void @kmem_free(i8* %116) #12, !dbg !2945
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !2946
  call void @kmem_free(i8* %117) #12, !dbg !2946
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #12, !dbg !2947
  ret void, !dbg !2948
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !2764 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2763, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 %1, metadata !2768, metadata !DIExpression()), !dbg !2950
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2951
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !2955
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !2769, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2956
  %6 = icmp eq i8 %1, 0, !dbg !2957
  br i1 %6, label %20, label %7, !dbg !2958

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2959, !srcloc !2800
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !2787, metadata !DIExpression()) #11, !dbg !2959
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !2786, metadata !DIExpression()) #11, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !2785, metadata !DIExpression()) #11, !dbg !2963
  %9 = bitcast i64* %3 to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !2964
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #12, !dbg !2966
  %10 = load i64, i64* %3, align 8, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %10, metadata !2808, metadata !DIExpression()) #11, !dbg !2968
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !2969
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !2970
  %12 = load i32, i32* %11, align 8, !dbg !2970
  %13 = zext i32 %12 to i64, !dbg !2971
  %14 = urem i64 %10, %13, !dbg !2972
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2973, !srcloc !2818
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !2795, metadata !DIExpression()) #11, !dbg !2973
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !2793, metadata !DIExpression()) #11, !dbg !2974
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !2792, metadata !DIExpression()) #11, !dbg !2975
  %16 = shl nuw i64 %14, 32, !dbg !2976
  %17 = ashr exact i64 %16, 32, !dbg !2976
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !2976
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !2976
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !2769, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2956
  br label %20, !dbg !2977

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !2978
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !2978
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !2978
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !2978
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !2769, metadata !DIExpression()), !dbg !2956
  %26 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2979
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !2983
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !2984
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !2984
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !2985
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2770, metadata !DIExpression()), !dbg !2986
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2987
  store i32 1, i32* %31, align 4, !dbg !2988
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2989
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !2834, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2837, metadata !DIExpression()), !dbg !2992
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !2993
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !2993
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !2842, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !2847, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2848, metadata !DIExpression()), !dbg !2997
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !2998
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2999
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !3000
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !3001
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !3002
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !3003
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !3004
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !3005
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !3005
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !3006
  br i1 %40, label %43, label %41, !dbg !3007

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #12, !dbg !3008
  br label %43, !dbg !3009

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !3010
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !3011 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3013, metadata !DIExpression()), !dbg !3014
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !3015
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !3015
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !3016
  %5 = load i8*, i8** %4, align 8, !dbg !3016
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !3017
  %7 = load i8**, i8*** %6, align 8, !dbg !3017
  tail call void %3(i8* %5, i8** %7) #12, !dbg !3018
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #10, !dbg !3019
  ret void, !dbg !3020
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !649 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !648, metadata !DIExpression()), !dbg !3021
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !3022
  %3 = bitcast i8** %2 to i64*, !dbg !3022
  %4 = load i64, i64* %3, align 8, !dbg !3022
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !3023
  %6 = load i64, i64* %5, align 8, !dbg !3023
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !3027
  %8 = add i64 %4, -8, !dbg !3028
  %9 = add i64 %8, %6, !dbg !3029
  store i64 %9, i64* %7, align 8, !dbg !3029
  %10 = inttoptr i64 %9 to i64*, !dbg !3030
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !3031
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3034
  %11 = load i64, i64* %7, align 8, !dbg !3035
  %12 = add i64 %11, -8, !dbg !3035
  store i64 %12, i64* %7, align 8, !dbg !3035
  %13 = inttoptr i64 %12 to i64*, !dbg !3036
  store i64 0, i64* %13, align 8, !dbg !3037
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3040
  %14 = load i64, i64* %7, align 8, !dbg !3041
  %15 = add i64 %14, -8, !dbg !3041
  store i64 %15, i64* %7, align 8, !dbg !3041
  %16 = inttoptr i64 %15 to i64*, !dbg !3042
  store i64 0, i64* %16, align 8, !dbg !3043
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3046
  %17 = load i64, i64* %7, align 8, !dbg !3047
  %18 = add i64 %17, -8, !dbg !3047
  store i64 %18, i64* %7, align 8, !dbg !3047
  %19 = inttoptr i64 %18 to i64*, !dbg !3048
  store i64 0, i64* %19, align 8, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3052
  %20 = load i64, i64* %7, align 8, !dbg !3053
  %21 = add i64 %20, -8, !dbg !3053
  store i64 %21, i64* %7, align 8, !dbg !3053
  %22 = inttoptr i64 %21 to i64*, !dbg !3054
  store i64 0, i64* %22, align 8, !dbg !3055
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3058
  %23 = load i64, i64* %7, align 8, !dbg !3059
  %24 = add i64 %23, -8, !dbg !3059
  store i64 %24, i64* %7, align 8, !dbg !3059
  %25 = inttoptr i64 %24 to i64*, !dbg !3060
  store i64 0, i64* %25, align 8, !dbg !3061
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !3062
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %26, metadata !662, metadata !DIExpression()), !dbg !3065
  %27 = load i64, i64* %7, align 8, !dbg !3066
  %28 = add i64 %27, -8, !dbg !3066
  store i64 %28, i64* %7, align 8, !dbg !3066
  %29 = inttoptr i64 %28 to i64*, !dbg !3067
  store i64 %26, i64* %29, align 8, !dbg !3068
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3071
  %30 = load i64, i64* %7, align 8, !dbg !3072
  %31 = add i64 %30, -8, !dbg !3072
  store i64 %31, i64* %7, align 8, !dbg !3072
  %32 = inttoptr i64 %31 to i64*, !dbg !3073
  store i64 0, i64* %32, align 8, !dbg !3074
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3077
  %33 = load i64, i64* %7, align 8, !dbg !3078
  %34 = add i64 %33, -8, !dbg !3078
  store i64 %34, i64* %7, align 8, !dbg !3078
  %35 = inttoptr i64 %34 to i64*, !dbg !3079
  store i64 0, i64* %35, align 8, !dbg !3080
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3083
  %36 = load i64, i64* %7, align 8, !dbg !3084
  %37 = add i64 %36, -8, !dbg !3084
  store i64 %37, i64* %7, align 8, !dbg !3084
  %38 = inttoptr i64 %37 to i64*, !dbg !3085
  store i64 0, i64* %38, align 8, !dbg !3086
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3089
  %39 = load i64, i64* %7, align 8, !dbg !3090
  %40 = add i64 %39, -8, !dbg !3090
  store i64 %40, i64* %7, align 8, !dbg !3090
  %41 = inttoptr i64 %40 to i64*, !dbg !3091
  store i64 0, i64* %41, align 8, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3095
  %42 = load i64, i64* %7, align 8, !dbg !3096
  %43 = add i64 %42, -8, !dbg !3096
  store i64 %43, i64* %7, align 8, !dbg !3096
  %44 = inttoptr i64 %43 to i64*, !dbg !3097
  store i64 0, i64* %44, align 8, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3101
  %45 = load i64, i64* %7, align 8, !dbg !3102
  %46 = add i64 %45, -8, !dbg !3102
  store i64 %46, i64* %7, align 8, !dbg !3102
  %47 = inttoptr i64 %46 to i64*, !dbg !3103
  store i64 0, i64* %47, align 8, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3107
  %48 = load i64, i64* %7, align 8, !dbg !3108
  %49 = add i64 %48, -8, !dbg !3108
  store i64 %49, i64* %7, align 8, !dbg !3108
  %50 = inttoptr i64 %49 to i64*, !dbg !3109
  store i64 0, i64* %50, align 8, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3113
  %51 = load i64, i64* %7, align 8, !dbg !3114
  %52 = add i64 %51, -8, !dbg !3114
  store i64 %52, i64* %7, align 8, !dbg !3114
  %53 = inttoptr i64 %52 to i64*, !dbg !3115
  store i64 0, i64* %53, align 8, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3119
  %54 = load i64, i64* %7, align 8, !dbg !3120
  %55 = add i64 %54, -8, !dbg !3120
  store i64 %55, i64* %7, align 8, !dbg !3120
  %56 = inttoptr i64 %55 to i64*, !dbg !3121
  store i64 0, i64* %56, align 8, !dbg !3122
  ret void, !dbg !3123
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3124 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3128, metadata !DIExpression()), !dbg !3133
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3134
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3138
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3139
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3139
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !3140
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !3140
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !3129, metadata !DIExpression()), !dbg !3141
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !3142
  %9 = load i32, i32* %8, align 4, !dbg !3142
  %10 = add i32 %9, -3, !dbg !3144
  %11 = icmp ult i32 %10, 2, !dbg !3144
  br i1 %11, label %13, label %12, !dbg !3144

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !3145
  br label %13, !dbg !3147

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3148
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !3152
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !3153
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !3153
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !3154
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !3154
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !3155
  br i1 %20, label %36, label %21, !dbg !3156

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !3157
  %23 = icmp eq i32 %22, 3, !dbg !3158
  br i1 %23, label %36, label %24, !dbg !3159

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3160
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !3164
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !3165
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !3165
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !3130, metadata !DIExpression()), !dbg !3167
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !3168
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2834, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2837, metadata !DIExpression()), !dbg !3171
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !3172
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !3172
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2842, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !2847, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2848, metadata !DIExpression()), !dbg !3176
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !3177
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !3178
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !3179
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !3180
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !3181
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !3182
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !3183
  br label %36, !dbg !3184

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !3185
  %38 = load i32, i32* %37, align 8, !dbg !3185
  %39 = icmp eq i32 %38, 0, !dbg !3187
  br i1 %39, label %40, label %55, !dbg !3188

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !3189
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !3189
  %43 = load i64, i64* %42, align 8, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !3191, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3197
  %44 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3199
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !3203
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !3204
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !3204
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !3205
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !3196, metadata !DIExpression()) #11, !dbg !3206
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !3207
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !3208
  store i64 %43, i64* %51, align 8, !dbg !3208
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3209, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !772, metadata !DIExpression()) #11, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !771, metadata !DIExpression()) #11, !dbg !3211
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !3212
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !3213
  store i64 %43, i64* %54, align 8, !dbg !3213
  br label %55, !dbg !3214

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3215
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !3218
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !3219
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !3219
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !3220
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !3221
  store i32 1, i32* %8, align 4, !dbg !3222
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !3223
  store i32 5, i32* %61, align 4, !dbg !3224
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #12, !dbg !3225
  ret i32 0, !dbg !3226
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !3192 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !3191, metadata !DIExpression()), !dbg !3227
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3228
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3232
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3233
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3233
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !3234
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !3234
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !3196, metadata !DIExpression()), !dbg !3235
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !3236
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !3237
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3238, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !772, metadata !DIExpression()) #11, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !771, metadata !DIExpression()) #11, !dbg !3240
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !3241
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !3242
  ret void, !dbg !3243
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !3244 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3249
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3253
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3254
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3254
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !3255
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !3248, metadata !DIExpression()), !dbg !3256
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #10, !dbg !3257
  ret void, !dbg !3258
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !3259 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3263, metadata !DIExpression()), !dbg !3266
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3267
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3271
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3272
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3272
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !3273
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !3273
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !3264, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3265, metadata !DIExpression()), !dbg !3275
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !3276
  %9 = zext i1 %8 to i8, !dbg !3278
  call void @llvm.dbg.value(metadata i8 %9, metadata !3265, metadata !DIExpression()), !dbg !3275
  ret i8 %9, !dbg !3279
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !2789 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !3280, !srcloc !2800
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2787, metadata !DIExpression()) #11, !dbg !3280
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2786, metadata !DIExpression()) #11, !dbg !3282
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2785, metadata !DIExpression()) #11, !dbg !3283
  %3 = bitcast i64* %1 to i8*, !dbg !3284
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !3284
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #12, !dbg !3286
  %4 = load i64, i64* %1, align 8, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %4, metadata !2808, metadata !DIExpression()) #11, !dbg !3288
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !3289
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3290
  %6 = load i32, i32* %5, align 8, !dbg !3290
  %7 = zext i32 %6 to i64, !dbg !3291
  %8 = urem i64 %4, %7, !dbg !3292
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !3293, !srcloc !2818
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !2795, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !2793, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !2792, metadata !DIExpression()), !dbg !3295
  %10 = shl nuw i64 %8, 32, !dbg !3296
  %11 = ashr exact i64 %10, 32, !dbg !3296
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !3296
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !3296
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !3297
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !3297
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !3298
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !3298
  ret %struct.nk_thread* %17, !dbg !3299
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3300 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3302, metadata !DIExpression()), !dbg !3321
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !3322, !srcloc !3323
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !3306, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !3304, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !3303, metadata !DIExpression()), !dbg !3325
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3326
  %4 = load i32, i32* %3, align 8, !dbg !3326
  call void @llvm.dbg.value(metadata i32 %4, metadata !3308, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3328
  %5 = icmp sgt i32 %4, 0, !dbg !3329
  br i1 %5, label %6, label %38, !dbg !3330

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3331
  br label %8, !dbg !3331

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3311, metadata !DIExpression()), !dbg !3328
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3331
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3331
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3332
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3332
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3333
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !3309, metadata !DIExpression()), !dbg !3334
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3335
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !3313, metadata !DIExpression(DW_OP_deref)), !dbg !3335
  call void @llvm.dbg.value(metadata i8** %15, metadata !3310, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !3336
  %16 = load i8*, i8** %15, align 8, !dbg !3337
  br label %17, !dbg !3338

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3337
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3339
  %20 = bitcast i8* %18 to i8**, !dbg !3339
  %21 = load i8*, i8** %20, align 8, !dbg !3339
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !3339
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3339
  br i1 %22, label %27, label %23, !dbg !3338

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3337
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !3310, metadata !DIExpression()), !dbg !3336
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3340
  br i1 %26, label %30, label %17, !dbg !3343, !llvm.loop !3344

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3346
  call void @llvm.dbg.value(metadata i32 undef, metadata !3311, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3328
  %29 = icmp slt i64 %28, %7, !dbg !3329
  br i1 %29, label %8, label %38, !dbg !3330, !llvm.loop !3347

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !3349
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1061, metadata !DIExpression()), !dbg !3351
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !3353
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !3353
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !3354
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !3354
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1068, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1073, metadata !DIExpression()), !dbg !3357
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !3358
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !3359
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !3360
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !780, metadata !DIExpression()), !dbg !3362
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !3364
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !3365
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !3366
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !3367 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3396, !srcloc !3397
  call void @llvm.dbg.value(metadata i32 %1, metadata !3372, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %1, metadata !3370, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 %1, metadata !3369, metadata !DIExpression()), !dbg !3399
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3400
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3402
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3374, metadata !DIExpression()), !dbg !3403
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !3404
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3405
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !3406
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !3407
  br i1 %6, label %7, label %109, !dbg !3408

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3409
  %9 = icmp eq i64 %8, 0, !dbg !3415
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %10, metadata !3420, metadata !DIExpression()) #11, !dbg !3422
  %11 = icmp eq i64 %10, 0, !dbg !3423
  br i1 %11, label %17, label %12, !dbg !3425

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !3426
  %14 = inttoptr i64 %13 to i16*, !dbg !3428
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !3429
  %16 = zext i16 %15 to i32, !dbg !3429
  br label %17, !dbg !3430

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !3431
  %19 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %19, metadata !3436, metadata !DIExpression()) #11, !dbg !3438
  %20 = icmp eq i64 %19, 0, !dbg !3439
  br i1 %20, label %25, label %21, !dbg !3441

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !3442
  %23 = inttoptr i64 %22 to i16*, !dbg !3444
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !3445
  br label %25, !dbg !3446

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !3447

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !3375, metadata !DIExpression()), !dbg !3448
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3449, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !3449
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !3451
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !3381, metadata !DIExpression()), !dbg !3448
  %28 = tail call i32 @nk_vc_is_active() #12, !dbg !3452
  %29 = icmp eq i32 %28, 0, !dbg !3452
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3453
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %31, metadata !3460, metadata !DIExpression()) #11, !dbg !3464
  %32 = icmp eq i64 %31, 0, !dbg !3465
  br i1 %32, label %38, label %33, !dbg !3467

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !3468
  %35 = inttoptr i64 %34 to i16*, !dbg !3470
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !3471
  %37 = icmp eq i16 %36, 0, !dbg !3472
  br i1 %37, label %38, label %39, !dbg !3453

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !3453

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !3453
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3453
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !3453
  br i1 %29, label %60, label %44, !dbg !3473

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !3474

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !3474
  %47 = load i64, i64* %46, align 32, !dbg !3474
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !3474
  %49 = load i8, i8* %48, align 8, !dbg !3474
  %50 = icmp eq i8 %49, 0, !dbg !3474
  br i1 %50, label %51, label %56, !dbg !3474

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !3474
  %53 = load i8, i8* %52, align 64, !dbg !3474
  %54 = icmp eq i8 %53, 0, !dbg !3474
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !3474
  br label %56, !dbg !3474

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !3474
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3474
  br label %76, !dbg !3474

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !3475

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !3475
  %63 = load i64, i64* %62, align 32, !dbg !3475
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !3475
  %65 = load i8, i8* %64, align 8, !dbg !3475
  %66 = icmp eq i8 %65, 0, !dbg !3475
  br i1 %66, label %67, label %72, !dbg !3475

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !3475
  %69 = load i8, i8* %68, align 64, !dbg !3475
  %70 = icmp eq i8 %69, 0, !dbg !3475
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !3475
  br label %72, !dbg !3475

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !3475
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3475
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %77, metadata !3480, metadata !DIExpression()) #11, !dbg !3482
  %78 = icmp eq i64 %77, 0, !dbg !3483
  br i1 %78, label %109, label %79, !dbg !3485

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3486
  %81 = inttoptr i64 %80 to i16*, !dbg !3488
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3489
  br label %109, !dbg !3490

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !3394, metadata !DIExpression()), !dbg !3491
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !3492
  %85 = icmp eq i32 %84, 0, !dbg !3492
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %86, metadata !3460, metadata !DIExpression()) #11, !dbg !3499
  %87 = icmp eq i64 %86, 0, !dbg !3500
  br i1 %87, label %93, label %88, !dbg !3501

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3502
  %90 = inttoptr i64 %89 to i16*, !dbg !3503
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3504
  %92 = icmp eq i16 %91, 0, !dbg !3505
  br i1 %92, label %93, label %94, !dbg !3506

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3506

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !3506
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3506
  br i1 %85, label %100, label %98, !dbg !3507

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3508
  br label %102, !dbg !3508

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3510
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %103, metadata !3480, metadata !DIExpression()) #11, !dbg !3515
  %104 = icmp eq i64 %103, 0, !dbg !3516
  br i1 %104, label %109, label %105, !dbg !3517

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !3518
  %107 = inttoptr i64 %106 to i16*, !dbg !3519
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !3520
  br label %109, !dbg !3521

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !3522
  ret i32 %110, !dbg !3523
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !3524 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3556, !srcloc !3557
  call void @llvm.dbg.value(metadata i32 %1, metadata !3533, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 %1, metadata !3531, metadata !DIExpression()), !dbg !3558
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #12, !dbg !3559
  call void @llvm.dbg.value(metadata i8* %2, metadata !3529, metadata !DIExpression()), !dbg !3559
  %3 = icmp eq i8* %2, null, !dbg !3560
  br i1 %3, label %4, label %106, !dbg !3561

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3562
  %6 = icmp eq i64 %5, 0, !dbg !3564
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %7, metadata !3420, metadata !DIExpression()) #11, !dbg !3568
  %8 = icmp eq i64 %7, 0, !dbg !3569
  br i1 %8, label %14, label %9, !dbg !3570

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !3571
  %11 = inttoptr i64 %10 to i16*, !dbg !3572
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !3573
  %13 = zext i16 %12 to i32, !dbg !3573
  br label %14, !dbg !3574

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !3575
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %16, metadata !3436, metadata !DIExpression()) #11, !dbg !3579
  %17 = icmp eq i64 %16, 0, !dbg !3580
  br i1 %17, label %22, label %18, !dbg !3581

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !3582
  %20 = inttoptr i64 %19 to i16*, !dbg !3583
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !3584
  br label %22, !dbg !3585

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !3586

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3535, metadata !DIExpression()), !dbg !3587
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3588, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !3588
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !3590
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !3541, metadata !DIExpression()), !dbg !3587
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !3591
  %26 = icmp eq i32 %25, 0, !dbg !3591
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3592
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %28, metadata !3460, metadata !DIExpression()) #11, !dbg !3597
  %29 = icmp eq i64 %28, 0, !dbg !3598
  br i1 %29, label %35, label %30, !dbg !3599

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !3600
  %32 = inttoptr i64 %31 to i16*, !dbg !3601
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !3602
  %34 = icmp eq i16 %33, 0, !dbg !3603
  br i1 %34, label %35, label %36, !dbg !3592

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !3592

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !3592
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3592
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !3592
  br i1 %26, label %57, label %41, !dbg !3604

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !3605

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3605
  %44 = load i64, i64* %43, align 32, !dbg !3605
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3605
  %46 = load i8, i8* %45, align 8, !dbg !3605
  %47 = icmp eq i8 %46, 0, !dbg !3605
  br i1 %47, label %48, label %53, !dbg !3605

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3605
  %50 = load i8, i8* %49, align 64, !dbg !3605
  %51 = icmp eq i8 %50, 0, !dbg !3605
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !3605
  br label %53, !dbg !3605

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !3605
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3605
  br label %73, !dbg !3605

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !3606

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3606
  %60 = load i64, i64* %59, align 32, !dbg !3606
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3606
  %62 = load i8, i8* %61, align 8, !dbg !3606
  %63 = icmp eq i8 %62, 0, !dbg !3606
  br i1 %63, label %64, label %69, !dbg !3606

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3606
  %66 = load i8, i8* %65, align 64, !dbg !3606
  %67 = icmp eq i8 %66, 0, !dbg !3606
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !3606
  br label %69, !dbg !3606

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !3606
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3606
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %74, metadata !3480, metadata !DIExpression()) #11, !dbg !3610
  %75 = icmp eq i64 %74, 0, !dbg !3611
  br i1 %75, label %114, label %76, !dbg !3612

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !3613
  %78 = inttoptr i64 %77 to i16*, !dbg !3614
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !3615
  br label %114, !dbg !3616

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3554, metadata !DIExpression()), !dbg !3617
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !3618
  %82 = icmp eq i32 %81, 0, !dbg !3618
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %83, metadata !3460, metadata !DIExpression()) #11, !dbg !3625
  %84 = icmp eq i64 %83, 0, !dbg !3626
  br i1 %84, label %90, label %85, !dbg !3627

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !3628
  %87 = inttoptr i64 %86 to i16*, !dbg !3629
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !3630
  %89 = icmp eq i16 %88, 0, !dbg !3631
  br i1 %89, label %90, label %91, !dbg !3632

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !3632

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !3632
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3632
  br i1 %82, label %97, label %95, !dbg !3633

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3634
  br label %99, !dbg !3634

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3636
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %100, metadata !3480, metadata !DIExpression()) #11, !dbg !3641
  %101 = icmp eq i64 %100, 0, !dbg !3642
  br i1 %101, label %114, label %102, !dbg !3643

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !3644
  %104 = inttoptr i64 %103 to i16*, !dbg !3645
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !3646
  br label %114, !dbg !3647

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !3528, metadata !DIExpression()), !dbg !3649
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #12, !dbg !3650
  %109 = bitcast i8* %2 to i32*, !dbg !3651
  tail call void @spinlock_init(i32* %109) #12, !dbg !3652
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3653
  call void @llvm.dbg.value(metadata i8* %110, metadata !780, metadata !DIExpression()), !dbg !3654
  %111 = bitcast i8* %110 to i8**, !dbg !3656
  store i8* %110, i8** %111, align 8, !dbg !3656
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !3657
  %113 = bitcast i8* %112 to i8**, !dbg !3658
  store i8* %110, i8** %113, align 8, !dbg !3658
  br label %115, !dbg !3659

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #12, !dbg !3660
  br label %115, !dbg !3661

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !3662
  ret %struct.nk_fiber_percpu_state* %116, !dbg !3663
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !3664 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !3707
  %2 = zext i32 %1 to i64, !dbg !3708
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !3708
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !3708
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !3666, metadata !DIExpression()), !dbg !3709
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3710
  %6 = icmp eq i64 %5, 0, !dbg !3712
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %7, metadata !3420, metadata !DIExpression()) #11, !dbg !3716
  %8 = icmp eq i64 %7, 0, !dbg !3717
  br i1 %8, label %14, label %9, !dbg !3718

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !3719
  %11 = inttoptr i64 %10 to i16*, !dbg !3720
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !3721
  %13 = zext i16 %12 to i32, !dbg !3721
  br label %14, !dbg !3722

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !3723
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %16, metadata !3436, metadata !DIExpression()) #11, !dbg !3727
  %17 = icmp eq i64 %16, 0, !dbg !3728
  br i1 %17, label %22, label %18, !dbg !3729

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !3730
  %20 = inttoptr i64 %19 to i16*, !dbg !3731
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !3732
  br label %22, !dbg !3733

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !3734

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3667, metadata !DIExpression()), !dbg !3735
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3736, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !3736
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !3738
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !3671, metadata !DIExpression()), !dbg !3735
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !3739
  %26 = icmp eq i32 %25, 0, !dbg !3739
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3740
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %28, metadata !3460, metadata !DIExpression()) #11, !dbg !3745
  %29 = icmp eq i64 %28, 0, !dbg !3746
  br i1 %29, label %35, label %30, !dbg !3747

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !3748
  %32 = inttoptr i64 %31 to i16*, !dbg !3749
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !3750
  %34 = icmp eq i16 %33, 0, !dbg !3751
  br i1 %34, label %35, label %36, !dbg !3740

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !3740

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !3740
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3740
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !3740
  br i1 %26, label %57, label %41, !dbg !3752

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !3753

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3753
  %44 = load i64, i64* %43, align 32, !dbg !3753
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3753
  %46 = load i8, i8* %45, align 8, !dbg !3753
  %47 = icmp eq i8 %46, 0, !dbg !3753
  br i1 %47, label %48, label %53, !dbg !3753

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3753
  %50 = load i8, i8* %49, align 64, !dbg !3753
  %51 = icmp eq i8 %50, 0, !dbg !3753
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !3753
  br label %53, !dbg !3753

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !3753
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #12, !dbg !3753
  br label %73, !dbg !3753

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !3754

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3754
  %60 = load i64, i64* %59, align 32, !dbg !3754
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3754
  %62 = load i8, i8* %61, align 8, !dbg !3754
  %63 = icmp eq i8 %62, 0, !dbg !3754
  br i1 %63, label %64, label %69, !dbg !3754

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3754
  %66 = load i8, i8* %65, align 64, !dbg !3754
  %67 = icmp eq i8 %66, 0, !dbg !3754
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !3754
  br label %69, !dbg !3754

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !3754
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #12, !dbg !3754
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3755
  call void @llvm.dbg.value(metadata i64 %74, metadata !3480, metadata !DIExpression()) #11, !dbg !3758
  %75 = icmp eq i64 %74, 0, !dbg !3759
  br i1 %75, label %106, label %76, !dbg !3760

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !3761
  %78 = inttoptr i64 %77 to i16*, !dbg !3762
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !3763
  br label %106, !dbg !3764

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3684, metadata !DIExpression()), !dbg !3765
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !3766
  %82 = icmp eq i32 %81, 0, !dbg !3766
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %83, metadata !3460, metadata !DIExpression()) #11, !dbg !3773
  %84 = icmp eq i64 %83, 0, !dbg !3774
  br i1 %84, label %90, label %85, !dbg !3775

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !3776
  %87 = inttoptr i64 %86 to i16*, !dbg !3777
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !3778
  %89 = icmp eq i16 %88, 0, !dbg !3779
  br i1 %89, label %90, label %91, !dbg !3780

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !3780

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !3780
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3780
  br i1 %82, label %97, label %95, !dbg !3781

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !3782
  br label %99, !dbg !3782

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !3784
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3786
  call void @llvm.dbg.value(metadata i64 %100, metadata !3480, metadata !DIExpression()) #11, !dbg !3789
  %101 = icmp eq i64 %100, 0, !dbg !3790
  br i1 %101, label %106, label %102, !dbg !3791

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !3792
  %104 = inttoptr i64 %103 to i16*, !dbg !3793
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !3794
  br label %106, !dbg !3795

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !3796
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !3797
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !3798
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !3799
  br i1 %109, label %110, label %212, !dbg !3800

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3801
  %112 = icmp eq i64 %111, 0, !dbg !3803
  %113 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3804
  call void @llvm.dbg.value(metadata i64 %113, metadata !3420, metadata !DIExpression()) #11, !dbg !3807
  %114 = icmp eq i64 %113, 0, !dbg !3808
  br i1 %114, label %120, label %115, !dbg !3809

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !3810
  %117 = inttoptr i64 %116 to i16*, !dbg !3811
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !3812
  %119 = zext i16 %118 to i32, !dbg !3812
  br label %120, !dbg !3813

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !3814
  %122 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %122, metadata !3436, metadata !DIExpression()) #11, !dbg !3818
  %123 = icmp eq i64 %122, 0, !dbg !3819
  br i1 %123, label %128, label %124, !dbg !3820

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !3821
  %126 = inttoptr i64 %125 to i16*, !dbg !3822
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !3823
  br label %128, !dbg !3824

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !3825

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !3686, metadata !DIExpression()), !dbg !3826
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3827, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !772, metadata !DIExpression()) #11, !dbg !3827
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !771, metadata !DIExpression()) #11, !dbg !3829
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !3692, metadata !DIExpression()), !dbg !3826
  %131 = tail call i32 @nk_vc_is_active() #12, !dbg !3830
  %132 = icmp eq i32 %131, 0, !dbg !3830
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3831
  %134 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3832
  call void @llvm.dbg.value(metadata i64 %134, metadata !3460, metadata !DIExpression()) #11, !dbg !3836
  %135 = icmp eq i64 %134, 0, !dbg !3837
  br i1 %135, label %141, label %136, !dbg !3838

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !3839
  %138 = inttoptr i64 %137 to i16*, !dbg !3840
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !3841
  %140 = icmp eq i16 %139, 0, !dbg !3842
  br i1 %140, label %141, label %142, !dbg !3831

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !3831

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !3831
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3831
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !3831
  br i1 %132, label %163, label %147, !dbg !3843

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !3844

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !3844
  %150 = load i64, i64* %149, align 32, !dbg !3844
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !3844
  %152 = load i8, i8* %151, align 8, !dbg !3844
  %153 = icmp eq i8 %152, 0, !dbg !3844
  br i1 %153, label %154, label %159, !dbg !3844

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !3844
  %156 = load i8, i8* %155, align 64, !dbg !3844
  %157 = icmp eq i8 %156, 0, !dbg !3844
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !3844
  br label %159, !dbg !3844

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !3844
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3844
  br label %179, !dbg !3844

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !3845

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !3845
  %166 = load i64, i64* %165, align 32, !dbg !3845
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !3845
  %168 = load i8, i8* %167, align 8, !dbg !3845
  %169 = icmp eq i8 %168, 0, !dbg !3845
  br i1 %169, label %170, label %175, !dbg !3845

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !3845
  %172 = load i8, i8* %171, align 64, !dbg !3845
  %173 = icmp eq i8 %172, 0, !dbg !3845
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !3845
  br label %175, !dbg !3845

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !3845
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3845
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %180, metadata !3480, metadata !DIExpression()) #11, !dbg !3849
  %181 = icmp eq i64 %180, 0, !dbg !3850
  br i1 %181, label %212, label %182, !dbg !3851

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !3852
  %184 = inttoptr i64 %183 to i16*, !dbg !3853
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !3854
  br label %212, !dbg !3855

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !3705, metadata !DIExpression()), !dbg !3856
  %187 = tail call i32 @nk_vc_is_active() #12, !dbg !3857
  %188 = icmp eq i32 %187, 0, !dbg !3857
  %189 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %189, metadata !3460, metadata !DIExpression()) #11, !dbg !3864
  %190 = icmp eq i64 %189, 0, !dbg !3865
  br i1 %190, label %196, label %191, !dbg !3866

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !3867
  %193 = inttoptr i64 %192 to i16*, !dbg !3868
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !3869
  %195 = icmp eq i16 %194, 0, !dbg !3870
  br i1 %195, label %196, label %197, !dbg !3871

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !3871

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !3871
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3871
  br i1 %188, label %203, label %201, !dbg !3872

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3873
  br label %205, !dbg !3873

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3875
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %206, metadata !3480, metadata !DIExpression()) #11, !dbg !3880
  %207 = icmp eq i64 %206, 0, !dbg !3881
  br i1 %207, label %212, label %208, !dbg !3882

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !3883
  %210 = inttoptr i64 %209 to i16*, !dbg !3884
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !3885
  br label %212, !dbg !3886

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !3887
  ret i32 %213, !dbg !3888
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !3889 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !3891, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i8** undef, metadata !3892, metadata !DIExpression()), !dbg !4006
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4007, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !772, metadata !DIExpression()) #11, !dbg !4007
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !771, metadata !DIExpression()) #11, !dbg !4009
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !4010
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !4011
  %8 = icmp eq i32 %7, 0, !dbg !4011
  br i1 %8, label %111, label %9, !dbg !4012

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4013
  %11 = icmp eq i64 %10, 0, !dbg !4015
  %12 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4016
  call void @llvm.dbg.value(metadata i64 %12, metadata !3420, metadata !DIExpression()) #11, !dbg !4019
  %13 = icmp eq i64 %12, 0, !dbg !4020
  br i1 %13, label %19, label %14, !dbg !4021

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !4022
  %16 = inttoptr i64 %15 to i16*, !dbg !4023
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !4024
  %18 = zext i16 %17 to i32, !dbg !4024
  br label %19, !dbg !4025

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !4026
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4027
  call void @llvm.dbg.value(metadata i64 %21, metadata !3436, metadata !DIExpression()) #11, !dbg !4030
  %22 = icmp eq i64 %21, 0, !dbg !4031
  br i1 %22, label %27, label %23, !dbg !4032

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !4033
  %25 = inttoptr i64 %24 to i16*, !dbg !4034
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !4035
  br label %27, !dbg !4036

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !4037

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3893, metadata !DIExpression()), !dbg !4038
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4039, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !772, metadata !DIExpression()) #11, !dbg !4039
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !771, metadata !DIExpression()) #11, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !3899, metadata !DIExpression()), !dbg !4038
  %30 = tail call i32 @nk_vc_is_active() #12, !dbg !4042
  %31 = icmp eq i32 %30, 0, !dbg !4042
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4043
  %33 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %33, metadata !3460, metadata !DIExpression()) #11, !dbg !4048
  %34 = icmp eq i64 %33, 0, !dbg !4049
  br i1 %34, label %40, label %35, !dbg !4050

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !4051
  %37 = inttoptr i64 %36 to i16*, !dbg !4052
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !4053
  %39 = icmp eq i16 %38, 0, !dbg !4054
  br i1 %39, label %40, label %41, !dbg !4043

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !4043

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !4043
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4043
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !4043
  br i1 %31, label %62, label %46, !dbg !4055

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !4056

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !4056
  %49 = load i64, i64* %48, align 32, !dbg !4056
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !4056
  %51 = load i8, i8* %50, align 8, !dbg !4056
  %52 = icmp eq i8 %51, 0, !dbg !4056
  br i1 %52, label %53, label %58, !dbg !4056

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !4056
  %55 = load i8, i8* %54, align 64, !dbg !4056
  %56 = icmp eq i8 %55, 0, !dbg !4056
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !4056
  br label %58, !dbg !4056

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !4056
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !4056
  br label %78, !dbg !4056

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !4057

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !4057
  %65 = load i64, i64* %64, align 32, !dbg !4057
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !4057
  %67 = load i8, i8* %66, align 8, !dbg !4057
  %68 = icmp eq i8 %67, 0, !dbg !4057
  br i1 %68, label %69, label %74, !dbg !4057

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !4057
  %71 = load i8, i8* %70, align 64, !dbg !4057
  %72 = icmp eq i8 %71, 0, !dbg !4057
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !4057
  br label %74, !dbg !4057

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !4057
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !4057
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4058
  call void @llvm.dbg.value(metadata i64 %79, metadata !3480, metadata !DIExpression()) #11, !dbg !4061
  %80 = icmp eq i64 %79, 0, !dbg !4062
  br i1 %80, label %449, label %81, !dbg !4063

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !4064
  %83 = inttoptr i64 %82 to i16*, !dbg !4065
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !4066
  br label %449, !dbg !4067

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3912, metadata !DIExpression()), !dbg !4068
  %86 = tail call i32 @nk_vc_is_active() #12, !dbg !4069
  %87 = icmp eq i32 %86, 0, !dbg !4069
  %88 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4072
  call void @llvm.dbg.value(metadata i64 %88, metadata !3460, metadata !DIExpression()) #11, !dbg !4076
  %89 = icmp eq i64 %88, 0, !dbg !4077
  br i1 %89, label %95, label %90, !dbg !4078

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !4079
  %92 = inttoptr i64 %91 to i16*, !dbg !4080
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !4081
  %94 = icmp eq i16 %93, 0, !dbg !4082
  br i1 %94, label %95, label %96, !dbg !4083

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !4083

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !4083
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4083
  br i1 %87, label %102, label %100, !dbg !4084

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !4085
  br label %104, !dbg !4085

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !4087
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4089
  call void @llvm.dbg.value(metadata i64 %105, metadata !3480, metadata !DIExpression()) #11, !dbg !4092
  %106 = icmp eq i64 %105, 0, !dbg !4093
  br i1 %106, label %449, label %107, !dbg !4094

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !4095
  %109 = inttoptr i64 %108 to i16*, !dbg !4096
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !4097
  br label %449, !dbg !4098

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !4099
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #11, !dbg !4099
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !4100
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !4100
  store i64 100000000, i64* %113, align 8, !dbg !4100
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !3914, metadata !DIExpression(DW_OP_deref)), !dbg !4100
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #12, !dbg !4101
  %115 = icmp eq i32 %114, 0, !dbg !4101
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4102
  br i1 %115, label %219, label %117, !dbg !4103

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !4104
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %119, metadata !3420, metadata !DIExpression()) #11, !dbg !4108
  %120 = icmp eq i64 %119, 0, !dbg !4109
  br i1 %120, label %126, label %121, !dbg !4110

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !4111
  %123 = inttoptr i64 %122 to i16*, !dbg !4112
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !4113
  %125 = zext i16 %124 to i32, !dbg !4113
  br label %126, !dbg !4114

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !4115
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4116
  call void @llvm.dbg.value(metadata i64 %128, metadata !3436, metadata !DIExpression()) #11, !dbg !4119
  %129 = icmp eq i64 %128, 0, !dbg !4120
  br i1 %129, label %134, label %130, !dbg !4121

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !4122
  %132 = inttoptr i64 %131 to i16*, !dbg !4123
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !4124
  br label %134, !dbg !4125

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !4126

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3940, metadata !DIExpression()), !dbg !4127
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4128, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !4128
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !4130
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3946, metadata !DIExpression()), !dbg !4127
  %137 = call i32 @nk_vc_is_active() #12, !dbg !4131
  %138 = icmp eq i32 %137, 0, !dbg !4131
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4132
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %140, metadata !3460, metadata !DIExpression()) #11, !dbg !4137
  %141 = icmp eq i64 %140, 0, !dbg !4138
  br i1 %141, label %147, label %142, !dbg !4139

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !4140
  %144 = inttoptr i64 %143 to i16*, !dbg !4141
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !4142
  %146 = icmp eq i16 %145, 0, !dbg !4143
  br i1 %146, label %147, label %148, !dbg !4132

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !4132

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !4132
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4132
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !4132
  br i1 %138, label %169, label %153, !dbg !4144

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !4145

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4145
  %156 = load i64, i64* %155, align 32, !dbg !4145
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4145
  %158 = load i8, i8* %157, align 8, !dbg !4145
  %159 = icmp eq i8 %158, 0, !dbg !4145
  br i1 %159, label %160, label %165, !dbg !4145

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4145
  %162 = load i8, i8* %161, align 64, !dbg !4145
  %163 = icmp eq i8 %162, 0, !dbg !4145
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !4145
  br label %165, !dbg !4145

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !4145
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !4145
  br label %185, !dbg !4145

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !4146

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4146
  %172 = load i64, i64* %171, align 32, !dbg !4146
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4146
  %174 = load i8, i8* %173, align 8, !dbg !4146
  %175 = icmp eq i8 %174, 0, !dbg !4146
  br i1 %175, label %176, label %181, !dbg !4146

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4146
  %178 = load i8, i8* %177, align 64, !dbg !4146
  %179 = icmp eq i8 %178, 0, !dbg !4146
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !4146
  br label %181, !dbg !4146

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !4146
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !4146
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %186, metadata !3480, metadata !DIExpression()) #11, !dbg !4150
  %187 = icmp eq i64 %186, 0, !dbg !4151
  br i1 %187, label %218, label %188, !dbg !4152

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !4153
  %190 = inttoptr i64 %189 to i16*, !dbg !4154
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !4155
  br label %218, !dbg !4156

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3959, metadata !DIExpression()), !dbg !4157
  %193 = call i32 @nk_vc_is_active() #12, !dbg !4158
  %194 = icmp eq i32 %193, 0, !dbg !4158
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %195, metadata !3460, metadata !DIExpression()) #11, !dbg !4165
  %196 = icmp eq i64 %195, 0, !dbg !4166
  br i1 %196, label %202, label %197, !dbg !4167

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !4168
  %199 = inttoptr i64 %198 to i16*, !dbg !4169
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !4170
  %201 = icmp eq i16 %200, 0, !dbg !4171
  br i1 %201, label %202, label %203, !dbg !4172

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !4172

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !4172
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4172
  br i1 %194, label %209, label %207, !dbg !4173

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !4174
  br label %211, !dbg !4174

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !4176
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %212, metadata !3480, metadata !DIExpression()) #11, !dbg !4181
  %213 = icmp eq i64 %212, 0, !dbg !4182
  br i1 %213, label %218, label %214, !dbg !4183

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !4184
  %216 = inttoptr i64 %215 to i16*, !dbg !4185
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !4186
  br label %218, !dbg !4187

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #13, !dbg !4188
  unreachable, !dbg !4188

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !4189
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !4192
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !4192
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !3961, metadata !DIExpression()), !dbg !4193
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !4194
  br i1 %223, label %224, label %326, !dbg !4195

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4196
  %226 = icmp eq i64 %225, 0, !dbg !4198
  %227 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4199
  call void @llvm.dbg.value(metadata i64 %227, metadata !3420, metadata !DIExpression()) #11, !dbg !4202
  %228 = icmp eq i64 %227, 0, !dbg !4203
  br i1 %228, label %234, label %229, !dbg !4204

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !4205
  %231 = inttoptr i64 %230 to i16*, !dbg !4206
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !4207
  %233 = zext i16 %232 to i32, !dbg !4207
  br label %234, !dbg !4208

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !4209
  %236 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %236, metadata !3436, metadata !DIExpression()) #11, !dbg !4213
  %237 = icmp eq i64 %236, 0, !dbg !4214
  br i1 %237, label %242, label %238, !dbg !4215

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !4216
  %240 = inttoptr i64 %239 to i16*, !dbg !4217
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !4218
  br label %242, !dbg !4219

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !4220

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3962, metadata !DIExpression()), !dbg !4221
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4222, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !772, metadata !DIExpression()) #11, !dbg !4222
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !771, metadata !DIExpression()) #11, !dbg !4224
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !3968, metadata !DIExpression()), !dbg !4221
  %245 = call i32 @nk_vc_is_active() #12, !dbg !4225
  %246 = icmp eq i32 %245, 0, !dbg !4225
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4226
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %248, metadata !3460, metadata !DIExpression()) #11, !dbg !4231
  %249 = icmp eq i64 %248, 0, !dbg !4232
  br i1 %249, label %255, label %250, !dbg !4233

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !4234
  %252 = inttoptr i64 %251 to i16*, !dbg !4235
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !4236
  %254 = icmp eq i16 %253, 0, !dbg !4237
  br i1 %254, label %255, label %256, !dbg !4226

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !4226

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !4226
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4226
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !4226
  br i1 %246, label %277, label %261, !dbg !4238

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !4239

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !4239
  %264 = load i64, i64* %263, align 32, !dbg !4239
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !4239
  %266 = load i8, i8* %265, align 8, !dbg !4239
  %267 = icmp eq i8 %266, 0, !dbg !4239
  br i1 %267, label %268, label %273, !dbg !4239

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !4239
  %270 = load i8, i8* %269, align 64, !dbg !4239
  %271 = icmp eq i8 %270, 0, !dbg !4239
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !4239
  br label %273, !dbg !4239

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !4239
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !4239
  br label %293, !dbg !4239

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !4240

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !4240
  %280 = load i64, i64* %279, align 32, !dbg !4240
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !4240
  %282 = load i8, i8* %281, align 8, !dbg !4240
  %283 = icmp eq i8 %282, 0, !dbg !4240
  br i1 %283, label %284, label %289, !dbg !4240

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !4240
  %286 = load i8, i8* %285, align 64, !dbg !4240
  %287 = icmp eq i8 %286, 0, !dbg !4240
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !4240
  br label %289, !dbg !4240

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !4240
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !4240
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4241
  call void @llvm.dbg.value(metadata i64 %294, metadata !3480, metadata !DIExpression()) #11, !dbg !4244
  %295 = icmp eq i64 %294, 0, !dbg !4245
  br i1 %295, label %326, label %296, !dbg !4246

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !4247
  %298 = inttoptr i64 %297 to i16*, !dbg !4248
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !4249
  br label %326, !dbg !4250

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3981, metadata !DIExpression()), !dbg !4251
  %301 = call i32 @nk_vc_is_active() #12, !dbg !4252
  %302 = icmp eq i32 %301, 0, !dbg !4252
  %303 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4255
  call void @llvm.dbg.value(metadata i64 %303, metadata !3460, metadata !DIExpression()) #11, !dbg !4259
  %304 = icmp eq i64 %303, 0, !dbg !4260
  br i1 %304, label %310, label %305, !dbg !4261

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !4262
  %307 = inttoptr i64 %306 to i16*, !dbg !4263
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !4264
  %309 = icmp eq i16 %308, 0, !dbg !4265
  br i1 %309, label %310, label %311, !dbg !4266

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !4266

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !4266
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4266
  br i1 %302, label %317, label %315, !dbg !4267

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !4268
  br label %319, !dbg !4268

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !4270
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %320, metadata !3480, metadata !DIExpression()) #11, !dbg !4275
  %321 = icmp eq i64 %320, 0, !dbg !4276
  br i1 %321, label %326, label %322, !dbg !4277

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !4278
  %324 = inttoptr i64 %323 to i16*, !dbg !4279
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !4280
  br label %326, !dbg !4281

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4282, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !772, metadata !DIExpression()) #11, !dbg !4282
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !771, metadata !DIExpression()) #11, !dbg !4284
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !4285
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !4286
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !4287
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #11, !dbg !4287
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3983, metadata !DIExpression(DW_OP_deref)), !dbg !4288
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !4289
  %331 = icmp slt i32 %330, 0, !dbg !4290
  br i1 %331, label %332, label %434, !dbg !4291

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4292
  %334 = icmp eq i64 %333, 0, !dbg !4294
  %335 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4295
  call void @llvm.dbg.value(metadata i64 %335, metadata !3420, metadata !DIExpression()) #11, !dbg !4298
  %336 = icmp eq i64 %335, 0, !dbg !4299
  br i1 %336, label %342, label %337, !dbg !4300

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !4301
  %339 = inttoptr i64 %338 to i16*, !dbg !4302
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !4303
  %341 = zext i16 %340 to i32, !dbg !4303
  br label %342, !dbg !4304

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !4305
  %344 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %344, metadata !3436, metadata !DIExpression()) #11, !dbg !4309
  %345 = icmp eq i64 %344, 0, !dbg !4310
  br i1 %345, label %350, label %346, !dbg !4311

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !4312
  %348 = inttoptr i64 %347 to i16*, !dbg !4313
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !4314
  br label %350, !dbg !4315

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !4316

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !3984, metadata !DIExpression()), !dbg !4317
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4318, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !772, metadata !DIExpression()) #11, !dbg !4318
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !771, metadata !DIExpression()) #11, !dbg !4320
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !3990, metadata !DIExpression()), !dbg !4317
  %353 = call i32 @nk_vc_is_active() #12, !dbg !4321
  %354 = icmp eq i32 %353, 0, !dbg !4321
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4322
  %356 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %356, metadata !3460, metadata !DIExpression()) #11, !dbg !4327
  %357 = icmp eq i64 %356, 0, !dbg !4328
  br i1 %357, label %363, label %358, !dbg !4329

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !4330
  %360 = inttoptr i64 %359 to i16*, !dbg !4331
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !4332
  %362 = icmp eq i16 %361, 0, !dbg !4333
  br i1 %362, label %363, label %364, !dbg !4322

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !4322

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !4322
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4322
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !4322
  br i1 %354, label %385, label %369, !dbg !4334

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !4335

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !4335
  %372 = load i64, i64* %371, align 32, !dbg !4335
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !4335
  %374 = load i8, i8* %373, align 8, !dbg !4335
  %375 = icmp eq i8 %374, 0, !dbg !4335
  br i1 %375, label %376, label %381, !dbg !4335

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !4335
  %378 = load i8, i8* %377, align 64, !dbg !4335
  %379 = icmp eq i8 %378, 0, !dbg !4335
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !4335
  br label %381, !dbg !4335

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !4335
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !4335
  br label %401, !dbg !4335

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !4336

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !4336
  %388 = load i64, i64* %387, align 32, !dbg !4336
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !4336
  %390 = load i8, i8* %389, align 8, !dbg !4336
  %391 = icmp eq i8 %390, 0, !dbg !4336
  br i1 %391, label %392, label %397, !dbg !4336

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !4336
  %394 = load i8, i8* %393, align 64, !dbg !4336
  %395 = icmp eq i8 %394, 0, !dbg !4336
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !4336
  br label %397, !dbg !4336

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !4336
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !4336
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4337
  call void @llvm.dbg.value(metadata i64 %402, metadata !3480, metadata !DIExpression()) #11, !dbg !4340
  %403 = icmp eq i64 %402, 0, !dbg !4341
  br i1 %403, label %434, label %404, !dbg !4342

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !4343
  %406 = inttoptr i64 %405 to i16*, !dbg !4344
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !4345
  br label %434, !dbg !4346

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !4003, metadata !DIExpression()), !dbg !4347
  %409 = call i32 @nk_vc_is_active() #12, !dbg !4348
  %410 = icmp eq i32 %409, 0, !dbg !4348
  %411 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4351
  call void @llvm.dbg.value(metadata i64 %411, metadata !3460, metadata !DIExpression()) #11, !dbg !4355
  %412 = icmp eq i64 %411, 0, !dbg !4356
  br i1 %412, label %418, label %413, !dbg !4357

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !4358
  %415 = inttoptr i64 %414 to i16*, !dbg !4359
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !4360
  %417 = icmp eq i16 %416, 0, !dbg !4361
  br i1 %417, label %418, label %419, !dbg !4362

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !4362

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !4362
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4362
  br i1 %410, label %425, label %423, !dbg !4363

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !4364
  br label %427, !dbg !4364

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !4366
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4368
  call void @llvm.dbg.value(metadata i64 %428, metadata !3480, metadata !DIExpression()) #11, !dbg !4371
  %429 = icmp eq i64 %428, 0, !dbg !4372
  br i1 %429, label %434, label %430, !dbg !4373

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !4374
  %432 = inttoptr i64 %431 to i16*, !dbg !4375
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !4376
  br label %434, !dbg !4377

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !4378
  %436 = load i64, i64* %435, align 8, !dbg !4378
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3983, metadata !DIExpression(DW_OP_deref)), !dbg !4288
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !4379
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !4380
  store i64 %436, i64* %438, align 8, !dbg !4380
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3983, metadata !DIExpression(DW_OP_deref)), !dbg !4288
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !4381
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !4382
  store i64 %436, i64* %440, align 8, !dbg !4382
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !4383
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3983, metadata !DIExpression()), !dbg !4288
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !4384
  store i32 1, i32* %442, align 8, !dbg !4385
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3983, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3013, metadata !DIExpression()) #11, !dbg !4386
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !4388
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !4388
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !4389
  %446 = load i8*, i8** %445, align 8, !dbg !4389
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !4390
  %448 = load i8**, i8*** %447, align 8, !dbg !4390
  call void %444(i8* %446, i8** %448) #12, !dbg !4391
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #12, !dbg !4392
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #11, !dbg !4393
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #11, !dbg !4393
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !4393
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !4394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4396, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8** %1, metadata !4397, metadata !DIExpression()), !dbg !4399
  br label %3, !dbg !4400

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4401
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4407
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4408
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4408
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !4409
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !4409
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4410, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !4410
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !4412
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !4413
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !4414

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4415
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !4420
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !4421
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !4421
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !4422
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1031, metadata !DIExpression()) #11, !dbg !4423
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !4424
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1049, metadata !DIExpression()) #11, !dbg !4425
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !4427
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !4427
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !4428
  br i1 %20, label %33, label %21, !dbg !4429

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !4430
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !4430
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !4430
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1033, metadata !DIExpression()) #11, !dbg !4430
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1032, metadata !DIExpression()) #11, !dbg !4424
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !4431
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1061, metadata !DIExpression()) #11, !dbg !4432
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !4434
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !4434
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !4435
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1068, metadata !DIExpression()) #11, !dbg !4436
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1073, metadata !DIExpression()) #11, !dbg !4438
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !4439
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !4440
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !4441
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !4442
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !4443
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !4445
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !4445
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !4446
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !4446
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1032, metadata !DIExpression()) #11, !dbg !4424
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1010, metadata !DIExpression()) #11, !dbg !4447
  %32 = icmp eq %struct.list_head** %22, null, !dbg !4448
  br i1 %32, label %33, label %54, !dbg !4449

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4450
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !4454
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !4455
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !4455
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !4456
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !4456
  %40 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4457
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !4461
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !4462
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !4462
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !4463
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !4463
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !4464
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !4465

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4466
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !4470
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !4471
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !4471
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !4472
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !4472
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1010, metadata !DIExpression()) #11, !dbg !4447
  br label %54, !dbg !4473

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !4474
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1010, metadata !DIExpression()) #11, !dbg !4447
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !4475
  br label %nk_fiber_yield.exit, !dbg !4476

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !4474
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4477
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4482
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4483
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4483
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !4484
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !4485, metadata !DIExpression()), !dbg !4489
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !4491
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !4491
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !4488, metadata !DIExpression()), !dbg !4492
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !4493
  br i1 %65, label %66, label %70, !dbg !4494

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !4495
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !4495
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !4496
  br i1 %69, label %71, label %70, !dbg !4497

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !4498, !llvm.loop !4499

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #12, !dbg !4501
  br label %70, !dbg !4503
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !602 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !601, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i8* %1, metadata !606, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i8** %2, metadata !607, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i64 %3, metadata !608, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !609, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()), !dbg !4509
  %6 = icmp eq i64 %3, 0, !dbg !4510
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %7, metadata !611, metadata !DIExpression()), !dbg !4511
  %8 = tail call i8* @kmem_malloc(i64 152) #12, !dbg !4512
  call void @llvm.dbg.value(metadata i8* %8, metadata !612, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i8* %8, metadata !610, metadata !DIExpression()), !dbg !4509
  %9 = icmp eq i8* %8, null, !dbg !4513
  br i1 %9, label %104, label %10, !dbg !4514

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #12, !dbg !4515
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !4516
  %13 = bitcast i8* %12 to i32*, !dbg !4516
  store i32 0, i32* %13, align 4, !dbg !4517
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !4518
  %15 = bitcast i8* %14 to i64*, !dbg !4518
  store i64 %7, i64* %15, align 8, !dbg !4519
  %16 = tail call i8* @kmem_malloc(i64 %7) #12, !dbg !4520
  call void @llvm.dbg.value(metadata i8* %16, metadata !614, metadata !DIExpression()), !dbg !4520
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !4521
  %18 = bitcast i8* %17 to i8**, !dbg !4521
  store i8* %16, i8** %18, align 8, !dbg !4522
  %19 = icmp eq i8* %16, null, !dbg !4523
  br i1 %19, label %20, label %21, !dbg !4524

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #12, !dbg !4525
  br label %104, !dbg !4526

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !4524
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !4527
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !4527
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !4528
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !4529
  %26 = bitcast i8* %25 to i8**, !dbg !4529
  store i8* %1, i8** %26, align 8, !dbg !4530
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !4531
  %28 = bitcast i8* %27 to i8***, !dbg !4531
  store i8** %2, i8*** %28, align 8, !dbg !4532
  call void @llvm.dbg.value(metadata i8* %8, metadata !648, metadata !DIExpression()), !dbg !4533
  %29 = load i64, i64* %15, align 8, !dbg !4535
  %30 = bitcast i8* %8 to i64*, !dbg !4536
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !4539
  %31 = add i64 %22, -8, !dbg !4540
  %32 = add i64 %31, %29, !dbg !4541
  store i64 %32, i64* %30, align 8, !dbg !4541
  %33 = inttoptr i64 %32 to i64*, !dbg !4542
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !4543
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4546
  %34 = load i64, i64* %30, align 8, !dbg !4547
  %35 = add i64 %34, -8, !dbg !4547
  store i64 %35, i64* %30, align 8, !dbg !4547
  %36 = inttoptr i64 %35 to i64*, !dbg !4548
  store i64 0, i64* %36, align 8, !dbg !4549
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4552
  %37 = load i64, i64* %30, align 8, !dbg !4553
  %38 = add i64 %37, -8, !dbg !4553
  store i64 %38, i64* %30, align 8, !dbg !4553
  %39 = inttoptr i64 %38 to i64*, !dbg !4554
  store i64 0, i64* %39, align 8, !dbg !4555
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4558
  %40 = load i64, i64* %30, align 8, !dbg !4559
  %41 = add i64 %40, -8, !dbg !4559
  store i64 %41, i64* %30, align 8, !dbg !4559
  %42 = inttoptr i64 %41 to i64*, !dbg !4560
  store i64 0, i64* %42, align 8, !dbg !4561
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4564
  %43 = load i64, i64* %30, align 8, !dbg !4565
  %44 = add i64 %43, -8, !dbg !4565
  store i64 %44, i64* %30, align 8, !dbg !4565
  %45 = inttoptr i64 %44 to i64*, !dbg !4566
  store i64 0, i64* %45, align 8, !dbg !4567
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4570
  %46 = load i64, i64* %30, align 8, !dbg !4571
  %47 = add i64 %46, -8, !dbg !4571
  store i64 %47, i64* %30, align 8, !dbg !4571
  %48 = inttoptr i64 %47 to i64*, !dbg !4572
  store i64 0, i64* %48, align 8, !dbg !4573
  %49 = ptrtoint i8* %8 to i64, !dbg !4574
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %49, metadata !662, metadata !DIExpression()), !dbg !4577
  %50 = load i64, i64* %30, align 8, !dbg !4578
  %51 = add i64 %50, -8, !dbg !4578
  store i64 %51, i64* %30, align 8, !dbg !4578
  %52 = inttoptr i64 %51 to i64*, !dbg !4579
  store i64 %49, i64* %52, align 8, !dbg !4580
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4583
  %53 = load i64, i64* %30, align 8, !dbg !4584
  %54 = add i64 %53, -8, !dbg !4584
  store i64 %54, i64* %30, align 8, !dbg !4584
  %55 = inttoptr i64 %54 to i64*, !dbg !4585
  store i64 0, i64* %55, align 8, !dbg !4586
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4589
  %56 = load i64, i64* %30, align 8, !dbg !4590
  %57 = add i64 %56, -8, !dbg !4590
  store i64 %57, i64* %30, align 8, !dbg !4590
  %58 = inttoptr i64 %57 to i64*, !dbg !4591
  store i64 0, i64* %58, align 8, !dbg !4592
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4595
  %59 = load i64, i64* %30, align 8, !dbg !4596
  %60 = add i64 %59, -8, !dbg !4596
  store i64 %60, i64* %30, align 8, !dbg !4596
  %61 = inttoptr i64 %60 to i64*, !dbg !4597
  store i64 0, i64* %61, align 8, !dbg !4598
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4601
  %62 = load i64, i64* %30, align 8, !dbg !4602
  %63 = add i64 %62, -8, !dbg !4602
  store i64 %63, i64* %30, align 8, !dbg !4602
  %64 = inttoptr i64 %63 to i64*, !dbg !4603
  store i64 0, i64* %64, align 8, !dbg !4604
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4607
  %65 = load i64, i64* %30, align 8, !dbg !4608
  %66 = add i64 %65, -8, !dbg !4608
  store i64 %66, i64* %30, align 8, !dbg !4608
  %67 = inttoptr i64 %66 to i64*, !dbg !4609
  store i64 0, i64* %67, align 8, !dbg !4610
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4613
  %68 = load i64, i64* %30, align 8, !dbg !4614
  %69 = add i64 %68, -8, !dbg !4614
  store i64 %69, i64* %30, align 8, !dbg !4614
  %70 = inttoptr i64 %69 to i64*, !dbg !4615
  store i64 0, i64* %70, align 8, !dbg !4616
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4619
  %71 = load i64, i64* %30, align 8, !dbg !4620
  %72 = add i64 %71, -8, !dbg !4620
  store i64 %72, i64* %30, align 8, !dbg !4620
  %73 = inttoptr i64 %72 to i64*, !dbg !4621
  store i64 0, i64* %73, align 8, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4625
  %74 = load i64, i64* %30, align 8, !dbg !4626
  %75 = add i64 %74, -8, !dbg !4626
  store i64 %75, i64* %30, align 8, !dbg !4626
  %76 = inttoptr i64 %75 to i64*, !dbg !4627
  store i64 0, i64* %76, align 8, !dbg !4628
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4631
  %77 = load i64, i64* %30, align 8, !dbg !4632
  %78 = add i64 %77, -8, !dbg !4632
  store i64 %78, i64* %30, align 8, !dbg !4632
  %79 = inttoptr i64 %78 to i64*, !dbg !4633
  store i64 0, i64* %79, align 8, !dbg !4634
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !4635
  br i1 %80, label %83, label %81, !dbg !4636

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !4637
  store i8* %8, i8** %82, align 8, !dbg !4637
  br label %83, !dbg !4638

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4639, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !772, metadata !DIExpression()) #11, !dbg !4639
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !771, metadata !DIExpression()) #11, !dbg !4641
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !4642
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !4642
  %87 = load i64, i64* %86, align 8, !dbg !4642
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !4643
  %89 = bitcast i8* %88 to i64*, !dbg !4644
  store i64 %87, i64* %89, align 8, !dbg !4644
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !4645
  call void @llvm.dbg.value(metadata i8* %90, metadata !780, metadata !DIExpression()), !dbg !4646
  %91 = bitcast i8* %90 to i8**, !dbg !4648
  store i8* %90, i8** %91, align 8, !dbg !4648
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !4649
  %93 = bitcast i8* %92 to i8**, !dbg !4650
  store i8* %90, i8** %93, align 8, !dbg !4650
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !4651
  %95 = bitcast i8* %94 to i32*, !dbg !4651
  store i32 0, i32* %95, align 8, !dbg !4652
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !4653
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()), !dbg !4654
  %97 = bitcast i8* %96 to i8**, !dbg !4656
  store i8* %96, i8** %97, align 8, !dbg !4656
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !4657
  %99 = bitcast i8* %98 to i8**, !dbg !4658
  store i8* %96, i8** %99, align 8, !dbg !4658
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !4659
  call void @llvm.dbg.value(metadata i8* %100, metadata !780, metadata !DIExpression()), !dbg !4660
  %101 = bitcast i8* %100 to i8**, !dbg !4662
  store i8* %100, i8** %101, align 8, !dbg !4662
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !4663
  %103 = bitcast i8* %102 to i8**, !dbg !4664
  store i8* %100, i8** %103, align 8, !dbg !4664
  br label %104, !dbg !4665

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !4666
  ret i32 %105, !dbg !4667
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !1008 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4668
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !4672
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !4673
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !4673
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !4674
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !4674
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4675, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !772, metadata !DIExpression()) #11, !dbg !4675
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !771, metadata !DIExpression()) #11, !dbg !4677
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !4678
  br i1 %8, label %9, label %54, !dbg !4679

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4680
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !4685
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4686
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4686
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4687
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1031, metadata !DIExpression()) #11, !dbg !4688
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !4689
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1049, metadata !DIExpression()) #11, !dbg !4690
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !4692
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !4692
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !4693
  br i1 %17, label %30, label %18, !dbg !4694

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !4695
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !4695
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !4695
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1033, metadata !DIExpression()) #11, !dbg !4695
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1032, metadata !DIExpression()) #11, !dbg !4689
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !4696
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1061, metadata !DIExpression()) #11, !dbg !4697
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !4699
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !4699
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !4700
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1068, metadata !DIExpression()) #11, !dbg !4701
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1073, metadata !DIExpression()) #11, !dbg !4703
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !4704
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !4705
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !4706
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !4707
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !780, metadata !DIExpression()) #11, !dbg !4708
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !4710
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !4710
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !4711
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !4711
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1032, metadata !DIExpression()) #11, !dbg !4689
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1010, metadata !DIExpression()), !dbg !4712
  %29 = icmp eq %struct.list_head** %19, null, !dbg !4713
  br i1 %29, label %30, label %51, !dbg !4714

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4715
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4719
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4720
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4720
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !4721
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !4721
  %37 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4722
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !4726
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !4727
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !4727
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !4728
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !4728
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !4729
  br i1 %43, label %54, label %44, !dbg !4730

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4731
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !4735
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !4736
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !4736
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !4737
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !4737
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !1010, metadata !DIExpression()), !dbg !4712
  br label %51, !dbg !4738

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !4739
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !1010, metadata !DIExpression()), !dbg !4712
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #10, !dbg !4740
  br label %54, !dbg !4741

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !4739
  ret i32 %55, !dbg !4742
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !4743 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4786
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4788
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !4745, metadata !DIExpression()), !dbg !4789
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4790
  %5 = icmp eq i64 %4, 0, !dbg !4792
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4793
  call void @llvm.dbg.value(metadata i64 %6, metadata !3420, metadata !DIExpression()) #11, !dbg !4796
  %7 = icmp eq i64 %6, 0, !dbg !4797
  br i1 %7, label %13, label %8, !dbg !4798

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !4799
  %10 = inttoptr i64 %9 to i16*, !dbg !4800
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !4801
  %12 = zext i16 %11 to i32, !dbg !4801
  br label %13, !dbg !4802

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !4803
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4804
  call void @llvm.dbg.value(metadata i64 %15, metadata !3436, metadata !DIExpression()) #11, !dbg !4807
  %16 = icmp eq i64 %15, 0, !dbg !4808
  br i1 %16, label %21, label %17, !dbg !4809

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !4810
  %19 = inttoptr i64 %18 to i16*, !dbg !4811
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !4812
  br label %21, !dbg !4813

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !4814

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !4746, metadata !DIExpression()), !dbg !4815
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4816, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !772, metadata !DIExpression()) #11, !dbg !4816
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !771, metadata !DIExpression()) #11, !dbg !4818
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !4750, metadata !DIExpression()), !dbg !4815
  %24 = tail call i32 @nk_vc_is_active() #12, !dbg !4819
  %25 = icmp eq i32 %24, 0, !dbg !4819
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4820
  %27 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4821
  call void @llvm.dbg.value(metadata i64 %27, metadata !3460, metadata !DIExpression()) #11, !dbg !4825
  %28 = icmp eq i64 %27, 0, !dbg !4826
  br i1 %28, label %34, label %29, !dbg !4827

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !4828
  %31 = inttoptr i64 %30 to i16*, !dbg !4829
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !4830
  %33 = icmp eq i16 %32, 0, !dbg !4831
  br i1 %33, label %34, label %35, !dbg !4820

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !4820

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !4820
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4820
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !4820
  br i1 %25, label %58, label %40, !dbg !4832

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !4833

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !4833
  %43 = load i64, i64* %42, align 32, !dbg !4833
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !4833
  %45 = load i8, i8* %44, align 8, !dbg !4833
  %46 = icmp eq i8 %45, 0, !dbg !4833
  br i1 %46, label %47, label %52, !dbg !4833

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !4833
  %49 = load i8, i8* %48, align 64, !dbg !4833
  %50 = icmp eq i8 %49, 0, !dbg !4833
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !4833
  br label %52, !dbg !4833

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !4833
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !4833
  %56 = load i32, i32* %55, align 8, !dbg !4833
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #12, !dbg !4833
  br label %76, !dbg !4833

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !4834

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !4834
  %61 = load i64, i64* %60, align 32, !dbg !4834
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !4834
  %63 = load i8, i8* %62, align 8, !dbg !4834
  %64 = icmp eq i8 %63, 0, !dbg !4834
  br i1 %64, label %65, label %70, !dbg !4834

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !4834
  %67 = load i8, i8* %66, align 64, !dbg !4834
  %68 = icmp eq i8 %67, 0, !dbg !4834
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !4834
  br label %70, !dbg !4834

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !4834
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !4834
  %74 = load i32, i32* %73, align 8, !dbg !4834
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #12, !dbg !4834
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %77, metadata !3480, metadata !DIExpression()) #11, !dbg !4838
  %78 = icmp eq i64 %77, 0, !dbg !4839
  br i1 %78, label %111, label %79, !dbg !4840

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !4841
  %81 = inttoptr i64 %80 to i16*, !dbg !4842
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !4843
  br label %111, !dbg !4844

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !4763, metadata !DIExpression()), !dbg !4845
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !4846
  %85 = icmp eq i32 %84, 0, !dbg !4846
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4849
  call void @llvm.dbg.value(metadata i64 %86, metadata !3460, metadata !DIExpression()) #11, !dbg !4853
  %87 = icmp eq i64 %86, 0, !dbg !4854
  br i1 %87, label %93, label %88, !dbg !4855

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !4856
  %90 = inttoptr i64 %89 to i16*, !dbg !4857
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !4858
  %92 = icmp eq i16 %91, 0, !dbg !4859
  br i1 %92, label %93, label %94, !dbg !4860

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !4860

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !4860
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4860
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !4860
  %99 = load i32, i32* %98, align 8, !dbg !4860
  br i1 %85, label %102, label %100, !dbg !4861

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !4862
  br label %104, !dbg !4862

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !4864
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4866
  call void @llvm.dbg.value(metadata i64 %105, metadata !3480, metadata !DIExpression()) #11, !dbg !4869
  %106 = icmp eq i64 %105, 0, !dbg !4870
  br i1 %106, label %111, label %107, !dbg !4871

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !4872
  %109 = inttoptr i64 %108 to i16*, !dbg !4873
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !4874
  br label %111, !dbg !4875

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !4876
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4876
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4907, !srcloc !4908
  call void @llvm.dbg.value(metadata i32 %113, metadata !4884, metadata !DIExpression()) #11, !dbg !4907
  call void @llvm.dbg.value(metadata i32 %113, metadata !4881, metadata !DIExpression()) #11, !dbg !4909
  call void @llvm.dbg.value(metadata i8** %1, metadata !4879, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4910
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #12, !dbg !4911
  %115 = icmp eq i32 %114, 0, !dbg !4911
  br i1 %115, label %321, label %116, !dbg !4912

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4913
  %118 = icmp eq i64 %117, 0, !dbg !4915
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4916
  call void @llvm.dbg.value(metadata i64 %119, metadata !3420, metadata !DIExpression()) #11, !dbg !4919
  %120 = icmp eq i64 %119, 0, !dbg !4920
  br i1 %120, label %126, label %121, !dbg !4921

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !4922
  %123 = inttoptr i64 %122 to i16*, !dbg !4923
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !4924
  %125 = zext i16 %124 to i32, !dbg !4924
  br label %126, !dbg !4925

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !4926
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4927
  call void @llvm.dbg.value(metadata i64 %128, metadata !3436, metadata !DIExpression()) #11, !dbg !4930
  %129 = icmp eq i64 %128, 0, !dbg !4931
  br i1 %129, label %134, label %130, !dbg !4932

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !4933
  %132 = inttoptr i64 %131 to i16*, !dbg !4934
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !4935
  br label %134, !dbg !4936

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !4937

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !4886, metadata !DIExpression()) #11, !dbg !4938
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4939, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !4939
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !4941
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !4891, metadata !DIExpression()) #11, !dbg !4938
  %137 = call i32 @nk_vc_is_active() #12, !dbg !4942
  %138 = icmp eq i32 %137, 0, !dbg !4942
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4943
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %140, metadata !3460, metadata !DIExpression()) #11, !dbg !4948
  %141 = icmp eq i64 %140, 0, !dbg !4949
  br i1 %141, label %147, label %142, !dbg !4950

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !4951
  %144 = inttoptr i64 %143 to i16*, !dbg !4952
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !4953
  %146 = icmp eq i16 %145, 0, !dbg !4954
  br i1 %146, label %147, label %148, !dbg !4943

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !4943

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !4943
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4943
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !4943
  br i1 %138, label %169, label %153, !dbg !4955

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !4956

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4956
  %156 = load i64, i64* %155, align 32, !dbg !4956
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4956
  %158 = load i8, i8* %157, align 8, !dbg !4956
  %159 = icmp eq i8 %158, 0, !dbg !4956
  br i1 %159, label %160, label %165, !dbg !4956

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4956
  %162 = load i8, i8* %161, align 64, !dbg !4956
  %163 = icmp eq i8 %162, 0, !dbg !4956
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !4956
  br label %165, !dbg !4956

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !4956
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4956
  br label %185, !dbg !4956

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !4957

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4957
  %172 = load i64, i64* %171, align 32, !dbg !4957
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4957
  %174 = load i8, i8* %173, align 8, !dbg !4957
  %175 = icmp eq i8 %174, 0, !dbg !4957
  br i1 %175, label %176, label %181, !dbg !4957

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4957
  %178 = load i8, i8* %177, align 64, !dbg !4957
  %179 = icmp eq i8 %178, 0, !dbg !4957
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !4957
  br label %181, !dbg !4957

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !4957
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4957
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4958
  call void @llvm.dbg.value(metadata i64 %186, metadata !3480, metadata !DIExpression()) #11, !dbg !4961
  %187 = icmp eq i64 %186, 0, !dbg !4962
  br i1 %187, label %218, label %188, !dbg !4963

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !4964
  %190 = inttoptr i64 %189 to i16*, !dbg !4965
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !4966
  br label %218, !dbg !4967

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !4904, metadata !DIExpression()) #11, !dbg !4968
  %193 = call i32 @nk_vc_is_active() #12, !dbg !4969
  %194 = icmp eq i32 %193, 0, !dbg !4969
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4972
  call void @llvm.dbg.value(metadata i64 %195, metadata !3460, metadata !DIExpression()) #11, !dbg !4976
  %196 = icmp eq i64 %195, 0, !dbg !4977
  br i1 %196, label %202, label %197, !dbg !4978

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !4979
  %199 = inttoptr i64 %198 to i16*, !dbg !4980
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !4981
  %201 = icmp eq i16 %200, 0, !dbg !4982
  br i1 %201, label %202, label %203, !dbg !4983

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !4983

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !4983
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4983
  br i1 %194, label %209, label %207, !dbg !4984

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4985
  br label %211, !dbg !4985

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4987
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4989
  call void @llvm.dbg.value(metadata i64 %212, metadata !3480, metadata !DIExpression()) #11, !dbg !4992
  %213 = icmp eq i64 %212, 0, !dbg !4993
  br i1 %213, label %218, label %214, !dbg !4994

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !4995
  %216 = inttoptr i64 %215 to i16*, !dbg !4996
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !4997
  br label %218, !dbg !4998

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4999
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5000
  %220 = icmp eq i64 %219, 0, !dbg !5002
  %221 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5003
  call void @llvm.dbg.value(metadata i64 %221, metadata !3420, metadata !DIExpression()) #11, !dbg !5006
  %222 = icmp eq i64 %221, 0, !dbg !5007
  br i1 %222, label %228, label %223, !dbg !5008

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !5009
  %225 = inttoptr i64 %224 to i16*, !dbg !5010
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !5011
  %227 = zext i16 %226 to i32, !dbg !5011
  br label %228, !dbg !5012

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !5013
  %230 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5014
  call void @llvm.dbg.value(metadata i64 %230, metadata !3436, metadata !DIExpression()) #11, !dbg !5017
  %231 = icmp eq i64 %230, 0, !dbg !5018
  br i1 %231, label %236, label %232, !dbg !5019

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !5020
  %234 = inttoptr i64 %233 to i16*, !dbg !5021
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !5022
  br label %236, !dbg !5023

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !5024

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !4765, metadata !DIExpression()), !dbg !5025
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !5026, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !772, metadata !DIExpression()) #11, !dbg !5026
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !771, metadata !DIExpression()) #11, !dbg !5028
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !4771, metadata !DIExpression()), !dbg !5025
  %239 = call i32 @nk_vc_is_active() #12, !dbg !5029
  %240 = icmp eq i32 %239, 0, !dbg !5029
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !5030
  %242 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5031
  call void @llvm.dbg.value(metadata i64 %242, metadata !3460, metadata !DIExpression()) #11, !dbg !5035
  %243 = icmp eq i64 %242, 0, !dbg !5036
  br i1 %243, label %249, label %244, !dbg !5037

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !5038
  %246 = inttoptr i64 %245 to i16*, !dbg !5039
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !5040
  %248 = icmp eq i16 %247, 0, !dbg !5041
  br i1 %248, label %249, label %250, !dbg !5030

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !5030

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !5030
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !5030
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !5030
  br i1 %240, label %271, label %255, !dbg !5042

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !5043

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !5043
  %258 = load i64, i64* %257, align 32, !dbg !5043
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !5043
  %260 = load i8, i8* %259, align 8, !dbg !5043
  %261 = icmp eq i8 %260, 0, !dbg !5043
  br i1 %261, label %262, label %267, !dbg !5043

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !5043
  %264 = load i8, i8* %263, align 64, !dbg !5043
  %265 = icmp eq i8 %264, 0, !dbg !5043
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !5043
  br label %267, !dbg !5043

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !5043
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !5043
  br label %287, !dbg !5043

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !5044

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !5044
  %274 = load i64, i64* %273, align 32, !dbg !5044
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !5044
  %276 = load i8, i8* %275, align 8, !dbg !5044
  %277 = icmp eq i8 %276, 0, !dbg !5044
  br i1 %277, label %278, label %283, !dbg !5044

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !5044
  %280 = load i8, i8* %279, align 64, !dbg !5044
  %281 = icmp eq i8 %280, 0, !dbg !5044
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !5044
  br label %283, !dbg !5044

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !5044
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !5044
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5045
  call void @llvm.dbg.value(metadata i64 %288, metadata !3480, metadata !DIExpression()) #11, !dbg !5048
  %289 = icmp eq i64 %288, 0, !dbg !5049
  br i1 %289, label %320, label %290, !dbg !5050

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !5051
  %292 = inttoptr i64 %291 to i16*, !dbg !5052
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !5053
  br label %320, !dbg !5054

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !4784, metadata !DIExpression()), !dbg !5055
  %295 = call i32 @nk_vc_is_active() #12, !dbg !5056
  %296 = icmp eq i32 %295, 0, !dbg !5056
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5059
  call void @llvm.dbg.value(metadata i64 %297, metadata !3460, metadata !DIExpression()) #11, !dbg !5063
  %298 = icmp eq i64 %297, 0, !dbg !5064
  br i1 %298, label %304, label %299, !dbg !5065

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !5066
  %301 = inttoptr i64 %300 to i16*, !dbg !5067
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !5068
  %303 = icmp eq i16 %302, 0, !dbg !5069
  br i1 %303, label %304, label %305, !dbg !5070

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !5070

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !5070
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !5070
  br i1 %296, label %311, label %309, !dbg !5071

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !5072
  br label %313, !dbg !5072

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !5074
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5076
  call void @llvm.dbg.value(metadata i64 %314, metadata !3480, metadata !DIExpression()) #11, !dbg !5079
  %315 = icmp eq i64 %314, 0, !dbg !5080
  br i1 %315, label %320, label %316, !dbg !5081

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !5082
  %318 = inttoptr i64 %317 to i16*, !dbg !5083
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !5084
  br label %320, !dbg !5085

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #13, !dbg !5086
  unreachable, !dbg !5086

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4999
  ret void, !dbg !5087
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !584 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !583, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i8** %2, metadata !590, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i64 %3, metadata !591, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i8 %4, metadata !592, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !593, metadata !DIExpression()), !dbg !5093
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #10, !dbg !5094
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !5095
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #10, !dbg !5096
  ret i32 0, !dbg !5097
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !990 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !5098
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5099
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !5104
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !5105
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !5105
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !5106
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !5106
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !5107, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !772, metadata !DIExpression()) #11, !dbg !5107
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !771, metadata !DIExpression()) #11, !dbg !5109
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !5110
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !5111

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5112
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !5117
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !5118
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !5118
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !5119
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1031, metadata !DIExpression()) #11, !dbg !5120
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !5121
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1049, metadata !DIExpression()) #11, !dbg !5122
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !5124
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !5124
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !5125
  br i1 %18, label %31, label %19, !dbg !5126

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !5127
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !5127
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !5127
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1033, metadata !DIExpression()) #11, !dbg !5127
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1032, metadata !DIExpression()) #11, !dbg !5121
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !5128
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1061, metadata !DIExpression()) #11, !dbg !5129
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !5131
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !5131
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !5132
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1068, metadata !DIExpression()) #11, !dbg !5133
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1073, metadata !DIExpression()) #11, !dbg !5135
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !5136
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !5137
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !5138
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !5139
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !780, metadata !DIExpression()) #11, !dbg !5140
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !5142
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !5142
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !5143
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !5143
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1032, metadata !DIExpression()) #11, !dbg !5121
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1010, metadata !DIExpression()) #11, !dbg !5144
  %30 = icmp eq %struct.list_head** %20, null, !dbg !5145
  br i1 %30, label %31, label %52, !dbg !5146

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5147
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !5151
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !5152
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !5152
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !5153
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !5153
  %38 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5154
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !5158
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !5159
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !5159
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !5160
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !5160
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !5161
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !5162

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5163
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !5167
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !5168
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !5168
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !5169
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !5169
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !1010, metadata !DIExpression()) #11, !dbg !5144
  br label %52, !dbg !5170

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !5171
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1010, metadata !DIExpression()) #11, !dbg !5144
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #12, !dbg !5172
  br label %nk_fiber_yield.exit, !dbg !5173

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !5171
  ret i32 %55, !dbg !5174
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !5175 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !5177, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3302, metadata !DIExpression()) #11, !dbg !5182
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !5184, !srcloc !3323
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !3306, metadata !DIExpression()) #11, !dbg !5184
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !3304, metadata !DIExpression()) #11, !dbg !5185
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !3303, metadata !DIExpression()) #11, !dbg !5186
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !5187
  %4 = load i32, i32* %3, align 8, !dbg !5187
  call void @llvm.dbg.value(metadata i32 %4, metadata !3308, metadata !DIExpression()) #11, !dbg !5188
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #11, !dbg !5189
  %5 = icmp sgt i32 %4, 0, !dbg !5190
  br i1 %5, label %6, label %30, !dbg !5191

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !5192
  br label %8, !dbg !5192

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3311, metadata !DIExpression()) #11, !dbg !5189
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !5192
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !5192
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !5193
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !5193
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !5194
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !3309, metadata !DIExpression()) #11, !dbg !5195
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !5196
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !3313, metadata !DIExpression(DW_OP_deref)) #11, !dbg !5196
  call void @llvm.dbg.value(metadata i8** %15, metadata !3310, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !5197
  %16 = load i8*, i8** %15, align 8, !dbg !5198
  br label %17, !dbg !5199

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !5198
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !5200
  %20 = bitcast i8* %18 to i8**, !dbg !5200
  %21 = load i8*, i8** %20, align 8, !dbg !5200
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #11, !dbg !5200
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !5200
  br i1 %22, label %27, label %23, !dbg !5199

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !5198
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !5198
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !3310, metadata !DIExpression()) #11, !dbg !5197
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !5201
  br i1 %26, label %75, label %17, !dbg !5202, !llvm.loop !3344

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !5203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3311, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !5189
  %29 = icmp slt i64 %28, %7, !dbg !5190
  br i1 %29, label %8, label %30, !dbg !5191, !llvm.loop !3347

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5204
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !5209
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !5210
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !5210
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !5211
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1031, metadata !DIExpression()) #11, !dbg !5212
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !5213
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1049, metadata !DIExpression()) #11, !dbg !5214
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !5216
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !5216
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !5217
  br i1 %38, label %51, label %39, !dbg !5218

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !5219
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !5219
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !5219
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1033, metadata !DIExpression()) #11, !dbg !5219
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1032, metadata !DIExpression()) #11, !dbg !5213
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !5220
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1061, metadata !DIExpression()) #11, !dbg !5221
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !5223
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !5223
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !5224
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1068, metadata !DIExpression()) #11, !dbg !5225
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1073, metadata !DIExpression()) #11, !dbg !5227
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !5228
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !5229
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !5230
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !5231
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !780, metadata !DIExpression()) #11, !dbg !5232
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !5234
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !5234
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !5235
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !5235
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1032, metadata !DIExpression()) #11, !dbg !5213
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !5178, metadata !DIExpression()), !dbg !5236
  %50 = icmp eq %struct.list_head** %40, null, !dbg !5237
  br i1 %50, label %51, label %72, !dbg !5239

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5240
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !5246
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !5247
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !5247
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !5248
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !5248
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5249
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !5253
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !5254
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !5254
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !5255
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !5255
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !5256
  br i1 %64, label %84, label %65, !dbg !5257

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5258
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !5263
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !5264
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !5264
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !5265
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !5265
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !5178, metadata !DIExpression()), !dbg !5236
  br label %72, !dbg !5266

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !5267
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !5178, metadata !DIExpression()), !dbg !5236
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #10, !dbg !5268
  br label %84, !dbg !5269

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !5270
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1061, metadata !DIExpression()) #11, !dbg !5271
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !5273
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !5273
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !5274
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !5274
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1068, metadata !DIExpression()) #11, !dbg !5275
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1073, metadata !DIExpression()) #11, !dbg !5277
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !5278
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !5279
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !5280
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !5281
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !780, metadata !DIExpression()) #11, !dbg !5282
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !5284
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !5285
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !5286
  br label %84, !dbg !5287

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !5288
  ret i32 %85, !dbg !5289
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !5290 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !5297, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.value(metadata i8* %1, metadata !5298, metadata !DIExpression()), !dbg !5300
  %3 = tail call zeroext i8 %0(i8* %1) #12, !dbg !5301
  %4 = icmp eq i8 %3, 0, !dbg !5301
  br i1 %4, label %60, label %5, !dbg !5303

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5304
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !5310
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !5311
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !5311
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !5312
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !5312
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !5313, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !5313
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !5315
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !5316
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !5317

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5318
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !5323
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !5324
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !5324
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !5325
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1031, metadata !DIExpression()) #11, !dbg !5326
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !5327
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1049, metadata !DIExpression()) #11, !dbg !5328
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !5330
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !5330
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !5331
  br i1 %22, label %35, label %23, !dbg !5332

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !5333
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !5333
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !5333
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1033, metadata !DIExpression()) #11, !dbg !5333
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1032, metadata !DIExpression()) #11, !dbg !5327
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !5334
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1061, metadata !DIExpression()) #11, !dbg !5335
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !5337
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !5337
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !5338
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1068, metadata !DIExpression()) #11, !dbg !5339
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1073, metadata !DIExpression()) #11, !dbg !5341
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !5342
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !5343
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !5344
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !5345
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !5346
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !5348
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !5348
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !5349
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !5349
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1032, metadata !DIExpression()) #11, !dbg !5327
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1010, metadata !DIExpression()) #11, !dbg !5350
  %34 = icmp eq %struct.list_head** %24, null, !dbg !5351
  br i1 %34, label %35, label %56, !dbg !5352

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5353
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !5357
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !5358
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !5358
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !5359
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !5359
  %42 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5360
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !5364
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !5365
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !5365
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !5366
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !5366
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !5367
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !5368

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5369
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !5373
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !5374
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !5374
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !5375
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !5375
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1010, metadata !DIExpression()) #11, !dbg !5350
  br label %56, !dbg !5376

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !5377
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !1010, metadata !DIExpression()) #11, !dbg !5350
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !5378
  br label %nk_fiber_yield.exit, !dbg !5379

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !5377
  br label %60, !dbg !5380

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !5381
  ret i32 %61, !dbg !5382
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !5383 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !5387, metadata !DIExpression()), !dbg !5390
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !5388, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.value(metadata i8* %2, metadata !5389, metadata !DIExpression()), !dbg !5392
  %4 = tail call zeroext i8 %1(i8* %2) #12, !dbg !5393
  %5 = icmp eq i8 %4, 0, !dbg !5393
  br i1 %5, label %8, label %6, !dbg !5395

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !5396
  br label %8, !dbg !5398

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !5399
  ret i32 %9, !dbg !5400
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !5401 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5420
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !5424
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !5425
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !5425
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !5426
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !5426
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !5403, metadata !DIExpression()), !dbg !5427
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !5428, !srcloc !5429
  call void @llvm.dbg.value(metadata i64 %8, metadata !5410, metadata !DIExpression()), !dbg !5430
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !5431
  call void @llvm.dbg.value(metadata i8* %9, metadata !5411, metadata !DIExpression()), !dbg !5432
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !5433
  call void @llvm.dbg.value(metadata i8* %10, metadata !5412, metadata !DIExpression()), !dbg !5434
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !5435
  call void @llvm.dbg.value(metadata i8* %11, metadata !5413, metadata !DIExpression()), !dbg !5436
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !5437
  call void @llvm.dbg.value(metadata i8* %12, metadata !5414, metadata !DIExpression()), !dbg !5438
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !5439
  %14 = load i8*, i8** %13, align 8, !dbg !5439
  %15 = icmp ugt i8* %11, %14, !dbg !5441
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !5442
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !5443
  %19 = icmp ult i8* %11, %18, !dbg !5444
  %20 = and i1 %15, %19, !dbg !5445
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !5445
  call void @llvm.dbg.value(metadata i8* %21, metadata !5413, metadata !DIExpression()), !dbg !5436
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !5446
  call void @llvm.dbg.value(metadata i8* %22, metadata !5415, metadata !DIExpression()), !dbg !5447
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !5448
  %24 = ptrtoint i8* %23 to i64, !dbg !5449
  %25 = ptrtoint i8* %12 to i64, !dbg !5449
  %26 = sub i64 %24, %25, !dbg !5449
  call void @llvm.dbg.value(metadata i64 %26, metadata !5404, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !5450
  %27 = ptrtoint i8* %10 to i64, !dbg !5451
  call void @llvm.dbg.value(metadata i64 undef, metadata !5406, metadata !DIExpression()), !dbg !5452
  call void @llvm.dbg.value(metadata i64 72, metadata !5407, metadata !DIExpression()), !dbg !5453
  %28 = bitcast i8* %22 to i64*, !dbg !5454
  %29 = load i64, i64* %28, align 8, !dbg !5454
  %30 = sub i64 %29, %25, !dbg !5455
  call void @llvm.dbg.value(metadata i64 %30, metadata !5408, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.value(metadata i64 %17, metadata !5405, metadata !DIExpression()), !dbg !5457
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !5458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #11, !dbg !5458
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !5416, metadata !DIExpression(DW_OP_deref)), !dbg !5459
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #10, !dbg !5460
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5461
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !5416, metadata !DIExpression()), !dbg !5459
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !657, metadata !DIExpression()), !dbg !5462
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !662, metadata !DIExpression()), !dbg !5464
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !5465
  %35 = load i64, i64* %34, align 8, !dbg !5466
  %36 = add i64 %35, -8, !dbg !5466
  store i64 %36, i64* %34, align 8, !dbg !5466
  %37 = inttoptr i64 %36 to i64*, !dbg !5467
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !5468
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5469
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !5416, metadata !DIExpression()), !dbg !5459
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !5470
  %40 = load i8*, i8** %39, align 8, !dbg !5470
  call void @llvm.dbg.value(metadata i8* %40, metadata !5409, metadata !DIExpression()), !dbg !5471
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !5472
  %42 = sub i64 -16, %26, !dbg !5473
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !5473
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #12, !dbg !5474
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !5475
  %46 = ptrtoint i8* %45 to i64, !dbg !5476
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5477
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !5416, metadata !DIExpression()), !dbg !5459
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !5478
  store i64 %46, i64* %48, align 8, !dbg !5479
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5480
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !5416, metadata !DIExpression()), !dbg !5459
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !5481
  %51 = load i64, i64* %50, align 8, !dbg !5481
  %52 = add i64 %51, 64, !dbg !5482
  %53 = inttoptr i64 %52 to i8**, !dbg !5483
  call void @llvm.dbg.value(metadata i8** %53, metadata !5417, metadata !DIExpression()), !dbg !5484
  %54 = add i64 %30, %51, !dbg !5485
  %55 = inttoptr i64 %54 to i8*, !dbg !5486
  store i8* %55, i8** %53, align 8, !dbg !5487
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5488
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !5416, metadata !DIExpression()), !dbg !5459
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !5489
  %58 = load i64, i64* %57, align 8, !dbg !5489
  %59 = sub i64 8, %25, !dbg !5451
  %60 = add i64 %59, %27, !dbg !5490
  %61 = add i64 %60, %58, !dbg !5491
  %62 = inttoptr i64 %61 to i8**, !dbg !5492
  call void @llvm.dbg.value(metadata i8** %62, metadata !5418, metadata !DIExpression()), !dbg !5493
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !5494
  call void @llvm.dbg.value(metadata i8** %63, metadata !5419, metadata !DIExpression()), !dbg !5495
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !5496
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !5496
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5497
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !5416, metadata !DIExpression()), !dbg !5459
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !5498
  %67 = load i64, i64* %66, align 8, !dbg !5498
  %68 = add i64 %67, 112, !dbg !5499
  %69 = inttoptr i64 %68 to i64*, !dbg !5500
  store i64 0, i64* %69, align 8, !dbg !5501
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5502
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !5416, metadata !DIExpression()), !dbg !5459
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !2763, metadata !DIExpression()) #11, !dbg !5503
  call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()) #11, !dbg !5505
  %71 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5506
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !5510
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !2769, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !5511
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !5512
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !5512
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !5512
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !5512
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !2769, metadata !DIExpression()) #11, !dbg !5511
  %77 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5513
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !5517
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !5518
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !5518
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !5519
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !2770, metadata !DIExpression()) #11, !dbg !5520
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !5521
  store i32 1, i32* %82, align 4, !dbg !5522
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !5523
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !2834, metadata !DIExpression()) #11, !dbg !5524
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !2837, metadata !DIExpression()) #11, !dbg !5526
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !5527
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !5527
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !2842, metadata !DIExpression()) #11, !dbg !5528
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !2847, metadata !DIExpression()) #11, !dbg !5530
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !2848, metadata !DIExpression()) #11, !dbg !5531
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !5532
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !5533
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !5534
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !5535
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !5536
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !5537
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !5538
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !5539
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !5539
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !5540
  br i1 %91, label %94, label %92, !dbg !5541

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #12, !dbg !5542
  br label %94, !dbg !5543

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5544
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !5416, metadata !DIExpression()), !dbg !5459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #11, !dbg !5545
  ret %struct.nk_fiber* %95, !dbg !5546
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !5547 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !5549, metadata !DIExpression()), !dbg !5552
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !5553
  br i1 %2, label %75, label %3, !dbg !5555

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5556
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !5560
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !5561
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !5561
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !5562
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !5562
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !5550, metadata !DIExpression()), !dbg !5563
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !5564
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !5551, metadata !DIExpression()), !dbg !5565
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !5566
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !2834, metadata !DIExpression()), !dbg !5567
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !2837, metadata !DIExpression()), !dbg !5569
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !5570
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !5570
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !2842, metadata !DIExpression()), !dbg !5571
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !2847, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !2848, metadata !DIExpression()), !dbg !5574
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !5575
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !5576
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !5577
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !5578
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !5579
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !5580
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !5581
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !5582
  %18 = load i32, i32* %17, align 8, !dbg !5583
  %19 = add i32 %18, 1, !dbg !5583
  store i32 %19, i32* %17, align 8, !dbg !5583
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !5584
  store i32 3, i32* %20, align 4, !dbg !5585
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5586
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !5591
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !5592
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !5592
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !5593
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !5593
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !5594, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !5594
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !5596
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !5597
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !5598

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5599
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !5604
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !5605
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !5605
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !5606
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1031, metadata !DIExpression()) #11, !dbg !5607
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1032, metadata !DIExpression()) #11, !dbg !5608
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1049, metadata !DIExpression()) #11, !dbg !5609
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !5611
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !5611
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !5612
  br i1 %37, label %50, label %38, !dbg !5613

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1033, metadata !DIExpression()) #11, !dbg !5614
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !5614
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !5614
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1033, metadata !DIExpression()) #11, !dbg !5614
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1032, metadata !DIExpression()) #11, !dbg !5608
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !5615
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1061, metadata !DIExpression()) #11, !dbg !5616
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !5618
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !5618
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !5619
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !1068, metadata !DIExpression()) #11, !dbg !5620
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1073, metadata !DIExpression()) #11, !dbg !5622
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !5623
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !5624
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !5625
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !5626
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !780, metadata !DIExpression()) #11, !dbg !5627
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !5629
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !5629
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !5630
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !5630
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1032, metadata !DIExpression()) #11, !dbg !5608
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1010, metadata !DIExpression()) #11, !dbg !5631
  %49 = icmp eq %struct.list_head** %39, null, !dbg !5632
  br i1 %49, label %50, label %71, !dbg !5633

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5634
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !5638
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !5639
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !5639
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !5640
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !5640
  %57 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5641
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !5645
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !5646
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !5646
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !5647
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !5647
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !5648
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !5649

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5650
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !5654
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !5655
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !5655
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !5656
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !5656
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1010, metadata !DIExpression()) #11, !dbg !5631
  br label %71, !dbg !5657

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !5658
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !1010, metadata !DIExpression()) #11, !dbg !5631
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #12, !dbg !5659
  br label %nk_fiber_yield.exit, !dbg !5660

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !5658
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !5661
  ret i32 %76, !dbg !5662
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
!989 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !992)
!990 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 730, type: !507, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!991 = !{}
!992 = distinct !DILocation(line: 59, column: 19, scope: !981)
!993 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !998)
!994 = distinct !DISubprogram(name: "get_cpu", scope: !995, file: !995, line: 127, type: !996, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!995 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!996 = !DISubroutineType(types: !997)
!997 = !{!270}
!998 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1004)
!999 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !1000, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!1004 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1006)
!1005 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !768, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!1006 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1011)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !124, line: 704, column: 7)
!1008 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 702, type: !507, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1009)
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "f_to", scope: !1008, file: !124, line: 708, type: !240)
!1011 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !992)
!1012 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !998)
!1013 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1004)
!1014 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1006)
!1015 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1011)
!1017 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1016)
!1018 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1011)
!1019 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1011)
!1020 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1026)
!1023 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !1024, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!150}
!1026 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1043)
!1027 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !1028, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!240}
!1030 = !{!1031, !1032, !1033, !1037}
!1031 = !DILocalVariable(name: "fiber_sched_queue", scope: !1027, file: !124, line: 122, type: !150)
!1032 = !DILocalVariable(name: "fiber_to_schedule", scope: !1027, file: !124, line: 125, type: !240)
!1033 = !DILocalVariable(name: "first", scope: !1034, file: !124, line: 128, type: !240)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !124, line: 128, column: 25)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !124, line: 126, column: 40)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !124, line: 126, column: 7)
!1037 = !DILocalVariable(name: "__mptr", scope: !1038, file: !124, line: 128, type: !1041)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !124, line: 128, column: 25)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !124, line: 128, column: 25)
!1040 = distinct !DILexicalBlock(scope: !1034, file: !124, line: 128, column: 25)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1043 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1011)
!1044 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1021)
!1045 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1022)
!1046 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1026)
!1047 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1043)
!1048 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1043)
!1049 = !DILocalVariable(name: "head", arg: 1, scope: !1050, file: !53, line: 184, type: !1041)
!1050 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1051, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!48, !1041}
!1053 = !{!1049}
!1054 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1043)
!1056 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1055)
!1057 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1055)
!1058 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1043)
!1059 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1043)
!1060 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1043)
!1061 = !DILocalVariable(name: "entry", arg: 1, scope: !1062, file: !53, line: 151, type: !150)
!1062 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !782, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1063)
!1063 = !{!1061}
!1064 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1043)
!1066 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1065)
!1067 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1065)
!1068 = !DILocalVariable(name: "prev", arg: 1, scope: !1069, file: !53, line: 128, type: !150)
!1069 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1070, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !150, !150}
!1072 = !{!1068, !1073}
!1073 = !DILocalVariable(name: "next", arg: 2, scope: !1069, file: !53, line: 128, type: !150)
!1074 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1065)
!1076 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1075)
!1077 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1075)
!1078 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1075)
!1079 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1075)
!1080 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1075)
!1081 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1065)
!1083 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1082)
!1084 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1082)
!1085 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1011)
!1086 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1011)
!1087 = distinct !DILexicalBlock(scope: !1008, file: !124, line: 718, column: 7)
!1088 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1011)
!1089 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1093)
!1092 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !1028, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!1093 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1011)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !124, line: 719, column: 9)
!1095 = distinct !DILexicalBlock(scope: !1087, file: !124, line: 718, column: 21)
!1096 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1090)
!1097 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1091)
!1098 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1093)
!1099 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1103)
!1102 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !1028, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!1103 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1011)
!1104 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1100)
!1105 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1101)
!1106 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1103)
!1107 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1011)
!1108 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1011)
!1109 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1011)
!1113 = distinct !DILexicalBlock(scope: !1094, file: !124, line: 722, column: 12)
!1114 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1110)
!1115 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1111)
!1116 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1112)
!1117 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1011)
!1118 = !DILocation(line: 0, scope: !1008, inlinedAt: !1011)
!1119 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1011)
!1120 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1011)
!1121 = !DILocation(line: 59, column: 19, scope: !981)
!1122 = !DILocation(line: 59, column: 13, scope: !981)
!1123 = !DILocation(line: 60, column: 19, scope: !981)
!1124 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 60, column: 3, scope: !981)
!1126 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1125)
!1131 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1127)
!1132 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1128)
!1133 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1129)
!1134 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1130)
!1136 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1135)
!1137 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1130)
!1138 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1130)
!1139 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1130)
!1144 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1140)
!1145 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1141)
!1146 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1142)
!1147 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1143)
!1148 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1143)
!1149 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1143)
!1151 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1150)
!1152 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1150)
!1153 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1143)
!1154 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1143)
!1155 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1143)
!1156 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1143)
!1158 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1157)
!1159 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1157)
!1160 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1157)
!1162 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1161)
!1163 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1161)
!1164 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1161)
!1165 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1161)
!1166 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1161)
!1167 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1157)
!1169 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1168)
!1170 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1168)
!1171 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1130)
!1172 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1130)
!1173 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1130)
!1174 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1130)
!1178 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1175)
!1179 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1176)
!1180 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1177)
!1181 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1130)
!1185 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1182)
!1186 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1183)
!1187 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1184)
!1188 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1130)
!1189 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1130)
!1190 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1130)
!1194 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1191)
!1195 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1192)
!1196 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1193)
!1197 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1130)
!1198 = !DILocation(line: 0, scope: !1008, inlinedAt: !1130)
!1199 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1130)
!1200 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1130)
!1201 = !DILocation(line: 60, column: 3, scope: !981)
!1202 = !DILocation(line: 61, column: 16, scope: !981)
!1203 = !DILocation(line: 62, column: 13, scope: !981)
!1204 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 62, column: 11, scope: !981)
!1206 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1205)
!1211 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1207)
!1212 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1208)
!1213 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1209)
!1214 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1210)
!1216 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1215)
!1217 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1210)
!1218 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1210)
!1219 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1210)
!1224 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1220)
!1225 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1221)
!1226 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1222)
!1227 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1223)
!1228 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1223)
!1229 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1223)
!1231 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1230)
!1232 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1230)
!1233 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1223)
!1234 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1223)
!1235 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1223)
!1236 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1223)
!1238 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1237)
!1239 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1237)
!1240 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1237)
!1242 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1241)
!1243 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1241)
!1244 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1241)
!1245 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1241)
!1246 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1241)
!1247 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1237)
!1249 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1248)
!1250 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1248)
!1251 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1210)
!1252 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1210)
!1253 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1210)
!1254 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1210)
!1258 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1255)
!1259 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1256)
!1260 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1257)
!1261 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1210)
!1265 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1262)
!1266 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1263)
!1267 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1264)
!1268 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1210)
!1269 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1210)
!1270 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1210)
!1274 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1271)
!1275 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1272)
!1276 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1273)
!1277 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1210)
!1278 = !DILocation(line: 0, scope: !1008, inlinedAt: !1210)
!1279 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1210)
!1280 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1210)
!1281 = !DILocation(line: 62, column: 11, scope: !981)
!1282 = !DILocation(line: 62, column: 3, scope: !981)
!1283 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 63, column: 52, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !981, file: !3, line: 62, column: 18)
!1286 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1284)
!1291 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1287)
!1292 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1288)
!1293 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1289)
!1294 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1290)
!1296 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1295)
!1297 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1290)
!1298 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1290)
!1299 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1290)
!1304 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1300)
!1305 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1301)
!1306 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1302)
!1307 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1303)
!1308 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1303)
!1309 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1303)
!1311 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1310)
!1312 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1310)
!1313 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1303)
!1314 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1303)
!1315 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1303)
!1316 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1303)
!1318 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1317)
!1319 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1317)
!1320 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1317)
!1322 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1321)
!1323 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1321)
!1324 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1321)
!1325 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1321)
!1326 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1321)
!1327 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1317)
!1329 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1328)
!1330 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1328)
!1331 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1290)
!1332 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1290)
!1333 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1290)
!1334 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1290)
!1338 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1335)
!1339 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1336)
!1340 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1337)
!1341 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1290)
!1345 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1342)
!1346 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1343)
!1347 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1344)
!1348 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1290)
!1349 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1290)
!1350 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1290)
!1354 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1351)
!1355 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1352)
!1356 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1353)
!1357 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1290)
!1358 = !DILocation(line: 0, scope: !1008, inlinedAt: !1290)
!1359 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1290)
!1360 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1290)
!1361 = !DILocation(line: 63, column: 52, scope: !1285)
!1362 = !DILocation(line: 63, column: 5, scope: !1285)
!1363 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 62, column: 9, scope: !981)
!1365 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1364)
!1370 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1366)
!1371 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1367)
!1372 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1368)
!1373 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1369)
!1375 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1374)
!1376 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1369)
!1377 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1369)
!1378 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1369)
!1383 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1379)
!1384 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1380)
!1385 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1381)
!1386 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1382)
!1387 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1382)
!1388 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1382)
!1390 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1389)
!1391 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1389)
!1392 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1382)
!1393 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1382)
!1394 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1382)
!1395 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1382)
!1397 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1396)
!1398 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1396)
!1399 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1396)
!1401 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1400)
!1402 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1400)
!1403 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1400)
!1404 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1400)
!1405 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1400)
!1406 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1396)
!1408 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1407)
!1409 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1407)
!1410 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1369)
!1411 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1369)
!1412 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1369)
!1413 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1369)
!1417 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1414)
!1418 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1415)
!1419 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1416)
!1420 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1369)
!1424 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1421)
!1425 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1422)
!1426 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1423)
!1427 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1369)
!1428 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1369)
!1429 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1369)
!1433 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1430)
!1434 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1431)
!1435 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1432)
!1436 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1369)
!1437 = !DILocation(line: 0, scope: !1008, inlinedAt: !1369)
!1438 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1369)
!1439 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1369)
!1440 = !DILocation(line: 62, column: 9, scope: !981)
!1441 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 62, column: 3, scope: !981)
!1443 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1442)
!1448 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1444)
!1449 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1445)
!1450 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1446)
!1451 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1447)
!1453 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1452)
!1454 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1447)
!1455 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1447)
!1456 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1447)
!1461 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1457)
!1462 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1458)
!1463 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1459)
!1464 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1460)
!1465 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1460)
!1466 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1460)
!1468 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1467)
!1469 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1467)
!1470 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1460)
!1471 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1460)
!1472 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1460)
!1473 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1460)
!1475 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1474)
!1476 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1474)
!1477 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1474)
!1479 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1478)
!1480 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1478)
!1481 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1478)
!1482 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1478)
!1483 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1478)
!1484 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1474)
!1486 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1485)
!1487 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1485)
!1488 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1447)
!1489 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1447)
!1490 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1447)
!1491 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1447)
!1495 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1492)
!1496 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1493)
!1497 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1494)
!1498 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1447)
!1502 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1499)
!1503 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1500)
!1504 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1501)
!1505 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1447)
!1506 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1447)
!1507 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1447)
!1511 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1508)
!1512 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1509)
!1513 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1510)
!1514 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1447)
!1515 = !DILocation(line: 0, scope: !1008, inlinedAt: !1447)
!1516 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1447)
!1517 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1447)
!1518 = distinct !{!1518, !1282, !1519}
!1519 = !DILocation(line: 65, column: 3, scope: !981)
!1520 = !DILocation(line: 0, scope: !981)
!1521 = !DILocation(line: 66, column: 3, scope: !981)
!1522 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 67, column: 3, scope: !981)
!1524 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1523)
!1529 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1525)
!1530 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1526)
!1531 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1527)
!1532 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1528)
!1534 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1533)
!1535 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1528)
!1536 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1528)
!1537 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1528)
!1542 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1538)
!1543 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1539)
!1544 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1540)
!1545 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1541)
!1546 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1541)
!1547 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1541)
!1549 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1548)
!1550 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1548)
!1551 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1541)
!1552 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1541)
!1553 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1541)
!1554 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1541)
!1556 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1555)
!1557 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1555)
!1558 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1555)
!1560 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1559)
!1561 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1559)
!1562 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1559)
!1563 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1559)
!1564 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1559)
!1565 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1555)
!1567 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1566)
!1568 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1566)
!1569 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1528)
!1570 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1528)
!1571 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1528)
!1572 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1528)
!1576 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1573)
!1577 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1574)
!1578 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1575)
!1579 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1528)
!1583 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1580)
!1584 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1581)
!1585 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1582)
!1586 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1528)
!1587 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1528)
!1588 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1528)
!1592 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1589)
!1593 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1590)
!1594 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1591)
!1595 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1528)
!1596 = !DILocation(line: 0, scope: !1008, inlinedAt: !1528)
!1597 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1528)
!1598 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1528)
!1599 = !DILocation(line: 67, column: 3, scope: !981)
!1600 = !DILocation(line: 68, column: 1, scope: !981)
!1601 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1602)
!1602 = !{!1603, !1604, !1605, !1606}
!1603 = !DILocalVariable(name: "i", arg: 1, scope: !1601, file: !3, line: 70, type: !31)
!1604 = !DILocalVariable(name: "o", arg: 2, scope: !1601, file: !3, line: 70, type: !75)
!1605 = !DILocalVariable(name: "end", scope: !1601, file: !3, line: 72, type: !24)
!1606 = !DILocalVariable(name: "a", scope: !1601, file: !3, line: 74, type: !7)
!1607 = !DILocation(line: 70, column: 29, scope: !1601)
!1608 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 70, column: 39, scope: !1601)
!1610 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1609)
!1615 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1611)
!1616 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1612)
!1617 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1613)
!1618 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1614)
!1620 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1619)
!1621 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1614)
!1622 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1614)
!1623 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1614)
!1628 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1624)
!1629 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1625)
!1630 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1626)
!1631 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1627)
!1632 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1627)
!1633 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1627)
!1635 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1634)
!1636 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1634)
!1637 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1627)
!1638 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1627)
!1639 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1627)
!1640 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1627)
!1642 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1641)
!1643 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1641)
!1644 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1641)
!1646 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1645)
!1647 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1645)
!1648 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1645)
!1649 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1645)
!1650 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1645)
!1651 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1641)
!1653 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1652)
!1654 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1652)
!1655 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1614)
!1656 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1614)
!1657 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1614)
!1658 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1614)
!1662 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1659)
!1663 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1660)
!1664 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1661)
!1665 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1614)
!1669 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1666)
!1670 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1667)
!1671 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1668)
!1672 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1614)
!1673 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1614)
!1674 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1614)
!1678 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1675)
!1679 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1676)
!1680 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1677)
!1681 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1614)
!1682 = !DILocation(line: 0, scope: !1008, inlinedAt: !1614)
!1683 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1614)
!1684 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1614)
!1685 = !DILocation(line: 70, column: 39, scope: !1601)
!1686 = !DILocation(line: 72, column: 19, scope: !1601)
!1687 = !DILocation(line: 72, column: 13, scope: !1601)
!1688 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 73, column: 19, scope: !1601)
!1690 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1689)
!1695 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1691)
!1696 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1692)
!1697 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1693)
!1698 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1694)
!1700 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1699)
!1701 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1694)
!1702 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1694)
!1703 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1694)
!1708 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1704)
!1709 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1705)
!1710 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1706)
!1711 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1707)
!1712 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1707)
!1713 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1707)
!1715 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1714)
!1716 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1714)
!1717 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1707)
!1718 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1707)
!1719 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1707)
!1720 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1707)
!1722 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1721)
!1723 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1721)
!1724 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1721)
!1726 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1725)
!1727 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1725)
!1728 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1725)
!1729 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1725)
!1730 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1725)
!1731 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1721)
!1733 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1732)
!1734 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1732)
!1735 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1694)
!1736 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1694)
!1737 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1694)
!1738 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1694)
!1742 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1739)
!1743 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1740)
!1744 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1741)
!1745 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1694)
!1749 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1746)
!1750 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1747)
!1751 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1748)
!1752 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1694)
!1753 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1694)
!1754 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1694)
!1758 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1755)
!1759 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1756)
!1760 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1757)
!1761 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1694)
!1762 = !DILocation(line: 0, scope: !1008, inlinedAt: !1694)
!1763 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1694)
!1764 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1694)
!1765 = !DILocation(line: 73, column: 19, scope: !1601)
!1766 = !DILocation(line: 73, column: 3, scope: !1601)
!1767 = !DILocation(line: 74, column: 16, scope: !1601)
!1768 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 75, column: 3, scope: !1601)
!1770 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1769)
!1775 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1771)
!1776 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1772)
!1777 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1773)
!1778 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1774)
!1780 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1779)
!1781 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1774)
!1782 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1774)
!1783 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1774)
!1788 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1784)
!1789 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1785)
!1790 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1786)
!1791 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1787)
!1792 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1787)
!1793 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1787)
!1795 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1794)
!1796 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1794)
!1797 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1787)
!1798 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1787)
!1799 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1787)
!1800 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1787)
!1802 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1801)
!1803 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1801)
!1804 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1801)
!1806 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1805)
!1807 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1805)
!1808 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1805)
!1809 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1805)
!1810 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1805)
!1811 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1801)
!1813 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1812)
!1814 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1812)
!1815 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1774)
!1816 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1774)
!1817 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1774)
!1818 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1774)
!1822 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1819)
!1823 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1820)
!1824 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1821)
!1825 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1774)
!1829 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1826)
!1830 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1827)
!1831 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1828)
!1832 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1774)
!1833 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1774)
!1834 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1774)
!1838 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1835)
!1839 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1836)
!1840 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1837)
!1841 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1774)
!1842 = !DILocation(line: 0, scope: !1008, inlinedAt: !1774)
!1843 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1774)
!1844 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1774)
!1845 = !DILocation(line: 75, column: 3, scope: !1601)
!1846 = !DILocation(line: 76, column: 13, scope: !1601)
!1847 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 76, column: 11, scope: !1601)
!1849 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1848)
!1854 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1850)
!1855 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1851)
!1856 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1852)
!1857 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1853)
!1859 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1858)
!1860 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1853)
!1861 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1853)
!1862 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1853)
!1867 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1863)
!1868 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1864)
!1869 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1865)
!1870 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1866)
!1871 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1866)
!1872 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1866)
!1874 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1873)
!1875 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1873)
!1876 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1866)
!1877 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1866)
!1878 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1866)
!1879 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1866)
!1881 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1880)
!1882 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1880)
!1883 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1880)
!1885 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1884)
!1886 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1884)
!1887 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1884)
!1888 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1884)
!1889 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1884)
!1890 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1880)
!1892 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1891)
!1893 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1891)
!1894 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1853)
!1895 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1853)
!1896 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1853)
!1897 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1853)
!1901 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1898)
!1902 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1899)
!1903 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1900)
!1904 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1853)
!1908 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1905)
!1909 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1906)
!1910 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1907)
!1911 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1853)
!1912 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1853)
!1913 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1853)
!1917 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1914)
!1918 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1915)
!1919 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1916)
!1920 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1853)
!1921 = !DILocation(line: 0, scope: !1008, inlinedAt: !1853)
!1922 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1853)
!1923 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1853)
!1924 = !DILocation(line: 76, column: 11, scope: !1601)
!1925 = !DILocation(line: 76, column: 3, scope: !1601)
!1926 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 77, column: 52, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 76, column: 18)
!1929 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !1927)
!1934 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1930)
!1935 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1931)
!1936 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !1932)
!1937 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !1933)
!1939 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1938)
!1940 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !1933)
!1941 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !1933)
!1942 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !1933)
!1947 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1943)
!1948 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1944)
!1949 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !1945)
!1950 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !1946)
!1951 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !1946)
!1952 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !1946)
!1954 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !1953)
!1955 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !1953)
!1956 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !1946)
!1957 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !1946)
!1958 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !1946)
!1959 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !1946)
!1961 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !1960)
!1962 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !1960)
!1963 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !1960)
!1965 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !1964)
!1966 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !1964)
!1967 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !1964)
!1968 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !1964)
!1969 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !1964)
!1970 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !1960)
!1972 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1971)
!1973 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1971)
!1974 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !1933)
!1975 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !1933)
!1976 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !1933)
!1977 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !1933)
!1981 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1978)
!1982 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1979)
!1983 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !1980)
!1984 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !1933)
!1988 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1985)
!1989 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1986)
!1990 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1987)
!1991 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !1933)
!1992 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !1933)
!1993 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !1933)
!1997 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !1994)
!1998 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !1995)
!1999 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !1996)
!2000 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !1933)
!2001 = !DILocation(line: 0, scope: !1008, inlinedAt: !1933)
!2002 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !1933)
!2003 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !1933)
!2004 = !DILocation(line: 77, column: 52, scope: !1928)
!2005 = !DILocation(line: 77, column: 5, scope: !1928)
!2006 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 76, column: 9, scope: !1601)
!2008 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !2007)
!2013 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2009)
!2014 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2010)
!2015 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !2011)
!2016 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !2012)
!2018 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2017)
!2019 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !2012)
!2020 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !2012)
!2021 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !2012)
!2026 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2022)
!2027 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2023)
!2028 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !2024)
!2029 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !2025)
!2030 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !2025)
!2031 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !2025)
!2033 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !2032)
!2034 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !2032)
!2035 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !2025)
!2036 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !2025)
!2037 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !2025)
!2038 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !2025)
!2040 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !2039)
!2041 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !2039)
!2042 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !2039)
!2044 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !2043)
!2045 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !2043)
!2046 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !2043)
!2047 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !2043)
!2048 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !2043)
!2049 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !2039)
!2051 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2050)
!2052 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2050)
!2053 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !2012)
!2054 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !2012)
!2055 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !2012)
!2056 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !2012)
!2060 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2057)
!2061 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2058)
!2062 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !2059)
!2063 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !2012)
!2067 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2064)
!2068 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2065)
!2069 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !2066)
!2070 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !2012)
!2071 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !2012)
!2072 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !2012)
!2076 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2073)
!2077 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2074)
!2078 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !2075)
!2079 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !2012)
!2080 = !DILocation(line: 0, scope: !1008, inlinedAt: !2012)
!2081 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !2012)
!2082 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !2012)
!2083 = !DILocation(line: 76, column: 9, scope: !1601)
!2084 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 76, column: 3, scope: !1601)
!2086 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !2085)
!2091 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2087)
!2092 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2088)
!2093 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !2089)
!2094 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !2090)
!2096 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2095)
!2097 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !2090)
!2098 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !2090)
!2099 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !2090)
!2104 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2100)
!2105 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2101)
!2106 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !2102)
!2107 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !2103)
!2108 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !2103)
!2109 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !2103)
!2111 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !2110)
!2112 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !2110)
!2113 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !2103)
!2114 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !2103)
!2115 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !2103)
!2116 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !2103)
!2118 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !2117)
!2119 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !2117)
!2120 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !2117)
!2122 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !2121)
!2123 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !2121)
!2124 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !2121)
!2125 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !2121)
!2126 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !2121)
!2127 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !2117)
!2129 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2128)
!2130 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2128)
!2131 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !2090)
!2132 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !2090)
!2133 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !2090)
!2134 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !2090)
!2138 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2135)
!2139 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2136)
!2140 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !2137)
!2141 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !2090)
!2145 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2142)
!2146 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2143)
!2147 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !2144)
!2148 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !2090)
!2149 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !2090)
!2150 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !2090)
!2154 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2151)
!2155 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2152)
!2156 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !2153)
!2157 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !2090)
!2158 = !DILocation(line: 0, scope: !1008, inlinedAt: !2090)
!2159 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !2090)
!2160 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !2090)
!2161 = distinct !{!2161, !1925, !2162}
!2162 = !DILocation(line: 79, column: 3, scope: !1601)
!2163 = !DILocation(line: 0, scope: !1601)
!2164 = !DILocation(line: 80, column: 3, scope: !1601)
!2165 = !DILocation(line: 732, column: 3, scope: !990, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 81, column: 3, scope: !1601)
!2167 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 733, column: 10, scope: !990, inlinedAt: !2166)
!2172 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2168)
!2173 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2169)
!2174 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !2170)
!2175 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !2171)
!2177 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2176)
!2178 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !2171)
!2179 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !2171)
!2180 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !2171)
!2185 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2181)
!2186 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2182)
!2187 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !2183)
!2188 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !2184)
!2189 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !2184)
!2190 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !2184)
!2192 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !2191)
!2193 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !2191)
!2194 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !2184)
!2195 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !2184)
!2196 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !2184)
!2197 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !2184)
!2199 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !2198)
!2200 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !2198)
!2201 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !2198)
!2203 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !2202)
!2204 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !2202)
!2205 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !2202)
!2206 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !2202)
!2207 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !2202)
!2208 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !2198)
!2210 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2209)
!2211 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2209)
!2212 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !2171)
!2213 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !2171)
!2214 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !2171)
!2215 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !2171)
!2219 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2216)
!2220 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2217)
!2221 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !2218)
!2222 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !2171)
!2226 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2223)
!2227 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2224)
!2228 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !2225)
!2229 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !2171)
!2230 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !2171)
!2231 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !2171)
!2235 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2232)
!2236 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2233)
!2237 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !2234)
!2238 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !2171)
!2239 = !DILocation(line: 0, scope: !1008, inlinedAt: !2171)
!2240 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !2171)
!2241 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !2171)
!2242 = !DILocation(line: 81, column: 3, scope: !1601)
!2243 = !DILocation(line: 82, column: 1, scope: !1601)
!2244 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2245 = !{!2246, !2247}
!2246 = !DILocalVariable(name: "buf", arg: 1, scope: !2244, file: !3, line: 127, type: !113)
!2247 = !DILocalVariable(name: "priv", arg: 2, scope: !2244, file: !3, line: 127, type: !31)
!2248 = !DILocation(line: 127, column: 23, scope: !2244)
!2249 = !DILocation(line: 127, column: 35, scope: !2244)
!2250 = !DILocation(line: 88, column: 3, scope: !2251, inlinedAt: !2258)
!2251 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "simple", scope: !2251, file: !3, line: 88, type: !511)
!2254 = !DILocalVariable(name: "t", scope: !2251, file: !3, line: 90, type: !25)
!2255 = !DILocalVariable(name: "f_input", scope: !2251, file: !3, line: 92, type: !24)
!2256 = !DILocalVariable(name: "p", scope: !2257, file: !3, line: 92, type: !31)
!2257 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 92, column: 23)
!2258 = distinct !DILocation(line: 129, column: 3, scope: !2244)
!2259 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 89, column: 8, scope: !2251, inlinedAt: !2258)
!2261 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !2260)
!2262 = !DILocation(line: 89, column: 26, scope: !2251, inlinedAt: !2258)
!2263 = !DILocation(line: 89, column: 6, scope: !2251, inlinedAt: !2258)
!2264 = !DILocation(line: 90, column: 3, scope: !2251, inlinedAt: !2258)
!2265 = !DILocation(line: 91, column: 3, scope: !2251, inlinedAt: !2258)
!2266 = !DILocation(line: 92, column: 23, scope: !2257, inlinedAt: !2258)
!2267 = !DILocation(line: 93, column: 8, scope: !2268, inlinedAt: !2258)
!2268 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 93, column: 7)
!2269 = !DILocation(line: 93, column: 7, scope: !2251, inlinedAt: !2258)
!2270 = !DILocation(line: 94, column: 5, scope: !2271, inlinedAt: !2258)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 93, column: 17)
!2272 = !DILocation(line: 95, column: 5, scope: !2271, inlinedAt: !2258)
!2273 = !DILocation(line: 92, column: 23, scope: !2251, inlinedAt: !2258)
!2274 = !DILocation(line: 92, column: 13, scope: !2251, inlinedAt: !2258)
!2275 = !DILocation(line: 97, column: 14, scope: !2251, inlinedAt: !2258)
!2276 = !DILocation(line: 90, column: 12, scope: !2251, inlinedAt: !2258)
!2277 = !DILocation(line: 97, column: 16, scope: !2251, inlinedAt: !2258)
!2278 = !DILocation(line: 97, column: 12, scope: !2251, inlinedAt: !2258)
!2279 = !DILocation(line: 88, column: 15, scope: !2251, inlinedAt: !2258)
!2280 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 98, column: 3, scope: !2251, inlinedAt: !2258)
!2282 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !2281)
!2283 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !2281)
!2284 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !2281)
!2285 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !2281)
!2286 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !2281)
!2287 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !2281)
!2289 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !2288)
!2290 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !2288)
!2291 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !2288)
!2292 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !2288)
!2293 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !2288)
!2294 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !2288)
!2295 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !2288)
!2296 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !2288)
!2297 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !2288)
!2298 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !2288)
!2299 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !2288)
!2300 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !2288)
!2301 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !2288)
!2302 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !2288)
!2303 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !2288)
!2304 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !2288)
!2305 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !2288)
!2306 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !2288)
!2307 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !2288)
!2308 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !2288)
!2309 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !2288)
!2310 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !2288)
!2311 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !2288)
!2312 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !2288)
!2313 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !2288)
!2314 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !2288)
!2315 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !2288)
!2316 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !2288)
!2318 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !2317)
!2319 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !2317)
!2320 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !2317)
!2322 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2321)
!2323 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !2317)
!2324 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2321)
!2325 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2321)
!2326 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2321)
!2327 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !2317)
!2329 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2328)
!2330 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2328)
!2331 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2328)
!2332 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2328)
!2333 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !2317)
!2335 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2334)
!2336 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2334)
!2337 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2334)
!2338 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2334)
!2339 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !2317)
!2341 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2340)
!2342 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2340)
!2343 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2340)
!2344 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2340)
!2345 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !2317)
!2347 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2346)
!2348 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2346)
!2349 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2346)
!2350 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2346)
!2351 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !2317)
!2353 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2352)
!2354 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2352)
!2355 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2352)
!2356 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2352)
!2357 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !2317)
!2358 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !2317)
!2360 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2359)
!2361 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2359)
!2362 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2359)
!2363 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2359)
!2364 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !2317)
!2366 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2365)
!2367 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2365)
!2368 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2365)
!2369 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2365)
!2370 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !2317)
!2372 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2371)
!2373 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2371)
!2374 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2371)
!2375 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2371)
!2376 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !2317)
!2378 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2377)
!2379 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2377)
!2380 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2377)
!2381 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2377)
!2382 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !2317)
!2384 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2383)
!2385 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2383)
!2386 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2383)
!2387 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2383)
!2388 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !2317)
!2390 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2389)
!2391 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2389)
!2392 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2389)
!2393 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2389)
!2394 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !2317)
!2396 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2395)
!2397 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2395)
!2398 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2395)
!2399 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2395)
!2400 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !2317)
!2402 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2401)
!2403 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2401)
!2404 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2401)
!2405 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2401)
!2406 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !2317)
!2408 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2407)
!2409 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2407)
!2410 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2407)
!2411 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2407)
!2412 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !2317)
!2414 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2413)
!2415 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2413)
!2416 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2413)
!2417 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2413)
!2418 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !2288)
!2419 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !2288)
!2421 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2420)
!2422 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !2288)
!2423 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !2288)
!2424 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !2288)
!2425 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !2288)
!2426 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !2288)
!2428 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2427)
!2429 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2427)
!2430 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2427)
!2431 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !2288)
!2432 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !2288)
!2433 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !2288)
!2434 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !2288)
!2436 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2435)
!2437 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2435)
!2438 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2435)
!2439 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !2288)
!2440 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !2288)
!2442 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2441)
!2443 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2441)
!2444 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2441)
!2445 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !2288)
!2446 = !DILocation(line: 0, scope: !602, inlinedAt: !2288)
!2447 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !2281)
!2448 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !2281)
!2449 = !DILocation(line: 99, column: 3, scope: !2251, inlinedAt: !2258)
!2450 = !DILocation(line: 100, column: 1, scope: !2251, inlinedAt: !2258)
!2451 = !DILocation(line: 130, column: 3, scope: !2244)
!2452 = !DILocation(line: 88, column: 3, scope: !2251)
!2453 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 89, column: 8, scope: !2251)
!2455 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !2454)
!2456 = !DILocation(line: 89, column: 26, scope: !2251)
!2457 = !DILocation(line: 89, column: 6, scope: !2251)
!2458 = !DILocation(line: 90, column: 3, scope: !2251)
!2459 = !DILocation(line: 91, column: 3, scope: !2251)
!2460 = !DILocation(line: 92, column: 23, scope: !2257)
!2461 = !DILocation(line: 93, column: 8, scope: !2268)
!2462 = !DILocation(line: 93, column: 7, scope: !2251)
!2463 = !DILocation(line: 94, column: 5, scope: !2271)
!2464 = !DILocation(line: 95, column: 5, scope: !2271)
!2465 = !DILocation(line: 92, column: 23, scope: !2251)
!2466 = !DILocation(line: 92, column: 13, scope: !2251)
!2467 = !DILocation(line: 97, column: 14, scope: !2251)
!2468 = !DILocation(line: 90, column: 12, scope: !2251)
!2469 = !DILocation(line: 97, column: 16, scope: !2251)
!2470 = !DILocation(line: 97, column: 12, scope: !2251)
!2471 = !DILocation(line: 88, column: 15, scope: !2251)
!2472 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 98, column: 3, scope: !2251)
!2474 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !2473)
!2475 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !2473)
!2476 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !2473)
!2477 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !2473)
!2478 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !2473)
!2479 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !2473)
!2481 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !2480)
!2482 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !2480)
!2483 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !2480)
!2484 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !2480)
!2485 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !2480)
!2486 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !2480)
!2487 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !2480)
!2488 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !2480)
!2489 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !2480)
!2490 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !2480)
!2491 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !2480)
!2492 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !2480)
!2493 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !2480)
!2494 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !2480)
!2495 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !2480)
!2496 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !2480)
!2497 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !2480)
!2498 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !2480)
!2499 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !2480)
!2500 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !2480)
!2501 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !2480)
!2502 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !2480)
!2503 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !2480)
!2504 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !2480)
!2505 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !2480)
!2506 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !2480)
!2507 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !2480)
!2508 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !2480)
!2510 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !2509)
!2511 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !2509)
!2512 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !2509)
!2514 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2513)
!2515 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !2509)
!2516 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2513)
!2517 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2513)
!2518 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2513)
!2519 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !2509)
!2521 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2520)
!2522 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2520)
!2523 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2520)
!2524 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2520)
!2525 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !2509)
!2527 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2526)
!2528 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2526)
!2529 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2526)
!2530 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2526)
!2531 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !2509)
!2533 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2532)
!2534 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2532)
!2535 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2532)
!2536 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2532)
!2537 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !2509)
!2539 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2538)
!2540 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2538)
!2541 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2538)
!2542 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2538)
!2543 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !2509)
!2545 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2544)
!2546 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2544)
!2547 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2544)
!2548 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2544)
!2549 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !2509)
!2550 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !2509)
!2552 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2551)
!2553 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2551)
!2554 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2551)
!2555 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2551)
!2556 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !2509)
!2558 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2557)
!2559 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2557)
!2560 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2557)
!2561 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2557)
!2562 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !2509)
!2564 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2563)
!2565 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2563)
!2566 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2563)
!2567 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2563)
!2568 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !2509)
!2570 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2569)
!2571 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2569)
!2572 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2569)
!2573 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2569)
!2574 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !2509)
!2576 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2575)
!2577 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2575)
!2578 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2575)
!2579 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2575)
!2580 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !2509)
!2582 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2581)
!2583 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2581)
!2584 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2581)
!2585 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2581)
!2586 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !2509)
!2588 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2587)
!2589 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2587)
!2590 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2587)
!2591 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2587)
!2592 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !2509)
!2594 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2593)
!2595 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2593)
!2596 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2593)
!2597 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2593)
!2598 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !2509)
!2600 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2599)
!2601 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2599)
!2602 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2599)
!2603 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2599)
!2604 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !2509)
!2606 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2605)
!2607 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2605)
!2608 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2605)
!2609 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2605)
!2610 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !2480)
!2611 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !2480)
!2613 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2612)
!2614 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !2480)
!2615 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !2480)
!2616 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !2480)
!2617 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !2480)
!2618 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !2480)
!2620 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2619)
!2621 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2619)
!2622 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2619)
!2623 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !2480)
!2624 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !2480)
!2625 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !2480)
!2626 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !2480)
!2628 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2627)
!2629 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2627)
!2630 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2627)
!2631 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !2480)
!2632 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !2480)
!2634 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2633)
!2635 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2633)
!2636 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2633)
!2637 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !2480)
!2638 = !DILocation(line: 0, scope: !602, inlinedAt: !2480)
!2639 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !2473)
!2640 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !2473)
!2641 = !DILocation(line: 99, column: 3, scope: !2251)
!2642 = !DILocation(line: 0, scope: !2251)
!2643 = !DILocation(line: 100, column: 1, scope: !2251)
!2644 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 78, column: 10, scope: !999)
!2646 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2645)
!2647 = !DILocation(line: 78, column: 21, scope: !999)
!2648 = !DILocation(line: 78, column: 3, scope: !999)
!2649 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 85, column: 10, scope: !1092)
!2652 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2650)
!2653 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2651)
!2654 = !DILocation(line: 85, column: 30, scope: !1092)
!2655 = !DILocation(line: 85, column: 3, scope: !1092)
!2656 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 92, column: 10, scope: !1102)
!2659 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2657)
!2660 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2658)
!2661 = !DILocation(line: 92, column: 30, scope: !1102)
!2662 = !DILocation(line: 92, column: 3, scope: !1102)
!2663 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 98, column: 10, scope: !1005)
!2666 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2664)
!2667 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2665)
!2668 = !DILocation(line: 98, column: 30, scope: !1005)
!2669 = !DILocation(line: 98, column: 3, scope: !1005)
!2670 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 105, column: 12, scope: !1023)
!2673 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2671)
!2674 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2672)
!2675 = !DILocation(line: 105, column: 32, scope: !1023)
!2676 = !DILocation(line: 105, column: 3, scope: !1023)
!2677 = !DILocation(line: 113, column: 31, scope: !658)
!2678 = !DILocation(line: 113, column: 43, scope: !658)
!2679 = !DILocation(line: 115, column: 8, scope: !658)
!2680 = !DILocation(line: 115, column: 12, scope: !658)
!2681 = !DILocation(line: 116, column: 6, scope: !658)
!2682 = !DILocation(line: 116, column: 26, scope: !658)
!2683 = !DILocation(line: 117, column: 1, scope: !658)
!2684 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 122, column: 41, scope: !1027)
!2688 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2685)
!2689 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2686)
!2690 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !2687)
!2691 = !DILocation(line: 122, column: 21, scope: !1027)
!2692 = !DILocation(line: 125, column: 15, scope: !1027)
!2693 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 126, column: 9, scope: !1036)
!2695 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !2694)
!2696 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !2694)
!2697 = !DILocation(line: 126, column: 7, scope: !1027)
!2698 = !DILocation(line: 128, column: 25, scope: !1034)
!2699 = !DILocation(line: 131, column: 40, scope: !1035)
!2700 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 131, column: 5, scope: !1035)
!2702 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !2701)
!2703 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !2701)
!2704 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !2701)
!2706 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !2705)
!2707 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !2705)
!2708 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !2705)
!2709 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !2705)
!2710 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !2705)
!2711 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !2701)
!2713 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2712)
!2714 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2712)
!2715 = !DILocation(line: 132, column: 3, scope: !1035)
!2716 = !DILocation(line: 0, scope: !1027)
!2717 = !DILocation(line: 139, column: 3, scope: !1027)
!2718 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !650, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2719)
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2727}
!2720 = !DILocalVariable(name: "f", arg: 1, scope: !2718, file: !124, line: 144, type: !240)
!2721 = !DILocalVariable(name: "next", scope: !2718, file: !124, line: 149, type: !240)
!2722 = !DILocalVariable(name: "temp", scope: !2718, file: !124, line: 155, type: !240)
!2723 = !DILocalVariable(name: "waitq", scope: !2718, file: !124, line: 156, type: !150)
!2724 = !DILocalVariable(name: "first", scope: !2725, file: !124, line: 163, type: !240)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !124, line: 163, column: 12)
!2726 = distinct !DILexicalBlock(scope: !2718, file: !124, line: 160, column: 25)
!2727 = !DILocalVariable(name: "__mptr", scope: !2728, file: !124, line: 163, type: !1041)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !124, line: 163, column: 12)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !124, line: 163, column: 12)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !124, line: 163, column: 12)
!2731 = !DILocation(line: 144, column: 33, scope: !2718)
!2732 = !DILocation(line: 147, column: 6, scope: !2718)
!2733 = !DILocation(line: 147, column: 15, scope: !2718)
!2734 = !DILocation(line: 149, column: 15, scope: !2718)
!2735 = !DILocation(line: 156, column: 34, scope: !2718)
!2736 = !DILocation(line: 156, column: 21, scope: !2718)
!2737 = !DILocation(line: 160, column: 12, scope: !2718)
!2738 = !DILocation(line: 160, column: 21, scope: !2718)
!2739 = !DILocation(line: 160, column: 3, scope: !2718)
!2740 = !DILocation(line: 163, column: 12, scope: !2725)
!2741 = !DILocation(line: 163, column: 12, scope: !2730)
!2742 = !DILocation(line: 155, column: 15, scope: !2718)
!2743 = !DILocation(line: 164, column: 27, scope: !2726)
!2744 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 164, column: 5, scope: !2726)
!2746 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !2745)
!2747 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !2745)
!2748 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !2745)
!2750 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !2749)
!2751 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !2749)
!2752 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !2749)
!2753 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !2749)
!2754 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !2749)
!2755 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !2745)
!2757 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2756)
!2758 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2756)
!2759 = !DILocation(line: 165, column: 16, scope: !2726)
!2760 = !DILocation(line: 168, column: 9, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2726, file: !124, line: 168, column: 9)
!2762 = !DILocation(line: 168, column: 9, scope: !2726)
!2763 = !DILocalVariable(name: "f", arg: 1, scope: !2764, file: !124, line: 663, type: !240)
!2764 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !2765, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!48, !240, !29}
!2767 = !{!2763, !2768, !2769, !2770}
!2768 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !2764, file: !124, line: 663, type: !29)
!2769 = !DILocalVariable(name: "curr_thread", scope: !2764, file: !124, line: 666, type: !285)
!2770 = !DILocalVariable(name: "fiber_sched_queue", scope: !2764, file: !124, line: 674, type: !150)
!2771 = !DILocation(line: 663, column: 30, scope: !2764, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 171, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2761, file: !124, line: 168, column: 14)
!2774 = !DILocation(line: 663, column: 41, scope: !2764, inlinedAt: !2772)
!2775 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 666, column: 30, scope: !2764, inlinedAt: !2772)
!2779 = !DILocation(line: 666, column: 16, scope: !2764, inlinedAt: !2772)
!2780 = !DILocation(line: 366, column: 29, scope: !2781, inlinedAt: !2788)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !124, line: 366, column: 29)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !124, line: 366, column: 29)
!2783 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2784)
!2784 = !{!2785, !2786, !2787}
!2785 = !DILocalVariable(name: "sys", scope: !2783, file: !124, line: 366, type: !264)
!2786 = !DILocalVariable(name: "__r", scope: !2782, file: !124, line: 366, type: !264)
!2787 = !DILocalVariable(name: "__r", scope: !2781, file: !124, line: 366, type: !264)
!2788 = distinct !DILocation(line: 373, column: 20, scope: !2789, inlinedAt: !2797)
!2789 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !768, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2790)
!2790 = !{!2791, !2792, !2793, !2795}
!2791 = !DILocalVariable(name: "random_cpu", scope: !2789, file: !124, line: 373, type: !48)
!2792 = !DILocalVariable(name: "sys", scope: !2789, file: !124, line: 374, type: !264)
!2793 = !DILocalVariable(name: "__r", scope: !2794, file: !124, line: 374, type: !264)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !124, line: 374, column: 27)
!2795 = !DILocalVariable(name: "__r", scope: !2796, file: !124, line: 374, type: !264)
!2796 = distinct !DILexicalBlock(scope: !2794, file: !124, line: 374, column: 27)
!2797 = distinct !DILocation(line: 670, column: 19, scope: !2798, inlinedAt: !2772)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !124, line: 669, column: 23)
!2799 = distinct !DILexicalBlock(scope: !2764, file: !124, line: 669, column: 7)
!2800 = !{i32 -2147185111}
!2801 = !DILocation(line: 366, column: 29, scope: !2782, inlinedAt: !2788)
!2802 = !DILocation(line: 366, column: 23, scope: !2783, inlinedAt: !2788)
!2803 = !DILocation(line: 358, column: 5, scope: !2804, inlinedAt: !2809)
!2804 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !2805, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!25}
!2807 = !{!2808}
!2808 = !DILocalVariable(name: "t", scope: !2804, file: !124, line: 358, type: !25)
!2809 = distinct !DILocation(line: 367, column: 18, scope: !2783, inlinedAt: !2788)
!2810 = !DILocation(line: 359, column: 5, scope: !2804, inlinedAt: !2809)
!2811 = !DILocation(line: 360, column: 12, scope: !2804, inlinedAt: !2809)
!2812 = !DILocation(line: 358, column: 14, scope: !2804, inlinedAt: !2809)
!2813 = !DILocation(line: 361, column: 1, scope: !2804, inlinedAt: !2809)
!2814 = !DILocation(line: 367, column: 39, scope: !2783, inlinedAt: !2788)
!2815 = !DILocation(line: 367, column: 34, scope: !2783, inlinedAt: !2788)
!2816 = !DILocation(line: 367, column: 32, scope: !2783, inlinedAt: !2788)
!2817 = !DILocation(line: 374, column: 27, scope: !2796, inlinedAt: !2797)
!2818 = !{i32 -2147182110}
!2819 = !DILocation(line: 374, column: 27, scope: !2794, inlinedAt: !2797)
!2820 = !DILocation(line: 374, column: 21, scope: !2789, inlinedAt: !2797)
!2821 = !DILocation(line: 375, column: 10, scope: !2789, inlinedAt: !2797)
!2822 = !DILocation(line: 0, scope: !2764, inlinedAt: !2772)
!2823 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 674, column: 41, scope: !2764, inlinedAt: !2772)
!2827 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2824)
!2828 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2825)
!2829 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !2826)
!2830 = !DILocation(line: 674, column: 21, scope: !2764, inlinedAt: !2772)
!2831 = !DILocation(line: 678, column: 6, scope: !2764, inlinedAt: !2772)
!2832 = !DILocation(line: 678, column: 15, scope: !2764, inlinedAt: !2772)
!2833 = !DILocation(line: 679, column: 22, scope: !2764, inlinedAt: !2772)
!2834 = !DILocalVariable(name: "nelm", arg: 1, scope: !2835, file: !53, line: 116, type: !150)
!2835 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1070, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2836)
!2836 = !{!2834, !2837}
!2837 = !DILocalVariable(name: "head", arg: 2, scope: !2835, file: !53, line: 116, type: !150)
!2838 = !DILocation(line: 116, column: 52, scope: !2835, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 679, column: 3, scope: !2764, inlinedAt: !2772)
!2840 = !DILocation(line: 116, column: 76, scope: !2835, inlinedAt: !2839)
!2841 = !DILocation(line: 118, column: 25, scope: !2835, inlinedAt: !2839)
!2842 = !DILocalVariable(name: "nelm", arg: 1, scope: !2843, file: !53, line: 85, type: !150)
!2843 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !2844, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !150, !150, !150}
!2846 = !{!2842, !2847, !2848}
!2847 = !DILocalVariable(name: "prev", arg: 2, scope: !2843, file: !53, line: 86, type: !150)
!2848 = !DILocalVariable(name: "next", arg: 3, scope: !2843, file: !53, line: 87, type: !150)
!2849 = !DILocation(line: 85, column: 49, scope: !2843, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 118, column: 2, scope: !2835, inlinedAt: !2839)
!2851 = !DILocation(line: 86, column: 28, scope: !2843, inlinedAt: !2850)
!2852 = !DILocation(line: 87, column: 28, scope: !2843, inlinedAt: !2850)
!2853 = !DILocation(line: 89, column: 13, scope: !2843, inlinedAt: !2850)
!2854 = !DILocation(line: 90, column: 8, scope: !2843, inlinedAt: !2850)
!2855 = !DILocation(line: 90, column: 13, scope: !2843, inlinedAt: !2850)
!2856 = !DILocation(line: 91, column: 8, scope: !2843, inlinedAt: !2850)
!2857 = !DILocation(line: 91, column: 13, scope: !2843, inlinedAt: !2850)
!2858 = !DILocation(line: 92, column: 8, scope: !2843, inlinedAt: !2850)
!2859 = !DILocation(line: 92, column: 13, scope: !2843, inlinedAt: !2850)
!2860 = !DILocation(line: 683, column: 20, scope: !2861, inlinedAt: !2772)
!2861 = distinct !DILexicalBlock(scope: !2764, file: !124, line: 683, column: 7)
!2862 = !DILocation(line: 683, column: 7, scope: !2861, inlinedAt: !2772)
!2863 = !DILocation(line: 683, column: 7, scope: !2764, inlinedAt: !2772)
!2864 = !DILocation(line: 687, column: 5, scope: !2865, inlinedAt: !2772)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !124, line: 683, column: 26)
!2866 = !DILocation(line: 688, column: 3, scope: !2865, inlinedAt: !2772)
!2867 = distinct !{!2867, !2739, !2868}
!2868 = !DILocation(line: 173, column: 3, scope: !2718)
!2869 = !DILocation(line: 175, column: 6, scope: !2718)
!2870 = !DILocation(line: 175, column: 14, scope: !2718)
!2871 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 179, column: 10, scope: !2718)
!2876 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2872)
!2877 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2873)
!2878 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !2874)
!2879 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !2875)
!2880 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !2875)
!2881 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !2875)
!2883 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !2882)
!2884 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !2882)
!2885 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !2875)
!2886 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !2875)
!2887 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !2875)
!2888 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !2875)
!2890 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !2889)
!2891 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !2889)
!2892 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !2889)
!2894 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !2893)
!2895 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !2893)
!2896 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !2893)
!2897 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !2893)
!2898 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !2893)
!2899 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !2889)
!2901 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2900)
!2902 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2900)
!2903 = !DILocation(line: 180, column: 8, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2718, file: !124, line: 180, column: 7)
!2905 = !DILocation(line: 180, column: 7, scope: !2718)
!2906 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 181, column: 12, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2904, file: !124, line: 180, column: 16)
!2911 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2907)
!2912 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2908)
!2913 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !2909)
!2914 = !DILocation(line: 182, column: 3, scope: !2910)
!2915 = !DILocation(line: 0, scope: !2718)
!2916 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 183, column: 3, scope: !2718)
!2919 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2917)
!2920 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2918)
!2921 = !DILocation(line: 183, column: 23, scope: !2718)
!2922 = !DILocation(line: 183, column: 34, scope: !2718)
!2923 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 186, column: 19, scope: !2718)
!2926 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2924)
!2927 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2925)
!2928 = !DILocation(line: 186, column: 39, scope: !2718)
!2929 = !DILocation(line: 186, column: 51, scope: !2718)
!2930 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 186, column: 3, scope: !2718)
!2932 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !2931)
!2933 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !2931)
!2934 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !2931)
!2936 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !2935)
!2937 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !2935)
!2938 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !2935)
!2939 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !2935)
!2940 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !2935)
!2941 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !2931)
!2943 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2942)
!2944 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2942)
!2945 = !DILocation(line: 189, column: 3, scope: !2718)
!2946 = !DILocation(line: 190, column: 3, scope: !2718)
!2947 = !DILocation(line: 193, column: 3, scope: !2718)
!2948 = !DILocation(line: 196, column: 1, scope: !2718)
!2949 = !DILocation(line: 663, column: 30, scope: !2764)
!2950 = !DILocation(line: 663, column: 41, scope: !2764)
!2951 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 666, column: 30, scope: !2764)
!2955 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2952)
!2956 = !DILocation(line: 666, column: 16, scope: !2764)
!2957 = !DILocation(line: 669, column: 7, scope: !2799)
!2958 = !DILocation(line: 669, column: 7, scope: !2764)
!2959 = !DILocation(line: 366, column: 29, scope: !2781, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 373, column: 20, scope: !2789, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 670, column: 19, scope: !2798)
!2962 = !DILocation(line: 366, column: 29, scope: !2782, inlinedAt: !2960)
!2963 = !DILocation(line: 366, column: 23, scope: !2783, inlinedAt: !2960)
!2964 = !DILocation(line: 358, column: 5, scope: !2804, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 367, column: 18, scope: !2783, inlinedAt: !2960)
!2966 = !DILocation(line: 359, column: 5, scope: !2804, inlinedAt: !2965)
!2967 = !DILocation(line: 360, column: 12, scope: !2804, inlinedAt: !2965)
!2968 = !DILocation(line: 358, column: 14, scope: !2804, inlinedAt: !2965)
!2969 = !DILocation(line: 361, column: 1, scope: !2804, inlinedAt: !2965)
!2970 = !DILocation(line: 367, column: 39, scope: !2783, inlinedAt: !2960)
!2971 = !DILocation(line: 367, column: 34, scope: !2783, inlinedAt: !2960)
!2972 = !DILocation(line: 367, column: 32, scope: !2783, inlinedAt: !2960)
!2973 = !DILocation(line: 374, column: 27, scope: !2796, inlinedAt: !2961)
!2974 = !DILocation(line: 374, column: 27, scope: !2794, inlinedAt: !2961)
!2975 = !DILocation(line: 374, column: 21, scope: !2789, inlinedAt: !2961)
!2976 = !DILocation(line: 375, column: 10, scope: !2789, inlinedAt: !2961)
!2977 = !DILocation(line: 671, column: 3, scope: !2798)
!2978 = !DILocation(line: 0, scope: !2764)
!2979 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 674, column: 41, scope: !2764)
!2983 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !2980)
!2984 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !2981)
!2985 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !2982)
!2986 = !DILocation(line: 674, column: 21, scope: !2764)
!2987 = !DILocation(line: 678, column: 6, scope: !2764)
!2988 = !DILocation(line: 678, column: 15, scope: !2764)
!2989 = !DILocation(line: 679, column: 22, scope: !2764)
!2990 = !DILocation(line: 116, column: 52, scope: !2835, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 679, column: 3, scope: !2764)
!2992 = !DILocation(line: 116, column: 76, scope: !2835, inlinedAt: !2991)
!2993 = !DILocation(line: 118, column: 25, scope: !2835, inlinedAt: !2991)
!2994 = !DILocation(line: 85, column: 49, scope: !2843, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 118, column: 2, scope: !2835, inlinedAt: !2991)
!2996 = !DILocation(line: 86, column: 28, scope: !2843, inlinedAt: !2995)
!2997 = !DILocation(line: 87, column: 28, scope: !2843, inlinedAt: !2995)
!2998 = !DILocation(line: 89, column: 13, scope: !2843, inlinedAt: !2995)
!2999 = !DILocation(line: 90, column: 8, scope: !2843, inlinedAt: !2995)
!3000 = !DILocation(line: 90, column: 13, scope: !2843, inlinedAt: !2995)
!3001 = !DILocation(line: 91, column: 8, scope: !2843, inlinedAt: !2995)
!3002 = !DILocation(line: 91, column: 13, scope: !2843, inlinedAt: !2995)
!3003 = !DILocation(line: 92, column: 8, scope: !2843, inlinedAt: !2995)
!3004 = !DILocation(line: 92, column: 13, scope: !2843, inlinedAt: !2995)
!3005 = !DILocation(line: 683, column: 20, scope: !2861)
!3006 = !DILocation(line: 683, column: 7, scope: !2861)
!3007 = !DILocation(line: 683, column: 7, scope: !2764)
!3008 = !DILocation(line: 687, column: 5, scope: !2865)
!3009 = !DILocation(line: 688, column: 3, scope: !2865)
!3010 = !DILocation(line: 690, column: 3, scope: !2764)
!3011 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !650, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3012)
!3012 = !{!3013}
!3013 = !DILocalVariable(name: "f_to", arg: 1, scope: !3011, file: !124, line: 198, type: !240)
!3014 = !DILocation(line: 198, column: 33, scope: !3011)
!3015 = !DILocation(line: 202, column: 9, scope: !3011)
!3016 = !DILocation(line: 202, column: 19, scope: !3011)
!3017 = !DILocation(line: 202, column: 32, scope: !3011)
!3018 = !DILocation(line: 202, column: 3, scope: !3011)
!3019 = !DILocation(line: 208, column: 3, scope: !3011)
!3020 = !DILocation(line: 210, column: 3, scope: !3011)
!3021 = !DILocation(line: 274, column: 33, scope: !649)
!3022 = !DILocation(line: 276, column: 26, scope: !649)
!3023 = !DILocation(line: 276, column: 37, scope: !649)
!3024 = !DILocation(line: 276, column: 6, scope: !649)
!3025 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 277, column: 3, scope: !649)
!3027 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3026)
!3028 = !DILocation(line: 276, column: 32, scope: !649)
!3029 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3026)
!3030 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3026)
!3031 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3026)
!3032 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 278, column: 3, scope: !649)
!3034 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3033)
!3035 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3033)
!3036 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3033)
!3037 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3033)
!3038 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 279, column: 3, scope: !649)
!3040 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3039)
!3041 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3039)
!3042 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3039)
!3043 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3039)
!3044 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 280, column: 3, scope: !649)
!3046 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3045)
!3047 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3045)
!3048 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3045)
!3049 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3045)
!3050 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 281, column: 3, scope: !649)
!3052 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3051)
!3053 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3051)
!3054 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3051)
!3055 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3051)
!3056 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 282, column: 3, scope: !649)
!3058 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3057)
!3059 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3057)
!3060 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3057)
!3061 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3057)
!3062 = !DILocation(line: 283, column: 18, scope: !649)
!3063 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 283, column: 3, scope: !649)
!3065 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3064)
!3066 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3064)
!3067 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3064)
!3068 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3064)
!3069 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 284, column: 3, scope: !649)
!3071 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3070)
!3072 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3070)
!3073 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3070)
!3074 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3070)
!3075 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 285, column: 3, scope: !649)
!3077 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3076)
!3078 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3076)
!3079 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3076)
!3080 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3076)
!3081 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 286, column: 3, scope: !649)
!3083 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3082)
!3084 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3082)
!3085 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3082)
!3086 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3082)
!3087 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 287, column: 3, scope: !649)
!3089 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3088)
!3090 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3088)
!3091 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3088)
!3092 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3088)
!3093 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 288, column: 3, scope: !649)
!3095 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3094)
!3096 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3094)
!3097 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3094)
!3098 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3094)
!3099 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 289, column: 3, scope: !649)
!3101 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3100)
!3102 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3100)
!3103 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3100)
!3104 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3100)
!3105 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 290, column: 3, scope: !649)
!3107 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3106)
!3108 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3106)
!3109 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3106)
!3110 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3106)
!3111 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 291, column: 3, scope: !649)
!3113 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3112)
!3114 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3112)
!3115 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3112)
!3116 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3112)
!3117 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 292, column: 3, scope: !649)
!3119 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3118)
!3120 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3118)
!3121 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3118)
!3122 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3118)
!3123 = !DILocation(line: 294, column: 3, scope: !649)
!3124 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !3125, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!48, !240}
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "f_to", arg: 1, scope: !3124, file: !124, line: 299, type: !240)
!3129 = !DILocalVariable(name: "f_from", scope: !3124, file: !124, line: 302, type: !240)
!3130 = !DILocalVariable(name: "fiber_sched_queue", scope: !3131, file: !124, line: 312, type: !150)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !124, line: 310, column: 63)
!3132 = distinct !DILexicalBlock(scope: !3124, file: !124, line: 310, column: 7)
!3133 = !DILocation(line: 299, column: 36, scope: !3124)
!3134 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 302, column: 24, scope: !3124)
!3138 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3135)
!3139 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3136)
!3140 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !3137)
!3141 = !DILocation(line: 302, column: 15, scope: !3124)
!3142 = !DILocation(line: 305, column: 15, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3124, file: !124, line: 305, column: 7)
!3144 = !DILocation(line: 305, column: 32, scope: !3143)
!3145 = !DILocation(line: 306, column: 22, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !124, line: 305, column: 61)
!3147 = !DILocation(line: 307, column: 3, scope: !3146)
!3148 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 310, column: 17, scope: !3132)
!3152 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3149)
!3153 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3150)
!3154 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !3151)
!3155 = !DILocation(line: 310, column: 14, scope: !3132)
!3156 = !DILocation(line: 310, column: 34, scope: !3132)
!3157 = !DILocation(line: 310, column: 45, scope: !3132)
!3158 = !DILocation(line: 310, column: 54, scope: !3132)
!3159 = !DILocation(line: 310, column: 7, scope: !3124)
!3160 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 312, column: 43, scope: !3131)
!3164 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3161)
!3165 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3162)
!3166 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !3163)
!3167 = !DILocation(line: 312, column: 23, scope: !3131)
!3168 = !DILocation(line: 318, column: 29, scope: !3131)
!3169 = !DILocation(line: 116, column: 52, scope: !2835, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 318, column: 5, scope: !3131)
!3171 = !DILocation(line: 116, column: 76, scope: !2835, inlinedAt: !3170)
!3172 = !DILocation(line: 118, column: 25, scope: !2835, inlinedAt: !3170)
!3173 = !DILocation(line: 85, column: 49, scope: !2843, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 118, column: 2, scope: !2835, inlinedAt: !3170)
!3175 = !DILocation(line: 86, column: 28, scope: !2843, inlinedAt: !3174)
!3176 = !DILocation(line: 87, column: 28, scope: !2843, inlinedAt: !3174)
!3177 = !DILocation(line: 89, column: 13, scope: !2843, inlinedAt: !3174)
!3178 = !DILocation(line: 90, column: 8, scope: !2843, inlinedAt: !3174)
!3179 = !DILocation(line: 90, column: 13, scope: !2843, inlinedAt: !3174)
!3180 = !DILocation(line: 91, column: 8, scope: !2843, inlinedAt: !3174)
!3181 = !DILocation(line: 91, column: 13, scope: !2843, inlinedAt: !3174)
!3182 = !DILocation(line: 92, column: 8, scope: !2843, inlinedAt: !3174)
!3183 = !DILocation(line: 92, column: 13, scope: !2843, inlinedAt: !3174)
!3184 = !DILocation(line: 319, column: 3, scope: !3131)
!3185 = !DILocation(line: 323, column: 16, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3124, file: !124, line: 323, column: 7)
!3187 = !DILocation(line: 323, column: 8, scope: !3186)
!3188 = !DILocation(line: 323, column: 7, scope: !3124)
!3189 = !DILocation(line: 324, column: 29, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !124, line: 323, column: 24)
!3191 = !DILocalVariable(name: "vc", arg: 1, scope: !3192, file: !124, line: 906, type: !88)
!3192 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 906, type: !3193, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !88}
!3195 = !{!3191, !3196}
!3196 = !DILocalVariable(name: "curr_fiber", scope: !3192, file: !124, line: 909, type: !240)
!3197 = !DILocation(line: 906, column: 49, scope: !3192, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 324, column: 5, scope: !3190)
!3199 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 909, column: 28, scope: !3192, inlinedAt: !3198)
!3203 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3200)
!3204 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3201)
!3205 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !3202)
!3206 = !DILocation(line: 909, column: 15, scope: !3192, inlinedAt: !3198)
!3207 = !DILocation(line: 912, column: 15, scope: !3192, inlinedAt: !3198)
!3208 = !DILocation(line: 912, column: 18, scope: !3192, inlinedAt: !3198)
!3209 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 913, column: 3, scope: !3192, inlinedAt: !3198)
!3211 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3210)
!3212 = !DILocation(line: 913, column: 21, scope: !3192, inlinedAt: !3198)
!3213 = !DILocation(line: 913, column: 24, scope: !3192, inlinedAt: !3198)
!3214 = !DILocation(line: 325, column: 3, scope: !3190)
!3215 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 328, column: 3, scope: !3124)
!3218 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3216)
!3219 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3217)
!3220 = !DILocation(line: 328, column: 23, scope: !3124)
!3221 = !DILocation(line: 328, column: 34, scope: !3124)
!3222 = !DILocation(line: 329, column: 20, scope: !3124)
!3223 = !DILocation(line: 330, column: 9, scope: !3124)
!3224 = !DILocation(line: 330, column: 18, scope: !3124)
!3225 = !DILocation(line: 331, column: 3, scope: !3124)
!3226 = !DILocation(line: 333, column: 3, scope: !3124)
!3227 = !DILocation(line: 906, column: 49, scope: !3192)
!3228 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 909, column: 28, scope: !3192)
!3232 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3229)
!3233 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3230)
!3234 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !3231)
!3235 = !DILocation(line: 909, column: 15, scope: !3192)
!3236 = !DILocation(line: 912, column: 15, scope: !3192)
!3237 = !DILocation(line: 912, column: 18, scope: !3192)
!3238 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 913, column: 3, scope: !3192)
!3240 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3239)
!3241 = !DILocation(line: 913, column: 21, scope: !3192)
!3242 = !DILocation(line: 913, column: 24, scope: !3192)
!3243 = !DILocation(line: 914, column: 1, scope: !3192)
!3244 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !3245, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null}
!3247 = !{!3248}
!3248 = !DILocalVariable(name: "curr", scope: !3244, file: !124, line: 338, type: !240)
!3249 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 338, column: 22, scope: !3244)
!3253 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3250)
!3254 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3251)
!3255 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !3252)
!3256 = !DILocation(line: 338, column: 15, scope: !3244)
!3257 = !DILocation(line: 340, column: 3, scope: !3244)
!3258 = !DILocation(line: 341, column: 1, scope: !3244)
!3259 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !3260, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!29, !240}
!3262 = !{!3263, !3264, !3265}
!3263 = !DILocalVariable(name: "f", arg: 1, scope: !3259, file: !124, line: 343, type: !240)
!3264 = !DILocalVariable(name: "idle_fiber", scope: !3259, file: !124, line: 345, type: !240)
!3265 = !DILocalVariable(name: "result", scope: !3259, file: !124, line: 348, type: !29)
!3266 = !DILocation(line: 343, column: 36, scope: !3259)
!3267 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 345, column: 28, scope: !3259)
!3271 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3268)
!3272 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !3269)
!3273 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !3270)
!3274 = !DILocation(line: 345, column: 15, scope: !3259)
!3275 = !DILocation(line: 348, column: 11, scope: !3259)
!3276 = !DILocation(line: 349, column: 18, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3259, file: !124, line: 349, column: 7)
!3278 = !DILocation(line: 349, column: 7, scope: !3259)
!3279 = !DILocation(line: 353, column: 3, scope: !3259)
!3280 = !DILocation(line: 366, column: 29, scope: !2781, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 373, column: 20, scope: !2789)
!3282 = !DILocation(line: 366, column: 29, scope: !2782, inlinedAt: !3281)
!3283 = !DILocation(line: 366, column: 23, scope: !2783, inlinedAt: !3281)
!3284 = !DILocation(line: 358, column: 5, scope: !2804, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 367, column: 18, scope: !2783, inlinedAt: !3281)
!3286 = !DILocation(line: 359, column: 5, scope: !2804, inlinedAt: !3285)
!3287 = !DILocation(line: 360, column: 12, scope: !2804, inlinedAt: !3285)
!3288 = !DILocation(line: 358, column: 14, scope: !2804, inlinedAt: !3285)
!3289 = !DILocation(line: 361, column: 1, scope: !2804, inlinedAt: !3285)
!3290 = !DILocation(line: 367, column: 39, scope: !2783, inlinedAt: !3281)
!3291 = !DILocation(line: 367, column: 34, scope: !2783, inlinedAt: !3281)
!3292 = !DILocation(line: 367, column: 32, scope: !2783, inlinedAt: !3281)
!3293 = !DILocation(line: 374, column: 27, scope: !2796)
!3294 = !DILocation(line: 374, column: 27, scope: !2794)
!3295 = !DILocation(line: 374, column: 21, scope: !2789)
!3296 = !DILocation(line: 375, column: 10, scope: !2789)
!3297 = !DILocation(line: 375, column: 33, scope: !2789)
!3298 = !DILocation(line: 375, column: 42, scope: !2789)
!3299 = !DILocation(line: 375, column: 3, scope: !2789)
!3300 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !3125, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3301)
!3301 = !{!3302, !3303, !3304, !3306, !3308, !3309, !3310, !3311, !3313, !3318}
!3302 = !DILocalVariable(name: "to_del", arg: 1, scope: !3300, file: !124, line: 383, type: !240)
!3303 = !DILocalVariable(name: "sys", scope: !3300, file: !124, line: 386, type: !264)
!3304 = !DILocalVariable(name: "__r", scope: !3305, file: !124, line: 386, type: !264)
!3305 = distinct !DILexicalBlock(scope: !3300, file: !124, line: 386, column: 26)
!3306 = !DILocalVariable(name: "__r", scope: !3307, file: !124, line: 386, type: !264)
!3307 = distinct !DILexicalBlock(scope: !3305, file: !124, line: 386, column: 26)
!3308 = !DILocalVariable(name: "cpu_iter", scope: !3300, file: !124, line: 387, type: !48)
!3309 = !DILocalVariable(name: "temp", scope: !3300, file: !124, line: 390, type: !150)
!3310 = !DILocalVariable(name: "test", scope: !3300, file: !124, line: 391, type: !240)
!3311 = !DILocalVariable(name: "iter", scope: !3312, file: !124, line: 392, type: !48)
!3312 = distinct !DILexicalBlock(scope: !3300, file: !124, line: 392, column: 3)
!3313 = !DILocalVariable(name: "__mptr", scope: !3314, file: !124, line: 395, type: !1041)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !124, line: 395, column: 5)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !124, line: 395, column: 5)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !124, line: 392, column: 46)
!3317 = distinct !DILexicalBlock(scope: !3312, file: !124, line: 392, column: 3)
!3318 = !DILocalVariable(name: "__mptr", scope: !3319, file: !124, line: 395, type: !1041)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !124, line: 395, column: 5)
!3320 = distinct !DILexicalBlock(scope: !3315, file: !124, line: 395, column: 5)
!3321 = !DILocation(line: 383, column: 42, scope: !3300)
!3322 = !DILocation(line: 386, column: 26, scope: !3307)
!3323 = !{i32 -2147179109}
!3324 = !DILocation(line: 386, column: 26, scope: !3305)
!3325 = !DILocation(line: 386, column: 20, scope: !3300)
!3326 = !DILocation(line: 387, column: 23, scope: !3300)
!3327 = !DILocation(line: 387, column: 7, scope: !3300)
!3328 = !DILocation(line: 392, column: 12, scope: !3312)
!3329 = !DILocation(line: 392, column: 27, scope: !3317)
!3330 = !DILocation(line: 392, column: 3, scope: !3312)
!3331 = !DILocation(line: 394, column: 14, scope: !3316)
!3332 = !DILocation(line: 394, column: 31, scope: !3316)
!3333 = !DILocation(line: 394, column: 40, scope: !3316)
!3334 = !DILocation(line: 390, column: 21, scope: !3300)
!3335 = !DILocation(line: 395, column: 5, scope: !3314)
!3336 = !DILocation(line: 391, column: 15, scope: !3300)
!3337 = !DILocation(line: 0, scope: !3315)
!3338 = !DILocation(line: 395, column: 5, scope: !3315)
!3339 = !DILocation(line: 395, column: 5, scope: !3320)
!3340 = !DILocation(line: 400, column: 16, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !124, line: 400, column: 11)
!3342 = distinct !DILexicalBlock(scope: !3320, file: !124, line: 395, column: 48)
!3343 = !DILocation(line: 400, column: 11, scope: !3342)
!3344 = distinct !{!3344, !3338, !3345}
!3345 = !DILocation(line: 404, column: 5, scope: !3315)
!3346 = !DILocation(line: 392, column: 43, scope: !3317)
!3347 = distinct !{!3347, !3330, !3348}
!3348 = !DILocation(line: 405, column: 3, scope: !3312)
!3349 = !DILocation(line: 401, column: 33, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3341, file: !124, line: 400, column: 26)
!3351 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 401, column: 9, scope: !3350)
!3353 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !3352)
!3354 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !3352)
!3355 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !3352)
!3357 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !3356)
!3358 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !3356)
!3359 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !3356)
!3360 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !3356)
!3361 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !3356)
!3362 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !3352)
!3364 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3363)
!3365 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3363)
!3366 = !DILocation(line: 408, column: 1, scope: !3300)
!3367 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3368)
!3368 = !{!3369, !3370, !3372, !3374, !3375, !3381, !3382, !3387, !3389, !3392, !3394}
!3369 = !DILocalVariable(name: "id", scope: !3367, file: !124, line: 437, type: !291)
!3370 = !DILocalVariable(name: "__r", scope: !3371, file: !124, line: 437, type: !291)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !124, line: 437, column: 19)
!3372 = !DILocalVariable(name: "__r", scope: !3373, file: !124, line: 437, type: !291)
!3373 = distinct !DILexicalBlock(scope: !3371, file: !124, line: 437, column: 19)
!3374 = !DILocalVariable(name: "my_cpu", scope: !3367, file: !124, line: 438, type: !270)
!3375 = !DILocalVariable(name: "_p", scope: !3376, file: !124, line: 444, type: !48)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !124, line: 444, column: 2)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !124, line: 444, column: 2)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !124, line: 444, column: 2)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !124, line: 443, column: 29)
!3380 = distinct !DILexicalBlock(scope: !3367, file: !124, line: 443, column: 9)
!3381 = !DILocalVariable(name: "_t", scope: !3376, file: !124, line: 444, type: !160)
!3382 = !DILocalVariable(name: "__r", scope: !3383, file: !124, line: 444, type: !291)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !124, line: 444, column: 2)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !124, line: 444, column: 2)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !124, line: 444, column: 2)
!3386 = distinct !DILexicalBlock(scope: !3376, file: !124, line: 444, column: 2)
!3387 = !DILocalVariable(name: "__r", scope: !3388, file: !124, line: 444, type: !291)
!3388 = distinct !DILexicalBlock(scope: !3383, file: !124, line: 444, column: 2)
!3389 = !DILocalVariable(name: "__r", scope: !3390, file: !124, line: 444, type: !291)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !124, line: 444, column: 2)
!3391 = distinct !DILexicalBlock(scope: !3385, file: !124, line: 444, column: 2)
!3392 = !DILocalVariable(name: "__r", scope: !3393, file: !124, line: 444, type: !291)
!3393 = distinct !DILexicalBlock(scope: !3390, file: !124, line: 444, column: 2)
!3394 = !DILocalVariable(name: "_p", scope: !3395, file: !124, line: 444, type: !48)
!3395 = distinct !DILexicalBlock(scope: !3377, file: !124, line: 444, column: 2)
!3396 = !DILocation(line: 437, column: 19, scope: !3373)
!3397 = !{i32 -2147162346}
!3398 = !DILocation(line: 437, column: 19, scope: !3371)
!3399 = !DILocation(line: 437, column: 14, scope: !3367)
!3400 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 438, column: 27, scope: !3367)
!3402 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !3401)
!3403 = !DILocation(line: 438, column: 18, scope: !3367)
!3404 = !DILocation(line: 442, column: 23, scope: !3367)
!3405 = !DILocation(line: 442, column: 13, scope: !3367)
!3406 = !DILocation(line: 442, column: 21, scope: !3367)
!3407 = !DILocation(line: 443, column: 10, scope: !3380)
!3408 = !DILocation(line: 443, column: 9, scope: !3367)
!3409 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3414)
!3410 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !3411, file: !3411, line: 39, type: !3412, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!3411 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!31}
!3414 = distinct !DILocation(line: 444, column: 2, scope: !3377)
!3415 = !DILocation(line: 444, column: 2, scope: !3377)
!3416 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !3421)
!3418 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !3411, file: !3411, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3419)
!3419 = !{!3420}
!3420 = !DILocalVariable(name: "base", scope: !3418, file: !3411, line: 84, type: !31)
!3421 = distinct !DILocation(line: 0, scope: !3377)
!3422 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !3421)
!3423 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !3421)
!3424 = distinct !DILexicalBlock(scope: !3418, file: !3411, line: 85, column: 9)
!3425 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !3421)
!3426 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !3421)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !3411, line: 85, column: 15)
!3428 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !3421)
!3429 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !3421)
!3430 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !3421)
!3431 = !DILocation(line: 0, scope: !3424, inlinedAt: !3421)
!3432 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !3437)
!3434 = distinct !DISubprogram(name: "preempt_disable", scope: !3411, file: !3411, line: 46, type: !3245, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3435)
!3435 = !{!3436}
!3436 = !DILocalVariable(name: "base", scope: !3434, file: !3411, line: 48, type: !31)
!3437 = distinct !DILocation(line: 0, scope: !3377)
!3438 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !3437)
!3439 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !3437)
!3440 = distinct !DILexicalBlock(scope: !3434, file: !3411, line: 49, column: 9)
!3441 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !3437)
!3442 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !3437)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !3411, line: 49, column: 15)
!3444 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !3437)
!3445 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !3437)
!3446 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !3437)
!3447 = !DILocation(line: 444, column: 2, scope: !3378)
!3448 = !DILocation(line: 444, column: 2, scope: !3376)
!3449 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 444, column: 2, scope: !3376)
!3451 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3450)
!3452 = !DILocation(line: 444, column: 2, scope: !3385)
!3453 = !DILocation(line: 0, scope: !3385)
!3454 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3461)
!3456 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !3411, file: !3411, line: 94, type: !3457, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!39}
!3459 = !{!3460}
!3460 = !DILocalVariable(name: "base", scope: !3456, file: !3411, line: 96, type: !31)
!3461 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3463)
!3462 = distinct !DISubprogram(name: "in_interrupt_context", scope: !3411, file: !3411, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !991)
!3463 = distinct !DILocation(line: 0, scope: !3385)
!3464 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3461)
!3465 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3461)
!3466 = distinct !DILexicalBlock(scope: !3456, file: !3411, line: 97, column: 9)
!3467 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3461)
!3468 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3461)
!3469 = distinct !DILexicalBlock(scope: !3466, file: !3411, line: 97, column: 15)
!3470 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3461)
!3471 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3461)
!3472 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3461)
!3473 = !DILocation(line: 444, column: 2, scope: !3386)
!3474 = !DILocation(line: 444, column: 2, scope: !3384)
!3475 = !DILocation(line: 444, column: 2, scope: !3391)
!3476 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3481)
!3478 = distinct !DISubprogram(name: "preempt_enable", scope: !3411, file: !3411, line: 57, type: !3245, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3479)
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "base", scope: !3478, file: !3411, line: 59, type: !31)
!3481 = distinct !DILocation(line: 444, column: 2, scope: !3376)
!3482 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3481)
!3483 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3481)
!3484 = distinct !DILexicalBlock(scope: !3478, file: !3411, line: 60, column: 9)
!3485 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3481)
!3486 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3481)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !3411, line: 60, column: 15)
!3488 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3481)
!3489 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3481)
!3490 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3481)
!3491 = !DILocation(line: 444, column: 2, scope: !3395)
!3492 = !DILocation(line: 444, column: 2, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !124, line: 444, column: 2)
!3494 = distinct !DILexicalBlock(scope: !3395, file: !124, line: 444, column: 2)
!3495 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 0, scope: !3493)
!3499 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3497)
!3500 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3497)
!3501 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3497)
!3502 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3497)
!3503 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3497)
!3504 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3497)
!3505 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3497)
!3506 = !DILocation(line: 0, scope: !3493)
!3507 = !DILocation(line: 444, column: 2, scope: !3494)
!3508 = !DILocation(line: 444, column: 2, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3493, file: !124, line: 444, column: 2)
!3510 = !DILocation(line: 444, column: 2, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3493, file: !124, line: 444, column: 2)
!3512 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 444, column: 2, scope: !3395)
!3515 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3514)
!3516 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3514)
!3517 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3514)
!3518 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3514)
!3519 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3514)
!3520 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3514)
!3521 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3514)
!3522 = !DILocation(line: 0, scope: !3367)
!3523 = !DILocation(line: 449, column: 1, scope: !3367)
!3524 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !3525, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!280}
!3527 = !{!3528, !3529, !3531, !3533, !3535, !3541, !3542, !3547, !3549, !3552, !3554}
!3528 = !DILocalVariable(name: "state", scope: !3524, file: !124, line: 412, type: !280)
!3529 = !DILocalVariable(name: "p", scope: !3530, file: !124, line: 412, type: !31)
!3530 = distinct !DILexicalBlock(scope: !3524, file: !124, line: 412, column: 74)
!3531 = !DILocalVariable(name: "__r", scope: !3532, file: !124, line: 412, type: !291)
!3532 = distinct !DILexicalBlock(scope: !3530, file: !124, line: 412, column: 74)
!3533 = !DILocalVariable(name: "__r", scope: !3534, file: !124, line: 412, type: !291)
!3534 = distinct !DILexicalBlock(scope: !3532, file: !124, line: 412, column: 74)
!3535 = !DILocalVariable(name: "_p", scope: !3536, file: !124, line: 415, type: !48)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !124, line: 415, column: 9)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !124, line: 415, column: 9)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !124, line: 415, column: 9)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !124, line: 414, column: 17)
!3540 = distinct !DILexicalBlock(scope: !3524, file: !124, line: 414, column: 9)
!3541 = !DILocalVariable(name: "_t", scope: !3536, file: !124, line: 415, type: !160)
!3542 = !DILocalVariable(name: "__r", scope: !3543, file: !124, line: 415, type: !291)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !124, line: 415, column: 9)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !124, line: 415, column: 9)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !124, line: 415, column: 9)
!3546 = distinct !DILexicalBlock(scope: !3536, file: !124, line: 415, column: 9)
!3547 = !DILocalVariable(name: "__r", scope: !3548, file: !124, line: 415, type: !291)
!3548 = distinct !DILexicalBlock(scope: !3543, file: !124, line: 415, column: 9)
!3549 = !DILocalVariable(name: "__r", scope: !3550, file: !124, line: 415, type: !291)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !124, line: 415, column: 9)
!3551 = distinct !DILexicalBlock(scope: !3545, file: !124, line: 415, column: 9)
!3552 = !DILocalVariable(name: "__r", scope: !3553, file: !124, line: 415, type: !291)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !124, line: 415, column: 9)
!3554 = !DILocalVariable(name: "_p", scope: !3555, file: !124, line: 415, type: !48)
!3555 = distinct !DILexicalBlock(scope: !3537, file: !124, line: 415, column: 9)
!3556 = !DILocation(line: 412, column: 74, scope: !3534)
!3557 = !{i32 -2147173855}
!3558 = !DILocation(line: 412, column: 74, scope: !3532)
!3559 = !DILocation(line: 412, column: 74, scope: !3530)
!3560 = !DILocation(line: 414, column: 10, scope: !3540)
!3561 = !DILocation(line: 414, column: 9, scope: !3524)
!3562 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 415, column: 9, scope: !3537)
!3564 = !DILocation(line: 415, column: 9, scope: !3537)
!3565 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 0, scope: !3537)
!3568 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !3567)
!3569 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !3567)
!3570 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !3567)
!3571 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !3567)
!3572 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !3567)
!3573 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !3567)
!3574 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !3567)
!3575 = !DILocation(line: 0, scope: !3424, inlinedAt: !3567)
!3576 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 0, scope: !3537)
!3579 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !3578)
!3580 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !3578)
!3581 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !3578)
!3582 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !3578)
!3583 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !3578)
!3584 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !3578)
!3585 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !3578)
!3586 = !DILocation(line: 415, column: 9, scope: !3538)
!3587 = !DILocation(line: 415, column: 9, scope: !3536)
!3588 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 415, column: 9, scope: !3536)
!3590 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3589)
!3591 = !DILocation(line: 415, column: 9, scope: !3545)
!3592 = !DILocation(line: 0, scope: !3545)
!3593 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 0, scope: !3545)
!3597 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3595)
!3598 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3595)
!3599 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3595)
!3600 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3595)
!3601 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3595)
!3602 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3595)
!3603 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3595)
!3604 = !DILocation(line: 415, column: 9, scope: !3546)
!3605 = !DILocation(line: 415, column: 9, scope: !3544)
!3606 = !DILocation(line: 415, column: 9, scope: !3551)
!3607 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 415, column: 9, scope: !3536)
!3610 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3609)
!3611 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3609)
!3612 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3609)
!3613 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3609)
!3614 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3609)
!3615 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3609)
!3616 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3609)
!3617 = !DILocation(line: 415, column: 9, scope: !3555)
!3618 = !DILocation(line: 415, column: 9, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !124, line: 415, column: 9)
!3620 = distinct !DILexicalBlock(scope: !3555, file: !124, line: 415, column: 9)
!3621 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 0, scope: !3619)
!3625 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3623)
!3626 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3623)
!3627 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3623)
!3628 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3623)
!3629 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3623)
!3630 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3623)
!3631 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3623)
!3632 = !DILocation(line: 0, scope: !3619)
!3633 = !DILocation(line: 415, column: 9, scope: !3620)
!3634 = !DILocation(line: 415, column: 9, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3619, file: !124, line: 415, column: 9)
!3636 = !DILocation(line: 415, column: 9, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3619, file: !124, line: 415, column: 9)
!3638 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 415, column: 9, scope: !3555)
!3641 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3640)
!3642 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3640)
!3643 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3640)
!3644 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3640)
!3645 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3640)
!3646 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3640)
!3647 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3640)
!3648 = !DILocation(line: 412, column: 43, scope: !3524)
!3649 = !DILocation(line: 412, column: 35, scope: !3524)
!3650 = !DILocation(line: 419, column: 2, scope: !3524)
!3651 = !DILocation(line: 421, column: 27, scope: !3524)
!3652 = !DILocation(line: 421, column: 5, scope: !3524)
!3653 = !DILocation(line: 424, column: 29, scope: !3524)
!3654 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 424, column: 5, scope: !3524)
!3656 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3655)
!3657 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3655)
!3658 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3655)
!3659 = !DILocation(line: 426, column: 5, scope: !3524)
!3660 = !DILocation(line: 429, column: 5, scope: !3524)
!3661 = !DILocation(line: 431, column: 5, scope: !3524)
!3662 = !DILocation(line: 0, scope: !3524)
!3663 = !DILocation(line: 432, column: 1, scope: !3524)
!3664 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3665)
!3665 = !{!3666, !3667, !3671, !3672, !3677, !3679, !3682, !3684, !3686, !3692, !3693, !3698, !3700, !3703, !3705}
!3666 = !DILocalVariable(name: "my_cpu", scope: !3664, file: !124, line: 454, type: !270)
!3667 = !DILocalVariable(name: "_p", scope: !3668, file: !124, line: 456, type: !48)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !124, line: 456, column: 5)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !124, line: 456, column: 5)
!3670 = distinct !DILexicalBlock(scope: !3664, file: !124, line: 456, column: 5)
!3671 = !DILocalVariable(name: "_t", scope: !3668, file: !124, line: 456, type: !160)
!3672 = !DILocalVariable(name: "__r", scope: !3673, file: !124, line: 456, type: !291)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !124, line: 456, column: 5)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !124, line: 456, column: 5)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !124, line: 456, column: 5)
!3676 = distinct !DILexicalBlock(scope: !3668, file: !124, line: 456, column: 5)
!3677 = !DILocalVariable(name: "__r", scope: !3678, file: !124, line: 456, type: !291)
!3678 = distinct !DILexicalBlock(scope: !3673, file: !124, line: 456, column: 5)
!3679 = !DILocalVariable(name: "__r", scope: !3680, file: !124, line: 456, type: !291)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !124, line: 456, column: 5)
!3681 = distinct !DILexicalBlock(scope: !3675, file: !124, line: 456, column: 5)
!3682 = !DILocalVariable(name: "__r", scope: !3683, file: !124, line: 456, type: !291)
!3683 = distinct !DILexicalBlock(scope: !3680, file: !124, line: 456, column: 5)
!3684 = !DILocalVariable(name: "_p", scope: !3685, file: !124, line: 456, type: !48)
!3685 = distinct !DILexicalBlock(scope: !3669, file: !124, line: 456, column: 5)
!3686 = !DILocalVariable(name: "_p", scope: !3687, file: !124, line: 464, type: !48)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !124, line: 464, column: 2)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !124, line: 464, column: 2)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !124, line: 464, column: 2)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !124, line: 463, column: 29)
!3691 = distinct !DILexicalBlock(scope: !3664, file: !124, line: 463, column: 9)
!3692 = !DILocalVariable(name: "_t", scope: !3687, file: !124, line: 464, type: !160)
!3693 = !DILocalVariable(name: "__r", scope: !3694, file: !124, line: 464, type: !291)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !124, line: 464, column: 2)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !124, line: 464, column: 2)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !124, line: 464, column: 2)
!3697 = distinct !DILexicalBlock(scope: !3687, file: !124, line: 464, column: 2)
!3698 = !DILocalVariable(name: "__r", scope: !3699, file: !124, line: 464, type: !291)
!3699 = distinct !DILexicalBlock(scope: !3694, file: !124, line: 464, column: 2)
!3700 = !DILocalVariable(name: "__r", scope: !3701, file: !124, line: 464, type: !291)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !124, line: 464, column: 2)
!3702 = distinct !DILexicalBlock(scope: !3696, file: !124, line: 464, column: 2)
!3703 = !DILocalVariable(name: "__r", scope: !3704, file: !124, line: 464, type: !291)
!3704 = distinct !DILexicalBlock(scope: !3701, file: !124, line: 464, column: 2)
!3705 = !DILocalVariable(name: "_p", scope: !3706, file: !124, line: 464, type: !48)
!3706 = distinct !DILexicalBlock(scope: !3688, file: !124, line: 464, column: 2)
!3707 = !DILocation(line: 454, column: 88, scope: !3664)
!3708 = !DILocation(line: 454, column: 27, scope: !3664)
!3709 = !DILocation(line: 454, column: 18, scope: !3664)
!3710 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 456, column: 5, scope: !3669)
!3712 = !DILocation(line: 456, column: 5, scope: !3669)
!3713 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 0, scope: !3669)
!3716 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !3715)
!3717 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !3715)
!3718 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !3715)
!3719 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !3715)
!3720 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !3715)
!3721 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !3715)
!3722 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !3715)
!3723 = !DILocation(line: 0, scope: !3424, inlinedAt: !3715)
!3724 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 0, scope: !3669)
!3727 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !3726)
!3728 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !3726)
!3729 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !3726)
!3730 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !3726)
!3731 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !3726)
!3732 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !3726)
!3733 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !3726)
!3734 = !DILocation(line: 456, column: 5, scope: !3670)
!3735 = !DILocation(line: 456, column: 5, scope: !3668)
!3736 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 456, column: 5, scope: !3668)
!3738 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3737)
!3739 = !DILocation(line: 456, column: 5, scope: !3675)
!3740 = !DILocation(line: 0, scope: !3675)
!3741 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 0, scope: !3675)
!3745 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3743)
!3746 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3743)
!3747 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3743)
!3748 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3743)
!3749 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3743)
!3750 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3743)
!3751 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3743)
!3752 = !DILocation(line: 456, column: 5, scope: !3676)
!3753 = !DILocation(line: 456, column: 5, scope: !3674)
!3754 = !DILocation(line: 456, column: 5, scope: !3681)
!3755 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 456, column: 5, scope: !3668)
!3758 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3757)
!3759 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3757)
!3760 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3757)
!3761 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3757)
!3762 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3757)
!3763 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3757)
!3764 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3757)
!3765 = !DILocation(line: 456, column: 5, scope: !3685)
!3766 = !DILocation(line: 456, column: 5, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !124, line: 456, column: 5)
!3768 = distinct !DILexicalBlock(scope: !3685, file: !124, line: 456, column: 5)
!3769 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 0, scope: !3767)
!3773 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3771)
!3774 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3771)
!3775 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3771)
!3776 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3771)
!3777 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3771)
!3778 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3771)
!3779 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3771)
!3780 = !DILocation(line: 0, scope: !3767)
!3781 = !DILocation(line: 456, column: 5, scope: !3768)
!3782 = !DILocation(line: 456, column: 5, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3767, file: !124, line: 456, column: 5)
!3784 = !DILocation(line: 456, column: 5, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3767, file: !124, line: 456, column: 5)
!3786 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 456, column: 5, scope: !3685)
!3789 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3788)
!3790 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3788)
!3791 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3788)
!3792 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3788)
!3793 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3788)
!3794 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3788)
!3795 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3788)
!3796 = !DILocation(line: 462, column: 23, scope: !3664)
!3797 = !DILocation(line: 462, column: 13, scope: !3664)
!3798 = !DILocation(line: 462, column: 21, scope: !3664)
!3799 = !DILocation(line: 463, column: 10, scope: !3691)
!3800 = !DILocation(line: 463, column: 9, scope: !3664)
!3801 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 464, column: 2, scope: !3688)
!3803 = !DILocation(line: 464, column: 2, scope: !3688)
!3804 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 0, scope: !3688)
!3807 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !3806)
!3808 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !3806)
!3809 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !3806)
!3810 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !3806)
!3811 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !3806)
!3812 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !3806)
!3813 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !3806)
!3814 = !DILocation(line: 0, scope: !3424, inlinedAt: !3806)
!3815 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 0, scope: !3688)
!3818 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !3817)
!3819 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !3817)
!3820 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !3817)
!3821 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !3817)
!3822 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !3817)
!3823 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !3817)
!3824 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !3817)
!3825 = !DILocation(line: 464, column: 2, scope: !3689)
!3826 = !DILocation(line: 464, column: 2, scope: !3687)
!3827 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 464, column: 2, scope: !3687)
!3829 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3828)
!3830 = !DILocation(line: 464, column: 2, scope: !3696)
!3831 = !DILocation(line: 0, scope: !3696)
!3832 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 0, scope: !3696)
!3836 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3834)
!3837 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3834)
!3838 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3834)
!3839 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3834)
!3840 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3834)
!3841 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3834)
!3842 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3834)
!3843 = !DILocation(line: 464, column: 2, scope: !3697)
!3844 = !DILocation(line: 464, column: 2, scope: !3695)
!3845 = !DILocation(line: 464, column: 2, scope: !3702)
!3846 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 464, column: 2, scope: !3687)
!3849 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3848)
!3850 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3848)
!3851 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3848)
!3852 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3848)
!3853 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3848)
!3854 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3848)
!3855 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3848)
!3856 = !DILocation(line: 464, column: 2, scope: !3706)
!3857 = !DILocation(line: 464, column: 2, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !124, line: 464, column: 2)
!3859 = distinct !DILexicalBlock(scope: !3706, file: !124, line: 464, column: 2)
!3860 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 0, scope: !3858)
!3864 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !3862)
!3865 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !3862)
!3866 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !3862)
!3867 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !3862)
!3868 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !3862)
!3869 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !3862)
!3870 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !3862)
!3871 = !DILocation(line: 0, scope: !3858)
!3872 = !DILocation(line: 464, column: 2, scope: !3859)
!3873 = !DILocation(line: 464, column: 2, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3858, file: !124, line: 464, column: 2)
!3875 = !DILocation(line: 464, column: 2, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3858, file: !124, line: 464, column: 2)
!3877 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 464, column: 2, scope: !3706)
!3880 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !3879)
!3881 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !3879)
!3882 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !3879)
!3883 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !3879)
!3884 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !3879)
!3885 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !3879)
!3886 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !3879)
!3887 = !DILocation(line: 0, scope: !3664)
!3888 = !DILocation(line: 469, column: 1, scope: !3664)
!3889 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3890)
!3890 = !{!3891, !3892, !3893, !3899, !3900, !3905, !3907, !3910, !3912, !3914, !3940, !3946, !3947, !3952, !3954, !3957, !3959, !3961, !3962, !3968, !3969, !3974, !3976, !3979, !3981, !3983, !3984, !3990, !3991, !3996, !3998, !4001, !4003}
!3891 = !DILocalVariable(name: "in", arg: 1, scope: !3889, file: !124, line: 511, type: !31)
!3892 = !DILocalVariable(name: "out", arg: 2, scope: !3889, file: !124, line: 511, type: !75)
!3893 = !DILocalVariable(name: "_p", scope: !3894, file: !124, line: 515, type: !48)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !124, line: 515, column: 5)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !124, line: 515, column: 5)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !124, line: 515, column: 5)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !124, line: 514, column: 51)
!3898 = distinct !DILexicalBlock(scope: !3889, file: !124, line: 514, column: 7)
!3899 = !DILocalVariable(name: "_t", scope: !3894, file: !124, line: 515, type: !160)
!3900 = !DILocalVariable(name: "__r", scope: !3901, file: !124, line: 515, type: !291)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !124, line: 515, column: 5)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !124, line: 515, column: 5)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !124, line: 515, column: 5)
!3904 = distinct !DILexicalBlock(scope: !3894, file: !124, line: 515, column: 5)
!3905 = !DILocalVariable(name: "__r", scope: !3906, file: !124, line: 515, type: !291)
!3906 = distinct !DILexicalBlock(scope: !3901, file: !124, line: 515, column: 5)
!3907 = !DILocalVariable(name: "__r", scope: !3908, file: !124, line: 515, type: !291)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !124, line: 515, column: 5)
!3909 = distinct !DILexicalBlock(scope: !3903, file: !124, line: 515, column: 5)
!3910 = !DILocalVariable(name: "__r", scope: !3911, file: !124, line: 515, type: !291)
!3911 = distinct !DILexicalBlock(scope: !3908, file: !124, line: 515, column: 5)
!3912 = !DILocalVariable(name: "_p", scope: !3913, file: !124, line: 515, type: !48)
!3913 = distinct !DILexicalBlock(scope: !3895, file: !124, line: 515, column: 5)
!3914 = !DILocalVariable(name: "c", scope: !3889, file: !124, line: 520, type: !3915)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !3916)
!3916 = !{!3917, !3919, !3920}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3915, file: !86, line: 68, baseType: !3918, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !3915, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !3915, file: !86, line: 80, baseType: !3921, size: 256, offset: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3915, file: !86, line: 80, size: 256, elements: !3922)
!3922 = !{!3923, !3929, !3936}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3921, file: !86, line: 81, baseType: !3924, size: 192)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3924, file: !86, line: 50, baseType: !25, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3924, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3924, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !3921, file: !86, line: 82, baseType: !3930, size: 256)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !3931)
!3931 = !{!3932, !3933, !3934, !3935}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3930, file: !86, line: 56, baseType: !25, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3930, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3930, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !3930, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !3921, file: !86, line: 83, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !3938)
!3938 = !{!3939}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3937, file: !86, line: 63, baseType: !25, size: 64)
!3940 = !DILocalVariable(name: "_p", scope: !3941, file: !124, line: 525, type: !48)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !124, line: 525, column: 5)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !124, line: 525, column: 5)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !124, line: 525, column: 5)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !124, line: 524, column: 47)
!3945 = distinct !DILexicalBlock(scope: !3889, file: !124, line: 524, column: 7)
!3946 = !DILocalVariable(name: "_t", scope: !3941, file: !124, line: 525, type: !160)
!3947 = !DILocalVariable(name: "__r", scope: !3948, file: !124, line: 525, type: !291)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !124, line: 525, column: 5)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !124, line: 525, column: 5)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !124, line: 525, column: 5)
!3951 = distinct !DILexicalBlock(scope: !3941, file: !124, line: 525, column: 5)
!3952 = !DILocalVariable(name: "__r", scope: !3953, file: !124, line: 525, type: !291)
!3953 = distinct !DILexicalBlock(scope: !3948, file: !124, line: 525, column: 5)
!3954 = !DILocalVariable(name: "__r", scope: !3955, file: !124, line: 525, type: !291)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !124, line: 525, column: 5)
!3956 = distinct !DILexicalBlock(scope: !3950, file: !124, line: 525, column: 5)
!3957 = !DILocalVariable(name: "__r", scope: !3958, file: !124, line: 525, type: !291)
!3958 = distinct !DILexicalBlock(scope: !3955, file: !124, line: 525, column: 5)
!3959 = !DILocalVariable(name: "_p", scope: !3960, file: !124, line: 525, type: !48)
!3960 = distinct !DILexicalBlock(scope: !3942, file: !124, line: 525, column: 5)
!3961 = !DILocalVariable(name: "state", scope: !3889, file: !124, line: 534, type: !1002)
!3962 = !DILocalVariable(name: "_p", scope: !3963, file: !124, line: 536, type: !48)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !124, line: 536, column: 5)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !124, line: 536, column: 5)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !124, line: 536, column: 5)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !124, line: 535, column: 17)
!3967 = distinct !DILexicalBlock(scope: !3889, file: !124, line: 535, column: 7)
!3968 = !DILocalVariable(name: "_t", scope: !3963, file: !124, line: 536, type: !160)
!3969 = !DILocalVariable(name: "__r", scope: !3970, file: !124, line: 536, type: !291)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !124, line: 536, column: 5)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !124, line: 536, column: 5)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !124, line: 536, column: 5)
!3973 = distinct !DILexicalBlock(scope: !3963, file: !124, line: 536, column: 5)
!3974 = !DILocalVariable(name: "__r", scope: !3975, file: !124, line: 536, type: !291)
!3975 = distinct !DILexicalBlock(scope: !3970, file: !124, line: 536, column: 5)
!3976 = !DILocalVariable(name: "__r", scope: !3977, file: !124, line: 536, type: !291)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !124, line: 536, column: 5)
!3978 = distinct !DILexicalBlock(scope: !3972, file: !124, line: 536, column: 5)
!3979 = !DILocalVariable(name: "__r", scope: !3980, file: !124, line: 536, type: !291)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !124, line: 536, column: 5)
!3981 = !DILocalVariable(name: "_p", scope: !3982, file: !124, line: 536, type: !48)
!3982 = distinct !DILexicalBlock(scope: !3964, file: !124, line: 536, column: 5)
!3983 = !DILocalVariable(name: "idle_fiber_ptr", scope: !3889, file: !124, line: 541, type: !240)
!3984 = !DILocalVariable(name: "_p", scope: !3985, file: !124, line: 543, type: !48)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !124, line: 543, column: 5)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !124, line: 543, column: 5)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !124, line: 543, column: 5)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !124, line: 542, column: 71)
!3989 = distinct !DILexicalBlock(scope: !3889, file: !124, line: 542, column: 7)
!3990 = !DILocalVariable(name: "_t", scope: !3985, file: !124, line: 543, type: !160)
!3991 = !DILocalVariable(name: "__r", scope: !3992, file: !124, line: 543, type: !291)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !124, line: 543, column: 5)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !124, line: 543, column: 5)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !124, line: 543, column: 5)
!3995 = distinct !DILexicalBlock(scope: !3985, file: !124, line: 543, column: 5)
!3996 = !DILocalVariable(name: "__r", scope: !3997, file: !124, line: 543, type: !291)
!3997 = distinct !DILexicalBlock(scope: !3992, file: !124, line: 543, column: 5)
!3998 = !DILocalVariable(name: "__r", scope: !3999, file: !124, line: 543, type: !291)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !124, line: 543, column: 5)
!4000 = distinct !DILexicalBlock(scope: !3994, file: !124, line: 543, column: 5)
!4001 = !DILocalVariable(name: "__r", scope: !4002, file: !124, line: 543, type: !291)
!4002 = distinct !DILexicalBlock(scope: !3999, file: !124, line: 543, column: 5)
!4003 = !DILocalVariable(name: "_p", scope: !4004, file: !124, line: 543, type: !48)
!4004 = distinct !DILexicalBlock(scope: !3986, file: !124, line: 543, column: 5)
!4005 = !DILocation(line: 511, column: 27, scope: !3889)
!4006 = !DILocation(line: 511, column: 38, scope: !3889)
!4007 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 514, column: 22, scope: !3898)
!4009 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4008)
!4010 = !DILocation(line: 514, column: 22, scope: !3898)
!4011 = !DILocation(line: 514, column: 7, scope: !3898)
!4012 = !DILocation(line: 514, column: 7, scope: !3889)
!4013 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 515, column: 5, scope: !3895)
!4015 = !DILocation(line: 515, column: 5, scope: !3895)
!4016 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 0, scope: !3895)
!4019 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !4018)
!4020 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !4018)
!4021 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !4018)
!4022 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !4018)
!4023 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !4018)
!4024 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !4018)
!4025 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !4018)
!4026 = !DILocation(line: 0, scope: !3424, inlinedAt: !4018)
!4027 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 0, scope: !3895)
!4030 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !4029)
!4031 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !4029)
!4032 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !4029)
!4033 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !4029)
!4034 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !4029)
!4035 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !4029)
!4036 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !4029)
!4037 = !DILocation(line: 515, column: 5, scope: !3896)
!4038 = !DILocation(line: 515, column: 5, scope: !3894)
!4039 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 515, column: 5, scope: !3894)
!4041 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4040)
!4042 = !DILocation(line: 515, column: 5, scope: !3903)
!4043 = !DILocation(line: 0, scope: !3903)
!4044 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 0, scope: !3903)
!4048 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4046)
!4049 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4046)
!4050 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4046)
!4051 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4046)
!4052 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4046)
!4053 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4046)
!4054 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4046)
!4055 = !DILocation(line: 515, column: 5, scope: !3904)
!4056 = !DILocation(line: 515, column: 5, scope: !3902)
!4057 = !DILocation(line: 515, column: 5, scope: !3909)
!4058 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 515, column: 5, scope: !3894)
!4061 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4060)
!4062 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4060)
!4063 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4060)
!4064 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4060)
!4065 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4060)
!4066 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4060)
!4067 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4060)
!4068 = !DILocation(line: 515, column: 5, scope: !3913)
!4069 = !DILocation(line: 515, column: 5, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !124, line: 515, column: 5)
!4071 = distinct !DILexicalBlock(scope: !3913, file: !124, line: 515, column: 5)
!4072 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 0, scope: !4070)
!4076 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4074)
!4077 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4074)
!4078 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4074)
!4079 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4074)
!4080 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4074)
!4081 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4074)
!4082 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4074)
!4083 = !DILocation(line: 0, scope: !4070)
!4084 = !DILocation(line: 515, column: 5, scope: !4071)
!4085 = !DILocation(line: 515, column: 5, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4070, file: !124, line: 515, column: 5)
!4087 = !DILocation(line: 515, column: 5, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4070, file: !124, line: 515, column: 5)
!4089 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 515, column: 5, scope: !3913)
!4092 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4091)
!4093 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4091)
!4094 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4091)
!4095 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4091)
!4096 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4091)
!4097 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4091)
!4098 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4091)
!4099 = !DILocation(line: 520, column: 3, scope: !3889)
!4100 = !DILocation(line: 520, column: 31, scope: !3889)
!4101 = !DILocation(line: 524, column: 7, scope: !3945)
!4102 = !DILocation(line: 0, scope: !3889)
!4103 = !DILocation(line: 524, column: 7, scope: !3889)
!4104 = !DILocation(line: 525, column: 5, scope: !3942)
!4105 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 0, scope: !3942)
!4108 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !4107)
!4109 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !4107)
!4110 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !4107)
!4111 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !4107)
!4112 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !4107)
!4113 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !4107)
!4114 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !4107)
!4115 = !DILocation(line: 0, scope: !3424, inlinedAt: !4107)
!4116 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 0, scope: !3942)
!4119 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !4118)
!4120 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !4118)
!4121 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !4118)
!4122 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !4118)
!4123 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !4118)
!4124 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !4118)
!4125 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !4118)
!4126 = !DILocation(line: 525, column: 5, scope: !3943)
!4127 = !DILocation(line: 525, column: 5, scope: !3941)
!4128 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 525, column: 5, scope: !3941)
!4130 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4129)
!4131 = !DILocation(line: 525, column: 5, scope: !3950)
!4132 = !DILocation(line: 0, scope: !3950)
!4133 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 0, scope: !3950)
!4137 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4135)
!4138 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4135)
!4139 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4135)
!4140 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4135)
!4141 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4135)
!4142 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4135)
!4143 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4135)
!4144 = !DILocation(line: 525, column: 5, scope: !3951)
!4145 = !DILocation(line: 525, column: 5, scope: !3949)
!4146 = !DILocation(line: 525, column: 5, scope: !3956)
!4147 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 525, column: 5, scope: !3941)
!4150 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4149)
!4151 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4149)
!4152 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4149)
!4153 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4149)
!4154 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4149)
!4155 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4149)
!4156 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4149)
!4157 = !DILocation(line: 525, column: 5, scope: !3960)
!4158 = !DILocation(line: 525, column: 5, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !124, line: 525, column: 5)
!4160 = distinct !DILexicalBlock(scope: !3960, file: !124, line: 525, column: 5)
!4161 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 0, scope: !4159)
!4165 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4163)
!4166 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4163)
!4167 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4163)
!4168 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4163)
!4169 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4163)
!4170 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4163)
!4171 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4163)
!4172 = !DILocation(line: 0, scope: !4159)
!4173 = !DILocation(line: 525, column: 5, scope: !4160)
!4174 = !DILocation(line: 525, column: 5, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4159, file: !124, line: 525, column: 5)
!4176 = !DILocation(line: 525, column: 5, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4159, file: !124, line: 525, column: 5)
!4178 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 525, column: 5, scope: !3960)
!4181 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4180)
!4182 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4180)
!4183 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4180)
!4184 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4180)
!4185 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4180)
!4186 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4180)
!4187 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4180)
!4188 = !DILocation(line: 526, column: 5, scope: !3944)
!4189 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 534, column: 24, scope: !3889)
!4192 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4191)
!4193 = !DILocation(line: 534, column: 16, scope: !3889)
!4194 = !DILocation(line: 535, column: 8, scope: !3967)
!4195 = !DILocation(line: 535, column: 7, scope: !3889)
!4196 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 536, column: 5, scope: !3964)
!4198 = !DILocation(line: 536, column: 5, scope: !3964)
!4199 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 0, scope: !3964)
!4202 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !4201)
!4203 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !4201)
!4204 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !4201)
!4205 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !4201)
!4206 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !4201)
!4207 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !4201)
!4208 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !4201)
!4209 = !DILocation(line: 0, scope: !3424, inlinedAt: !4201)
!4210 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 0, scope: !3964)
!4213 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !4212)
!4214 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !4212)
!4215 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !4212)
!4216 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !4212)
!4217 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !4212)
!4218 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !4212)
!4219 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !4212)
!4220 = !DILocation(line: 536, column: 5, scope: !3965)
!4221 = !DILocation(line: 536, column: 5, scope: !3963)
!4222 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 536, column: 5, scope: !3963)
!4224 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4223)
!4225 = !DILocation(line: 536, column: 5, scope: !3972)
!4226 = !DILocation(line: 0, scope: !3972)
!4227 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 0, scope: !3972)
!4231 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4229)
!4232 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4229)
!4233 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4229)
!4234 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4229)
!4235 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4229)
!4236 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4229)
!4237 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4229)
!4238 = !DILocation(line: 536, column: 5, scope: !3973)
!4239 = !DILocation(line: 536, column: 5, scope: !3971)
!4240 = !DILocation(line: 536, column: 5, scope: !3978)
!4241 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 536, column: 5, scope: !3963)
!4244 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4243)
!4245 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4243)
!4246 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4243)
!4247 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4243)
!4248 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4243)
!4249 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4243)
!4250 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4243)
!4251 = !DILocation(line: 536, column: 5, scope: !3982)
!4252 = !DILocation(line: 536, column: 5, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !124, line: 536, column: 5)
!4254 = distinct !DILexicalBlock(scope: !3982, file: !124, line: 536, column: 5)
!4255 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 0, scope: !4253)
!4259 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4257)
!4260 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4257)
!4261 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4257)
!4262 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4257)
!4263 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4257)
!4264 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4257)
!4265 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4257)
!4266 = !DILocation(line: 0, scope: !4253)
!4267 = !DILocation(line: 536, column: 5, scope: !4254)
!4268 = !DILocation(line: 536, column: 5, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4253, file: !124, line: 536, column: 5)
!4270 = !DILocation(line: 536, column: 5, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4253, file: !124, line: 536, column: 5)
!4272 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 536, column: 5, scope: !3982)
!4275 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4274)
!4276 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4274)
!4277 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4274)
!4278 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4274)
!4279 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4274)
!4280 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4274)
!4281 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4274)
!4282 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 538, column: 25, scope: !3889)
!4284 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4283)
!4285 = !DILocation(line: 538, column: 10, scope: !3889)
!4286 = !DILocation(line: 538, column: 23, scope: !3889)
!4287 = !DILocation(line: 541, column: 3, scope: !3889)
!4288 = !DILocation(line: 541, column: 15, scope: !3889)
!4289 = !DILocation(line: 542, column: 7, scope: !3989)
!4290 = !DILocation(line: 542, column: 66, scope: !3989)
!4291 = !DILocation(line: 542, column: 7, scope: !3889)
!4292 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 543, column: 5, scope: !3986)
!4294 = !DILocation(line: 543, column: 5, scope: !3986)
!4295 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 0, scope: !3986)
!4298 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !4297)
!4299 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !4297)
!4300 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !4297)
!4301 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !4297)
!4302 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !4297)
!4303 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !4297)
!4304 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !4297)
!4305 = !DILocation(line: 0, scope: !3424, inlinedAt: !4297)
!4306 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 0, scope: !3986)
!4309 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !4308)
!4310 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !4308)
!4311 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !4308)
!4312 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !4308)
!4313 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !4308)
!4314 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !4308)
!4315 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !4308)
!4316 = !DILocation(line: 543, column: 5, scope: !3987)
!4317 = !DILocation(line: 543, column: 5, scope: !3985)
!4318 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 543, column: 5, scope: !3985)
!4320 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4319)
!4321 = !DILocation(line: 543, column: 5, scope: !3994)
!4322 = !DILocation(line: 0, scope: !3994)
!4323 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 0, scope: !3994)
!4327 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4325)
!4328 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4325)
!4329 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4325)
!4330 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4325)
!4331 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4325)
!4332 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4325)
!4333 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4325)
!4334 = !DILocation(line: 543, column: 5, scope: !3995)
!4335 = !DILocation(line: 543, column: 5, scope: !3993)
!4336 = !DILocation(line: 543, column: 5, scope: !4000)
!4337 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 543, column: 5, scope: !3985)
!4340 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4339)
!4341 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4339)
!4342 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4339)
!4343 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4339)
!4344 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4339)
!4345 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4339)
!4346 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4339)
!4347 = !DILocation(line: 543, column: 5, scope: !4004)
!4348 = !DILocation(line: 543, column: 5, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !124, line: 543, column: 5)
!4350 = distinct !DILexicalBlock(scope: !4004, file: !124, line: 543, column: 5)
!4351 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 0, scope: !4349)
!4355 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4353)
!4356 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4353)
!4357 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4353)
!4358 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4353)
!4359 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4353)
!4360 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4353)
!4361 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4353)
!4362 = !DILocation(line: 0, scope: !4349)
!4363 = !DILocation(line: 543, column: 5, scope: !4350)
!4364 = !DILocation(line: 543, column: 5, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4349, file: !124, line: 543, column: 5)
!4366 = !DILocation(line: 543, column: 5, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4349, file: !124, line: 543, column: 5)
!4368 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 543, column: 5, scope: !4004)
!4371 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4370)
!4372 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4370)
!4373 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4370)
!4374 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4370)
!4375 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4370)
!4376 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4370)
!4377 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4370)
!4378 = !DILocation(line: 547, column: 23, scope: !3889)
!4379 = !DILocation(line: 547, column: 10, scope: !3889)
!4380 = !DILocation(line: 547, column: 21, scope: !3889)
!4381 = !DILocation(line: 548, column: 10, scope: !3889)
!4382 = !DILocation(line: 548, column: 21, scope: !3889)
!4383 = !DILocation(line: 551, column: 3, scope: !3889)
!4384 = !DILocation(line: 551, column: 19, scope: !3889)
!4385 = !DILocation(line: 551, column: 27, scope: !3889)
!4386 = !DILocation(line: 198, column: 33, scope: !3011, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 554, column: 3, scope: !3889)
!4388 = !DILocation(line: 202, column: 9, scope: !3011, inlinedAt: !4387)
!4389 = !DILocation(line: 202, column: 19, scope: !3011, inlinedAt: !4387)
!4390 = !DILocation(line: 202, column: 32, scope: !3011, inlinedAt: !4387)
!4391 = !DILocation(line: 202, column: 3, scope: !3011, inlinedAt: !4387)
!4392 = !DILocation(line: 208, column: 3, scope: !3011, inlinedAt: !4387)
!4393 = !DILocation(line: 557, column: 1, scope: !3889)
!4394 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4395)
!4395 = !{!4396, !4397}
!4396 = !DILocalVariable(name: "in", arg: 1, scope: !4394, file: !124, line: 479, type: !31)
!4397 = !DILocalVariable(name: "out", arg: 2, scope: !4394, file: !124, line: 479, type: !75)
!4398 = !DILocation(line: 479, column: 35, scope: !4394)
!4399 = !DILocation(line: 479, column: 46, scope: !4394)
!4400 = !DILocation(line: 481, column: 3, scope: !4394)
!4401 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 489, column: 5, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4394, file: !124, line: 481, column: 13)
!4407 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4402)
!4408 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4403)
!4409 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !4404)
!4410 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !4405)
!4412 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4411)
!4413 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !4405)
!4414 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !4405)
!4415 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !4405)
!4420 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4416)
!4421 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4417)
!4422 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !4418)
!4423 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !4419)
!4424 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !4419)
!4425 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !4419)
!4427 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !4426)
!4428 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !4426)
!4429 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !4419)
!4430 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !4419)
!4431 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !4419)
!4432 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !4419)
!4434 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !4433)
!4435 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !4433)
!4436 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !4433)
!4438 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !4437)
!4439 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !4437)
!4440 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !4437)
!4441 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !4437)
!4442 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !4437)
!4443 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !4433)
!4445 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4444)
!4446 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4444)
!4447 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !4405)
!4448 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !4405)
!4449 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !4405)
!4450 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !4405)
!4454 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4451)
!4455 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4452)
!4456 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !4453)
!4457 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !4405)
!4461 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4458)
!4462 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4459)
!4463 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !4460)
!4464 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !4405)
!4465 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !4405)
!4466 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !4405)
!4470 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4467)
!4471 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4468)
!4472 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !4469)
!4473 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !4405)
!4474 = !DILocation(line: 0, scope: !1008, inlinedAt: !4405)
!4475 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !4405)
!4476 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !4405)
!4477 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 490, column: 28, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4406, file: !124, line: 490, column: 9)
!4482 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4478)
!4483 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4479)
!4484 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !4480)
!4485 = !DILocalVariable(name: "head", arg: 1, scope: !4486, file: !53, line: 201, type: !1041)
!4486 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1051, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4487)
!4487 = !{!4485, !4488}
!4488 = !DILocalVariable(name: "next", scope: !4486, file: !53, line: 203, type: !150)
!4489 = !DILocation(line: 201, column: 62, scope: !4486, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 490, column: 9, scope: !4481)
!4491 = !DILocation(line: 203, column: 33, scope: !4486, inlinedAt: !4490)
!4492 = !DILocation(line: 203, column: 20, scope: !4486, inlinedAt: !4490)
!4493 = !DILocation(line: 204, column: 15, scope: !4486, inlinedAt: !4490)
!4494 = !DILocation(line: 204, column: 24, scope: !4486, inlinedAt: !4490)
!4495 = !DILocation(line: 204, column: 42, scope: !4486, inlinedAt: !4490)
!4496 = !DILocation(line: 204, column: 33, scope: !4486, inlinedAt: !4490)
!4497 = !DILocation(line: 490, column: 9, scope: !4406)
!4498 = !DILocation(line: 489, column: 5, scope: !4406)
!4499 = distinct !{!4499, !4400, !4500}
!4500 = !DILocation(line: 508, column: 3, scope: !4394)
!4501 = !DILocation(line: 492, column: 7, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4481, file: !124, line: 490, column: 47)
!4503 = !DILocation(line: 494, column: 5, scope: !4502)
!4504 = !DILocation(line: 602, column: 36, scope: !602)
!4505 = !DILocation(line: 602, column: 47, scope: !602)
!4506 = !DILocation(line: 602, column: 61, scope: !602)
!4507 = !DILocation(line: 602, column: 85, scope: !602)
!4508 = !DILocation(line: 602, column: 110, scope: !602)
!4509 = !DILocation(line: 605, column: 15, scope: !602)
!4510 = !DILocation(line: 608, column: 41, scope: !602)
!4511 = !DILocation(line: 608, column: 19, scope: !602)
!4512 = !DILocation(line: 611, column: 11, scope: !613)
!4513 = !DILocation(line: 614, column: 8, scope: !626)
!4514 = !DILocation(line: 614, column: 7, scope: !602)
!4515 = !DILocation(line: 620, column: 3, scope: !602)
!4516 = !DILocation(line: 623, column: 10, scope: !602)
!4517 = !DILocation(line: 623, column: 19, scope: !602)
!4518 = !DILocation(line: 625, column: 10, scope: !602)
!4519 = !DILocation(line: 625, column: 21, scope: !602)
!4520 = !DILocation(line: 628, column: 26, scope: !615)
!4521 = !DILocation(line: 628, column: 10, scope: !602)
!4522 = !DILocation(line: 628, column: 16, scope: !602)
!4523 = !DILocation(line: 631, column: 8, scope: !637)
!4524 = !DILocation(line: 631, column: 7, scope: !602)
!4525 = !DILocation(line: 634, column: 5, scope: !640)
!4526 = !DILocation(line: 635, column: 5, scope: !640)
!4527 = !DILocation(line: 639, column: 10, scope: !602)
!4528 = !DILocation(line: 639, column: 14, scope: !602)
!4529 = !DILocation(line: 640, column: 10, scope: !602)
!4530 = !DILocation(line: 640, column: 16, scope: !602)
!4531 = !DILocation(line: 641, column: 10, scope: !602)
!4532 = !DILocation(line: 641, column: 17, scope: !602)
!4533 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 644, column: 3, scope: !602)
!4535 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !4534)
!4536 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !4534)
!4537 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !4534)
!4539 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4538)
!4540 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !4534)
!4541 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4538)
!4542 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4538)
!4543 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4538)
!4544 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !4534)
!4546 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4545)
!4547 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4545)
!4548 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4545)
!4549 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4545)
!4550 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !4534)
!4552 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4551)
!4553 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4551)
!4554 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4551)
!4555 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4551)
!4556 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !4534)
!4558 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4557)
!4559 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4557)
!4560 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4557)
!4561 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4557)
!4562 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !4534)
!4564 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4563)
!4565 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4563)
!4566 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4563)
!4567 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4563)
!4568 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !4534)
!4570 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4569)
!4571 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4569)
!4572 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4569)
!4573 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4569)
!4574 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !4534)
!4575 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !4534)
!4577 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4576)
!4578 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4576)
!4579 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4576)
!4580 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4576)
!4581 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !4534)
!4583 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4582)
!4584 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4582)
!4585 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4582)
!4586 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4582)
!4587 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !4534)
!4589 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4588)
!4590 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4588)
!4591 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4588)
!4592 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4588)
!4593 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !4534)
!4595 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4594)
!4596 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4594)
!4597 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4594)
!4598 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4594)
!4599 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !4534)
!4601 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4600)
!4602 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4600)
!4603 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4600)
!4604 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4600)
!4605 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !4534)
!4607 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4606)
!4608 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4606)
!4609 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4606)
!4610 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4606)
!4611 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !4534)
!4613 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4612)
!4614 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4612)
!4615 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4612)
!4616 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4612)
!4617 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !4534)
!4619 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4618)
!4620 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4618)
!4621 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4618)
!4622 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4618)
!4623 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !4534)
!4625 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4624)
!4626 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4624)
!4627 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4624)
!4628 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4624)
!4629 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !4534)
!4631 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4630)
!4632 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4630)
!4633 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4630)
!4634 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4630)
!4635 = !DILocation(line: 647, column: 7, scope: !763)
!4636 = !DILocation(line: 647, column: 7, scope: !602)
!4637 = !DILocation(line: 648, column: 19, scope: !762)
!4638 = !DILocation(line: 649, column: 3, scope: !762)
!4639 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4640)
!4640 = distinct !DILocation(line: 650, column: 15, scope: !602)
!4641 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4640)
!4642 = !DILocation(line: 650, column: 33, scope: !602)
!4643 = !DILocation(line: 650, column: 10, scope: !602)
!4644 = !DILocation(line: 650, column: 13, scope: !602)
!4645 = !DILocation(line: 653, column: 27, scope: !602)
!4646 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4647)
!4647 = distinct !DILocation(line: 653, column: 3, scope: !602)
!4648 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4647)
!4649 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !4647)
!4650 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4647)
!4651 = !DILocation(line: 656, column: 10, scope: !602)
!4652 = !DILocation(line: 656, column: 19, scope: !602)
!4653 = !DILocation(line: 657, column: 27, scope: !602)
!4654 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 657, column: 3, scope: !602)
!4656 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4655)
!4657 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !4655)
!4658 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4655)
!4659 = !DILocation(line: 658, column: 27, scope: !602)
!4660 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 658, column: 3, scope: !602)
!4662 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4661)
!4663 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !4661)
!4664 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4661)
!4665 = !DILocation(line: 660, column: 3, scope: !602)
!4666 = !DILocation(line: 0, scope: !602)
!4667 = !DILocation(line: 661, column: 1, scope: !602)
!4668 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 704, column: 7, scope: !1007)
!4672 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4669)
!4673 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4670)
!4674 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !4671)
!4675 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 704, column: 30, scope: !1007)
!4677 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4676)
!4678 = !DILocation(line: 704, column: 27, scope: !1007)
!4679 = !DILocation(line: 704, column: 7, scope: !1008)
!4680 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 708, column: 22, scope: !1008)
!4685 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4681)
!4686 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4682)
!4687 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !4683)
!4688 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !4684)
!4689 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !4684)
!4690 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !4684)
!4692 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !4691)
!4693 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !4691)
!4694 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !4684)
!4695 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !4684)
!4696 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !4684)
!4697 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !4684)
!4699 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !4698)
!4700 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !4698)
!4701 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !4698)
!4703 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !4702)
!4704 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !4702)
!4705 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !4702)
!4706 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !4702)
!4707 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !4702)
!4708 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !4698)
!4710 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4709)
!4711 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4709)
!4712 = !DILocation(line: 708, column: 15, scope: !1008)
!4713 = !DILocation(line: 718, column: 12, scope: !1087)
!4714 = !DILocation(line: 718, column: 7, scope: !1008)
!4715 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 719, column: 9, scope: !1094)
!4719 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4716)
!4720 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4717)
!4721 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !4718)
!4722 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 719, column: 31, scope: !1094)
!4726 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4723)
!4727 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4724)
!4728 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !4725)
!4729 = !DILocation(line: 719, column: 28, scope: !1094)
!4730 = !DILocation(line: 719, column: 9, scope: !1095)
!4731 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 723, column: 16, scope: !1113)
!4735 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4732)
!4736 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !4733)
!4737 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !4734)
!4738 = !DILocation(line: 725, column: 3, scope: !1095)
!4739 = !DILocation(line: 0, scope: !1008)
!4740 = !DILocation(line: 727, column: 10, scope: !1008)
!4741 = !DILocation(line: 727, column: 3, scope: !1008)
!4742 = !DILocation(line: 728, column: 1, scope: !1008)
!4743 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !3245, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4744)
!4744 = !{!4745, !4746, !4750, !4751, !4756, !4758, !4761, !4763, !4765, !4771, !4772, !4777, !4779, !4782, !4784}
!4745 = !DILocalVariable(name: "my_cpu", scope: !4743, file: !124, line: 572, type: !270)
!4746 = !DILocalVariable(name: "_p", scope: !4747, file: !124, line: 573, type: !48)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !124, line: 573, column: 5)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !124, line: 573, column: 5)
!4749 = distinct !DILexicalBlock(scope: !4743, file: !124, line: 573, column: 5)
!4750 = !DILocalVariable(name: "_t", scope: !4747, file: !124, line: 573, type: !160)
!4751 = !DILocalVariable(name: "__r", scope: !4752, file: !124, line: 573, type: !291)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !124, line: 573, column: 5)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !124, line: 573, column: 5)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !124, line: 573, column: 5)
!4755 = distinct !DILexicalBlock(scope: !4747, file: !124, line: 573, column: 5)
!4756 = !DILocalVariable(name: "__r", scope: !4757, file: !124, line: 573, type: !291)
!4757 = distinct !DILexicalBlock(scope: !4752, file: !124, line: 573, column: 5)
!4758 = !DILocalVariable(name: "__r", scope: !4759, file: !124, line: 573, type: !291)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !124, line: 573, column: 5)
!4760 = distinct !DILexicalBlock(scope: !4754, file: !124, line: 573, column: 5)
!4761 = !DILocalVariable(name: "__r", scope: !4762, file: !124, line: 573, type: !291)
!4762 = distinct !DILexicalBlock(scope: !4759, file: !124, line: 573, column: 5)
!4763 = !DILocalVariable(name: "_p", scope: !4764, file: !124, line: 573, type: !48)
!4764 = distinct !DILexicalBlock(scope: !4748, file: !124, line: 573, column: 5)
!4765 = !DILocalVariable(name: "_p", scope: !4766, file: !124, line: 575, type: !48)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !124, line: 575, column: 2)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !124, line: 575, column: 2)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !124, line: 575, column: 2)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !124, line: 574, column: 45)
!4770 = distinct !DILexicalBlock(scope: !4743, file: !124, line: 574, column: 9)
!4771 = !DILocalVariable(name: "_t", scope: !4766, file: !124, line: 575, type: !160)
!4772 = !DILocalVariable(name: "__r", scope: !4773, file: !124, line: 575, type: !291)
!4773 = distinct !DILexicalBlock(scope: !4774, file: !124, line: 575, column: 2)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !124, line: 575, column: 2)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !124, line: 575, column: 2)
!4776 = distinct !DILexicalBlock(scope: !4766, file: !124, line: 575, column: 2)
!4777 = !DILocalVariable(name: "__r", scope: !4778, file: !124, line: 575, type: !291)
!4778 = distinct !DILexicalBlock(scope: !4773, file: !124, line: 575, column: 2)
!4779 = !DILocalVariable(name: "__r", scope: !4780, file: !124, line: 575, type: !291)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !124, line: 575, column: 2)
!4781 = distinct !DILexicalBlock(scope: !4775, file: !124, line: 575, column: 2)
!4782 = !DILocalVariable(name: "__r", scope: !4783, file: !124, line: 575, type: !291)
!4783 = distinct !DILexicalBlock(scope: !4780, file: !124, line: 575, column: 2)
!4784 = !DILocalVariable(name: "_p", scope: !4785, file: !124, line: 575, type: !48)
!4785 = distinct !DILexicalBlock(scope: !4767, file: !124, line: 575, column: 2)
!4786 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 572, column: 26, scope: !4743)
!4788 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !4787)
!4789 = !DILocation(line: 572, column: 17, scope: !4743)
!4790 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 573, column: 5, scope: !4748)
!4792 = !DILocation(line: 573, column: 5, scope: !4748)
!4793 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 0, scope: !4748)
!4796 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !4795)
!4797 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !4795)
!4798 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !4795)
!4799 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !4795)
!4800 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !4795)
!4801 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !4795)
!4802 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !4795)
!4803 = !DILocation(line: 0, scope: !3424, inlinedAt: !4795)
!4804 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 0, scope: !4748)
!4807 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !4806)
!4808 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !4806)
!4809 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !4806)
!4810 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !4806)
!4811 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !4806)
!4812 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !4806)
!4813 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !4806)
!4814 = !DILocation(line: 573, column: 5, scope: !4749)
!4815 = !DILocation(line: 573, column: 5, scope: !4747)
!4816 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 573, column: 5, scope: !4747)
!4818 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4817)
!4819 = !DILocation(line: 573, column: 5, scope: !4754)
!4820 = !DILocation(line: 0, scope: !4754)
!4821 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 0, scope: !4754)
!4825 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4823)
!4826 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4823)
!4827 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4823)
!4828 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4823)
!4829 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4823)
!4830 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4823)
!4831 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4823)
!4832 = !DILocation(line: 573, column: 5, scope: !4755)
!4833 = !DILocation(line: 573, column: 5, scope: !4753)
!4834 = !DILocation(line: 573, column: 5, scope: !4760)
!4835 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 573, column: 5, scope: !4747)
!4838 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4837)
!4839 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4837)
!4840 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4837)
!4841 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4837)
!4842 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4837)
!4843 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4837)
!4844 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4837)
!4845 = !DILocation(line: 573, column: 5, scope: !4764)
!4846 = !DILocation(line: 573, column: 5, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !124, line: 573, column: 5)
!4848 = distinct !DILexicalBlock(scope: !4764, file: !124, line: 573, column: 5)
!4849 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 0, scope: !4847)
!4853 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4851)
!4854 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4851)
!4855 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4851)
!4856 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4851)
!4857 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4851)
!4858 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4851)
!4859 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4851)
!4860 = !DILocation(line: 0, scope: !4847)
!4861 = !DILocation(line: 573, column: 5, scope: !4848)
!4862 = !DILocation(line: 573, column: 5, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4847, file: !124, line: 573, column: 5)
!4864 = !DILocation(line: 573, column: 5, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4847, file: !124, line: 573, column: 5)
!4866 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 573, column: 5, scope: !4764)
!4869 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4868)
!4870 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4868)
!4871 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4868)
!4872 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4868)
!4873 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4868)
!4874 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4868)
!4875 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4868)
!4876 = !DILocation(line: 561, column: 3, scope: !4877, inlinedAt: !4906)
!4877 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4878)
!4878 = !{!4879, !4881, !4884, !4886, !4891, !4892, !4897, !4899, !4902, !4904}
!4879 = !DILocalVariable(name: "tid", scope: !4877, file: !124, line: 561, type: !4880)
!4880 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!4881 = !DILocalVariable(name: "__r", scope: !4882, file: !124, line: 562, type: !291)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !124, line: 562, column: 79)
!4883 = distinct !DILexicalBlock(scope: !4877, file: !124, line: 562, column: 7)
!4884 = !DILocalVariable(name: "__r", scope: !4885, file: !124, line: 562, type: !291)
!4885 = distinct !DILexicalBlock(scope: !4882, file: !124, line: 562, column: 79)
!4886 = !DILocalVariable(name: "_p", scope: !4887, file: !124, line: 563, type: !48)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !124, line: 563, column: 7)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !124, line: 563, column: 7)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !124, line: 563, column: 7)
!4890 = distinct !DILexicalBlock(scope: !4883, file: !124, line: 562, column: 93)
!4891 = !DILocalVariable(name: "_t", scope: !4887, file: !124, line: 563, type: !160)
!4892 = !DILocalVariable(name: "__r", scope: !4893, file: !124, line: 563, type: !291)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !124, line: 563, column: 7)
!4894 = distinct !DILexicalBlock(scope: !4895, file: !124, line: 563, column: 7)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !124, line: 563, column: 7)
!4896 = distinct !DILexicalBlock(scope: !4887, file: !124, line: 563, column: 7)
!4897 = !DILocalVariable(name: "__r", scope: !4898, file: !124, line: 563, type: !291)
!4898 = distinct !DILexicalBlock(scope: !4893, file: !124, line: 563, column: 7)
!4899 = !DILocalVariable(name: "__r", scope: !4900, file: !124, line: 563, type: !291)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !124, line: 563, column: 7)
!4901 = distinct !DILexicalBlock(scope: !4895, file: !124, line: 563, column: 7)
!4902 = !DILocalVariable(name: "__r", scope: !4903, file: !124, line: 563, type: !291)
!4903 = distinct !DILexicalBlock(scope: !4900, file: !124, line: 563, column: 7)
!4904 = !DILocalVariable(name: "_p", scope: !4905, file: !124, line: 563, type: !48)
!4905 = distinct !DILexicalBlock(scope: !4888, file: !124, line: 563, column: 7)
!4906 = distinct !DILocation(line: 574, column: 9, scope: !4770)
!4907 = !DILocation(line: 562, column: 79, scope: !4885, inlinedAt: !4906)
!4908 = !{i32 -2147099479}
!4909 = !DILocation(line: 562, column: 79, scope: !4882, inlinedAt: !4906)
!4910 = !DILocation(line: 561, column: 18, scope: !4877, inlinedAt: !4906)
!4911 = !DILocation(line: 562, column: 7, scope: !4883, inlinedAt: !4906)
!4912 = !DILocation(line: 562, column: 7, scope: !4877, inlinedAt: !4906)
!4913 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 563, column: 7, scope: !4888, inlinedAt: !4906)
!4915 = !DILocation(line: 563, column: 7, scope: !4888, inlinedAt: !4906)
!4916 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 0, scope: !4888, inlinedAt: !4906)
!4919 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !4918)
!4920 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !4918)
!4921 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !4918)
!4922 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !4918)
!4923 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !4918)
!4924 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !4918)
!4925 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !4918)
!4926 = !DILocation(line: 0, scope: !3424, inlinedAt: !4918)
!4927 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 0, scope: !4888, inlinedAt: !4906)
!4930 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !4929)
!4931 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !4929)
!4932 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !4929)
!4933 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !4929)
!4934 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !4929)
!4935 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !4929)
!4936 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !4929)
!4937 = !DILocation(line: 563, column: 7, scope: !4889, inlinedAt: !4906)
!4938 = !DILocation(line: 563, column: 7, scope: !4887, inlinedAt: !4906)
!4939 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 563, column: 7, scope: !4887, inlinedAt: !4906)
!4941 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4940)
!4942 = !DILocation(line: 563, column: 7, scope: !4895, inlinedAt: !4906)
!4943 = !DILocation(line: 0, scope: !4895, inlinedAt: !4906)
!4944 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4945)
!4945 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 0, scope: !4895, inlinedAt: !4906)
!4948 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4946)
!4949 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4946)
!4950 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4946)
!4951 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4946)
!4952 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4946)
!4953 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4946)
!4954 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4946)
!4955 = !DILocation(line: 563, column: 7, scope: !4896, inlinedAt: !4906)
!4956 = !DILocation(line: 563, column: 7, scope: !4894, inlinedAt: !4906)
!4957 = !DILocation(line: 563, column: 7, scope: !4901, inlinedAt: !4906)
!4958 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 563, column: 7, scope: !4887, inlinedAt: !4906)
!4961 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4960)
!4962 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4960)
!4963 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4960)
!4964 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4960)
!4965 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4960)
!4966 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4960)
!4967 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4960)
!4968 = !DILocation(line: 563, column: 7, scope: !4905, inlinedAt: !4906)
!4969 = !DILocation(line: 563, column: 7, scope: !4970, inlinedAt: !4906)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !124, line: 563, column: 7)
!4971 = distinct !DILexicalBlock(scope: !4905, file: !124, line: 563, column: 7)
!4972 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 0, scope: !4970, inlinedAt: !4906)
!4976 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !4974)
!4977 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !4974)
!4978 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !4974)
!4979 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !4974)
!4980 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !4974)
!4981 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !4974)
!4982 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !4974)
!4983 = !DILocation(line: 0, scope: !4970, inlinedAt: !4906)
!4984 = !DILocation(line: 563, column: 7, scope: !4971, inlinedAt: !4906)
!4985 = !DILocation(line: 563, column: 7, scope: !4986, inlinedAt: !4906)
!4986 = distinct !DILexicalBlock(scope: !4970, file: !124, line: 563, column: 7)
!4987 = !DILocation(line: 563, column: 7, scope: !4988, inlinedAt: !4906)
!4988 = distinct !DILexicalBlock(scope: !4970, file: !124, line: 563, column: 7)
!4989 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !4990)
!4990 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 563, column: 7, scope: !4905, inlinedAt: !4906)
!4992 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !4991)
!4993 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !4991)
!4994 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !4991)
!4995 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !4991)
!4996 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !4991)
!4997 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !4991)
!4998 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !4991)
!4999 = !DILocation(line: 568, column: 1, scope: !4877, inlinedAt: !4906)
!5000 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !5001)
!5001 = distinct !DILocation(line: 575, column: 2, scope: !4767)
!5002 = !DILocation(line: 575, column: 2, scope: !4767)
!5003 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 84, column: 18, scope: !3418, inlinedAt: !5005)
!5005 = distinct !DILocation(line: 0, scope: !4767)
!5006 = !DILocation(line: 84, column: 11, scope: !3418, inlinedAt: !5005)
!5007 = !DILocation(line: 85, column: 9, scope: !3424, inlinedAt: !5005)
!5008 = !DILocation(line: 85, column: 9, scope: !3418, inlinedAt: !5005)
!5009 = !DILocation(line: 87, column: 57, scope: !3427, inlinedAt: !5005)
!5010 = !DILocation(line: 87, column: 30, scope: !3427, inlinedAt: !5005)
!5011 = !DILocation(line: 87, column: 9, scope: !3427, inlinedAt: !5005)
!5012 = !DILocation(line: 87, column: 2, scope: !3427, inlinedAt: !5005)
!5013 = !DILocation(line: 0, scope: !3424, inlinedAt: !5005)
!5014 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 48, column: 18, scope: !3434, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 0, scope: !4767)
!5017 = !DILocation(line: 48, column: 11, scope: !3434, inlinedAt: !5016)
!5018 = !DILocation(line: 49, column: 9, scope: !3440, inlinedAt: !5016)
!5019 = !DILocation(line: 49, column: 9, scope: !3434, inlinedAt: !5016)
!5020 = !DILocation(line: 51, column: 50, scope: !3443, inlinedAt: !5016)
!5021 = !DILocation(line: 51, column: 23, scope: !3443, inlinedAt: !5016)
!5022 = !DILocation(line: 51, column: 2, scope: !3443, inlinedAt: !5016)
!5023 = !DILocation(line: 52, column: 5, scope: !3443, inlinedAt: !5016)
!5024 = !DILocation(line: 575, column: 2, scope: !4768)
!5025 = !DILocation(line: 575, column: 2, scope: !4766)
!5026 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !5027)
!5027 = distinct !DILocation(line: 575, column: 2, scope: !4766)
!5028 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !5027)
!5029 = !DILocation(line: 575, column: 2, scope: !4775)
!5030 = !DILocation(line: 0, scope: !4775)
!5031 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !5032)
!5032 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !5034)
!5034 = distinct !DILocation(line: 0, scope: !4775)
!5035 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !5033)
!5036 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !5033)
!5037 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !5033)
!5038 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !5033)
!5039 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !5033)
!5040 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !5033)
!5041 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !5033)
!5042 = !DILocation(line: 575, column: 2, scope: !4776)
!5043 = !DILocation(line: 575, column: 2, scope: !4774)
!5044 = !DILocation(line: 575, column: 2, scope: !4781)
!5045 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 575, column: 2, scope: !4766)
!5048 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !5047)
!5049 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !5047)
!5050 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !5047)
!5051 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !5047)
!5052 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !5047)
!5053 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !5047)
!5054 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !5047)
!5055 = !DILocation(line: 575, column: 2, scope: !4785)
!5056 = !DILocation(line: 575, column: 2, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !124, line: 575, column: 2)
!5058 = distinct !DILexicalBlock(scope: !4785, file: !124, line: 575, column: 2)
!5059 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !5060)
!5060 = distinct !DILocation(line: 96, column: 18, scope: !3456, inlinedAt: !5061)
!5061 = distinct !DILocation(line: 107, column: 12, scope: !3462, inlinedAt: !5062)
!5062 = distinct !DILocation(line: 0, scope: !5057)
!5063 = !DILocation(line: 96, column: 11, scope: !3456, inlinedAt: !5061)
!5064 = !DILocation(line: 97, column: 9, scope: !3466, inlinedAt: !5061)
!5065 = !DILocation(line: 97, column: 9, scope: !3456, inlinedAt: !5061)
!5066 = !DILocation(line: 98, column: 57, scope: !3469, inlinedAt: !5061)
!5067 = !DILocation(line: 98, column: 30, scope: !3469, inlinedAt: !5061)
!5068 = !DILocation(line: 98, column: 9, scope: !3469, inlinedAt: !5061)
!5069 = !DILocation(line: 98, column: 2, scope: !3469, inlinedAt: !5061)
!5070 = !DILocation(line: 0, scope: !5057)
!5071 = !DILocation(line: 575, column: 2, scope: !5058)
!5072 = !DILocation(line: 575, column: 2, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5057, file: !124, line: 575, column: 2)
!5074 = !DILocation(line: 575, column: 2, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5057, file: !124, line: 575, column: 2)
!5076 = !DILocation(line: 43, column: 21, scope: !3410, inlinedAt: !5077)
!5077 = distinct !DILocation(line: 59, column: 18, scope: !3478, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 575, column: 2, scope: !4785)
!5079 = !DILocation(line: 59, column: 11, scope: !3478, inlinedAt: !5078)
!5080 = !DILocation(line: 60, column: 9, scope: !3484, inlinedAt: !5078)
!5081 = !DILocation(line: 60, column: 9, scope: !3478, inlinedAt: !5078)
!5082 = !DILocation(line: 62, column: 50, scope: !3487, inlinedAt: !5078)
!5083 = !DILocation(line: 62, column: 23, scope: !3487, inlinedAt: !5078)
!5084 = !DILocation(line: 62, column: 2, scope: !3487, inlinedAt: !5078)
!5085 = !DILocation(line: 63, column: 5, scope: !3487, inlinedAt: !5078)
!5086 = !DILocation(line: 576, column: 2, scope: !4769)
!5087 = !DILocation(line: 579, column: 1, scope: !4743)
!5088 = !DILocation(line: 693, column: 35, scope: !584)
!5089 = !DILocation(line: 693, column: 46, scope: !584)
!5090 = !DILocation(line: 693, column: 60, scope: !584)
!5091 = !DILocation(line: 693, column: 84, scope: !584)
!5092 = !DILocation(line: 693, column: 104, scope: !584)
!5093 = !DILocation(line: 693, column: 134, scope: !584)
!5094 = !DILocation(line: 695, column: 3, scope: !584)
!5095 = !DILocation(line: 696, column: 16, scope: !584)
!5096 = !DILocation(line: 696, column: 3, scope: !584)
!5097 = !DILocation(line: 698, column: 3, scope: !584)
!5098 = !DILocation(line: 732, column: 3, scope: !990)
!5099 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5100)
!5100 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5101)
!5101 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !5102)
!5102 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 733, column: 10, scope: !990)
!5104 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5100)
!5105 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5101)
!5106 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !5102)
!5107 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !5103)
!5109 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !5108)
!5110 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !5103)
!5111 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !5103)
!5112 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5114)
!5114 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !5116)
!5116 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !5103)
!5117 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5113)
!5118 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5114)
!5119 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !5115)
!5120 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !5116)
!5121 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !5116)
!5122 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !5116)
!5124 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !5123)
!5125 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !5123)
!5126 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !5116)
!5127 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !5116)
!5128 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !5116)
!5129 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !5116)
!5131 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !5130)
!5132 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !5130)
!5133 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !5130)
!5135 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !5134)
!5136 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !5134)
!5137 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !5134)
!5138 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !5134)
!5139 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !5134)
!5140 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !5141)
!5141 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !5130)
!5142 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !5141)
!5143 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !5141)
!5144 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !5103)
!5145 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !5103)
!5146 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !5103)
!5147 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5148)
!5148 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !5103)
!5151 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5148)
!5152 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5149)
!5153 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !5150)
!5154 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5155)
!5155 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5157)
!5157 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !5103)
!5158 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5155)
!5159 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5156)
!5160 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5157)
!5161 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !5103)
!5162 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !5103)
!5163 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5165)
!5165 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5166)
!5166 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !5103)
!5167 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5164)
!5168 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5165)
!5169 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5166)
!5170 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !5103)
!5171 = !DILocation(line: 0, scope: !1008, inlinedAt: !5103)
!5172 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !5103)
!5173 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !5103)
!5174 = !DILocation(line: 733, column: 3, scope: !990)
!5175 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 736, type: !3125, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !5176)
!5176 = !{!5177, !5178}
!5177 = !DILocalVariable(name: "f_to", arg: 1, scope: !5175, file: !124, line: 736, type: !240)
!5178 = !DILocalVariable(name: "new_to", scope: !5179, file: !124, line: 744, type: !240)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !124, line: 740, column: 38)
!5180 = distinct !DILexicalBlock(scope: !5175, file: !124, line: 740, column: 7)
!5181 = !DILocation(line: 736, column: 35, scope: !5175)
!5182 = !DILocation(line: 383, column: 42, scope: !3300, inlinedAt: !5183)
!5183 = distinct !DILocation(line: 740, column: 7, scope: !5180)
!5184 = !DILocation(line: 386, column: 26, scope: !3307, inlinedAt: !5183)
!5185 = !DILocation(line: 386, column: 26, scope: !3305, inlinedAt: !5183)
!5186 = !DILocation(line: 386, column: 20, scope: !3300, inlinedAt: !5183)
!5187 = !DILocation(line: 387, column: 23, scope: !3300, inlinedAt: !5183)
!5188 = !DILocation(line: 387, column: 7, scope: !3300, inlinedAt: !5183)
!5189 = !DILocation(line: 392, column: 12, scope: !3312, inlinedAt: !5183)
!5190 = !DILocation(line: 392, column: 27, scope: !3317, inlinedAt: !5183)
!5191 = !DILocation(line: 392, column: 3, scope: !3312, inlinedAt: !5183)
!5192 = !DILocation(line: 394, column: 14, scope: !3316, inlinedAt: !5183)
!5193 = !DILocation(line: 394, column: 31, scope: !3316, inlinedAt: !5183)
!5194 = !DILocation(line: 394, column: 40, scope: !3316, inlinedAt: !5183)
!5195 = !DILocation(line: 390, column: 21, scope: !3300, inlinedAt: !5183)
!5196 = !DILocation(line: 395, column: 5, scope: !3314, inlinedAt: !5183)
!5197 = !DILocation(line: 391, column: 15, scope: !3300, inlinedAt: !5183)
!5198 = !DILocation(line: 0, scope: !3315, inlinedAt: !5183)
!5199 = !DILocation(line: 395, column: 5, scope: !3315, inlinedAt: !5183)
!5200 = !DILocation(line: 395, column: 5, scope: !3320, inlinedAt: !5183)
!5201 = !DILocation(line: 400, column: 16, scope: !3341, inlinedAt: !5183)
!5202 = !DILocation(line: 400, column: 11, scope: !3342, inlinedAt: !5183)
!5203 = !DILocation(line: 392, column: 43, scope: !3317, inlinedAt: !5183)
!5204 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5205)
!5205 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !5207)
!5207 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !5208)
!5208 = distinct !DILocation(line: 744, column: 26, scope: !5179)
!5209 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5205)
!5210 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5206)
!5211 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !5207)
!5212 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !5208)
!5213 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !5208)
!5214 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !5215)
!5215 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !5208)
!5216 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !5215)
!5217 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !5215)
!5218 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !5208)
!5219 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !5208)
!5220 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !5208)
!5221 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !5222)
!5222 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !5208)
!5223 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !5222)
!5224 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !5222)
!5225 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !5226)
!5226 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !5222)
!5227 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !5226)
!5228 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !5226)
!5229 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !5226)
!5230 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !5226)
!5231 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !5226)
!5232 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !5233)
!5233 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !5222)
!5234 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !5233)
!5235 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !5233)
!5236 = !DILocation(line: 744, column: 17, scope: !5179)
!5237 = !DILocation(line: 746, column: 16, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5179, file: !124, line: 746, column: 9)
!5239 = !DILocation(line: 746, column: 9, scope: !5179)
!5240 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5241)
!5241 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5242)
!5242 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !5243)
!5243 = distinct !DILocation(line: 747, column: 11, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5245, file: !124, line: 747, column: 11)
!5245 = distinct !DILexicalBlock(scope: !5238, file: !124, line: 746, column: 25)
!5246 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5241)
!5247 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5242)
!5248 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !5243)
!5249 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5250)
!5250 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5252)
!5252 = distinct !DILocation(line: 747, column: 33, scope: !5244)
!5253 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5250)
!5254 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5251)
!5255 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5252)
!5256 = !DILocation(line: 747, column: 30, scope: !5244)
!5257 = !DILocation(line: 747, column: 11, scope: !5245)
!5258 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5259)
!5259 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5260)
!5260 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5261)
!5261 = distinct !DILocation(line: 751, column: 20, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5244, file: !124, line: 750, column: 14)
!5263 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5259)
!5264 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5260)
!5265 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5261)
!5266 = !DILocation(line: 753, column: 5, scope: !5245)
!5267 = !DILocation(line: 0, scope: !5179)
!5268 = !DILocation(line: 756, column: 5, scope: !5179)
!5269 = !DILocation(line: 758, column: 5, scope: !5179)
!5270 = !DILocation(line: 401, column: 33, scope: !3350, inlinedAt: !5183)
!5271 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !5272)
!5272 = distinct !DILocation(line: 401, column: 9, scope: !3350, inlinedAt: !5183)
!5273 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !5272)
!5274 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !5272)
!5275 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !5276)
!5276 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !5272)
!5277 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !5276)
!5278 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !5276)
!5279 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !5276)
!5280 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !5276)
!5281 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !5276)
!5282 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !5283)
!5283 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !5272)
!5284 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !5283)
!5285 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !5283)
!5286 = !DILocation(line: 762, column: 3, scope: !5175)
!5287 = !DILocation(line: 765, column: 3, scope: !5175)
!5288 = !DILocation(line: 0, scope: !5175)
!5289 = !DILocation(line: 766, column: 1, scope: !5175)
!5290 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 768, type: !5291, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !5296)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!48, !5293, !31}
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!29, !31}
!5296 = !{!5297, !5298}
!5297 = !DILocalVariable(name: "cond_function", arg: 1, scope: !5290, file: !124, line: 768, type: !5293)
!5298 = !DILocalVariable(name: "state", arg: 2, scope: !5290, file: !124, line: 768, type: !31)
!5299 = !DILocation(line: 768, column: 42, scope: !5290)
!5300 = !DILocation(line: 768, column: 77, scope: !5290)
!5301 = !DILocation(line: 770, column: 7, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5290, file: !124, line: 770, column: 7)
!5303 = !DILocation(line: 770, column: 7, scope: !5290)
!5304 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5305)
!5305 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5306)
!5306 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !5307)
!5307 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !5308)
!5308 = distinct !DILocation(line: 771, column: 12, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5302, file: !124, line: 770, column: 28)
!5310 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5305)
!5311 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5306)
!5312 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !5307)
!5313 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !5314)
!5314 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !5308)
!5315 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !5314)
!5316 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !5308)
!5317 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !5308)
!5318 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5319)
!5319 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5320)
!5320 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !5322)
!5322 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !5308)
!5323 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5319)
!5324 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5320)
!5325 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !5321)
!5326 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !5322)
!5327 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !5322)
!5328 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !5329)
!5329 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !5322)
!5330 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !5329)
!5331 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !5329)
!5332 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !5322)
!5333 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !5322)
!5334 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !5322)
!5335 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !5322)
!5337 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !5336)
!5338 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !5336)
!5339 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !5340)
!5340 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !5336)
!5341 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !5340)
!5342 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !5340)
!5343 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !5340)
!5344 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !5340)
!5345 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !5340)
!5346 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !5347)
!5347 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !5336)
!5348 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !5347)
!5349 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !5347)
!5350 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !5308)
!5351 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !5308)
!5352 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !5308)
!5353 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5354)
!5354 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5355)
!5355 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !5356)
!5356 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !5308)
!5357 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5354)
!5358 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5355)
!5359 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !5356)
!5360 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5361)
!5361 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5362)
!5362 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5363)
!5363 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !5308)
!5364 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5361)
!5365 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5362)
!5366 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5363)
!5367 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !5308)
!5368 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !5308)
!5369 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5370)
!5370 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5371)
!5371 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5372)
!5372 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !5308)
!5373 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5370)
!5374 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5371)
!5375 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5372)
!5376 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !5308)
!5377 = !DILocation(line: 0, scope: !1008, inlinedAt: !5308)
!5378 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !5308)
!5379 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !5308)
!5380 = !DILocation(line: 771, column: 5, scope: !5309)
!5381 = !DILocation(line: 0, scope: !5290)
!5382 = !DILocation(line: 774, column: 1, scope: !5290)
!5383 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 776, type: !5384, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !5386)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{!48, !240, !5293, !31}
!5386 = !{!5387, !5388, !5389}
!5387 = !DILocalVariable(name: "fib", arg: 1, scope: !5383, file: !124, line: 776, type: !240)
!5388 = !DILocalVariable(name: "cond_function", arg: 2, scope: !5383, file: !124, line: 776, type: !5293)
!5389 = !DILocalVariable(name: "state", arg: 3, scope: !5383, file: !124, line: 776, type: !31)
!5390 = !DILocation(line: 776, column: 47, scope: !5383)
!5391 = !DILocation(line: 776, column: 62, scope: !5383)
!5392 = !DILocation(line: 776, column: 97, scope: !5383)
!5393 = !DILocation(line: 778, column: 7, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5383, file: !124, line: 778, column: 7)
!5395 = !DILocation(line: 778, column: 7, scope: !5383)
!5396 = !DILocation(line: 779, column: 12, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5394, file: !124, line: 778, column: 28)
!5398 = !DILocation(line: 779, column: 5, scope: !5397)
!5399 = !DILocation(line: 0, scope: !5383)
!5400 = !DILocation(line: 782, column: 1, scope: !5383)
!5401 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 784, type: !1028, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !5402)
!5402 = !{!5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419}
!5403 = !DILocalVariable(name: "curr", scope: !5401, file: !124, line: 787, type: !240)
!5404 = !DILocalVariable(name: "size", scope: !5401, file: !124, line: 790, type: !25)
!5405 = !DILocalVariable(name: "alloc_size", scope: !5401, file: !124, line: 790, type: !25)
!5406 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !5401, file: !124, line: 791, type: !25)
!5407 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !5401, file: !124, line: 792, type: !25)
!5408 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !5401, file: !124, line: 793, type: !25)
!5409 = !DILocalVariable(name: "child_stack", scope: !5401, file: !124, line: 794, type: !31)
!5410 = !DILocalVariable(name: "rsp", scope: !5401, file: !124, line: 795, type: !25)
!5411 = !DILocalVariable(name: "rbp0", scope: !5401, file: !124, line: 800, type: !31)
!5412 = !DILocalVariable(name: "rbp1", scope: !5401, file: !124, line: 801, type: !31)
!5413 = !DILocalVariable(name: "rbp_tos", scope: !5401, file: !124, line: 802, type: !31)
!5414 = !DILocalVariable(name: "ret0_addr", scope: !5401, file: !124, line: 803, type: !31)
!5415 = !DILocalVariable(name: "rbp_stash_addr", scope: !5401, file: !124, line: 815, type: !31)
!5416 = !DILocalVariable(name: "new", scope: !5401, file: !124, line: 831, type: !240)
!5417 = !DILocalVariable(name: "rbp_stash_ptr", scope: !5401, file: !124, line: 847, type: !75)
!5418 = !DILocalVariable(name: "rbp2_ptr", scope: !5401, file: !124, line: 851, type: !75)
!5419 = !DILocalVariable(name: "ret2_ptr", scope: !5401, file: !124, line: 852, type: !75)
!5420 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5421)
!5421 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5422)
!5422 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !5423)
!5423 = distinct !DILocation(line: 787, column: 22, scope: !5401)
!5424 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5421)
!5425 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5422)
!5426 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !5423)
!5427 = !DILocation(line: 787, column: 15, scope: !5401)
!5428 = !DILocation(line: 798, column: 3, scope: !5401)
!5429 = !{i32 23631}
!5430 = !DILocation(line: 795, column: 16, scope: !5401)
!5431 = !DILocation(line: 800, column: 21, scope: !5401)
!5432 = !DILocation(line: 800, column: 9, scope: !5401)
!5433 = !DILocation(line: 801, column: 21, scope: !5401)
!5434 = !DILocation(line: 801, column: 9, scope: !5401)
!5435 = !DILocation(line: 802, column: 21, scope: !5401)
!5436 = !DILocation(line: 802, column: 9, scope: !5401)
!5437 = !DILocation(line: 803, column: 26, scope: !5401)
!5438 = !DILocation(line: 803, column: 9, scope: !5401)
!5439 = !DILocation(line: 805, column: 44, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5401, file: !124, line: 805, column: 7)
!5441 = !DILocation(line: 805, column: 25, scope: !5440)
!5442 = !DILocation(line: 0, scope: !5401)
!5443 = !DILocation(line: 806, column: 46, scope: !5440)
!5444 = !DILocation(line: 806, column: 20, scope: !5440)
!5445 = !DILocation(line: 805, column: 50, scope: !5440)
!5446 = !DILocation(line: 815, column: 36, scope: !5401)
!5447 = !DILocation(line: 815, column: 9, scope: !5401)
!5448 = !DILocation(line: 821, column: 19, scope: !5401)
!5449 = !DILocation(line: 821, column: 24, scope: !5401)
!5450 = !DILocation(line: 790, column: 12, scope: !5401)
!5451 = !DILocation(line: 822, column: 37, scope: !5401)
!5452 = !DILocation(line: 791, column: 16, scope: !5401)
!5453 = !DILocation(line: 792, column: 16, scope: !5401)
!5454 = !DILocation(line: 825, column: 32, scope: !5401)
!5455 = !DILocation(line: 825, column: 57, scope: !5401)
!5456 = !DILocation(line: 793, column: 16, scope: !5401)
!5457 = !DILocation(line: 790, column: 18, scope: !5401)
!5458 = !DILocation(line: 831, column: 3, scope: !5401)
!5459 = !DILocation(line: 831, column: 15, scope: !5401)
!5460 = !DILocation(line: 832, column: 3, scope: !5401)
!5461 = !DILocation(line: 835, column: 15, scope: !5401)
!5462 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !5463)
!5463 = distinct !DILocation(line: 835, column: 3, scope: !5401)
!5464 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !5463)
!5465 = !DILocation(line: 115, column: 8, scope: !658, inlinedAt: !5463)
!5466 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !5463)
!5467 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !5463)
!5468 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !5463)
!5469 = !DILocation(line: 837, column: 17, scope: !5401)
!5470 = !DILocation(line: 837, column: 22, scope: !5401)
!5471 = !DILocation(line: 794, column: 17, scope: !5401)
!5472 = !DILocation(line: 839, column: 22, scope: !5401)
!5473 = !DILocation(line: 839, column: 35, scope: !5401)
!5474 = !DILocation(line: 839, column: 3, scope: !5401)
!5475 = !DILocation(line: 840, column: 57, scope: !5401)
!5476 = !DILocation(line: 840, column: 14, scope: !5401)
!5477 = !DILocation(line: 840, column: 3, scope: !5401)
!5478 = !DILocation(line: 840, column: 8, scope: !5401)
!5479 = !DILocation(line: 840, column: 12, scope: !5401)
!5480 = !DILocation(line: 847, column: 35, scope: !5401)
!5481 = !DILocation(line: 847, column: 40, scope: !5401)
!5482 = !DILocation(line: 847, column: 78, scope: !5401)
!5483 = !DILocation(line: 847, column: 26, scope: !5401)
!5484 = !DILocation(line: 847, column: 10, scope: !5401)
!5485 = !DILocation(line: 848, column: 37, scope: !5401)
!5486 = !DILocation(line: 848, column: 20, scope: !5401)
!5487 = !DILocation(line: 848, column: 18, scope: !5401)
!5488 = !DILocation(line: 851, column: 30, scope: !5401)
!5489 = !DILocation(line: 851, column: 35, scope: !5401)
!5490 = !DILocation(line: 851, column: 39, scope: !5401)
!5491 = !DILocation(line: 851, column: 68, scope: !5401)
!5492 = !DILocation(line: 851, column: 21, scope: !5401)
!5493 = !DILocation(line: 851, column: 10, scope: !5401)
!5494 = !DILocation(line: 852, column: 29, scope: !5401)
!5495 = !DILocation(line: 852, column: 10, scope: !5401)
!5496 = !DILocation(line: 861, column: 13, scope: !5401)
!5497 = !DILocation(line: 868, column: 16, scope: !5401)
!5498 = !DILocation(line: 868, column: 21, scope: !5401)
!5499 = !DILocation(line: 868, column: 24, scope: !5401)
!5500 = !DILocation(line: 868, column: 4, scope: !5401)
!5501 = !DILocation(line: 868, column: 41, scope: !5401)
!5502 = !DILocation(line: 871, column: 16, scope: !5401)
!5503 = !DILocation(line: 663, column: 30, scope: !2764, inlinedAt: !5504)
!5504 = distinct !DILocation(line: 871, column: 3, scope: !5401)
!5505 = !DILocation(line: 663, column: 41, scope: !2764, inlinedAt: !5504)
!5506 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5507)
!5507 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5508)
!5508 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !5509)
!5509 = distinct !DILocation(line: 666, column: 30, scope: !2764, inlinedAt: !5504)
!5510 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5507)
!5511 = !DILocation(line: 666, column: 16, scope: !2764, inlinedAt: !5504)
!5512 = !DILocation(line: 0, scope: !2764, inlinedAt: !5504)
!5513 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5514)
!5514 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5515)
!5515 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !5516)
!5516 = distinct !DILocation(line: 674, column: 41, scope: !2764, inlinedAt: !5504)
!5517 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5514)
!5518 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5515)
!5519 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !5516)
!5520 = !DILocation(line: 674, column: 21, scope: !2764, inlinedAt: !5504)
!5521 = !DILocation(line: 678, column: 6, scope: !2764, inlinedAt: !5504)
!5522 = !DILocation(line: 678, column: 15, scope: !2764, inlinedAt: !5504)
!5523 = !DILocation(line: 679, column: 22, scope: !2764, inlinedAt: !5504)
!5524 = !DILocation(line: 116, column: 52, scope: !2835, inlinedAt: !5525)
!5525 = distinct !DILocation(line: 679, column: 3, scope: !2764, inlinedAt: !5504)
!5526 = !DILocation(line: 116, column: 76, scope: !2835, inlinedAt: !5525)
!5527 = !DILocation(line: 118, column: 25, scope: !2835, inlinedAt: !5525)
!5528 = !DILocation(line: 85, column: 49, scope: !2843, inlinedAt: !5529)
!5529 = distinct !DILocation(line: 118, column: 2, scope: !2835, inlinedAt: !5525)
!5530 = !DILocation(line: 86, column: 28, scope: !2843, inlinedAt: !5529)
!5531 = !DILocation(line: 87, column: 28, scope: !2843, inlinedAt: !5529)
!5532 = !DILocation(line: 89, column: 13, scope: !2843, inlinedAt: !5529)
!5533 = !DILocation(line: 90, column: 8, scope: !2843, inlinedAt: !5529)
!5534 = !DILocation(line: 90, column: 13, scope: !2843, inlinedAt: !5529)
!5535 = !DILocation(line: 91, column: 8, scope: !2843, inlinedAt: !5529)
!5536 = !DILocation(line: 91, column: 13, scope: !2843, inlinedAt: !5529)
!5537 = !DILocation(line: 92, column: 8, scope: !2843, inlinedAt: !5529)
!5538 = !DILocation(line: 92, column: 13, scope: !2843, inlinedAt: !5529)
!5539 = !DILocation(line: 683, column: 20, scope: !2861, inlinedAt: !5504)
!5540 = !DILocation(line: 683, column: 7, scope: !2861, inlinedAt: !5504)
!5541 = !DILocation(line: 683, column: 7, scope: !2764, inlinedAt: !5504)
!5542 = !DILocation(line: 687, column: 5, scope: !2865, inlinedAt: !5504)
!5543 = !DILocation(line: 688, column: 3, scope: !2865, inlinedAt: !5504)
!5544 = !DILocation(line: 873, column: 10, scope: !5401)
!5545 = !DILocation(line: 874, column: 1, scope: !5401)
!5546 = !DILocation(line: 873, column: 3, scope: !5401)
!5547 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 877, type: !3125, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !5548)
!5548 = !{!5549, !5550, !5551}
!5549 = !DILocalVariable(name: "wait_on", arg: 1, scope: !5547, file: !124, line: 877, type: !240)
!5550 = !DILocalVariable(name: "curr_fiber", scope: !5547, file: !124, line: 887, type: !240)
!5551 = !DILocalVariable(name: "wait_q", scope: !5547, file: !124, line: 896, type: !150)
!5552 = !DILocation(line: 877, column: 31, scope: !5547)
!5553 = !DILocation(line: 883, column: 8, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5547, file: !124, line: 883, column: 7)
!5555 = !DILocation(line: 883, column: 7, scope: !5547)
!5556 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5557)
!5557 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5558)
!5558 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !5559)
!5559 = distinct !DILocation(line: 887, column: 28, scope: !5547)
!5560 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5557)
!5561 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5558)
!5562 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !5559)
!5563 = !DILocation(line: 887, column: 15, scope: !5547)
!5564 = !DILocation(line: 896, column: 41, scope: !5547)
!5565 = !DILocation(line: 896, column: 21, scope: !5547)
!5566 = !DILocation(line: 897, column: 31, scope: !5547)
!5567 = !DILocation(line: 116, column: 52, scope: !2835, inlinedAt: !5568)
!5568 = distinct !DILocation(line: 897, column: 3, scope: !5547)
!5569 = !DILocation(line: 116, column: 76, scope: !2835, inlinedAt: !5568)
!5570 = !DILocation(line: 118, column: 25, scope: !2835, inlinedAt: !5568)
!5571 = !DILocation(line: 85, column: 49, scope: !2843, inlinedAt: !5572)
!5572 = distinct !DILocation(line: 118, column: 2, scope: !2835, inlinedAt: !5568)
!5573 = !DILocation(line: 86, column: 28, scope: !2843, inlinedAt: !5572)
!5574 = !DILocation(line: 87, column: 28, scope: !2843, inlinedAt: !5572)
!5575 = !DILocation(line: 89, column: 13, scope: !2843, inlinedAt: !5572)
!5576 = !DILocation(line: 90, column: 8, scope: !2843, inlinedAt: !5572)
!5577 = !DILocation(line: 90, column: 13, scope: !2843, inlinedAt: !5572)
!5578 = !DILocation(line: 91, column: 8, scope: !2843, inlinedAt: !5572)
!5579 = !DILocation(line: 91, column: 13, scope: !2843, inlinedAt: !5572)
!5580 = !DILocation(line: 92, column: 8, scope: !2843, inlinedAt: !5572)
!5581 = !DILocation(line: 92, column: 13, scope: !2843, inlinedAt: !5572)
!5582 = !DILocation(line: 898, column: 12, scope: !5547)
!5583 = !DILocation(line: 898, column: 20, scope: !5547)
!5584 = !DILocation(line: 899, column: 15, scope: !5547)
!5585 = !DILocation(line: 899, column: 24, scope: !5547)
!5586 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5587)
!5587 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5588)
!5588 = distinct !DILocation(line: 98, column: 10, scope: !1005, inlinedAt: !5589)
!5589 = distinct !DILocation(line: 704, column: 7, scope: !1007, inlinedAt: !5590)
!5590 = distinct !DILocation(line: 903, column: 10, scope: !5547)
!5591 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5587)
!5592 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5588)
!5593 = !DILocation(line: 98, column: 30, scope: !1005, inlinedAt: !5589)
!5594 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !5595)
!5595 = distinct !DILocation(line: 704, column: 30, scope: !1007, inlinedAt: !5590)
!5596 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !5595)
!5597 = !DILocation(line: 704, column: 27, scope: !1007, inlinedAt: !5590)
!5598 = !DILocation(line: 704, column: 7, scope: !1008, inlinedAt: !5590)
!5599 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5600)
!5600 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5601)
!5601 = distinct !DILocation(line: 105, column: 12, scope: !1023, inlinedAt: !5602)
!5602 = distinct !DILocation(line: 122, column: 41, scope: !1027, inlinedAt: !5603)
!5603 = distinct !DILocation(line: 708, column: 22, scope: !1008, inlinedAt: !5590)
!5604 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5600)
!5605 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5601)
!5606 = !DILocation(line: 105, column: 32, scope: !1023, inlinedAt: !5602)
!5607 = !DILocation(line: 122, column: 21, scope: !1027, inlinedAt: !5603)
!5608 = !DILocation(line: 125, column: 15, scope: !1027, inlinedAt: !5603)
!5609 = !DILocation(line: 184, column: 54, scope: !1050, inlinedAt: !5610)
!5610 = distinct !DILocation(line: 126, column: 9, scope: !1036, inlinedAt: !5603)
!5611 = !DILocation(line: 186, column: 15, scope: !1050, inlinedAt: !5610)
!5612 = !DILocation(line: 186, column: 20, scope: !1050, inlinedAt: !5610)
!5613 = !DILocation(line: 126, column: 7, scope: !1027, inlinedAt: !5603)
!5614 = !DILocation(line: 128, column: 25, scope: !1034, inlinedAt: !5603)
!5615 = !DILocation(line: 131, column: 40, scope: !1035, inlinedAt: !5603)
!5616 = !DILocation(line: 151, column: 52, scope: !1062, inlinedAt: !5617)
!5617 = distinct !DILocation(line: 131, column: 5, scope: !1035, inlinedAt: !5603)
!5618 = !DILocation(line: 153, column: 20, scope: !1062, inlinedAt: !5617)
!5619 = !DILocation(line: 153, column: 33, scope: !1062, inlinedAt: !5617)
!5620 = !DILocation(line: 128, column: 50, scope: !1069, inlinedAt: !5621)
!5621 = distinct !DILocation(line: 153, column: 2, scope: !1062, inlinedAt: !5617)
!5622 = !DILocation(line: 128, column: 75, scope: !1069, inlinedAt: !5621)
!5623 = !DILocation(line: 130, column: 8, scope: !1069, inlinedAt: !5621)
!5624 = !DILocation(line: 130, column: 13, scope: !1069, inlinedAt: !5621)
!5625 = !DILocation(line: 131, column: 8, scope: !1069, inlinedAt: !5621)
!5626 = !DILocation(line: 131, column: 13, scope: !1069, inlinedAt: !5621)
!5627 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !5628)
!5628 = distinct !DILocation(line: 154, column: 2, scope: !1062, inlinedAt: !5617)
!5629 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !5628)
!5630 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !5628)
!5631 = !DILocation(line: 708, column: 15, scope: !1008, inlinedAt: !5590)
!5632 = !DILocation(line: 718, column: 12, scope: !1087, inlinedAt: !5590)
!5633 = !DILocation(line: 718, column: 7, scope: !1008, inlinedAt: !5590)
!5634 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5635)
!5635 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5636)
!5636 = distinct !DILocation(line: 85, column: 10, scope: !1092, inlinedAt: !5637)
!5637 = distinct !DILocation(line: 719, column: 9, scope: !1094, inlinedAt: !5590)
!5638 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5635)
!5639 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5636)
!5640 = !DILocation(line: 85, column: 30, scope: !1092, inlinedAt: !5637)
!5641 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5642)
!5642 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5643)
!5643 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5644)
!5644 = distinct !DILocation(line: 719, column: 31, scope: !1094, inlinedAt: !5590)
!5645 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5642)
!5646 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5643)
!5647 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5644)
!5648 = !DILocation(line: 719, column: 28, scope: !1094, inlinedAt: !5590)
!5649 = !DILocation(line: 719, column: 9, scope: !1095, inlinedAt: !5590)
!5650 = !DILocation(line: 129, column: 25, scope: !994, inlinedAt: !5651)
!5651 = distinct !DILocation(line: 78, column: 10, scope: !999, inlinedAt: !5652)
!5652 = distinct !DILocation(line: 92, column: 10, scope: !1102, inlinedAt: !5653)
!5653 = distinct !DILocation(line: 723, column: 16, scope: !1113, inlinedAt: !5590)
!5654 = !DILocation(line: 129, column: 12, scope: !994, inlinedAt: !5651)
!5655 = !DILocation(line: 78, column: 21, scope: !999, inlinedAt: !5652)
!5656 = !DILocation(line: 92, column: 30, scope: !1102, inlinedAt: !5653)
!5657 = !DILocation(line: 725, column: 3, scope: !1095, inlinedAt: !5590)
!5658 = !DILocation(line: 0, scope: !1008, inlinedAt: !5590)
!5659 = !DILocation(line: 727, column: 10, scope: !1008, inlinedAt: !5590)
!5660 = !DILocation(line: 727, column: 3, scope: !1008, inlinedAt: !5590)
!5661 = !DILocation(line: 0, scope: !5547)
!5662 = !DILocation(line: 904, column: 1, scope: !5547)
