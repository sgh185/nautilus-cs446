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
  %5 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1020
  %6 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1024
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !1043
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !1044
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !1044
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !1045
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !1045
  %12 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1046, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !1046
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !1048
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !1049
  br i1 %13, label %14, label %wrapper_nk_fiber_yield.exit, !dbg !1050

; <label>:14:                                     ; preds = %2
  %15 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1051
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !1075
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !1076
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !1076
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1062, metadata !DIExpression()) #11, !dbg !1078
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !1079
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1080, metadata !DIExpression()) #11, !dbg !1085
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1087
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1087
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !1088
  br i1 %22, label %35, label %23, !dbg !1089

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !1090
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !1090
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !1090
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1064, metadata !DIExpression()) #11, !dbg !1090
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1063, metadata !DIExpression()) #11, !dbg !1079
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !1091
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1092, metadata !DIExpression()) #11, !dbg !1095
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !1097
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !1097
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !1098
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1099, metadata !DIExpression()) #11, !dbg !1105
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1104, metadata !DIExpression()) #11, !dbg !1107
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !1108
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !1109
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !1110
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !1111
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !1112
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !1114
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !1114
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !1115
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !1115
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1063, metadata !DIExpression()) #11, !dbg !1079
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1041, metadata !DIExpression()) #11, !dbg !1116
  %34 = icmp eq %struct.list_head** %24, null, !dbg !1117
  br i1 %34, label %35, label %56, !dbg !1119

; <label>:35:                                     ; preds = %23, %14
  %36 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1120
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !1127
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !1128
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !1128
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !1129
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !1129
  %42 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1130
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !1135
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !1136
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !1136
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !1137
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !1137
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !1138
  br i1 %48, label %wrapper_nk_fiber_yield.exit, label %49, !dbg !1139

; <label>:49:                                     ; preds = %35
  %50 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1140
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !1145
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !1146
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !1146
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !1147
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1041, metadata !DIExpression()) #11, !dbg !1116
  br label %56, !dbg !1148

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !1149
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !1041, metadata !DIExpression()) #11, !dbg !1116
  %58 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !1150
  br label %wrapper_nk_fiber_yield.exit, !dbg !1151

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %35, %56
  %59 = phi i32 [ 1, %2 ], [ 0, %35 ], [ 0, %56 ], !dbg !1149
  %60 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #12, !dbg !1152
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()), !dbg !1019
  %61 = load i64, i64* %3, align 8, !dbg !1153
  %62 = icmp eq i64 %61, 0, !dbg !1154
  br i1 %62, label %70, label %63, !dbg !1155

; <label>:63:                                     ; preds = %wrapper_nk_fiber_yield.exit, %63
  %64 = phi i32 [ %65, %63 ], [ 0, %wrapper_nk_fiber_yield.exit ]
  call void @llvm.dbg.value(metadata i32 %64, metadata !1012, metadata !DIExpression()), !dbg !1019
  %65 = add i32 %64, 1, !dbg !1156
  %66 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %64) #12, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %65, metadata !1012, metadata !DIExpression()), !dbg !1019
  %67 = zext i32 %65 to i64, !dbg !1159
  %68 = load i64, i64* %3, align 8, !dbg !1153
  %69 = icmp ugt i64 %68, %67, !dbg !1154
  br i1 %69, label %63, label %70, !dbg !1155, !llvm.loop !1160

; <label>:70:                                     ; preds = %63, %wrapper_nk_fiber_yield.exit
  %71 = phi i32 [ 0, %wrapper_nk_fiber_yield.exit ], [ %65, %63 ], !dbg !1162
  call void @llvm.dbg.value(metadata i32 %71, metadata !1012, metadata !DIExpression()), !dbg !1019
  %72 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %71) #12, !dbg !1163
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1164
  ret void, !dbg !1165
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1166 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %1, metadata !1169, metadata !DIExpression()), !dbg !1171
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1172
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1181, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #11, !dbg !1181
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #11, !dbg !1183
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !1184
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !1184
  %9 = load i64, i64* %8, align 8, !dbg !1184
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1185
  %10 = bitcast i64* %4 to i8*, !dbg !1186
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1186
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1187
  %11 = call i8* @kmem_malloc(i64 8) #12, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %11, metadata !1178, metadata !DIExpression()) #11, !dbg !1188
  %12 = icmp eq i8* %11, null, !dbg !1189
  br i1 %12, label %13, label %15, !dbg !1191

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1192
  br label %115, !dbg !1194

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !1195
  call void @llvm.dbg.value(metadata i64* %16, metadata !1177, metadata !DIExpression()) #11, !dbg !1196
  %17 = load i64, i64* %4, align 8, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %17, metadata !1176, metadata !DIExpression()) #11, !dbg !1198
  %18 = urem i64 %17, 5000, !dbg !1199
  store i64 %18, i64* %16, align 8, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1175, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1201
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %11, metadata !589, metadata !DIExpression()) #11, !dbg !1204
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1205
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1206
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1207
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !593, metadata !DIExpression()) #11, !dbg !1208
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1209
  call void @llvm.dbg.value(metadata i8* %11, metadata !606, metadata !DIExpression()) #11, !dbg !1211
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1212
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1213
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !609, metadata !DIExpression()) #11, !dbg !1214
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1215
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1216
  %19 = call i8* @kmem_malloc(i64 152) #12, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %19, metadata !612, metadata !DIExpression()) #11, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %19, metadata !610, metadata !DIExpression()) #11, !dbg !1215
  %20 = icmp eq i8* %19, null, !dbg !1218
  br i1 %20, label %nk_fiber_create.exit, label %21, !dbg !1219

; <label>:21:                                     ; preds = %15
  %22 = call i8* @memset(i8* nonnull %19, i8 signext 0, i64 152) #12, !dbg !1220
  %23 = getelementptr inbounds i8, i8* %19, i64 44, !dbg !1221
  %24 = bitcast i8* %23 to i32*, !dbg !1221
  store i32 0, i32* %24, align 4, !dbg !1222
  %25 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1223
  %26 = bitcast i8* %25 to i64*, !dbg !1223
  store i64 2097152, i64* %26, align 8, !dbg !1224
  %27 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %27, metadata !614, metadata !DIExpression()) #11, !dbg !1225
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1226
  %29 = bitcast i8* %28 to i8**, !dbg !1226
  store i8* %27, i8** %29, align 8, !dbg !1227
  %30 = icmp eq i8* %27, null, !dbg !1228
  br i1 %30, label %31, label %32, !dbg !1229

; <label>:31:                                     ; preds = %21
  call void @kmem_free(i8* nonnull %19) #12, !dbg !1230
  br label %nk_fiber_create.exit, !dbg !1231

; <label>:32:                                     ; preds = %21
  %33 = ptrtoint i8* %27 to i64, !dbg !1229
  %34 = getelementptr inbounds i8, i8* %19, i64 120, !dbg !1232
  %35 = bitcast i8* %34 to void (i8*, i8**)**, !dbg !1232
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %35, align 8, !dbg !1233
  %36 = getelementptr inbounds i8, i8* %19, i64 128, !dbg !1234
  %37 = bitcast i8* %36 to i8**, !dbg !1234
  store i8* %11, i8** %37, align 8, !dbg !1235
  %38 = getelementptr inbounds i8, i8* %19, i64 136, !dbg !1236
  %39 = bitcast i8* %38 to i8***, !dbg !1236
  store i8** null, i8*** %39, align 8, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %19, metadata !648, metadata !DIExpression()) #11, !dbg !1238
  %40 = load i64, i64* %26, align 8, !dbg !1240
  %41 = bitcast i8* %19 to i64*, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1242
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1244
  %42 = add i64 %33, -8, !dbg !1245
  %43 = add i64 %42, %40, !dbg !1246
  store i64 %43, i64* %41, align 8, !dbg !1246
  %44 = inttoptr i64 %43 to i64*, !dbg !1247
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %44, align 8, !dbg !1248
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1249
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1251
  %45 = load i64, i64* %41, align 8, !dbg !1252
  %46 = add i64 %45, -8, !dbg !1252
  store i64 %46, i64* %41, align 8, !dbg !1252
  %47 = inttoptr i64 %46 to i64*, !dbg !1253
  store i64 0, i64* %47, align 8, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1255
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1257
  %48 = load i64, i64* %41, align 8, !dbg !1258
  %49 = add i64 %48, -8, !dbg !1258
  store i64 %49, i64* %41, align 8, !dbg !1258
  %50 = inttoptr i64 %49 to i64*, !dbg !1259
  store i64 0, i64* %50, align 8, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1261
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1263
  %51 = load i64, i64* %41, align 8, !dbg !1264
  %52 = add i64 %51, -8, !dbg !1264
  store i64 %52, i64* %41, align 8, !dbg !1264
  %53 = inttoptr i64 %52 to i64*, !dbg !1265
  store i64 0, i64* %53, align 8, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1269
  %54 = load i64, i64* %41, align 8, !dbg !1270
  %55 = add i64 %54, -8, !dbg !1270
  store i64 %55, i64* %41, align 8, !dbg !1270
  %56 = inttoptr i64 %55 to i64*, !dbg !1271
  store i64 0, i64* %56, align 8, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1273
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1275
  %57 = load i64, i64* %41, align 8, !dbg !1276
  %58 = add i64 %57, -8, !dbg !1276
  store i64 %58, i64* %41, align 8, !dbg !1276
  %59 = inttoptr i64 %58 to i64*, !dbg !1277
  store i64 0, i64* %59, align 8, !dbg !1278
  %60 = ptrtoint i8* %19 to i64, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %60, metadata !662, metadata !DIExpression()) #11, !dbg !1282
  %61 = load i64, i64* %41, align 8, !dbg !1283
  %62 = add i64 %61, -8, !dbg !1283
  store i64 %62, i64* %41, align 8, !dbg !1283
  %63 = inttoptr i64 %62 to i64*, !dbg !1284
  store i64 %60, i64* %63, align 8, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1286
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1288
  %64 = load i64, i64* %41, align 8, !dbg !1289
  %65 = add i64 %64, -8, !dbg !1289
  store i64 %65, i64* %41, align 8, !dbg !1289
  %66 = inttoptr i64 %65 to i64*, !dbg !1290
  store i64 0, i64* %66, align 8, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1292
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1294
  %67 = load i64, i64* %41, align 8, !dbg !1295
  %68 = add i64 %67, -8, !dbg !1295
  store i64 %68, i64* %41, align 8, !dbg !1295
  %69 = inttoptr i64 %68 to i64*, !dbg !1296
  store i64 0, i64* %69, align 8, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1300
  %70 = load i64, i64* %41, align 8, !dbg !1301
  %71 = add i64 %70, -8, !dbg !1301
  store i64 %71, i64* %41, align 8, !dbg !1301
  %72 = inttoptr i64 %71 to i64*, !dbg !1302
  store i64 0, i64* %72, align 8, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1304
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1306
  %73 = load i64, i64* %41, align 8, !dbg !1307
  %74 = add i64 %73, -8, !dbg !1307
  store i64 %74, i64* %41, align 8, !dbg !1307
  %75 = inttoptr i64 %74 to i64*, !dbg !1308
  store i64 0, i64* %75, align 8, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1312
  %76 = load i64, i64* %41, align 8, !dbg !1313
  %77 = add i64 %76, -8, !dbg !1313
  store i64 %77, i64* %41, align 8, !dbg !1313
  %78 = inttoptr i64 %77 to i64*, !dbg !1314
  store i64 0, i64* %78, align 8, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1318
  %79 = load i64, i64* %41, align 8, !dbg !1319
  %80 = add i64 %79, -8, !dbg !1319
  store i64 %80, i64* %41, align 8, !dbg !1319
  %81 = inttoptr i64 %80 to i64*, !dbg !1320
  store i64 0, i64* %81, align 8, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1322
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1324
  %82 = load i64, i64* %41, align 8, !dbg !1325
  %83 = add i64 %82, -8, !dbg !1325
  store i64 %83, i64* %41, align 8, !dbg !1325
  %84 = inttoptr i64 %83 to i64*, !dbg !1326
  store i64 0, i64* %84, align 8, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1328
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1330
  %85 = load i64, i64* %41, align 8, !dbg !1331
  %86 = add i64 %85, -8, !dbg !1331
  store i64 %86, i64* %41, align 8, !dbg !1331
  %87 = inttoptr i64 %86 to i64*, !dbg !1332
  store i64 0, i64* %87, align 8, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1334
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1336
  %88 = load i64, i64* %41, align 8, !dbg !1337
  %89 = add i64 %88, -8, !dbg !1337
  store i64 %89, i64* %41, align 8, !dbg !1337
  %90 = inttoptr i64 %89 to i64*, !dbg !1338
  store i64 0, i64* %90, align 8, !dbg !1339
  %91 = bitcast %struct.nk_fiber** %3 to i8**, !dbg !1340
  store i8* %19, i8** %91, align 8, !dbg !1340
  %92 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1341, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !772, metadata !DIExpression()) #11, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !771, metadata !DIExpression()) #11, !dbg !1343
  %93 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %92, i64 0, i32 24, !dbg !1344
  %94 = bitcast %struct.nk_virtual_console** %93 to i64*, !dbg !1344
  %95 = load i64, i64* %94, align 8, !dbg !1344
  %96 = getelementptr inbounds i8, i8* %19, i64 48, !dbg !1345
  %97 = bitcast i8* %96 to i64*, !dbg !1346
  store i64 %95, i64* %97, align 8, !dbg !1346
  %98 = getelementptr inbounds i8, i8* %19, i64 104, !dbg !1347
  call void @llvm.dbg.value(metadata i8* %98, metadata !780, metadata !DIExpression()) #11, !dbg !1348
  %99 = bitcast i8* %98 to i8**, !dbg !1350
  store i8* %98, i8** %99, align 8, !dbg !1350
  %100 = getelementptr inbounds i8, i8* %19, i64 112, !dbg !1351
  %101 = bitcast i8* %100 to i8**, !dbg !1352
  store i8* %98, i8** %101, align 8, !dbg !1352
  %102 = getelementptr inbounds i8, i8* %19, i64 96, !dbg !1353
  %103 = bitcast i8* %102 to i32*, !dbg !1353
  store i32 0, i32* %103, align 8, !dbg !1354
  %104 = getelementptr inbounds i8, i8* %19, i64 64, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %104, metadata !780, metadata !DIExpression()) #11, !dbg !1356
  %105 = bitcast i8* %104 to i8**, !dbg !1358
  store i8* %104, i8** %105, align 8, !dbg !1358
  %106 = getelementptr inbounds i8, i8* %19, i64 72, !dbg !1359
  %107 = bitcast i8* %106 to i8**, !dbg !1360
  store i8* %104, i8** %107, align 8, !dbg !1360
  %108 = getelementptr inbounds i8, i8* %19, i64 80, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %108, metadata !780, metadata !DIExpression()) #11, !dbg !1362
  %109 = bitcast i8* %108 to i8**, !dbg !1364
  store i8* %108, i8** %109, align 8, !dbg !1364
  %110 = getelementptr inbounds i8, i8* %19, i64 88, !dbg !1365
  %111 = bitcast i8* %110 to i8**, !dbg !1366
  store i8* %108, i8** %111, align 8, !dbg !1366
  br label %nk_fiber_create.exit, !dbg !1367

nk_fiber_create.exit:                             ; preds = %15, %31, %32
  %112 = phi i32 [ 0, %32 ], [ -22, %31 ], [ -22, %15 ], !dbg !1368
  %113 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1369
  %114 = call i32 @nk_fiber_run(%struct.nk_fiber* %113, i8 zeroext 1) #12, !dbg !1370
  br label %115, !dbg !1371

; <label>:115:                                    ; preds = %13, %nk_fiber_create.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1372
  ret i32 0, !dbg !1373
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !1173 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1374
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1375, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #11, !dbg !1375
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #11, !dbg !1377
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !1378
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !1378
  %7 = load i64, i64* %6, align 8, !dbg !1378
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1379
  %8 = bitcast i64* %2 to i8*, !dbg !1380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1380
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #12, !dbg !1381
  %9 = call i8* @kmem_malloc(i64 8) #12, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %9, metadata !1178, metadata !DIExpression()), !dbg !1382
  %10 = icmp eq i8* %9, null, !dbg !1383
  br i1 %10, label %11, label %13, !dbg !1384

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1385
  br label %113, !dbg !1386

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !1387
  call void @llvm.dbg.value(metadata i64* %14, metadata !1177, metadata !DIExpression()), !dbg !1388
  %15 = load i64, i64* %2, align 8, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %15, metadata !1176, metadata !DIExpression()), !dbg !1390
  %16 = urem i64 %15, 5000, !dbg !1391
  store i64 %16, i64* %14, align 8, !dbg !1392
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1175, metadata !DIExpression(DW_OP_deref)), !dbg !1393
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %9, metadata !589, metadata !DIExpression()) #11, !dbg !1396
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1397
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1399
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !1400
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %9, metadata !606, metadata !DIExpression()) #11, !dbg !1403
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1404
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1405
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !609, metadata !DIExpression()) #11, !dbg !1406
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1407
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1408
  %17 = call i8* @kmem_malloc(i64 152) #12, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %17, metadata !612, metadata !DIExpression()) #11, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %17, metadata !610, metadata !DIExpression()) #11, !dbg !1407
  %18 = icmp eq i8* %17, null, !dbg !1410
  br i1 %18, label %nk_fiber_create.exit, label %19, !dbg !1411

; <label>:19:                                     ; preds = %13
  %20 = call i8* @memset(i8* nonnull %17, i8 signext 0, i64 152) #12, !dbg !1412
  %21 = getelementptr inbounds i8, i8* %17, i64 44, !dbg !1413
  %22 = bitcast i8* %21 to i32*, !dbg !1413
  store i32 0, i32* %22, align 4, !dbg !1414
  %23 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !1415
  %24 = bitcast i8* %23 to i64*, !dbg !1415
  store i64 2097152, i64* %24, align 8, !dbg !1416
  %25 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1417
  call void @llvm.dbg.value(metadata i8* %25, metadata !614, metadata !DIExpression()) #11, !dbg !1417
  %26 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !1418
  %27 = bitcast i8* %26 to i8**, !dbg !1418
  store i8* %25, i8** %27, align 8, !dbg !1419
  %28 = icmp eq i8* %25, null, !dbg !1420
  br i1 %28, label %29, label %30, !dbg !1421

; <label>:29:                                     ; preds = %19
  call void @kmem_free(i8* nonnull %17) #12, !dbg !1422
  br label %nk_fiber_create.exit, !dbg !1423

; <label>:30:                                     ; preds = %19
  %31 = ptrtoint i8* %25 to i64, !dbg !1421
  %32 = getelementptr inbounds i8, i8* %17, i64 120, !dbg !1424
  %33 = bitcast i8* %32 to void (i8*, i8**)**, !dbg !1424
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %33, align 8, !dbg !1425
  %34 = getelementptr inbounds i8, i8* %17, i64 128, !dbg !1426
  %35 = bitcast i8* %34 to i8**, !dbg !1426
  store i8* %9, i8** %35, align 8, !dbg !1427
  %36 = getelementptr inbounds i8, i8* %17, i64 136, !dbg !1428
  %37 = bitcast i8* %36 to i8***, !dbg !1428
  store i8** null, i8*** %37, align 8, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %17, metadata !648, metadata !DIExpression()) #11, !dbg !1430
  %38 = load i64, i64* %24, align 8, !dbg !1432
  %39 = bitcast i8* %17 to i64*, !dbg !1433
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1434
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1436
  %40 = add i64 %31, -8, !dbg !1437
  %41 = add i64 %40, %38, !dbg !1438
  store i64 %41, i64* %39, align 8, !dbg !1438
  %42 = inttoptr i64 %41 to i64*, !dbg !1439
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %42, align 8, !dbg !1440
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1443
  %43 = load i64, i64* %39, align 8, !dbg !1444
  %44 = add i64 %43, -8, !dbg !1444
  store i64 %44, i64* %39, align 8, !dbg !1444
  %45 = inttoptr i64 %44 to i64*, !dbg !1445
  store i64 0, i64* %45, align 8, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1449
  %46 = load i64, i64* %39, align 8, !dbg !1450
  %47 = add i64 %46, -8, !dbg !1450
  store i64 %47, i64* %39, align 8, !dbg !1450
  %48 = inttoptr i64 %47 to i64*, !dbg !1451
  store i64 0, i64* %48, align 8, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1455
  %49 = load i64, i64* %39, align 8, !dbg !1456
  %50 = add i64 %49, -8, !dbg !1456
  store i64 %50, i64* %39, align 8, !dbg !1456
  %51 = inttoptr i64 %50 to i64*, !dbg !1457
  store i64 0, i64* %51, align 8, !dbg !1458
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1459
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1461
  %52 = load i64, i64* %39, align 8, !dbg !1462
  %53 = add i64 %52, -8, !dbg !1462
  store i64 %53, i64* %39, align 8, !dbg !1462
  %54 = inttoptr i64 %53 to i64*, !dbg !1463
  store i64 0, i64* %54, align 8, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1467
  %55 = load i64, i64* %39, align 8, !dbg !1468
  %56 = add i64 %55, -8, !dbg !1468
  store i64 %56, i64* %39, align 8, !dbg !1468
  %57 = inttoptr i64 %56 to i64*, !dbg !1469
  store i64 0, i64* %57, align 8, !dbg !1470
  %58 = ptrtoint i8* %17 to i64, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %58, metadata !662, metadata !DIExpression()) #11, !dbg !1474
  %59 = load i64, i64* %39, align 8, !dbg !1475
  %60 = add i64 %59, -8, !dbg !1475
  store i64 %60, i64* %39, align 8, !dbg !1475
  %61 = inttoptr i64 %60 to i64*, !dbg !1476
  store i64 %58, i64* %61, align 8, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1478
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1480
  %62 = load i64, i64* %39, align 8, !dbg !1481
  %63 = add i64 %62, -8, !dbg !1481
  store i64 %63, i64* %39, align 8, !dbg !1481
  %64 = inttoptr i64 %63 to i64*, !dbg !1482
  store i64 0, i64* %64, align 8, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1484
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1486
  %65 = load i64, i64* %39, align 8, !dbg !1487
  %66 = add i64 %65, -8, !dbg !1487
  store i64 %66, i64* %39, align 8, !dbg !1487
  %67 = inttoptr i64 %66 to i64*, !dbg !1488
  store i64 0, i64* %67, align 8, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1490
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1492
  %68 = load i64, i64* %39, align 8, !dbg !1493
  %69 = add i64 %68, -8, !dbg !1493
  store i64 %69, i64* %39, align 8, !dbg !1493
  %70 = inttoptr i64 %69 to i64*, !dbg !1494
  store i64 0, i64* %70, align 8, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1498
  %71 = load i64, i64* %39, align 8, !dbg !1499
  %72 = add i64 %71, -8, !dbg !1499
  store i64 %72, i64* %39, align 8, !dbg !1499
  %73 = inttoptr i64 %72 to i64*, !dbg !1500
  store i64 0, i64* %73, align 8, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1502
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1504
  %74 = load i64, i64* %39, align 8, !dbg !1505
  %75 = add i64 %74, -8, !dbg !1505
  store i64 %75, i64* %39, align 8, !dbg !1505
  %76 = inttoptr i64 %75 to i64*, !dbg !1506
  store i64 0, i64* %76, align 8, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1508
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1510
  %77 = load i64, i64* %39, align 8, !dbg !1511
  %78 = add i64 %77, -8, !dbg !1511
  store i64 %78, i64* %39, align 8, !dbg !1511
  %79 = inttoptr i64 %78 to i64*, !dbg !1512
  store i64 0, i64* %79, align 8, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1514
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1516
  %80 = load i64, i64* %39, align 8, !dbg !1517
  %81 = add i64 %80, -8, !dbg !1517
  store i64 %81, i64* %39, align 8, !dbg !1517
  %82 = inttoptr i64 %81 to i64*, !dbg !1518
  store i64 0, i64* %82, align 8, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1522
  %83 = load i64, i64* %39, align 8, !dbg !1523
  %84 = add i64 %83, -8, !dbg !1523
  store i64 %84, i64* %39, align 8, !dbg !1523
  %85 = inttoptr i64 %84 to i64*, !dbg !1524
  store i64 0, i64* %85, align 8, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1528
  %86 = load i64, i64* %39, align 8, !dbg !1529
  %87 = add i64 %86, -8, !dbg !1529
  store i64 %87, i64* %39, align 8, !dbg !1529
  %88 = inttoptr i64 %87 to i64*, !dbg !1530
  store i64 0, i64* %88, align 8, !dbg !1531
  %89 = bitcast %struct.nk_fiber** %1 to i8**, !dbg !1532
  store i8* %17, i8** %89, align 8, !dbg !1532
  %90 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1533, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !772, metadata !DIExpression()) #11, !dbg !1533
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !771, metadata !DIExpression()) #11, !dbg !1535
  %91 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %90, i64 0, i32 24, !dbg !1536
  %92 = bitcast %struct.nk_virtual_console** %91 to i64*, !dbg !1536
  %93 = load i64, i64* %92, align 8, !dbg !1536
  %94 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !1537
  %95 = bitcast i8* %94 to i64*, !dbg !1538
  store i64 %93, i64* %95, align 8, !dbg !1538
  %96 = getelementptr inbounds i8, i8* %17, i64 104, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()) #11, !dbg !1540
  %97 = bitcast i8* %96 to i8**, !dbg !1542
  store i8* %96, i8** %97, align 8, !dbg !1542
  %98 = getelementptr inbounds i8, i8* %17, i64 112, !dbg !1543
  %99 = bitcast i8* %98 to i8**, !dbg !1544
  store i8* %96, i8** %99, align 8, !dbg !1544
  %100 = getelementptr inbounds i8, i8* %17, i64 96, !dbg !1545
  %101 = bitcast i8* %100 to i32*, !dbg !1545
  store i32 0, i32* %101, align 8, !dbg !1546
  %102 = getelementptr inbounds i8, i8* %17, i64 64, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %102, metadata !780, metadata !DIExpression()) #11, !dbg !1548
  %103 = bitcast i8* %102 to i8**, !dbg !1550
  store i8* %102, i8** %103, align 8, !dbg !1550
  %104 = getelementptr inbounds i8, i8* %17, i64 72, !dbg !1551
  %105 = bitcast i8* %104 to i8**, !dbg !1552
  store i8* %102, i8** %105, align 8, !dbg !1552
  %106 = getelementptr inbounds i8, i8* %17, i64 80, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %106, metadata !780, metadata !DIExpression()) #11, !dbg !1554
  %107 = bitcast i8* %106 to i8**, !dbg !1556
  store i8* %106, i8** %107, align 8, !dbg !1556
  %108 = getelementptr inbounds i8, i8* %17, i64 88, !dbg !1557
  %109 = bitcast i8* %108 to i8**, !dbg !1558
  store i8* %106, i8** %109, align 8, !dbg !1558
  br label %nk_fiber_create.exit, !dbg !1559

nk_fiber_create.exit:                             ; preds = %13, %29, %30
  %110 = phi i32 [ 0, %30 ], [ -22, %29 ], [ -22, %13 ], !dbg !1560
  %111 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1561
  %112 = call i32 @nk_fiber_run(%struct.nk_fiber* %111, i8 zeroext 1) #12, !dbg !1562
  br label %113, !dbg !1563

; <label>:113:                                    ; preds = %nk_fiber_create.exit, %11
  %114 = phi i32 [ 0, %nk_fiber_create.exit ], [ -1, %11 ], !dbg !1564
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1565
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1565
  ret i32 %114, !dbg !1565
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1030 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1566
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1568
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1569
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1569
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1570
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1123 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1571
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1574
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1575
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1575
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1576
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1576
  ret %struct.nk_fiber* %6, !dbg !1577
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1133 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1578
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1581
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1582
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1582
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1583
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1583
  ret %struct.nk_fiber* %6, !dbg !1584
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1036 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1585
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1588
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1589
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1589
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1590
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1590
  ret %struct.nk_thread* %6, !dbg !1591
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1054 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1592
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1595
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1596
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1596
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1597
  ret %struct.list_head* %5, !dbg !1598
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !658 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %1, metadata !662, metadata !DIExpression()), !dbg !1600
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1601
  %4 = load i64, i64* %3, align 8, !dbg !1602
  %5 = add i64 %4, -8, !dbg !1602
  store i64 %5, i64* %3, align 8, !dbg !1602
  %6 = inttoptr i64 %5 to i64*, !dbg !1603
  store i64 %1, i64* %6, align 8, !dbg !1604
  ret void, !dbg !1605
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1058 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1606
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1610
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1611
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1611
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1612
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1062, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1080, metadata !DIExpression()), !dbg !1615
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1617
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1617
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1618
  br i1 %8, label %20, label %9, !dbg !1619

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()), !dbg !1620
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1620
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1064, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1063, metadata !DIExpression()), !dbg !1614
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1621
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1092, metadata !DIExpression()), !dbg !1622
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1624
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1624
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1625
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1099, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1104, metadata !DIExpression()), !dbg !1628
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1629
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1630
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1631
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !780, metadata !DIExpression()), !dbg !1633
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1635
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1635
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1636
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1636
  br label %20, !dbg !1637

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1638
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1063, metadata !DIExpression()), !dbg !1614
  ret %struct.nk_fiber* %21, !dbg !1639
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1640 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1642, metadata !DIExpression()), !dbg !1653
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1654
  store i32 4, i32* %3, align 4, !dbg !1655
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1643, metadata !DIExpression()), !dbg !1656
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1645, metadata !DIExpression()), !dbg !1658
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1659
  %6 = load i32, i32* %5, align 8, !dbg !1659
  %7 = icmp sgt i32 %6, 0, !dbg !1660
  br i1 %7, label %8, label %66, !dbg !1661

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1661

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1646, metadata !DIExpression()), !dbg !1662
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1663
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1663
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1662
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1662
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1662
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1646, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1644, metadata !DIExpression()), !dbg !1664
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1092, metadata !DIExpression()), !dbg !1666
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1668
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1668
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1669
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1669
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1099, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1104, metadata !DIExpression()), !dbg !1672
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1673
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1674
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1675
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1676
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !780, metadata !DIExpression()), !dbg !1677
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1679
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1680
  %24 = load i32, i32* %5, align 8, !dbg !1681
  %25 = add i32 %24, -1, !dbg !1681
  store i32 %25, i32* %5, align 8, !dbg !1681
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1682
  br i1 %26, label %63, label %27, !dbg !1684

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1685, metadata !DIExpression()) #11, !dbg !1693
  call void @llvm.dbg.value(metadata i8 1, metadata !1690, metadata !DIExpression()) #11, !dbg !1696
  %28 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %28, metadata !1691, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1701
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1702, !srcloc !1722
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1709, metadata !DIExpression()) #11, !dbg !1702
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1708, metadata !DIExpression()) #11, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1707, metadata !DIExpression()) #11, !dbg !1724
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1725
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1732
  %30 = load i64, i64* %2, align 8, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %30, metadata !1730, metadata !DIExpression()) #11, !dbg !1734
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1735
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1736
  %32 = load i32, i32* %31, align 8, !dbg !1736
  %33 = zext i32 %32 to i64, !dbg !1737
  %34 = urem i64 %30, %33, !dbg !1738
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1739, !srcloc !1740
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1717, metadata !DIExpression()) #11, !dbg !1739
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1715, metadata !DIExpression()) #11, !dbg !1741
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1714, metadata !DIExpression()) #11, !dbg !1742
  %36 = shl nuw i64 %34, 32, !dbg !1743
  %37 = ashr exact i64 %36, 32, !dbg !1743
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1743
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1743
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1691, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1701
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1744
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1744
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1744
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1744
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1691, metadata !DIExpression()) #11, !dbg !1701
  %44 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1745
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1749
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1750
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1750
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1751
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1692, metadata !DIExpression()) #11, !dbg !1752
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1753
  store i32 1, i32* %49, align 4, !dbg !1754
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1755
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1756, metadata !DIExpression()) #11, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1759, metadata !DIExpression()) #11, !dbg !1762
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1763
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1763
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1764, metadata !DIExpression()) #11, !dbg !1771
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1769, metadata !DIExpression()) #11, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1770, metadata !DIExpression()) #11, !dbg !1774
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1775
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1776
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1777
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1778
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1779
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1780
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1781
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1782
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1782
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1784
  br i1 %58, label %61, label %59, !dbg !1785

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #12, !dbg !1786
  br label %61, !dbg !1788

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1659
  br label %63, !dbg !1659

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1659
  %65 = icmp sgt i32 %64, 0, !dbg !1660
  br i1 %65, label %11, label %66, !dbg !1661, !llvm.loop !1789

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1791
  store i8 1, i8* %67, align 8, !dbg !1792
  %68 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1793
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1798
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1799
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1799
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1800
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1062, metadata !DIExpression()) #11, !dbg !1801
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1080, metadata !DIExpression()) #11, !dbg !1803
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1805
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1805
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1806
  br i1 %75, label %88, label %76, !dbg !1807

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !1808
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1808
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1808
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1064, metadata !DIExpression()) #11, !dbg !1808
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1063, metadata !DIExpression()) #11, !dbg !1802
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1809
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1092, metadata !DIExpression()) #11, !dbg !1810
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1812
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1812
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1813
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1099, metadata !DIExpression()) #11, !dbg !1814
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1104, metadata !DIExpression()) #11, !dbg !1816
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1817
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1818
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1819
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1820
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !780, metadata !DIExpression()) #11, !dbg !1821
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1823
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1823
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1824
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1824
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1063, metadata !DIExpression()) #11, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1643, metadata !DIExpression()), !dbg !1656
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1825
  br i1 %87, label %88, label %95, !dbg !1827

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1828
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1833
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1834
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1834
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1835
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1835
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1643, metadata !DIExpression()), !dbg !1656
  br label %95, !dbg !1836

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1837
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1643, metadata !DIExpression()), !dbg !1656
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1838
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1841
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1842
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1842
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1843
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1844
  %102 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1845
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1848
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1849
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1849
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1850
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1850
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1851
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1092, metadata !DIExpression()), !dbg !1852
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1854
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1854
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1855
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1855
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1099, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1104, metadata !DIExpression()), !dbg !1858
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1859
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1860
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1861
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1862
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !780, metadata !DIExpression()), !dbg !1863
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1865
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1866
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1867
  %116 = load i8*, i8** %115, align 8, !dbg !1867
  call void @kmem_free(i8* %116) #12, !dbg !1867
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1868
  call void @kmem_free(i8* %117) #12, !dbg !1868
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #12, !dbg !1869
  ret void, !dbg !1870
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1686 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1685, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %1, metadata !1690, metadata !DIExpression()), !dbg !1872
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1873
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1691, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1878
  %6 = icmp eq i8 %1, 0, !dbg !1879
  br i1 %6, label %20, label %7, !dbg !1880

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1881, !srcloc !1722
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1709, metadata !DIExpression()) #11, !dbg !1881
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1708, metadata !DIExpression()) #11, !dbg !1884
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1707, metadata !DIExpression()) #11, !dbg !1885
  %9 = bitcast i64* %3 to i8*, !dbg !1886
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1886
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #12, !dbg !1888
  %10 = load i64, i64* %3, align 8, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %10, metadata !1730, metadata !DIExpression()) #11, !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1891
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1892
  %12 = load i32, i32* %11, align 8, !dbg !1892
  %13 = zext i32 %12 to i64, !dbg !1893
  %14 = urem i64 %10, %13, !dbg !1894
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1895, !srcloc !1740
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1717, metadata !DIExpression()) #11, !dbg !1895
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1715, metadata !DIExpression()) #11, !dbg !1896
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1714, metadata !DIExpression()) #11, !dbg !1897
  %16 = shl nuw i64 %14, 32, !dbg !1898
  %17 = ashr exact i64 %16, 32, !dbg !1898
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1898
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1898
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1691, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1878
  br label %20, !dbg !1899

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1900
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1900
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1900
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1900
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1691, metadata !DIExpression()), !dbg !1878
  %26 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1901
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1905
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1906
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1906
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1907
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1692, metadata !DIExpression()), !dbg !1908
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1909
  store i32 1, i32* %31, align 4, !dbg !1910
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1911
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1756, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1759, metadata !DIExpression()), !dbg !1914
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1915
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1915
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1764, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1769, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1770, metadata !DIExpression()), !dbg !1919
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1920
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1921
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1922
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1923
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1924
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1925
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1926
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1927
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1927
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1928
  br i1 %40, label %43, label %41, !dbg !1929

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #12, !dbg !1930
  br label %43, !dbg !1931

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1932
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1933 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1935, metadata !DIExpression()), !dbg !1936
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1937
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1937
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1938
  %5 = load i8*, i8** %4, align 8, !dbg !1938
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1939
  %7 = load i8**, i8*** %6, align 8, !dbg !1939
  tail call void %3(i8* %5, i8** %7) #12, !dbg !1940
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #10, !dbg !1941
  ret void, !dbg !1942
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !649 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !648, metadata !DIExpression()), !dbg !1943
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1944
  %3 = bitcast i8** %2 to i64*, !dbg !1944
  %4 = load i64, i64* %3, align 8, !dbg !1944
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1945
  %6 = load i64, i64* %5, align 8, !dbg !1945
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1946
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !1949
  %8 = add i64 %4, -8, !dbg !1950
  %9 = add i64 %8, %6, !dbg !1951
  store i64 %9, i64* %7, align 8, !dbg !1951
  %10 = inttoptr i64 %9 to i64*, !dbg !1952
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1953
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1956
  %11 = load i64, i64* %7, align 8, !dbg !1957
  %12 = add i64 %11, -8, !dbg !1957
  store i64 %12, i64* %7, align 8, !dbg !1957
  %13 = inttoptr i64 %12 to i64*, !dbg !1958
  store i64 0, i64* %13, align 8, !dbg !1959
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1962
  %14 = load i64, i64* %7, align 8, !dbg !1963
  %15 = add i64 %14, -8, !dbg !1963
  store i64 %15, i64* %7, align 8, !dbg !1963
  %16 = inttoptr i64 %15 to i64*, !dbg !1964
  store i64 0, i64* %16, align 8, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1968
  %17 = load i64, i64* %7, align 8, !dbg !1969
  %18 = add i64 %17, -8, !dbg !1969
  store i64 %18, i64* %7, align 8, !dbg !1969
  %19 = inttoptr i64 %18 to i64*, !dbg !1970
  store i64 0, i64* %19, align 8, !dbg !1971
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1974
  %20 = load i64, i64* %7, align 8, !dbg !1975
  %21 = add i64 %20, -8, !dbg !1975
  store i64 %21, i64* %7, align 8, !dbg !1975
  %22 = inttoptr i64 %21 to i64*, !dbg !1976
  store i64 0, i64* %22, align 8, !dbg !1977
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1980
  %23 = load i64, i64* %7, align 8, !dbg !1981
  %24 = add i64 %23, -8, !dbg !1981
  store i64 %24, i64* %7, align 8, !dbg !1981
  %25 = inttoptr i64 %24 to i64*, !dbg !1982
  store i64 0, i64* %25, align 8, !dbg !1983
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1984
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %26, metadata !662, metadata !DIExpression()), !dbg !1987
  %27 = load i64, i64* %7, align 8, !dbg !1988
  %28 = add i64 %27, -8, !dbg !1988
  store i64 %28, i64* %7, align 8, !dbg !1988
  %29 = inttoptr i64 %28 to i64*, !dbg !1989
  store i64 %26, i64* %29, align 8, !dbg !1990
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1993
  %30 = load i64, i64* %7, align 8, !dbg !1994
  %31 = add i64 %30, -8, !dbg !1994
  store i64 %31, i64* %7, align 8, !dbg !1994
  %32 = inttoptr i64 %31 to i64*, !dbg !1995
  store i64 0, i64* %32, align 8, !dbg !1996
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1999
  %33 = load i64, i64* %7, align 8, !dbg !2000
  %34 = add i64 %33, -8, !dbg !2000
  store i64 %34, i64* %7, align 8, !dbg !2000
  %35 = inttoptr i64 %34 to i64*, !dbg !2001
  store i64 0, i64* %35, align 8, !dbg !2002
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2005
  %36 = load i64, i64* %7, align 8, !dbg !2006
  %37 = add i64 %36, -8, !dbg !2006
  store i64 %37, i64* %7, align 8, !dbg !2006
  %38 = inttoptr i64 %37 to i64*, !dbg !2007
  store i64 0, i64* %38, align 8, !dbg !2008
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2011
  %39 = load i64, i64* %7, align 8, !dbg !2012
  %40 = add i64 %39, -8, !dbg !2012
  store i64 %40, i64* %7, align 8, !dbg !2012
  %41 = inttoptr i64 %40 to i64*, !dbg !2013
  store i64 0, i64* %41, align 8, !dbg !2014
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2017
  %42 = load i64, i64* %7, align 8, !dbg !2018
  %43 = add i64 %42, -8, !dbg !2018
  store i64 %43, i64* %7, align 8, !dbg !2018
  %44 = inttoptr i64 %43 to i64*, !dbg !2019
  store i64 0, i64* %44, align 8, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2023
  %45 = load i64, i64* %7, align 8, !dbg !2024
  %46 = add i64 %45, -8, !dbg !2024
  store i64 %46, i64* %7, align 8, !dbg !2024
  %47 = inttoptr i64 %46 to i64*, !dbg !2025
  store i64 0, i64* %47, align 8, !dbg !2026
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2029
  %48 = load i64, i64* %7, align 8, !dbg !2030
  %49 = add i64 %48, -8, !dbg !2030
  store i64 %49, i64* %7, align 8, !dbg !2030
  %50 = inttoptr i64 %49 to i64*, !dbg !2031
  store i64 0, i64* %50, align 8, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2035
  %51 = load i64, i64* %7, align 8, !dbg !2036
  %52 = add i64 %51, -8, !dbg !2036
  store i64 %52, i64* %7, align 8, !dbg !2036
  %53 = inttoptr i64 %52 to i64*, !dbg !2037
  store i64 0, i64* %53, align 8, !dbg !2038
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2041
  %54 = load i64, i64* %7, align 8, !dbg !2042
  %55 = add i64 %54, -8, !dbg !2042
  store i64 %55, i64* %7, align 8, !dbg !2042
  %56 = inttoptr i64 %55 to i64*, !dbg !2043
  store i64 0, i64* %56, align 8, !dbg !2044
  ret void, !dbg !2045
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2046 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2050, metadata !DIExpression()), !dbg !2055
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2056
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2060
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2061
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2061
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2062
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2062
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2051, metadata !DIExpression()), !dbg !2063
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !2064
  %9 = load i32, i32* %8, align 4, !dbg !2064
  %10 = add i32 %9, -3, !dbg !2066
  %11 = icmp ult i32 %10, 2, !dbg !2066
  br i1 %11, label %13, label %12, !dbg !2066

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !2067
  br label %13, !dbg !2069

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2070
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !2074
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !2075
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !2075
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !2076
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !2076
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !2077
  br i1 %20, label %36, label %21, !dbg !2078

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !2079
  %23 = icmp eq i32 %22, 3, !dbg !2080
  br i1 %23, label %36, label %24, !dbg !2081

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2082
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2086
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2087
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2087
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2088
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2052, metadata !DIExpression()), !dbg !2089
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2090
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1756, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1759, metadata !DIExpression()), !dbg !2093
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2094
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2094
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1764, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1769, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1770, metadata !DIExpression()), !dbg !2098
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2099
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2100
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2101
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2102
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2103
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2104
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2105
  br label %36, !dbg !2106

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2107
  %38 = load i32, i32* %37, align 8, !dbg !2107
  %39 = icmp eq i32 %38, 0, !dbg !2109
  br i1 %39, label %40, label %55, !dbg !2110

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2111
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2111
  %43 = load i64, i64* %42, align 8, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2113, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2119
  %44 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2121
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2125
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2126
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2126
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2127
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2127
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2118, metadata !DIExpression()) #11, !dbg !2128
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2129
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2130
  store i64 %43, i64* %51, align 8, !dbg !2130
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2131, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !772, metadata !DIExpression()) #11, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !771, metadata !DIExpression()) #11, !dbg !2133
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2134
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2135
  store i64 %43, i64* %54, align 8, !dbg !2135
  br label %55, !dbg !2136

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2137
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2140
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2141
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2141
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2142
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2143
  store i32 1, i32* %8, align 4, !dbg !2144
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2145
  store i32 5, i32* %61, align 4, !dbg !2146
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #12, !dbg !2147
  ret i32 0, !dbg !2148
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2114 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2113, metadata !DIExpression()), !dbg !2149
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2150
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2154
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2155
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2155
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2156
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2118, metadata !DIExpression()), !dbg !2157
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2158
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2159
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2160, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !772, metadata !DIExpression()) #11, !dbg !2160
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !771, metadata !DIExpression()) #11, !dbg !2162
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2163
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2164
  ret void, !dbg !2165
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2166 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2171
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2175
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2176
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2176
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2177
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2177
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2170, metadata !DIExpression()), !dbg !2178
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #10, !dbg !2179
  ret void, !dbg !2180
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2181 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2185, metadata !DIExpression()), !dbg !2188
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2189
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2193
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2194
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2194
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2195
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2186, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2197
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2198
  %9 = zext i1 %8 to i8, !dbg !2200
  call void @llvm.dbg.value(metadata i8 %9, metadata !2187, metadata !DIExpression()), !dbg !2197
  ret i8 %9, !dbg !2201
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1711 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2202, !srcloc !1722
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1709, metadata !DIExpression()) #11, !dbg !2202
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1708, metadata !DIExpression()) #11, !dbg !2204
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1707, metadata !DIExpression()) #11, !dbg !2205
  %3 = bitcast i64* %1 to i8*, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2206
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #12, !dbg !2208
  %4 = load i64, i64* %1, align 8, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %4, metadata !1730, metadata !DIExpression()) #11, !dbg !2210
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2211
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2212
  %6 = load i32, i32* %5, align 8, !dbg !2212
  %7 = zext i32 %6 to i64, !dbg !2213
  %8 = urem i64 %4, %7, !dbg !2214
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2215, !srcloc !1740
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1717, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1715, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1714, metadata !DIExpression()), !dbg !2217
  %10 = shl nuw i64 %8, 32, !dbg !2218
  %11 = ashr exact i64 %10, 32, !dbg !2218
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2218
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2218
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2219
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2219
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2220
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2220
  ret %struct.nk_thread* %17, !dbg !2221
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2222 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2224, metadata !DIExpression()), !dbg !2243
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2244, !srcloc !2245
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2228, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2226, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2225, metadata !DIExpression()), !dbg !2247
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2248
  %4 = load i32, i32* %3, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata i32 %4, metadata !2230, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()), !dbg !2250
  %5 = icmp sgt i32 %4, 0, !dbg !2251
  br i1 %5, label %6, label %38, !dbg !2252

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2253
  br label %8, !dbg !2253

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2233, metadata !DIExpression()), !dbg !2250
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2253
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2253
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2254
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2254
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2255
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2231, metadata !DIExpression()), !dbg !2256
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2257
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2235, metadata !DIExpression(DW_OP_deref)), !dbg !2257
  call void @llvm.dbg.value(metadata i8** %15, metadata !2232, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2258
  %16 = load i8*, i8** %15, align 8, !dbg !2259
  br label %17, !dbg !2260

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2259
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2261
  %20 = bitcast i8* %18 to i8**, !dbg !2261
  %21 = load i8*, i8** %20, align 8, !dbg !2261
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2261
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2261
  br i1 %22, label %27, label %23, !dbg !2260

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2259
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2232, metadata !DIExpression()), !dbg !2258
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2262
  br i1 %26, label %30, label %17, !dbg !2265, !llvm.loop !2266

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i32 undef, metadata !2233, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2250
  %29 = icmp slt i64 %28, %7, !dbg !2251
  br i1 %29, label %8, label %38, !dbg !2252, !llvm.loop !2269

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1092, metadata !DIExpression()), !dbg !2273
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2275
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2275
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2276
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2276
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1099, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1104, metadata !DIExpression()), !dbg !2279
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2280
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2281
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2282
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2283
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !780, metadata !DIExpression()), !dbg !2284
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2286
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2287
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2288
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2289 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2318, !srcloc !2319
  call void @llvm.dbg.value(metadata i32 %1, metadata !2294, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 %1, metadata !2292, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %1, metadata !2291, metadata !DIExpression()), !dbg !2321
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2322
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2324
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2296, metadata !DIExpression()), !dbg !2325
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2326
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2327
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2328
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2329
  br i1 %6, label %7, label %109, !dbg !2330

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2331
  %9 = icmp eq i64 %8, 0, !dbg !2337
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %10, metadata !2342, metadata !DIExpression()) #11, !dbg !2344
  %11 = icmp eq i64 %10, 0, !dbg !2345
  br i1 %11, label %17, label %12, !dbg !2347

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2348
  %14 = inttoptr i64 %13 to i16*, !dbg !2350
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2351
  %16 = zext i16 %15 to i32, !dbg !2351
  br label %17, !dbg !2352

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2353
  %19 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %19, metadata !2358, metadata !DIExpression()) #11, !dbg !2360
  %20 = icmp eq i64 %19, 0, !dbg !2361
  br i1 %20, label %25, label %21, !dbg !2363

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2364
  %23 = inttoptr i64 %22 to i16*, !dbg !2366
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2367
  br label %25, !dbg !2368

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2369

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2297, metadata !DIExpression()), !dbg !2370
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2371, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !2373
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2303, metadata !DIExpression()), !dbg !2370
  %28 = tail call i32 @nk_vc_is_active() #12, !dbg !2374
  %29 = icmp eq i32 %28, 0, !dbg !2374
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2375
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %31, metadata !2382, metadata !DIExpression()) #11, !dbg !2386
  %32 = icmp eq i64 %31, 0, !dbg !2387
  br i1 %32, label %38, label %33, !dbg !2389

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2390
  %35 = inttoptr i64 %34 to i16*, !dbg !2392
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2393
  %37 = icmp eq i16 %36, 0, !dbg !2394
  br i1 %37, label %38, label %39, !dbg !2375

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2375

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2375
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2375
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2375
  br i1 %29, label %60, label %44, !dbg !2395

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2396

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2396
  %47 = load i64, i64* %46, align 32, !dbg !2396
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2396
  %49 = load i8, i8* %48, align 8, !dbg !2396
  %50 = icmp eq i8 %49, 0, !dbg !2396
  br i1 %50, label %51, label %56, !dbg !2396

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2396
  %53 = load i8, i8* %52, align 64, !dbg !2396
  %54 = icmp eq i8 %53, 0, !dbg !2396
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !2396
  br label %56, !dbg !2396

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !2396
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2396
  br label %76, !dbg !2396

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2397

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2397
  %63 = load i64, i64* %62, align 32, !dbg !2397
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2397
  %65 = load i8, i8* %64, align 8, !dbg !2397
  %66 = icmp eq i8 %65, 0, !dbg !2397
  br i1 %66, label %67, label %72, !dbg !2397

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2397
  %69 = load i8, i8* %68, align 64, !dbg !2397
  %70 = icmp eq i8 %69, 0, !dbg !2397
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !2397
  br label %72, !dbg !2397

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !2397
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2397
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %77, metadata !2402, metadata !DIExpression()) #11, !dbg !2404
  %78 = icmp eq i64 %77, 0, !dbg !2405
  br i1 %78, label %109, label %79, !dbg !2407

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2408
  %81 = inttoptr i64 %80 to i16*, !dbg !2410
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2411
  br label %109, !dbg !2412

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2316, metadata !DIExpression()), !dbg !2413
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !2414
  %85 = icmp eq i32 %84, 0, !dbg !2414
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %86, metadata !2382, metadata !DIExpression()) #11, !dbg !2421
  %87 = icmp eq i64 %86, 0, !dbg !2422
  br i1 %87, label %93, label %88, !dbg !2423

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2424
  %90 = inttoptr i64 %89 to i16*, !dbg !2425
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2426
  %92 = icmp eq i16 %91, 0, !dbg !2427
  br i1 %92, label %93, label %94, !dbg !2428

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2428

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2428
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2428
  br i1 %85, label %100, label %98, !dbg !2429

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2430
  br label %102, !dbg !2430

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2432
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %103, metadata !2402, metadata !DIExpression()) #11, !dbg !2437
  %104 = icmp eq i64 %103, 0, !dbg !2438
  br i1 %104, label %109, label %105, !dbg !2439

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2440
  %107 = inttoptr i64 %106 to i16*, !dbg !2441
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2442
  br label %109, !dbg !2443

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2444
  ret i32 %110, !dbg !2445
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2446 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2478, !srcloc !2479
  call void @llvm.dbg.value(metadata i32 %1, metadata !2455, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %1, metadata !2453, metadata !DIExpression()), !dbg !2480
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #12, !dbg !2481
  call void @llvm.dbg.value(metadata i8* %2, metadata !2451, metadata !DIExpression()), !dbg !2481
  %3 = icmp eq i8* %2, null, !dbg !2482
  br i1 %3, label %4, label %106, !dbg !2483

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2484
  %6 = icmp eq i64 %5, 0, !dbg !2486
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %7, metadata !2342, metadata !DIExpression()) #11, !dbg !2490
  %8 = icmp eq i64 %7, 0, !dbg !2491
  br i1 %8, label %14, label %9, !dbg !2492

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2493
  %11 = inttoptr i64 %10 to i16*, !dbg !2494
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2495
  %13 = zext i16 %12 to i32, !dbg !2495
  br label %14, !dbg !2496

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2497
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %16, metadata !2358, metadata !DIExpression()) #11, !dbg !2501
  %17 = icmp eq i64 %16, 0, !dbg !2502
  br i1 %17, label %22, label %18, !dbg !2503

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2504
  %20 = inttoptr i64 %19 to i16*, !dbg !2505
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2506
  br label %22, !dbg !2507

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2508

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2457, metadata !DIExpression()), !dbg !2509
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2510, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2510
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2512
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2463, metadata !DIExpression()), !dbg !2509
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2513
  %26 = icmp eq i32 %25, 0, !dbg !2513
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2514
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %28, metadata !2382, metadata !DIExpression()) #11, !dbg !2519
  %29 = icmp eq i64 %28, 0, !dbg !2520
  br i1 %29, label %35, label %30, !dbg !2521

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2522
  %32 = inttoptr i64 %31 to i16*, !dbg !2523
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2524
  %34 = icmp eq i16 %33, 0, !dbg !2525
  br i1 %34, label %35, label %36, !dbg !2514

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2514

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2514
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2514
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2514
  br i1 %26, label %57, label %41, !dbg !2526

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2527

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2527
  %44 = load i64, i64* %43, align 32, !dbg !2527
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2527
  %46 = load i8, i8* %45, align 8, !dbg !2527
  %47 = icmp eq i8 %46, 0, !dbg !2527
  br i1 %47, label %48, label %53, !dbg !2527

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2527
  %50 = load i8, i8* %49, align 64, !dbg !2527
  %51 = icmp eq i8 %50, 0, !dbg !2527
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2527
  br label %53, !dbg !2527

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2527
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2527
  br label %73, !dbg !2527

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2528

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2528
  %60 = load i64, i64* %59, align 32, !dbg !2528
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2528
  %62 = load i8, i8* %61, align 8, !dbg !2528
  %63 = icmp eq i8 %62, 0, !dbg !2528
  br i1 %63, label %64, label %69, !dbg !2528

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2528
  %66 = load i8, i8* %65, align 64, !dbg !2528
  %67 = icmp eq i8 %66, 0, !dbg !2528
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2528
  br label %69, !dbg !2528

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2528
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2528
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %74, metadata !2402, metadata !DIExpression()) #11, !dbg !2532
  %75 = icmp eq i64 %74, 0, !dbg !2533
  br i1 %75, label %114, label %76, !dbg !2534

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2535
  %78 = inttoptr i64 %77 to i16*, !dbg !2536
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2537
  br label %114, !dbg !2538

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2476, metadata !DIExpression()), !dbg !2539
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2540
  %82 = icmp eq i32 %81, 0, !dbg !2540
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %83, metadata !2382, metadata !DIExpression()) #11, !dbg !2547
  %84 = icmp eq i64 %83, 0, !dbg !2548
  br i1 %84, label %90, label %85, !dbg !2549

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2550
  %87 = inttoptr i64 %86 to i16*, !dbg !2551
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2552
  %89 = icmp eq i16 %88, 0, !dbg !2553
  br i1 %89, label %90, label %91, !dbg !2554

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2554

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2554
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2554
  br i1 %82, label %97, label %95, !dbg !2555

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2556
  br label %99, !dbg !2556

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2558
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %100, metadata !2402, metadata !DIExpression()) #11, !dbg !2563
  %101 = icmp eq i64 %100, 0, !dbg !2564
  br i1 %101, label %114, label %102, !dbg !2565

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2566
  %104 = inttoptr i64 %103 to i16*, !dbg !2567
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2568
  br label %114, !dbg !2569

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2570
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2450, metadata !DIExpression()), !dbg !2571
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #12, !dbg !2572
  %109 = bitcast i8* %2 to i32*, !dbg !2573
  tail call void @spinlock_init(i32* %109) #12, !dbg !2574
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %110, metadata !780, metadata !DIExpression()), !dbg !2576
  %111 = bitcast i8* %110 to i8**, !dbg !2578
  store i8* %110, i8** %111, align 8, !dbg !2578
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2579
  %113 = bitcast i8* %112 to i8**, !dbg !2580
  store i8* %110, i8** %113, align 8, !dbg !2580
  br label %115, !dbg !2581

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #12, !dbg !2582
  br label %115, !dbg !2583

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2584
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2585
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2586 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2629
  %2 = zext i32 %1 to i64, !dbg !2630
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2630
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2588, metadata !DIExpression()), !dbg !2631
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2632
  %6 = icmp eq i64 %5, 0, !dbg !2634
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %7, metadata !2342, metadata !DIExpression()) #11, !dbg !2638
  %8 = icmp eq i64 %7, 0, !dbg !2639
  br i1 %8, label %14, label %9, !dbg !2640

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2641
  %11 = inttoptr i64 %10 to i16*, !dbg !2642
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2643
  %13 = zext i16 %12 to i32, !dbg !2643
  br label %14, !dbg !2644

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2645
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %16, metadata !2358, metadata !DIExpression()) #11, !dbg !2649
  %17 = icmp eq i64 %16, 0, !dbg !2650
  br i1 %17, label %22, label %18, !dbg !2651

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2652
  %20 = inttoptr i64 %19 to i16*, !dbg !2653
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2654
  br label %22, !dbg !2655

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2656

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2589, metadata !DIExpression()), !dbg !2657
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2658, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2658
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2593, metadata !DIExpression()), !dbg !2657
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2661
  %26 = icmp eq i32 %25, 0, !dbg !2661
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2662
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %28, metadata !2382, metadata !DIExpression()) #11, !dbg !2667
  %29 = icmp eq i64 %28, 0, !dbg !2668
  br i1 %29, label %35, label %30, !dbg !2669

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2670
  %32 = inttoptr i64 %31 to i16*, !dbg !2671
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2672
  %34 = icmp eq i16 %33, 0, !dbg !2673
  br i1 %34, label %35, label %36, !dbg !2662

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2662

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2662
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2662
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2662
  br i1 %26, label %57, label %41, !dbg !2674

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2675

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2675
  %44 = load i64, i64* %43, align 32, !dbg !2675
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2675
  %46 = load i8, i8* %45, align 8, !dbg !2675
  %47 = icmp eq i8 %46, 0, !dbg !2675
  br i1 %47, label %48, label %53, !dbg !2675

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2675
  %50 = load i8, i8* %49, align 64, !dbg !2675
  %51 = icmp eq i8 %50, 0, !dbg !2675
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2675
  br label %53, !dbg !2675

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2675
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #12, !dbg !2675
  br label %73, !dbg !2675

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2676

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2676
  %60 = load i64, i64* %59, align 32, !dbg !2676
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2676
  %62 = load i8, i8* %61, align 8, !dbg !2676
  %63 = icmp eq i8 %62, 0, !dbg !2676
  br i1 %63, label %64, label %69, !dbg !2676

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2676
  %66 = load i8, i8* %65, align 64, !dbg !2676
  %67 = icmp eq i8 %66, 0, !dbg !2676
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2676
  br label %69, !dbg !2676

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2676
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #12, !dbg !2676
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %74, metadata !2402, metadata !DIExpression()) #11, !dbg !2680
  %75 = icmp eq i64 %74, 0, !dbg !2681
  br i1 %75, label %106, label %76, !dbg !2682

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2683
  %78 = inttoptr i64 %77 to i16*, !dbg !2684
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2685
  br label %106, !dbg !2686

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2606, metadata !DIExpression()), !dbg !2687
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2688
  %82 = icmp eq i32 %81, 0, !dbg !2688
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %83, metadata !2382, metadata !DIExpression()) #11, !dbg !2695
  %84 = icmp eq i64 %83, 0, !dbg !2696
  br i1 %84, label %90, label %85, !dbg !2697

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2698
  %87 = inttoptr i64 %86 to i16*, !dbg !2699
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2700
  %89 = icmp eq i16 %88, 0, !dbg !2701
  br i1 %89, label %90, label %91, !dbg !2702

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2702

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2702
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2702
  br i1 %82, label %97, label %95, !dbg !2703

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2704
  br label %99, !dbg !2704

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2706
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %100, metadata !2402, metadata !DIExpression()) #11, !dbg !2711
  %101 = icmp eq i64 %100, 0, !dbg !2712
  br i1 %101, label %106, label %102, !dbg !2713

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2714
  %104 = inttoptr i64 %103 to i16*, !dbg !2715
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2716
  br label %106, !dbg !2717

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2718
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2719
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2720
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2721
  br i1 %109, label %110, label %212, !dbg !2722

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2723
  %112 = icmp eq i64 %111, 0, !dbg !2725
  %113 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %113, metadata !2342, metadata !DIExpression()) #11, !dbg !2729
  %114 = icmp eq i64 %113, 0, !dbg !2730
  br i1 %114, label %120, label %115, !dbg !2731

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2732
  %117 = inttoptr i64 %116 to i16*, !dbg !2733
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2734
  %119 = zext i16 %118 to i32, !dbg !2734
  br label %120, !dbg !2735

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2736
  %122 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %122, metadata !2358, metadata !DIExpression()) #11, !dbg !2740
  %123 = icmp eq i64 %122, 0, !dbg !2741
  br i1 %123, label %128, label %124, !dbg !2742

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2743
  %126 = inttoptr i64 %125 to i16*, !dbg !2744
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2745
  br label %128, !dbg !2746

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2747

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2608, metadata !DIExpression()), !dbg !2748
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2749, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !772, metadata !DIExpression()) #11, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !771, metadata !DIExpression()) #11, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2614, metadata !DIExpression()), !dbg !2748
  %131 = tail call i32 @nk_vc_is_active() #12, !dbg !2752
  %132 = icmp eq i32 %131, 0, !dbg !2752
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2753
  %134 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %134, metadata !2382, metadata !DIExpression()) #11, !dbg !2758
  %135 = icmp eq i64 %134, 0, !dbg !2759
  br i1 %135, label %141, label %136, !dbg !2760

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2761
  %138 = inttoptr i64 %137 to i16*, !dbg !2762
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2763
  %140 = icmp eq i16 %139, 0, !dbg !2764
  br i1 %140, label %141, label %142, !dbg !2753

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2753

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2753
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2753
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2753
  br i1 %132, label %163, label %147, !dbg !2765

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2766

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2766
  %150 = load i64, i64* %149, align 32, !dbg !2766
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2766
  %152 = load i8, i8* %151, align 8, !dbg !2766
  %153 = icmp eq i8 %152, 0, !dbg !2766
  br i1 %153, label %154, label %159, !dbg !2766

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2766
  %156 = load i8, i8* %155, align 64, !dbg !2766
  %157 = icmp eq i8 %156, 0, !dbg !2766
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !2766
  br label %159, !dbg !2766

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !2766
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2766
  br label %179, !dbg !2766

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2767

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2767
  %166 = load i64, i64* %165, align 32, !dbg !2767
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2767
  %168 = load i8, i8* %167, align 8, !dbg !2767
  %169 = icmp eq i8 %168, 0, !dbg !2767
  br i1 %169, label %170, label %175, !dbg !2767

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2767
  %172 = load i8, i8* %171, align 64, !dbg !2767
  %173 = icmp eq i8 %172, 0, !dbg !2767
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !2767
  br label %175, !dbg !2767

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !2767
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2767
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %180, metadata !2402, metadata !DIExpression()) #11, !dbg !2771
  %181 = icmp eq i64 %180, 0, !dbg !2772
  br i1 %181, label %212, label %182, !dbg !2773

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2774
  %184 = inttoptr i64 %183 to i16*, !dbg !2775
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2776
  br label %212, !dbg !2777

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2627, metadata !DIExpression()), !dbg !2778
  %187 = tail call i32 @nk_vc_is_active() #12, !dbg !2779
  %188 = icmp eq i32 %187, 0, !dbg !2779
  %189 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %189, metadata !2382, metadata !DIExpression()) #11, !dbg !2786
  %190 = icmp eq i64 %189, 0, !dbg !2787
  br i1 %190, label %196, label %191, !dbg !2788

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2789
  %193 = inttoptr i64 %192 to i16*, !dbg !2790
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2791
  %195 = icmp eq i16 %194, 0, !dbg !2792
  br i1 %195, label %196, label %197, !dbg !2793

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2793

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2793
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2793
  br i1 %188, label %203, label %201, !dbg !2794

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2795
  br label %205, !dbg !2795

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2797
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %206, metadata !2402, metadata !DIExpression()) #11, !dbg !2802
  %207 = icmp eq i64 %206, 0, !dbg !2803
  br i1 %207, label %212, label %208, !dbg !2804

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2805
  %210 = inttoptr i64 %209 to i16*, !dbg !2806
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2807
  br label %212, !dbg !2808

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2809
  ret i32 %213, !dbg !2810
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2811 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2813, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8** undef, metadata !2814, metadata !DIExpression()), !dbg !2928
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2929, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !772, metadata !DIExpression()) #11, !dbg !2929
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !771, metadata !DIExpression()) #11, !dbg !2931
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2932
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !2933
  %8 = icmp eq i32 %7, 0, !dbg !2933
  br i1 %8, label %111, label %9, !dbg !2934

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2935
  %11 = icmp eq i64 %10, 0, !dbg !2937
  %12 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %12, metadata !2342, metadata !DIExpression()) #11, !dbg !2941
  %13 = icmp eq i64 %12, 0, !dbg !2942
  br i1 %13, label %19, label %14, !dbg !2943

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2944
  %16 = inttoptr i64 %15 to i16*, !dbg !2945
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2946
  %18 = zext i16 %17 to i32, !dbg !2946
  br label %19, !dbg !2947

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2948
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %21, metadata !2358, metadata !DIExpression()) #11, !dbg !2952
  %22 = icmp eq i64 %21, 0, !dbg !2953
  br i1 %22, label %27, label %23, !dbg !2954

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2955
  %25 = inttoptr i64 %24 to i16*, !dbg !2956
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2957
  br label %27, !dbg !2958

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2959

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2815, metadata !DIExpression()), !dbg !2960
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2961, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !772, metadata !DIExpression()) #11, !dbg !2961
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !771, metadata !DIExpression()) #11, !dbg !2963
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2821, metadata !DIExpression()), !dbg !2960
  %30 = tail call i32 @nk_vc_is_active() #12, !dbg !2964
  %31 = icmp eq i32 %30, 0, !dbg !2964
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2965
  %33 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %33, metadata !2382, metadata !DIExpression()) #11, !dbg !2970
  %34 = icmp eq i64 %33, 0, !dbg !2971
  br i1 %34, label %40, label %35, !dbg !2972

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2973
  %37 = inttoptr i64 %36 to i16*, !dbg !2974
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2975
  %39 = icmp eq i16 %38, 0, !dbg !2976
  br i1 %39, label %40, label %41, !dbg !2965

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2965

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2965
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2965
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2965
  br i1 %31, label %62, label %46, !dbg !2977

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2978

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2978
  %49 = load i64, i64* %48, align 32, !dbg !2978
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2978
  %51 = load i8, i8* %50, align 8, !dbg !2978
  %52 = icmp eq i8 %51, 0, !dbg !2978
  br i1 %52, label %53, label %58, !dbg !2978

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2978
  %55 = load i8, i8* %54, align 64, !dbg !2978
  %56 = icmp eq i8 %55, 0, !dbg !2978
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !2978
  br label %58, !dbg !2978

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !2978
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2978
  br label %78, !dbg !2978

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2979

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2979
  %65 = load i64, i64* %64, align 32, !dbg !2979
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2979
  %67 = load i8, i8* %66, align 8, !dbg !2979
  %68 = icmp eq i8 %67, 0, !dbg !2979
  br i1 %68, label %69, label %74, !dbg !2979

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2979
  %71 = load i8, i8* %70, align 64, !dbg !2979
  %72 = icmp eq i8 %71, 0, !dbg !2979
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !2979
  br label %74, !dbg !2979

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !2979
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2979
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %79, metadata !2402, metadata !DIExpression()) #11, !dbg !2983
  %80 = icmp eq i64 %79, 0, !dbg !2984
  br i1 %80, label %449, label %81, !dbg !2985

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2986
  %83 = inttoptr i64 %82 to i16*, !dbg !2987
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2988
  br label %449, !dbg !2989

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2834, metadata !DIExpression()), !dbg !2990
  %86 = tail call i32 @nk_vc_is_active() #12, !dbg !2991
  %87 = icmp eq i32 %86, 0, !dbg !2991
  %88 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %88, metadata !2382, metadata !DIExpression()) #11, !dbg !2998
  %89 = icmp eq i64 %88, 0, !dbg !2999
  br i1 %89, label %95, label %90, !dbg !3000

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !3001
  %92 = inttoptr i64 %91 to i16*, !dbg !3002
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !3003
  %94 = icmp eq i16 %93, 0, !dbg !3004
  br i1 %94, label %95, label %96, !dbg !3005

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !3005

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !3005
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3005
  br i1 %87, label %102, label %100, !dbg !3006

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3007
  br label %104, !dbg !3007

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3009
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %105, metadata !2402, metadata !DIExpression()) #11, !dbg !3014
  %106 = icmp eq i64 %105, 0, !dbg !3015
  br i1 %106, label %449, label %107, !dbg !3016

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3017
  %109 = inttoptr i64 %108 to i16*, !dbg !3018
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3019
  br label %449, !dbg !3020

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3021
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !3022
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !3022
  store i64 100000000, i64* %113, align 8, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !3022
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #12, !dbg !3023
  %115 = icmp eq i32 %114, 0, !dbg !3023
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3024
  br i1 %115, label %219, label %117, !dbg !3025

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !3026
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %119, metadata !2342, metadata !DIExpression()) #11, !dbg !3030
  %120 = icmp eq i64 %119, 0, !dbg !3031
  br i1 %120, label %126, label %121, !dbg !3032

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !3033
  %123 = inttoptr i64 %122 to i16*, !dbg !3034
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3035
  %125 = zext i16 %124 to i32, !dbg !3035
  br label %126, !dbg !3036

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !3037
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %128, metadata !2358, metadata !DIExpression()) #11, !dbg !3041
  %129 = icmp eq i64 %128, 0, !dbg !3042
  br i1 %129, label %134, label %130, !dbg !3043

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3044
  %132 = inttoptr i64 %131 to i16*, !dbg !3045
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3046
  br label %134, !dbg !3047

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !3048

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2862, metadata !DIExpression()), !dbg !3049
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3050, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !3050
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !3052
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2868, metadata !DIExpression()), !dbg !3049
  %137 = call i32 @nk_vc_is_active() #12, !dbg !3053
  %138 = icmp eq i32 %137, 0, !dbg !3053
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3054
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %140, metadata !2382, metadata !DIExpression()) #11, !dbg !3059
  %141 = icmp eq i64 %140, 0, !dbg !3060
  br i1 %141, label %147, label %142, !dbg !3061

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3062
  %144 = inttoptr i64 %143 to i16*, !dbg !3063
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3064
  %146 = icmp eq i16 %145, 0, !dbg !3065
  br i1 %146, label %147, label %148, !dbg !3054

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !3054

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3054
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3054
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3054
  br i1 %138, label %169, label %153, !dbg !3066

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3067

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3067
  %156 = load i64, i64* %155, align 32, !dbg !3067
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3067
  %158 = load i8, i8* %157, align 8, !dbg !3067
  %159 = icmp eq i8 %158, 0, !dbg !3067
  br i1 %159, label %160, label %165, !dbg !3067

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3067
  %162 = load i8, i8* %161, align 64, !dbg !3067
  %163 = icmp eq i8 %162, 0, !dbg !3067
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3067
  br label %165, !dbg !3067

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3067
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3067
  br label %185, !dbg !3067

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3068

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3068
  %172 = load i64, i64* %171, align 32, !dbg !3068
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3068
  %174 = load i8, i8* %173, align 8, !dbg !3068
  %175 = icmp eq i8 %174, 0, !dbg !3068
  br i1 %175, label %176, label %181, !dbg !3068

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3068
  %178 = load i8, i8* %177, align 64, !dbg !3068
  %179 = icmp eq i8 %178, 0, !dbg !3068
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3068
  br label %181, !dbg !3068

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3068
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3068
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %186, metadata !2402, metadata !DIExpression()) #11, !dbg !3072
  %187 = icmp eq i64 %186, 0, !dbg !3073
  br i1 %187, label %218, label %188, !dbg !3074

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3075
  %190 = inttoptr i64 %189 to i16*, !dbg !3076
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3077
  br label %218, !dbg !3078

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2881, metadata !DIExpression()), !dbg !3079
  %193 = call i32 @nk_vc_is_active() #12, !dbg !3080
  %194 = icmp eq i32 %193, 0, !dbg !3080
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %195, metadata !2382, metadata !DIExpression()) #11, !dbg !3087
  %196 = icmp eq i64 %195, 0, !dbg !3088
  br i1 %196, label %202, label %197, !dbg !3089

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3090
  %199 = inttoptr i64 %198 to i16*, !dbg !3091
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3092
  %201 = icmp eq i16 %200, 0, !dbg !3093
  br i1 %201, label %202, label %203, !dbg !3094

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3094

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3094
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3094
  br i1 %194, label %209, label %207, !dbg !3095

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3096
  br label %211, !dbg !3096

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3098
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %212, metadata !2402, metadata !DIExpression()) #11, !dbg !3103
  %213 = icmp eq i64 %212, 0, !dbg !3104
  br i1 %213, label %218, label %214, !dbg !3105

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3106
  %216 = inttoptr i64 %215 to i16*, !dbg !3107
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3108
  br label %218, !dbg !3109

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #13, !dbg !3110
  unreachable, !dbg !3110

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3111
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3114
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3114
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2883, metadata !DIExpression()), !dbg !3115
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3116
  br i1 %223, label %224, label %326, !dbg !3117

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3118
  %226 = icmp eq i64 %225, 0, !dbg !3120
  %227 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %227, metadata !2342, metadata !DIExpression()) #11, !dbg !3124
  %228 = icmp eq i64 %227, 0, !dbg !3125
  br i1 %228, label %234, label %229, !dbg !3126

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3127
  %231 = inttoptr i64 %230 to i16*, !dbg !3128
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3129
  %233 = zext i16 %232 to i32, !dbg !3129
  br label %234, !dbg !3130

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3131
  %236 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %236, metadata !2358, metadata !DIExpression()) #11, !dbg !3135
  %237 = icmp eq i64 %236, 0, !dbg !3136
  br i1 %237, label %242, label %238, !dbg !3137

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3138
  %240 = inttoptr i64 %239 to i16*, !dbg !3139
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3140
  br label %242, !dbg !3141

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3142

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2884, metadata !DIExpression()), !dbg !3143
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3144, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !772, metadata !DIExpression()) #11, !dbg !3144
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !771, metadata !DIExpression()) #11, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2890, metadata !DIExpression()), !dbg !3143
  %245 = call i32 @nk_vc_is_active() #12, !dbg !3147
  %246 = icmp eq i32 %245, 0, !dbg !3147
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3148
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %248, metadata !2382, metadata !DIExpression()) #11, !dbg !3153
  %249 = icmp eq i64 %248, 0, !dbg !3154
  br i1 %249, label %255, label %250, !dbg !3155

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3156
  %252 = inttoptr i64 %251 to i16*, !dbg !3157
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3158
  %254 = icmp eq i16 %253, 0, !dbg !3159
  br i1 %254, label %255, label %256, !dbg !3148

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3148

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3148
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3148
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3148
  br i1 %246, label %277, label %261, !dbg !3160

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3161

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3161
  %264 = load i64, i64* %263, align 32, !dbg !3161
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3161
  %266 = load i8, i8* %265, align 8, !dbg !3161
  %267 = icmp eq i8 %266, 0, !dbg !3161
  br i1 %267, label %268, label %273, !dbg !3161

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3161
  %270 = load i8, i8* %269, align 64, !dbg !3161
  %271 = icmp eq i8 %270, 0, !dbg !3161
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !3161
  br label %273, !dbg !3161

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !3161
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3161
  br label %293, !dbg !3161

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3162

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3162
  %280 = load i64, i64* %279, align 32, !dbg !3162
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3162
  %282 = load i8, i8* %281, align 8, !dbg !3162
  %283 = icmp eq i8 %282, 0, !dbg !3162
  br i1 %283, label %284, label %289, !dbg !3162

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3162
  %286 = load i8, i8* %285, align 64, !dbg !3162
  %287 = icmp eq i8 %286, 0, !dbg !3162
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !3162
  br label %289, !dbg !3162

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !3162
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3162
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %294, metadata !2402, metadata !DIExpression()) #11, !dbg !3166
  %295 = icmp eq i64 %294, 0, !dbg !3167
  br i1 %295, label %326, label %296, !dbg !3168

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3169
  %298 = inttoptr i64 %297 to i16*, !dbg !3170
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3171
  br label %326, !dbg !3172

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2903, metadata !DIExpression()), !dbg !3173
  %301 = call i32 @nk_vc_is_active() #12, !dbg !3174
  %302 = icmp eq i32 %301, 0, !dbg !3174
  %303 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %303, metadata !2382, metadata !DIExpression()) #11, !dbg !3181
  %304 = icmp eq i64 %303, 0, !dbg !3182
  br i1 %304, label %310, label %305, !dbg !3183

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3184
  %307 = inttoptr i64 %306 to i16*, !dbg !3185
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3186
  %309 = icmp eq i16 %308, 0, !dbg !3187
  br i1 %309, label %310, label %311, !dbg !3188

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3188

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3188
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3188
  br i1 %302, label %317, label %315, !dbg !3189

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3190
  br label %319, !dbg !3190

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3192
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %320, metadata !2402, metadata !DIExpression()) #11, !dbg !3197
  %321 = icmp eq i64 %320, 0, !dbg !3198
  br i1 %321, label %326, label %322, !dbg !3199

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3200
  %324 = inttoptr i64 %323 to i16*, !dbg !3201
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3202
  br label %326, !dbg !3203

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3204, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !772, metadata !DIExpression()) #11, !dbg !3204
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !771, metadata !DIExpression()) #11, !dbg !3206
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3207
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3208
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3209
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2905, metadata !DIExpression(DW_OP_deref)), !dbg !3210
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !3211
  %331 = icmp slt i32 %330, 0, !dbg !3212
  br i1 %331, label %332, label %434, !dbg !3213

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3214
  %334 = icmp eq i64 %333, 0, !dbg !3216
  %335 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %335, metadata !2342, metadata !DIExpression()) #11, !dbg !3220
  %336 = icmp eq i64 %335, 0, !dbg !3221
  br i1 %336, label %342, label %337, !dbg !3222

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3223
  %339 = inttoptr i64 %338 to i16*, !dbg !3224
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3225
  %341 = zext i16 %340 to i32, !dbg !3225
  br label %342, !dbg !3226

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3227
  %344 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3228
  call void @llvm.dbg.value(metadata i64 %344, metadata !2358, metadata !DIExpression()) #11, !dbg !3231
  %345 = icmp eq i64 %344, 0, !dbg !3232
  br i1 %345, label %350, label %346, !dbg !3233

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3234
  %348 = inttoptr i64 %347 to i16*, !dbg !3235
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3236
  br label %350, !dbg !3237

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3238

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2906, metadata !DIExpression()), !dbg !3239
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3240, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !772, metadata !DIExpression()) #11, !dbg !3240
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !771, metadata !DIExpression()) #11, !dbg !3242
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2912, metadata !DIExpression()), !dbg !3239
  %353 = call i32 @nk_vc_is_active() #12, !dbg !3243
  %354 = icmp eq i32 %353, 0, !dbg !3243
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3244
  %356 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %356, metadata !2382, metadata !DIExpression()) #11, !dbg !3249
  %357 = icmp eq i64 %356, 0, !dbg !3250
  br i1 %357, label %363, label %358, !dbg !3251

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3252
  %360 = inttoptr i64 %359 to i16*, !dbg !3253
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3254
  %362 = icmp eq i16 %361, 0, !dbg !3255
  br i1 %362, label %363, label %364, !dbg !3244

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3244

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3244
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3244
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3244
  br i1 %354, label %385, label %369, !dbg !3256

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3257

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3257
  %372 = load i64, i64* %371, align 32, !dbg !3257
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3257
  %374 = load i8, i8* %373, align 8, !dbg !3257
  %375 = icmp eq i8 %374, 0, !dbg !3257
  br i1 %375, label %376, label %381, !dbg !3257

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3257
  %378 = load i8, i8* %377, align 64, !dbg !3257
  %379 = icmp eq i8 %378, 0, !dbg !3257
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !3257
  br label %381, !dbg !3257

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !3257
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3257
  br label %401, !dbg !3257

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3258

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3258
  %388 = load i64, i64* %387, align 32, !dbg !3258
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3258
  %390 = load i8, i8* %389, align 8, !dbg !3258
  %391 = icmp eq i8 %390, 0, !dbg !3258
  br i1 %391, label %392, label %397, !dbg !3258

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3258
  %394 = load i8, i8* %393, align 64, !dbg !3258
  %395 = icmp eq i8 %394, 0, !dbg !3258
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !3258
  br label %397, !dbg !3258

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !3258
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3258
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %402, metadata !2402, metadata !DIExpression()) #11, !dbg !3262
  %403 = icmp eq i64 %402, 0, !dbg !3263
  br i1 %403, label %434, label %404, !dbg !3264

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3265
  %406 = inttoptr i64 %405 to i16*, !dbg !3266
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3267
  br label %434, !dbg !3268

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2925, metadata !DIExpression()), !dbg !3269
  %409 = call i32 @nk_vc_is_active() #12, !dbg !3270
  %410 = icmp eq i32 %409, 0, !dbg !3270
  %411 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %411, metadata !2382, metadata !DIExpression()) #11, !dbg !3277
  %412 = icmp eq i64 %411, 0, !dbg !3278
  br i1 %412, label %418, label %413, !dbg !3279

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3280
  %415 = inttoptr i64 %414 to i16*, !dbg !3281
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3282
  %417 = icmp eq i16 %416, 0, !dbg !3283
  br i1 %417, label %418, label %419, !dbg !3284

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3284

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3284
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3284
  br i1 %410, label %425, label %423, !dbg !3285

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3286
  br label %427, !dbg !3286

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3288
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %428, metadata !2402, metadata !DIExpression()) #11, !dbg !3293
  %429 = icmp eq i64 %428, 0, !dbg !3294
  br i1 %429, label %434, label %430, !dbg !3295

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3296
  %432 = inttoptr i64 %431 to i16*, !dbg !3297
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3298
  br label %434, !dbg !3299

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3300
  %436 = load i64, i64* %435, align 8, !dbg !3300
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2905, metadata !DIExpression(DW_OP_deref)), !dbg !3210
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3301
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3302
  store i64 %436, i64* %438, align 8, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2905, metadata !DIExpression(DW_OP_deref)), !dbg !3210
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3303
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3304
  store i64 %436, i64* %440, align 8, !dbg !3304
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3305
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2905, metadata !DIExpression()), !dbg !3210
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3306
  store i32 1, i32* %442, align 8, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2905, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1935, metadata !DIExpression()) #11, !dbg !3308
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3310
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3310
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3311
  %446 = load i8*, i8** %445, align 8, !dbg !3311
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3312
  %448 = load i8**, i8*** %447, align 8, !dbg !3312
  call void %444(i8* %446, i8** %448) #12, !dbg !3313
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #12, !dbg !3314
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3315
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3315
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3315
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3316 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3318, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8** %1, metadata !3319, metadata !DIExpression()), !dbg !3321
  br label %3, !dbg !3322

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3323
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3329
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3330
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3330
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !3331
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !3331
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3332, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !3332
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !3334
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !3335
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !3336

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3337
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !3342
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !3343
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !3343
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !3344
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1062, metadata !DIExpression()) #11, !dbg !3345
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1080, metadata !DIExpression()) #11, !dbg !3347
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !3349
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !3349
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !3350
  br i1 %20, label %33, label %21, !dbg !3351

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !3352
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !3352
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1064, metadata !DIExpression()) #11, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1063, metadata !DIExpression()) #11, !dbg !3346
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !3353
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1092, metadata !DIExpression()) #11, !dbg !3354
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !3356
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !3356
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !3357
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1099, metadata !DIExpression()) #11, !dbg !3358
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1104, metadata !DIExpression()) #11, !dbg !3360
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !3361
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !3362
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !3363
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !3364
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !3365
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !3367
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !3367
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !3368
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !3368
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1063, metadata !DIExpression()) #11, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1041, metadata !DIExpression()) #11, !dbg !3369
  %32 = icmp eq %struct.list_head** %22, null, !dbg !3370
  br i1 %32, label %33, label %54, !dbg !3371

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3372
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !3376
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !3377
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !3377
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !3378
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !3378
  %40 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3379
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !3383
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !3384
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !3384
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !3385
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !3385
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !3386
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !3387

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3388
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !3392
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !3393
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !3393
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !3394
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !3394
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1041, metadata !DIExpression()) #11, !dbg !3369
  br label %54, !dbg !3395

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !3396
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1041, metadata !DIExpression()) #11, !dbg !3369
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !3397
  br label %nk_fiber_yield.exit, !dbg !3398

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !3396
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3399
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3404
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3405
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3405
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !3406
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !3407, metadata !DIExpression()), !dbg !3411
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !3413
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !3410, metadata !DIExpression()), !dbg !3414
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !3415
  br i1 %65, label %66, label %70, !dbg !3416

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !3417
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !3417
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !3418
  br i1 %69, label %71, label %70, !dbg !3419

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !3420, !llvm.loop !3421

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #12, !dbg !3423
  br label %70, !dbg !3425
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !602 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !601, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %1, metadata !606, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8** %2, metadata !607, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %3, metadata !608, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !609, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()), !dbg !3431
  %6 = icmp eq i64 %3, 0, !dbg !3432
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %7, metadata !611, metadata !DIExpression()), !dbg !3433
  %8 = tail call i8* @kmem_malloc(i64 152) #12, !dbg !3434
  call void @llvm.dbg.value(metadata i8* %8, metadata !612, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %8, metadata !610, metadata !DIExpression()), !dbg !3431
  %9 = icmp eq i8* %8, null, !dbg !3435
  br i1 %9, label %104, label %10, !dbg !3436

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #12, !dbg !3437
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3438
  %13 = bitcast i8* %12 to i32*, !dbg !3438
  store i32 0, i32* %13, align 4, !dbg !3439
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3440
  %15 = bitcast i8* %14 to i64*, !dbg !3440
  store i64 %7, i64* %15, align 8, !dbg !3441
  %16 = tail call i8* @kmem_malloc(i64 %7) #12, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %16, metadata !614, metadata !DIExpression()), !dbg !3442
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3443
  %18 = bitcast i8* %17 to i8**, !dbg !3443
  store i8* %16, i8** %18, align 8, !dbg !3444
  %19 = icmp eq i8* %16, null, !dbg !3445
  br i1 %19, label %20, label %21, !dbg !3446

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #12, !dbg !3447
  br label %104, !dbg !3448

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3446
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3449
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3449
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3450
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3451
  %26 = bitcast i8* %25 to i8**, !dbg !3451
  store i8* %1, i8** %26, align 8, !dbg !3452
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3453
  %28 = bitcast i8* %27 to i8***, !dbg !3453
  store i8** %2, i8*** %28, align 8, !dbg !3454
  call void @llvm.dbg.value(metadata i8* %8, metadata !648, metadata !DIExpression()), !dbg !3455
  %29 = load i64, i64* %15, align 8, !dbg !3457
  %30 = bitcast i8* %8 to i64*, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !3461
  %31 = add i64 %22, -8, !dbg !3462
  %32 = add i64 %31, %29, !dbg !3463
  store i64 %32, i64* %30, align 8, !dbg !3463
  %33 = inttoptr i64 %32 to i64*, !dbg !3464
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3468
  %34 = load i64, i64* %30, align 8, !dbg !3469
  %35 = add i64 %34, -8, !dbg !3469
  store i64 %35, i64* %30, align 8, !dbg !3469
  %36 = inttoptr i64 %35 to i64*, !dbg !3470
  store i64 0, i64* %36, align 8, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3474
  %37 = load i64, i64* %30, align 8, !dbg !3475
  %38 = add i64 %37, -8, !dbg !3475
  store i64 %38, i64* %30, align 8, !dbg !3475
  %39 = inttoptr i64 %38 to i64*, !dbg !3476
  store i64 0, i64* %39, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3480
  %40 = load i64, i64* %30, align 8, !dbg !3481
  %41 = add i64 %40, -8, !dbg !3481
  store i64 %41, i64* %30, align 8, !dbg !3481
  %42 = inttoptr i64 %41 to i64*, !dbg !3482
  store i64 0, i64* %42, align 8, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3486
  %43 = load i64, i64* %30, align 8, !dbg !3487
  %44 = add i64 %43, -8, !dbg !3487
  store i64 %44, i64* %30, align 8, !dbg !3487
  %45 = inttoptr i64 %44 to i64*, !dbg !3488
  store i64 0, i64* %45, align 8, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3492
  %46 = load i64, i64* %30, align 8, !dbg !3493
  %47 = add i64 %46, -8, !dbg !3493
  store i64 %47, i64* %30, align 8, !dbg !3493
  %48 = inttoptr i64 %47 to i64*, !dbg !3494
  store i64 0, i64* %48, align 8, !dbg !3495
  %49 = ptrtoint i8* %8 to i64, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %49, metadata !662, metadata !DIExpression()), !dbg !3499
  %50 = load i64, i64* %30, align 8, !dbg !3500
  %51 = add i64 %50, -8, !dbg !3500
  store i64 %51, i64* %30, align 8, !dbg !3500
  %52 = inttoptr i64 %51 to i64*, !dbg !3501
  store i64 %49, i64* %52, align 8, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3505
  %53 = load i64, i64* %30, align 8, !dbg !3506
  %54 = add i64 %53, -8, !dbg !3506
  store i64 %54, i64* %30, align 8, !dbg !3506
  %55 = inttoptr i64 %54 to i64*, !dbg !3507
  store i64 0, i64* %55, align 8, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3511
  %56 = load i64, i64* %30, align 8, !dbg !3512
  %57 = add i64 %56, -8, !dbg !3512
  store i64 %57, i64* %30, align 8, !dbg !3512
  %58 = inttoptr i64 %57 to i64*, !dbg !3513
  store i64 0, i64* %58, align 8, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3517
  %59 = load i64, i64* %30, align 8, !dbg !3518
  %60 = add i64 %59, -8, !dbg !3518
  store i64 %60, i64* %30, align 8, !dbg !3518
  %61 = inttoptr i64 %60 to i64*, !dbg !3519
  store i64 0, i64* %61, align 8, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3523
  %62 = load i64, i64* %30, align 8, !dbg !3524
  %63 = add i64 %62, -8, !dbg !3524
  store i64 %63, i64* %30, align 8, !dbg !3524
  %64 = inttoptr i64 %63 to i64*, !dbg !3525
  store i64 0, i64* %64, align 8, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3529
  %65 = load i64, i64* %30, align 8, !dbg !3530
  %66 = add i64 %65, -8, !dbg !3530
  store i64 %66, i64* %30, align 8, !dbg !3530
  %67 = inttoptr i64 %66 to i64*, !dbg !3531
  store i64 0, i64* %67, align 8, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3535
  %68 = load i64, i64* %30, align 8, !dbg !3536
  %69 = add i64 %68, -8, !dbg !3536
  store i64 %69, i64* %30, align 8, !dbg !3536
  %70 = inttoptr i64 %69 to i64*, !dbg !3537
  store i64 0, i64* %70, align 8, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3541
  %71 = load i64, i64* %30, align 8, !dbg !3542
  %72 = add i64 %71, -8, !dbg !3542
  store i64 %72, i64* %30, align 8, !dbg !3542
  %73 = inttoptr i64 %72 to i64*, !dbg !3543
  store i64 0, i64* %73, align 8, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3547
  %74 = load i64, i64* %30, align 8, !dbg !3548
  %75 = add i64 %74, -8, !dbg !3548
  store i64 %75, i64* %30, align 8, !dbg !3548
  %76 = inttoptr i64 %75 to i64*, !dbg !3549
  store i64 0, i64* %76, align 8, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3553
  %77 = load i64, i64* %30, align 8, !dbg !3554
  %78 = add i64 %77, -8, !dbg !3554
  store i64 %78, i64* %30, align 8, !dbg !3554
  %79 = inttoptr i64 %78 to i64*, !dbg !3555
  store i64 0, i64* %79, align 8, !dbg !3556
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3557
  br i1 %80, label %83, label %81, !dbg !3558

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3559
  store i8* %8, i8** %82, align 8, !dbg !3559
  br label %83, !dbg !3560

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3561, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !772, metadata !DIExpression()) #11, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !771, metadata !DIExpression()) #11, !dbg !3563
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3564
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3564
  %87 = load i64, i64* %86, align 8, !dbg !3564
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3565
  %89 = bitcast i8* %88 to i64*, !dbg !3566
  store i64 %87, i64* %89, align 8, !dbg !3566
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %90, metadata !780, metadata !DIExpression()), !dbg !3568
  %91 = bitcast i8* %90 to i8**, !dbg !3570
  store i8* %90, i8** %91, align 8, !dbg !3570
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3571
  %93 = bitcast i8* %92 to i8**, !dbg !3572
  store i8* %90, i8** %93, align 8, !dbg !3572
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3573
  %95 = bitcast i8* %94 to i32*, !dbg !3573
  store i32 0, i32* %95, align 8, !dbg !3574
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3575
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()), !dbg !3576
  %97 = bitcast i8* %96 to i8**, !dbg !3578
  store i8* %96, i8** %97, align 8, !dbg !3578
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3579
  %99 = bitcast i8* %98 to i8**, !dbg !3580
  store i8* %96, i8** %99, align 8, !dbg !3580
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %100, metadata !780, metadata !DIExpression()), !dbg !3582
  %101 = bitcast i8* %100 to i8**, !dbg !3584
  store i8* %100, i8** %101, align 8, !dbg !3584
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3585
  %103 = bitcast i8* %102 to i8**, !dbg !3586
  store i8* %100, i8** %103, align 8, !dbg !3586
  br label %104, !dbg !3587

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3588
  ret i32 %105, !dbg !3589
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !1039 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3590
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3594
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3595
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3595
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3596
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3596
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3597, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !772, metadata !DIExpression()) #11, !dbg !3597
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !771, metadata !DIExpression()) #11, !dbg !3599
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3600
  br i1 %8, label %9, label %54, !dbg !3601

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3602
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3607
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3608
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3608
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3609
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1062, metadata !DIExpression()) #11, !dbg !3610
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !3611
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1080, metadata !DIExpression()) #11, !dbg !3612
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3614
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3614
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3615
  br i1 %17, label %30, label %18, !dbg !3616

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !3617
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3617
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3617
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1064, metadata !DIExpression()) #11, !dbg !3617
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1063, metadata !DIExpression()) #11, !dbg !3611
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3618
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1092, metadata !DIExpression()) #11, !dbg !3619
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3621
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3621
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3622
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1099, metadata !DIExpression()) #11, !dbg !3623
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1104, metadata !DIExpression()) #11, !dbg !3625
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3626
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3627
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3628
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3629
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !780, metadata !DIExpression()) #11, !dbg !3630
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3632
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3632
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3633
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3633
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1063, metadata !DIExpression()) #11, !dbg !3611
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1041, metadata !DIExpression()), !dbg !3634
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3635
  br i1 %29, label %30, label %51, !dbg !3636

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3637
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3641
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3642
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3642
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3643
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3643
  %37 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3644
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3648
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3649
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3649
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3650
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3650
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3651
  br i1 %43, label %54, label %44, !dbg !3652

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3653
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3657
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3658
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3658
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3659
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !1041, metadata !DIExpression()), !dbg !3634
  br label %51, !dbg !3660

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3661
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !1041, metadata !DIExpression()), !dbg !3634
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #10, !dbg !3662
  br label %54, !dbg !3663

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3661
  ret i32 %55, !dbg !3664
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3665 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3708
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3710
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3667, metadata !DIExpression()), !dbg !3711
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3712
  %5 = icmp eq i64 %4, 0, !dbg !3714
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %6, metadata !2342, metadata !DIExpression()) #11, !dbg !3718
  %7 = icmp eq i64 %6, 0, !dbg !3719
  br i1 %7, label %13, label %8, !dbg !3720

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3721
  %10 = inttoptr i64 %9 to i16*, !dbg !3722
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3723
  %12 = zext i16 %11 to i32, !dbg !3723
  br label %13, !dbg !3724

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3725
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %15, metadata !2358, metadata !DIExpression()) #11, !dbg !3729
  %16 = icmp eq i64 %15, 0, !dbg !3730
  br i1 %16, label %21, label %17, !dbg !3731

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3732
  %19 = inttoptr i64 %18 to i16*, !dbg !3733
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3734
  br label %21, !dbg !3735

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3736

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3668, metadata !DIExpression()), !dbg !3737
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3738, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !772, metadata !DIExpression()) #11, !dbg !3738
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !771, metadata !DIExpression()) #11, !dbg !3740
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3672, metadata !DIExpression()), !dbg !3737
  %24 = tail call i32 @nk_vc_is_active() #12, !dbg !3741
  %25 = icmp eq i32 %24, 0, !dbg !3741
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3742
  %27 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %27, metadata !2382, metadata !DIExpression()) #11, !dbg !3747
  %28 = icmp eq i64 %27, 0, !dbg !3748
  br i1 %28, label %34, label %29, !dbg !3749

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3750
  %31 = inttoptr i64 %30 to i16*, !dbg !3751
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3752
  %33 = icmp eq i16 %32, 0, !dbg !3753
  br i1 %33, label %34, label %35, !dbg !3742

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3742

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3742
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3742
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3742
  br i1 %25, label %58, label %40, !dbg !3754

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3755

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3755
  %43 = load i64, i64* %42, align 32, !dbg !3755
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3755
  %45 = load i8, i8* %44, align 8, !dbg !3755
  %46 = icmp eq i8 %45, 0, !dbg !3755
  br i1 %46, label %47, label %52, !dbg !3755

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3755
  %49 = load i8, i8* %48, align 64, !dbg !3755
  %50 = icmp eq i8 %49, 0, !dbg !3755
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !3755
  br label %52, !dbg !3755

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !3755
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3755
  %56 = load i32, i32* %55, align 8, !dbg !3755
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #12, !dbg !3755
  br label %76, !dbg !3755

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3756

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3756
  %61 = load i64, i64* %60, align 32, !dbg !3756
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3756
  %63 = load i8, i8* %62, align 8, !dbg !3756
  %64 = icmp eq i8 %63, 0, !dbg !3756
  br i1 %64, label %65, label %70, !dbg !3756

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3756
  %67 = load i8, i8* %66, align 64, !dbg !3756
  %68 = icmp eq i8 %67, 0, !dbg !3756
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !3756
  br label %70, !dbg !3756

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !3756
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3756
  %74 = load i32, i32* %73, align 8, !dbg !3756
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #12, !dbg !3756
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %77, metadata !2402, metadata !DIExpression()) #11, !dbg !3760
  %78 = icmp eq i64 %77, 0, !dbg !3761
  br i1 %78, label %111, label %79, !dbg !3762

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3763
  %81 = inttoptr i64 %80 to i16*, !dbg !3764
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3765
  br label %111, !dbg !3766

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3685, metadata !DIExpression()), !dbg !3767
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !3768
  %85 = icmp eq i32 %84, 0, !dbg !3768
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %86, metadata !2382, metadata !DIExpression()) #11, !dbg !3775
  %87 = icmp eq i64 %86, 0, !dbg !3776
  br i1 %87, label %93, label %88, !dbg !3777

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3778
  %90 = inttoptr i64 %89 to i16*, !dbg !3779
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3780
  %92 = icmp eq i16 %91, 0, !dbg !3781
  br i1 %92, label %93, label %94, !dbg !3782

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3782

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3782
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3782
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3782
  %99 = load i32, i32* %98, align 8, !dbg !3782
  br i1 %85, label %102, label %100, !dbg !3783

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3784
  br label %104, !dbg !3784

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3786
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %105, metadata !2402, metadata !DIExpression()) #11, !dbg !3791
  %106 = icmp eq i64 %105, 0, !dbg !3792
  br i1 %106, label %111, label %107, !dbg !3793

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3794
  %109 = inttoptr i64 %108 to i16*, !dbg !3795
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3796
  br label %111, !dbg !3797

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3798
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3798
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3829, !srcloc !3830
  call void @llvm.dbg.value(metadata i32 %113, metadata !3806, metadata !DIExpression()) #11, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %113, metadata !3803, metadata !DIExpression()) #11, !dbg !3831
  call void @llvm.dbg.value(metadata i8** %1, metadata !3801, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3832
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #12, !dbg !3833
  %115 = icmp eq i32 %114, 0, !dbg !3833
  br i1 %115, label %321, label %116, !dbg !3834

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3835
  %118 = icmp eq i64 %117, 0, !dbg !3837
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3838
  call void @llvm.dbg.value(metadata i64 %119, metadata !2342, metadata !DIExpression()) #11, !dbg !3841
  %120 = icmp eq i64 %119, 0, !dbg !3842
  br i1 %120, label %126, label %121, !dbg !3843

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3844
  %123 = inttoptr i64 %122 to i16*, !dbg !3845
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3846
  %125 = zext i16 %124 to i32, !dbg !3846
  br label %126, !dbg !3847

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3848
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %128, metadata !2358, metadata !DIExpression()) #11, !dbg !3852
  %129 = icmp eq i64 %128, 0, !dbg !3853
  br i1 %129, label %134, label %130, !dbg !3854

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3855
  %132 = inttoptr i64 %131 to i16*, !dbg !3856
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3857
  br label %134, !dbg !3858

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3859

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3808, metadata !DIExpression()) #11, !dbg !3860
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3861, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !3861
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !3863
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3813, metadata !DIExpression()) #11, !dbg !3860
  %137 = call i32 @nk_vc_is_active() #12, !dbg !3864
  %138 = icmp eq i32 %137, 0, !dbg !3864
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3865
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %140, metadata !2382, metadata !DIExpression()) #11, !dbg !3870
  %141 = icmp eq i64 %140, 0, !dbg !3871
  br i1 %141, label %147, label %142, !dbg !3872

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3873
  %144 = inttoptr i64 %143 to i16*, !dbg !3874
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3875
  %146 = icmp eq i16 %145, 0, !dbg !3876
  br i1 %146, label %147, label %148, !dbg !3865

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3865

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3865
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3865
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3865
  br i1 %138, label %169, label %153, !dbg !3877

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3878

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3878
  %156 = load i64, i64* %155, align 32, !dbg !3878
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3878
  %158 = load i8, i8* %157, align 8, !dbg !3878
  %159 = icmp eq i8 %158, 0, !dbg !3878
  br i1 %159, label %160, label %165, !dbg !3878

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3878
  %162 = load i8, i8* %161, align 64, !dbg !3878
  %163 = icmp eq i8 %162, 0, !dbg !3878
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3878
  br label %165, !dbg !3878

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3878
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3878
  br label %185, !dbg !3878

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3879

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3879
  %172 = load i64, i64* %171, align 32, !dbg !3879
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3879
  %174 = load i8, i8* %173, align 8, !dbg !3879
  %175 = icmp eq i8 %174, 0, !dbg !3879
  br i1 %175, label %176, label %181, !dbg !3879

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3879
  %178 = load i8, i8* %177, align 64, !dbg !3879
  %179 = icmp eq i8 %178, 0, !dbg !3879
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3879
  br label %181, !dbg !3879

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3879
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3879
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %186, metadata !2402, metadata !DIExpression()) #11, !dbg !3883
  %187 = icmp eq i64 %186, 0, !dbg !3884
  br i1 %187, label %218, label %188, !dbg !3885

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3886
  %190 = inttoptr i64 %189 to i16*, !dbg !3887
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3888
  br label %218, !dbg !3889

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3826, metadata !DIExpression()) #11, !dbg !3890
  %193 = call i32 @nk_vc_is_active() #12, !dbg !3891
  %194 = icmp eq i32 %193, 0, !dbg !3891
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3894
  call void @llvm.dbg.value(metadata i64 %195, metadata !2382, metadata !DIExpression()) #11, !dbg !3898
  %196 = icmp eq i64 %195, 0, !dbg !3899
  br i1 %196, label %202, label %197, !dbg !3900

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3901
  %199 = inttoptr i64 %198 to i16*, !dbg !3902
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3903
  %201 = icmp eq i16 %200, 0, !dbg !3904
  br i1 %201, label %202, label %203, !dbg !3905

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3905

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3905
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3905
  br i1 %194, label %209, label %207, !dbg !3906

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3907
  br label %211, !dbg !3907

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3909
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3911
  call void @llvm.dbg.value(metadata i64 %212, metadata !2402, metadata !DIExpression()) #11, !dbg !3914
  %213 = icmp eq i64 %212, 0, !dbg !3915
  br i1 %213, label %218, label %214, !dbg !3916

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3917
  %216 = inttoptr i64 %215 to i16*, !dbg !3918
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3919
  br label %218, !dbg !3920

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3921
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3922
  %220 = icmp eq i64 %219, 0, !dbg !3924
  %221 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %221, metadata !2342, metadata !DIExpression()) #11, !dbg !3928
  %222 = icmp eq i64 %221, 0, !dbg !3929
  br i1 %222, label %228, label %223, !dbg !3930

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3931
  %225 = inttoptr i64 %224 to i16*, !dbg !3932
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3933
  %227 = zext i16 %226 to i32, !dbg !3933
  br label %228, !dbg !3934

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3935
  %230 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %230, metadata !2358, metadata !DIExpression()) #11, !dbg !3939
  %231 = icmp eq i64 %230, 0, !dbg !3940
  br i1 %231, label %236, label %232, !dbg !3941

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3942
  %234 = inttoptr i64 %233 to i16*, !dbg !3943
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3944
  br label %236, !dbg !3945

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3946

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3687, metadata !DIExpression()), !dbg !3947
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3948, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !772, metadata !DIExpression()) #11, !dbg !3948
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !771, metadata !DIExpression()) #11, !dbg !3950
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3693, metadata !DIExpression()), !dbg !3947
  %239 = call i32 @nk_vc_is_active() #12, !dbg !3951
  %240 = icmp eq i32 %239, 0, !dbg !3951
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3952
  %242 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %242, metadata !2382, metadata !DIExpression()) #11, !dbg !3957
  %243 = icmp eq i64 %242, 0, !dbg !3958
  br i1 %243, label %249, label %244, !dbg !3959

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3960
  %246 = inttoptr i64 %245 to i16*, !dbg !3961
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3962
  %248 = icmp eq i16 %247, 0, !dbg !3963
  br i1 %248, label %249, label %250, !dbg !3952

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3952

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3952
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3952
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3952
  br i1 %240, label %271, label %255, !dbg !3964

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3965

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3965
  %258 = load i64, i64* %257, align 32, !dbg !3965
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3965
  %260 = load i8, i8* %259, align 8, !dbg !3965
  %261 = icmp eq i8 %260, 0, !dbg !3965
  br i1 %261, label %262, label %267, !dbg !3965

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3965
  %264 = load i8, i8* %263, align 64, !dbg !3965
  %265 = icmp eq i8 %264, 0, !dbg !3965
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !3965
  br label %267, !dbg !3965

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !3965
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3965
  br label %287, !dbg !3965

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3966

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3966
  %274 = load i64, i64* %273, align 32, !dbg !3966
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3966
  %276 = load i8, i8* %275, align 8, !dbg !3966
  %277 = icmp eq i8 %276, 0, !dbg !3966
  br i1 %277, label %278, label %283, !dbg !3966

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3966
  %280 = load i8, i8* %279, align 64, !dbg !3966
  %281 = icmp eq i8 %280, 0, !dbg !3966
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !3966
  br label %283, !dbg !3966

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !3966
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3966
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %288, metadata !2402, metadata !DIExpression()) #11, !dbg !3970
  %289 = icmp eq i64 %288, 0, !dbg !3971
  br i1 %289, label %320, label %290, !dbg !3972

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3973
  %292 = inttoptr i64 %291 to i16*, !dbg !3974
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3975
  br label %320, !dbg !3976

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3706, metadata !DIExpression()), !dbg !3977
  %295 = call i32 @nk_vc_is_active() #12, !dbg !3978
  %296 = icmp eq i32 %295, 0, !dbg !3978
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3981
  call void @llvm.dbg.value(metadata i64 %297, metadata !2382, metadata !DIExpression()) #11, !dbg !3985
  %298 = icmp eq i64 %297, 0, !dbg !3986
  br i1 %298, label %304, label %299, !dbg !3987

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3988
  %301 = inttoptr i64 %300 to i16*, !dbg !3989
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3990
  %303 = icmp eq i16 %302, 0, !dbg !3991
  br i1 %303, label %304, label %305, !dbg !3992

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3992

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3992
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3992
  br i1 %296, label %311, label %309, !dbg !3993

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3994
  br label %313, !dbg !3994

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3996
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3998
  call void @llvm.dbg.value(metadata i64 %314, metadata !2402, metadata !DIExpression()) #11, !dbg !4001
  %315 = icmp eq i64 %314, 0, !dbg !4002
  br i1 %315, label %320, label %316, !dbg !4003

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !4004
  %318 = inttoptr i64 %317 to i16*, !dbg !4005
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !4006
  br label %320, !dbg !4007

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #13, !dbg !4008
  unreachable, !dbg !4008

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3921
  ret void, !dbg !4009
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !584 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !583, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i8** %2, metadata !590, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %3, metadata !591, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8 %4, metadata !592, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !593, metadata !DIExpression()), !dbg !4015
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #10, !dbg !4016
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !4017
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #10, !dbg !4018
  ret i32 0, !dbg !4019
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !1021 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !4020
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4021
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4026
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4027
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4027
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !4028
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !4028
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4029, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !772, metadata !DIExpression()) #11, !dbg !4029
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !771, metadata !DIExpression()) #11, !dbg !4031
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !4032
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !4033

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4034
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !4039
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !4040
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !4040
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1062, metadata !DIExpression()) #11, !dbg !4042
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !4043
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1080, metadata !DIExpression()) #11, !dbg !4044
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !4046
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !4046
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !4047
  br i1 %18, label %31, label %19, !dbg !4048

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !4049
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !4049
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !4049
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1064, metadata !DIExpression()) #11, !dbg !4049
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1063, metadata !DIExpression()) #11, !dbg !4043
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !4050
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1092, metadata !DIExpression()) #11, !dbg !4051
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !4053
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !4053
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !4054
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1099, metadata !DIExpression()) #11, !dbg !4055
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1104, metadata !DIExpression()) #11, !dbg !4057
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !4058
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !4059
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !4060
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !4061
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !780, metadata !DIExpression()) #11, !dbg !4062
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !4064
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !4064
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !4065
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !4065
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1063, metadata !DIExpression()) #11, !dbg !4043
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1041, metadata !DIExpression()) #11, !dbg !4066
  %30 = icmp eq %struct.list_head** %20, null, !dbg !4067
  br i1 %30, label %31, label %52, !dbg !4068

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4069
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !4073
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !4074
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !4074
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !4075
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !4075
  %38 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4076
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !4080
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !4081
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !4081
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !4082
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !4082
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !4083
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !4084

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4085
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !4089
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !4090
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !4090
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !4091
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !4091
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !1041, metadata !DIExpression()) #11, !dbg !4066
  br label %52, !dbg !4092

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !4093
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1041, metadata !DIExpression()) #11, !dbg !4066
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #12, !dbg !4094
  br label %nk_fiber_yield.exit, !dbg !4095

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !4093
  ret i32 %55, !dbg !4096
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4097 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4099, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2224, metadata !DIExpression()) #11, !dbg !4104
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !4106, !srcloc !2245
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2228, metadata !DIExpression()) #11, !dbg !4106
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2226, metadata !DIExpression()) #11, !dbg !4107
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2225, metadata !DIExpression()) #11, !dbg !4108
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !4109
  %4 = load i32, i32* %3, align 8, !dbg !4109
  call void @llvm.dbg.value(metadata i32 %4, metadata !2230, metadata !DIExpression()) #11, !dbg !4110
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()) #11, !dbg !4111
  %5 = icmp sgt i32 %4, 0, !dbg !4112
  br i1 %5, label %6, label %30, !dbg !4113

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !4114
  br label %8, !dbg !4114

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2233, metadata !DIExpression()) #11, !dbg !4111
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !4114
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !4114
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4115
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4115
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4116
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2231, metadata !DIExpression()) #11, !dbg !4117
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !4118
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2235, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4118
  call void @llvm.dbg.value(metadata i8** %15, metadata !2232, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !4119
  %16 = load i8*, i8** %15, align 8, !dbg !4120
  br label %17, !dbg !4121

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !4120
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !4122
  %20 = bitcast i8* %18 to i8**, !dbg !4122
  %21 = load i8*, i8** %20, align 8, !dbg !4122
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #11, !dbg !4122
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !4122
  br i1 %22, label %27, label %23, !dbg !4121

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !4120
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !4120
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2232, metadata !DIExpression()) #11, !dbg !4119
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !4123
  br i1 %26, label %75, label %17, !dbg !4124, !llvm.loop !2266

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !4125
  call void @llvm.dbg.value(metadata i32 undef, metadata !2233, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !4111
  %29 = icmp slt i64 %28, %7, !dbg !4112
  br i1 %29, label %8, label %30, !dbg !4113, !llvm.loop !2269

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4126
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4131
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4132
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4132
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4133
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1062, metadata !DIExpression()) #11, !dbg !4134
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !4135
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1080, metadata !DIExpression()) #11, !dbg !4136
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4138
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4138
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4139
  br i1 %38, label %51, label %39, !dbg !4140

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !4141
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4141
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4141
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1064, metadata !DIExpression()) #11, !dbg !4141
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1063, metadata !DIExpression()) #11, !dbg !4135
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4142
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1092, metadata !DIExpression()) #11, !dbg !4143
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4145
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4145
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4146
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1099, metadata !DIExpression()) #11, !dbg !4147
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1104, metadata !DIExpression()) #11, !dbg !4149
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4150
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4151
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4152
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4153
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !780, metadata !DIExpression()) #11, !dbg !4154
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4156
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4156
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4157
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4157
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1063, metadata !DIExpression()) #11, !dbg !4135
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !4100, metadata !DIExpression()), !dbg !4158
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4159
  br i1 %50, label %51, label %72, !dbg !4161

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4162
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4168
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4169
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4169
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4170
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4170
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4171
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4175
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4176
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4176
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4177
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4177
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4178
  br i1 %64, label %84, label %65, !dbg !4179

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4180
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4185
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4186
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4186
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4187
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4187
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !4100, metadata !DIExpression()), !dbg !4158
  br label %72, !dbg !4188

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4189
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !4100, metadata !DIExpression()), !dbg !4158
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #10, !dbg !4190
  br label %84, !dbg !4191

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4192
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1092, metadata !DIExpression()) #11, !dbg !4193
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4195
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4195
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4196
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4196
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1099, metadata !DIExpression()) #11, !dbg !4197
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1104, metadata !DIExpression()) #11, !dbg !4199
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4200
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4201
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4202
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4203
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !780, metadata !DIExpression()) #11, !dbg !4204
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4206
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4207
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4208
  br label %84, !dbg !4209

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4210
  ret i32 %85, !dbg !4211
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4212 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4219, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8* %1, metadata !4220, metadata !DIExpression()), !dbg !4222
  %3 = tail call zeroext i8 %0(i8* %1) #12, !dbg !4223
  %4 = icmp eq i8 %3, 0, !dbg !4223
  br i1 %4, label %60, label %5, !dbg !4225

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4226
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !4232
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !4233
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !4233
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !4234
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !4234
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4235, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !4235
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !4237
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !4238
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !4239

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4240
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !4245
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !4246
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !4246
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !4247
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1062, metadata !DIExpression()) #11, !dbg !4248
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1080, metadata !DIExpression()) #11, !dbg !4250
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !4252
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !4252
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !4253
  br i1 %22, label %35, label %23, !dbg !4254

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !4255
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !4255
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !4255
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1064, metadata !DIExpression()) #11, !dbg !4255
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1063, metadata !DIExpression()) #11, !dbg !4249
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !4256
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1092, metadata !DIExpression()) #11, !dbg !4257
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !4259
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !4259
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !4260
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1099, metadata !DIExpression()) #11, !dbg !4261
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1104, metadata !DIExpression()) #11, !dbg !4263
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !4264
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !4265
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !4266
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !4267
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !4268
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !4270
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !4270
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !4271
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !4271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1063, metadata !DIExpression()) #11, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1041, metadata !DIExpression()) #11, !dbg !4272
  %34 = icmp eq %struct.list_head** %24, null, !dbg !4273
  br i1 %34, label %35, label %56, !dbg !4274

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4275
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !4279
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !4280
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !4280
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !4281
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !4281
  %42 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4282
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !4286
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !4287
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !4287
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !4288
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !4288
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !4289
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !4290

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4291
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !4295
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !4296
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !4296
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !4297
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !4297
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1041, metadata !DIExpression()) #11, !dbg !4272
  br label %56, !dbg !4298

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !4299
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !1041, metadata !DIExpression()) #11, !dbg !4272
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !4300
  br label %nk_fiber_yield.exit, !dbg !4301

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !4299
  br label %60, !dbg !4302

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !4303
  ret i32 %61, !dbg !4304
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4305 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4309, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4310, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i8* %2, metadata !4311, metadata !DIExpression()), !dbg !4314
  %4 = tail call zeroext i8 %1(i8* %2) #12, !dbg !4315
  %5 = icmp eq i8 %4, 0, !dbg !4315
  br i1 %5, label %8, label %6, !dbg !4317

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4318
  br label %8, !dbg !4320

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4321
  ret i32 %9, !dbg !4322
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4323 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4342
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4346
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4347
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4347
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4348
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4348
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4325, metadata !DIExpression()), !dbg !4349
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4350, !srcloc !4351
  call void @llvm.dbg.value(metadata i64 %8, metadata !4332, metadata !DIExpression()), !dbg !4352
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4353
  call void @llvm.dbg.value(metadata i8* %9, metadata !4333, metadata !DIExpression()), !dbg !4354
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4355
  call void @llvm.dbg.value(metadata i8* %10, metadata !4334, metadata !DIExpression()), !dbg !4356
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4357
  call void @llvm.dbg.value(metadata i8* %11, metadata !4335, metadata !DIExpression()), !dbg !4358
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %12, metadata !4336, metadata !DIExpression()), !dbg !4360
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4361
  %14 = load i8*, i8** %13, align 8, !dbg !4361
  %15 = icmp ugt i8* %11, %14, !dbg !4363
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4364
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4365
  %19 = icmp ult i8* %11, %18, !dbg !4366
  %20 = and i1 %15, %19, !dbg !4367
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4367
  call void @llvm.dbg.value(metadata i8* %21, metadata !4335, metadata !DIExpression()), !dbg !4358
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4368
  call void @llvm.dbg.value(metadata i8* %22, metadata !4337, metadata !DIExpression()), !dbg !4369
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4370
  %24 = ptrtoint i8* %23 to i64, !dbg !4371
  %25 = ptrtoint i8* %12 to i64, !dbg !4371
  %26 = sub i64 %24, %25, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %26, metadata !4326, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4372
  %27 = ptrtoint i8* %10 to i64, !dbg !4373
  call void @llvm.dbg.value(metadata i64 undef, metadata !4328, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 72, metadata !4329, metadata !DIExpression()), !dbg !4375
  %28 = bitcast i8* %22 to i64*, !dbg !4376
  %29 = load i64, i64* %28, align 8, !dbg !4376
  %30 = sub i64 %29, %25, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %30, metadata !4330, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i64 %17, metadata !4327, metadata !DIExpression()), !dbg !4379
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4380
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4338, metadata !DIExpression(DW_OP_deref)), !dbg !4381
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #10, !dbg !4382
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4383
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4338, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !657, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !662, metadata !DIExpression()), !dbg !4386
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4387
  %35 = load i64, i64* %34, align 8, !dbg !4388
  %36 = add i64 %35, -8, !dbg !4388
  store i64 %36, i64* %34, align 8, !dbg !4388
  %37 = inttoptr i64 %36 to i64*, !dbg !4389
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4390
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4391
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4338, metadata !DIExpression()), !dbg !4381
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4392
  %40 = load i8*, i8** %39, align 8, !dbg !4392
  call void @llvm.dbg.value(metadata i8* %40, metadata !4331, metadata !DIExpression()), !dbg !4393
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4394
  %42 = sub i64 -16, %26, !dbg !4395
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4395
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #12, !dbg !4396
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4397
  %46 = ptrtoint i8* %45 to i64, !dbg !4398
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4399
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4338, metadata !DIExpression()), !dbg !4381
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4400
  store i64 %46, i64* %48, align 8, !dbg !4401
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4402
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4338, metadata !DIExpression()), !dbg !4381
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4403
  %51 = load i64, i64* %50, align 8, !dbg !4403
  %52 = add i64 %51, 64, !dbg !4404
  %53 = inttoptr i64 %52 to i8**, !dbg !4405
  call void @llvm.dbg.value(metadata i8** %53, metadata !4339, metadata !DIExpression()), !dbg !4406
  %54 = add i64 %30, %51, !dbg !4407
  %55 = inttoptr i64 %54 to i8*, !dbg !4408
  store i8* %55, i8** %53, align 8, !dbg !4409
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4410
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4338, metadata !DIExpression()), !dbg !4381
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4411
  %58 = load i64, i64* %57, align 8, !dbg !4411
  %59 = sub i64 8, %25, !dbg !4373
  %60 = add i64 %59, %27, !dbg !4412
  %61 = add i64 %60, %58, !dbg !4413
  %62 = inttoptr i64 %61 to i8**, !dbg !4414
  call void @llvm.dbg.value(metadata i8** %62, metadata !4340, metadata !DIExpression()), !dbg !4415
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4416
  call void @llvm.dbg.value(metadata i8** %63, metadata !4341, metadata !DIExpression()), !dbg !4417
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4418
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4418
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4419
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4338, metadata !DIExpression()), !dbg !4381
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4420
  %67 = load i64, i64* %66, align 8, !dbg !4420
  %68 = add i64 %67, 112, !dbg !4421
  %69 = inttoptr i64 %68 to i64*, !dbg !4422
  store i64 0, i64* %69, align 8, !dbg !4423
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4424
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4338, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1685, metadata !DIExpression()) #11, !dbg !4425
  call void @llvm.dbg.value(metadata i8 0, metadata !1690, metadata !DIExpression()) #11, !dbg !4427
  %71 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4428
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4432
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1691, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !4433
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4434
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4434
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4434
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4434
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1691, metadata !DIExpression()) #11, !dbg !4433
  %77 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4435
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4439
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4440
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4440
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4441
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1692, metadata !DIExpression()) #11, !dbg !4442
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4443
  store i32 1, i32* %82, align 4, !dbg !4444
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4445
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1756, metadata !DIExpression()) #11, !dbg !4446
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1759, metadata !DIExpression()) #11, !dbg !4448
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4449
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4449
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1764, metadata !DIExpression()) #11, !dbg !4450
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1769, metadata !DIExpression()) #11, !dbg !4452
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1770, metadata !DIExpression()) #11, !dbg !4453
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4454
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4455
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4456
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4457
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4458
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4459
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4460
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4461
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4461
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4462
  br i1 %91, label %94, label %92, !dbg !4463

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #12, !dbg !4464
  br label %94, !dbg !4465

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4466
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4338, metadata !DIExpression()), !dbg !4381
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4467
  ret %struct.nk_fiber* %95, !dbg !4468
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4469 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4471, metadata !DIExpression()), !dbg !4474
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4475
  br i1 %2, label %75, label %3, !dbg !4477

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4478
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4482
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4483
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4483
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4484
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4484
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4472, metadata !DIExpression()), !dbg !4485
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4486
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4473, metadata !DIExpression()), !dbg !4487
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4488
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1756, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1759, metadata !DIExpression()), !dbg !4491
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4492
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4492
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1764, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1769, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1770, metadata !DIExpression()), !dbg !4496
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4497
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4498
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4499
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4500
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4501
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4502
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4503
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4504
  %18 = load i32, i32* %17, align 8, !dbg !4505
  %19 = add i32 %18, 1, !dbg !4505
  store i32 %19, i32* %17, align 8, !dbg !4505
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4506
  store i32 3, i32* %20, align 4, !dbg !4507
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4508
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !4513
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !4514
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !4514
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !4515
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !4515
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4516, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !4516
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !4518
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !4519
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !4520

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4521
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !4526
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !4527
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !4527
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !4528
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1062, metadata !DIExpression()) #11, !dbg !4529
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1063, metadata !DIExpression()) #11, !dbg !4530
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1080, metadata !DIExpression()) #11, !dbg !4531
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !4533
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !4533
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !4534
  br i1 %37, label %50, label %38, !dbg !4535

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1064, metadata !DIExpression()) #11, !dbg !4536
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !4536
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !4536
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1064, metadata !DIExpression()) #11, !dbg !4536
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1063, metadata !DIExpression()) #11, !dbg !4530
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !4537
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1092, metadata !DIExpression()) #11, !dbg !4538
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !4540
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4540
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !4541
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !1099, metadata !DIExpression()) #11, !dbg !4542
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1104, metadata !DIExpression()) #11, !dbg !4544
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !4545
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !4546
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !4547
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4548
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !780, metadata !DIExpression()) #11, !dbg !4549
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !4551
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !4551
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4552
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !4552
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1063, metadata !DIExpression()) #11, !dbg !4530
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1041, metadata !DIExpression()) #11, !dbg !4553
  %49 = icmp eq %struct.list_head** %39, null, !dbg !4554
  br i1 %49, label %50, label %71, !dbg !4555

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4556
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !4560
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !4561
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !4561
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !4562
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !4562
  %57 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4563
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !4567
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !4568
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !4568
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !4569
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !4569
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !4570
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !4571

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4572
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !4576
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !4577
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !4577
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !4578
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !4578
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1041, metadata !DIExpression()) #11, !dbg !4553
  br label %71, !dbg !4579

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !4580
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !1041, metadata !DIExpression()) #11, !dbg !4553
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #12, !dbg !4581
  br label %nk_fiber_yield.exit, !dbg !4582

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !4580
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !4583
  ret i32 %76, !dbg !4584
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
!1020 = !DILocation(line: 732, column: 3, scope: !1021, inlinedAt: !1023)
!1021 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 730, type: !507, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!1022 = !{}
!1023 = distinct !DILocation(line: 75, column: 3, scope: !1007)
!1024 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1029)
!1025 = distinct !DISubprogram(name: "get_cpu", scope: !1026, file: !1026, line: 127, type: !1027, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!1026 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!270}
!1029 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1035)
!1030 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !1031, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!1035 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !1037)
!1036 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !768, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!1037 = distinct !DILocation(line: 704, column: 7, scope: !1038, inlinedAt: !1042)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !124, line: 704, column: 7)
!1039 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 702, type: !507, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1040)
!1040 = !{!1041}
!1041 = !DILocalVariable(name: "f_to", scope: !1039, file: !124, line: 708, type: !240)
!1042 = distinct !DILocation(line: 733, column: 10, scope: !1021, inlinedAt: !1023)
!1043 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1029)
!1044 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1035)
!1045 = !DILocation(line: 98, column: 30, scope: !1036, inlinedAt: !1037)
!1046 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 704, column: 30, scope: !1038, inlinedAt: !1042)
!1048 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1047)
!1049 = !DILocation(line: 704, column: 27, scope: !1038, inlinedAt: !1042)
!1050 = !DILocation(line: 704, column: 7, scope: !1039, inlinedAt: !1042)
!1051 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !1057)
!1054 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !1055, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!150}
!1057 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !1074)
!1058 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !1059, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!240}
!1061 = !{!1062, !1063, !1064, !1068}
!1062 = !DILocalVariable(name: "fiber_sched_queue", scope: !1058, file: !124, line: 122, type: !150)
!1063 = !DILocalVariable(name: "fiber_to_schedule", scope: !1058, file: !124, line: 125, type: !240)
!1064 = !DILocalVariable(name: "first", scope: !1065, file: !124, line: 128, type: !240)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !124, line: 128, column: 25)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !124, line: 126, column: 40)
!1067 = distinct !DILexicalBlock(scope: !1058, file: !124, line: 126, column: 7)
!1068 = !DILocalVariable(name: "__mptr", scope: !1069, file: !124, line: 128, type: !1072)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !124, line: 128, column: 25)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !124, line: 128, column: 25)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !124, line: 128, column: 25)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1074 = distinct !DILocation(line: 708, column: 22, scope: !1039, inlinedAt: !1042)
!1075 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1052)
!1076 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1053)
!1077 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !1057)
!1078 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !1074)
!1079 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !1074)
!1080 = !DILocalVariable(name: "head", arg: 1, scope: !1081, file: !53, line: 184, type: !1072)
!1081 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1082, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!48, !1072}
!1084 = !{!1080}
!1085 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !1074)
!1087 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !1086)
!1088 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !1086)
!1089 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !1074)
!1090 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !1074)
!1091 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !1074)
!1092 = !DILocalVariable(name: "entry", arg: 1, scope: !1093, file: !53, line: 151, type: !150)
!1093 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !782, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1094)
!1094 = !{!1092}
!1095 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !1074)
!1097 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !1096)
!1098 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !1096)
!1099 = !DILocalVariable(name: "prev", arg: 1, scope: !1100, file: !53, line: 128, type: !150)
!1100 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1101, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !150, !150}
!1103 = !{!1099, !1104}
!1104 = !DILocalVariable(name: "next", arg: 2, scope: !1100, file: !53, line: 128, type: !150)
!1105 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !1096)
!1107 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !1106)
!1108 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !1106)
!1109 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !1106)
!1110 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !1106)
!1111 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !1106)
!1112 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !1096)
!1114 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1113)
!1115 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1113)
!1116 = !DILocation(line: 708, column: 15, scope: !1039, inlinedAt: !1042)
!1117 = !DILocation(line: 718, column: 12, scope: !1118, inlinedAt: !1042)
!1118 = distinct !DILexicalBlock(scope: !1039, file: !124, line: 718, column: 7)
!1119 = !DILocation(line: 718, column: 7, scope: !1039, inlinedAt: !1042)
!1120 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !1124)
!1123 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !1059, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!1124 = distinct !DILocation(line: 719, column: 9, scope: !1125, inlinedAt: !1042)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !124, line: 719, column: 9)
!1126 = distinct !DILexicalBlock(scope: !1118, file: !124, line: 718, column: 21)
!1127 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1121)
!1128 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1122)
!1129 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !1124)
!1130 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !1134)
!1133 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !1059, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!1134 = distinct !DILocation(line: 719, column: 31, scope: !1125, inlinedAt: !1042)
!1135 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1131)
!1136 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1132)
!1137 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !1134)
!1138 = !DILocation(line: 719, column: 28, scope: !1125, inlinedAt: !1042)
!1139 = !DILocation(line: 719, column: 9, scope: !1126, inlinedAt: !1042)
!1140 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 723, column: 16, scope: !1144, inlinedAt: !1042)
!1144 = distinct !DILexicalBlock(scope: !1125, file: !124, line: 722, column: 12)
!1145 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1141)
!1146 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1142)
!1147 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !1143)
!1148 = !DILocation(line: 725, column: 3, scope: !1126, inlinedAt: !1042)
!1149 = !DILocation(line: 0, scope: !1039, inlinedAt: !1042)
!1150 = !DILocation(line: 727, column: 10, scope: !1039, inlinedAt: !1042)
!1151 = !DILocation(line: 727, column: 3, scope: !1039, inlinedAt: !1042)
!1152 = !DILocation(line: 75, column: 3, scope: !1007)
!1153 = !DILocation(line: 76, column: 13, scope: !1007)
!1154 = !DILocation(line: 76, column: 11, scope: !1007)
!1155 = !DILocation(line: 76, column: 3, scope: !1007)
!1156 = !DILocation(line: 77, column: 52, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 76, column: 18)
!1158 = !DILocation(line: 77, column: 5, scope: !1157)
!1159 = !DILocation(line: 76, column: 9, scope: !1007)
!1160 = distinct !{!1160, !1155, !1161}
!1161 = !DILocation(line: 79, column: 3, scope: !1007)
!1162 = !DILocation(line: 0, scope: !1007)
!1163 = !DILocation(line: 80, column: 3, scope: !1007)
!1164 = !DILocation(line: 81, column: 3, scope: !1007)
!1165 = !DILocation(line: 82, column: 1, scope: !1007)
!1166 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1167)
!1167 = !{!1168, !1169}
!1168 = !DILocalVariable(name: "buf", arg: 1, scope: !1166, file: !3, line: 127, type: !113)
!1169 = !DILocalVariable(name: "priv", arg: 2, scope: !1166, file: !3, line: 127, type: !31)
!1170 = !DILocation(line: 127, column: 23, scope: !1166)
!1171 = !DILocation(line: 127, column: 35, scope: !1166)
!1172 = !DILocation(line: 88, column: 3, scope: !1173, inlinedAt: !1180)
!1173 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1174)
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DILocalVariable(name: "simple", scope: !1173, file: !3, line: 88, type: !511)
!1176 = !DILocalVariable(name: "t", scope: !1173, file: !3, line: 90, type: !25)
!1177 = !DILocalVariable(name: "f_input", scope: !1173, file: !3, line: 92, type: !24)
!1178 = !DILocalVariable(name: "p", scope: !1179, file: !3, line: 92, type: !31)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 92, column: 23)
!1180 = distinct !DILocation(line: 129, column: 3, scope: !1166)
!1181 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 89, column: 8, scope: !1173, inlinedAt: !1180)
!1183 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1182)
!1184 = !DILocation(line: 89, column: 26, scope: !1173, inlinedAt: !1180)
!1185 = !DILocation(line: 89, column: 6, scope: !1173, inlinedAt: !1180)
!1186 = !DILocation(line: 90, column: 3, scope: !1173, inlinedAt: !1180)
!1187 = !DILocation(line: 91, column: 3, scope: !1173, inlinedAt: !1180)
!1188 = !DILocation(line: 92, column: 23, scope: !1179, inlinedAt: !1180)
!1189 = !DILocation(line: 93, column: 8, scope: !1190, inlinedAt: !1180)
!1190 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 93, column: 7)
!1191 = !DILocation(line: 93, column: 7, scope: !1173, inlinedAt: !1180)
!1192 = !DILocation(line: 94, column: 5, scope: !1193, inlinedAt: !1180)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 93, column: 17)
!1194 = !DILocation(line: 95, column: 5, scope: !1193, inlinedAt: !1180)
!1195 = !DILocation(line: 92, column: 23, scope: !1173, inlinedAt: !1180)
!1196 = !DILocation(line: 92, column: 13, scope: !1173, inlinedAt: !1180)
!1197 = !DILocation(line: 97, column: 14, scope: !1173, inlinedAt: !1180)
!1198 = !DILocation(line: 90, column: 12, scope: !1173, inlinedAt: !1180)
!1199 = !DILocation(line: 97, column: 16, scope: !1173, inlinedAt: !1180)
!1200 = !DILocation(line: 97, column: 12, scope: !1173, inlinedAt: !1180)
!1201 = !DILocation(line: 88, column: 15, scope: !1173, inlinedAt: !1180)
!1202 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 98, column: 3, scope: !1173, inlinedAt: !1180)
!1204 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1203)
!1205 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1203)
!1206 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1203)
!1207 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1203)
!1208 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1203)
!1209 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1203)
!1211 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1210)
!1212 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1210)
!1213 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1210)
!1214 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1210)
!1215 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1210)
!1216 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1210)
!1217 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1210)
!1218 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1210)
!1219 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1210)
!1220 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1210)
!1221 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1210)
!1222 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1210)
!1223 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1210)
!1224 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1210)
!1225 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1210)
!1226 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1210)
!1227 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1210)
!1228 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1210)
!1229 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1210)
!1230 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1210)
!1231 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1210)
!1232 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1210)
!1233 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1210)
!1234 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1210)
!1235 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1210)
!1236 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1210)
!1237 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1210)
!1238 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1210)
!1240 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1239)
!1241 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1239)
!1242 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1239)
!1244 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1243)
!1245 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1239)
!1246 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1243)
!1247 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1243)
!1248 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1243)
!1249 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1239)
!1251 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1250)
!1252 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1250)
!1253 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1250)
!1254 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1250)
!1255 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1239)
!1257 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1256)
!1258 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1256)
!1259 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1256)
!1260 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1256)
!1261 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1239)
!1263 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1262)
!1264 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1262)
!1265 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1262)
!1266 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1262)
!1267 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1239)
!1269 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1268)
!1270 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1268)
!1271 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1268)
!1272 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1268)
!1273 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1239)
!1275 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1274)
!1276 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1274)
!1277 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1274)
!1278 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1274)
!1279 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1239)
!1280 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1239)
!1282 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1281)
!1283 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1281)
!1284 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1281)
!1285 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1281)
!1286 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1239)
!1288 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1287)
!1289 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1287)
!1290 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1287)
!1291 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1287)
!1292 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1239)
!1294 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1293)
!1295 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1293)
!1296 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1293)
!1297 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1293)
!1298 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1239)
!1300 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1299)
!1301 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1299)
!1302 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1299)
!1303 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1299)
!1304 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1239)
!1306 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1305)
!1307 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1305)
!1308 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1305)
!1309 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1305)
!1310 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1239)
!1312 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1311)
!1313 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1311)
!1314 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1311)
!1315 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1311)
!1316 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1239)
!1318 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1317)
!1319 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1317)
!1320 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1317)
!1321 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1317)
!1322 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1239)
!1324 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1323)
!1325 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1323)
!1326 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1323)
!1327 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1323)
!1328 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1239)
!1330 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1329)
!1331 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1329)
!1332 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1329)
!1333 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1329)
!1334 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1239)
!1336 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1335)
!1337 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1335)
!1338 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1335)
!1339 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1335)
!1340 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1210)
!1341 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1210)
!1343 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1342)
!1344 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1210)
!1345 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1210)
!1346 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1210)
!1347 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1210)
!1348 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1210)
!1350 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1349)
!1351 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1349)
!1352 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1349)
!1353 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1210)
!1354 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1210)
!1355 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1210)
!1356 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1210)
!1358 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1357)
!1359 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1357)
!1360 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1357)
!1361 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1210)
!1362 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1210)
!1364 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1363)
!1365 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1363)
!1366 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1363)
!1367 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1210)
!1368 = !DILocation(line: 0, scope: !602, inlinedAt: !1210)
!1369 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1203)
!1370 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1203)
!1371 = !DILocation(line: 99, column: 3, scope: !1173, inlinedAt: !1180)
!1372 = !DILocation(line: 100, column: 1, scope: !1173, inlinedAt: !1180)
!1373 = !DILocation(line: 130, column: 3, scope: !1166)
!1374 = !DILocation(line: 88, column: 3, scope: !1173)
!1375 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 89, column: 8, scope: !1173)
!1377 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1376)
!1378 = !DILocation(line: 89, column: 26, scope: !1173)
!1379 = !DILocation(line: 89, column: 6, scope: !1173)
!1380 = !DILocation(line: 90, column: 3, scope: !1173)
!1381 = !DILocation(line: 91, column: 3, scope: !1173)
!1382 = !DILocation(line: 92, column: 23, scope: !1179)
!1383 = !DILocation(line: 93, column: 8, scope: !1190)
!1384 = !DILocation(line: 93, column: 7, scope: !1173)
!1385 = !DILocation(line: 94, column: 5, scope: !1193)
!1386 = !DILocation(line: 95, column: 5, scope: !1193)
!1387 = !DILocation(line: 92, column: 23, scope: !1173)
!1388 = !DILocation(line: 92, column: 13, scope: !1173)
!1389 = !DILocation(line: 97, column: 14, scope: !1173)
!1390 = !DILocation(line: 90, column: 12, scope: !1173)
!1391 = !DILocation(line: 97, column: 16, scope: !1173)
!1392 = !DILocation(line: 97, column: 12, scope: !1173)
!1393 = !DILocation(line: 88, column: 15, scope: !1173)
!1394 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 98, column: 3, scope: !1173)
!1396 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1395)
!1397 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1395)
!1398 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1395)
!1399 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1395)
!1400 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1395)
!1401 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1395)
!1403 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1402)
!1404 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1402)
!1405 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1402)
!1406 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1402)
!1407 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1402)
!1408 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1402)
!1409 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1402)
!1410 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1402)
!1411 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1402)
!1412 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1402)
!1413 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1402)
!1414 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1402)
!1415 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1402)
!1416 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1402)
!1417 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1402)
!1418 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1402)
!1419 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1402)
!1420 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1402)
!1421 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1402)
!1422 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1402)
!1423 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1402)
!1424 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1402)
!1425 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1402)
!1426 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1402)
!1427 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1402)
!1428 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1402)
!1429 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1402)
!1430 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1402)
!1432 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1431)
!1433 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1431)
!1434 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1431)
!1436 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1435)
!1437 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1431)
!1438 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1435)
!1439 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1435)
!1440 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1435)
!1441 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1431)
!1443 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1442)
!1444 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1442)
!1445 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1442)
!1446 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1442)
!1447 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1431)
!1449 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1448)
!1450 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1448)
!1451 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1448)
!1452 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1448)
!1453 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1431)
!1455 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1454)
!1456 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1454)
!1457 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1454)
!1458 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1454)
!1459 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1431)
!1461 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1460)
!1462 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1460)
!1463 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1460)
!1464 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1460)
!1465 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1431)
!1467 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1466)
!1468 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1466)
!1469 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1466)
!1470 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1466)
!1471 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1431)
!1472 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1431)
!1474 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1473)
!1475 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1473)
!1476 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1473)
!1477 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1473)
!1478 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1431)
!1480 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1479)
!1481 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1479)
!1482 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1479)
!1483 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1479)
!1484 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1431)
!1486 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1485)
!1487 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1485)
!1488 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1485)
!1489 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1485)
!1490 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1431)
!1492 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1491)
!1493 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1491)
!1494 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1491)
!1495 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1491)
!1496 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1431)
!1498 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1497)
!1499 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1497)
!1500 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1497)
!1501 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1497)
!1502 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1431)
!1504 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1503)
!1505 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1503)
!1506 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1503)
!1507 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1503)
!1508 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1431)
!1510 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1509)
!1511 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1509)
!1512 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1509)
!1513 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1509)
!1514 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1431)
!1516 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1515)
!1517 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1515)
!1518 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1515)
!1519 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1515)
!1520 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1431)
!1522 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1521)
!1523 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1521)
!1524 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1521)
!1525 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1521)
!1526 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1431)
!1528 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1527)
!1529 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1527)
!1530 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1527)
!1531 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1527)
!1532 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1402)
!1533 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1402)
!1535 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1534)
!1536 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1402)
!1537 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1402)
!1538 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1402)
!1539 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1402)
!1540 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1402)
!1542 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1541)
!1543 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1541)
!1544 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1541)
!1545 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1402)
!1546 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1402)
!1547 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1402)
!1548 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1402)
!1550 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1549)
!1551 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1549)
!1552 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1549)
!1553 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1402)
!1554 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1402)
!1556 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1555)
!1557 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1555)
!1558 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1555)
!1559 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1402)
!1560 = !DILocation(line: 0, scope: !602, inlinedAt: !1402)
!1561 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1395)
!1562 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1395)
!1563 = !DILocation(line: 99, column: 3, scope: !1173)
!1564 = !DILocation(line: 0, scope: !1173)
!1565 = !DILocation(line: 100, column: 1, scope: !1173)
!1566 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 78, column: 10, scope: !1030)
!1568 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1567)
!1569 = !DILocation(line: 78, column: 21, scope: !1030)
!1570 = !DILocation(line: 78, column: 3, scope: !1030)
!1571 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 85, column: 10, scope: !1123)
!1574 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1572)
!1575 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1573)
!1576 = !DILocation(line: 85, column: 30, scope: !1123)
!1577 = !DILocation(line: 85, column: 3, scope: !1123)
!1578 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 92, column: 10, scope: !1133)
!1581 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1579)
!1582 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1580)
!1583 = !DILocation(line: 92, column: 30, scope: !1133)
!1584 = !DILocation(line: 92, column: 3, scope: !1133)
!1585 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 98, column: 10, scope: !1036)
!1588 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1586)
!1589 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1587)
!1590 = !DILocation(line: 98, column: 30, scope: !1036)
!1591 = !DILocation(line: 98, column: 3, scope: !1036)
!1592 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 105, column: 12, scope: !1054)
!1595 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1593)
!1596 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1594)
!1597 = !DILocation(line: 105, column: 32, scope: !1054)
!1598 = !DILocation(line: 105, column: 3, scope: !1054)
!1599 = !DILocation(line: 113, column: 31, scope: !658)
!1600 = !DILocation(line: 113, column: 43, scope: !658)
!1601 = !DILocation(line: 115, column: 8, scope: !658)
!1602 = !DILocation(line: 115, column: 12, scope: !658)
!1603 = !DILocation(line: 116, column: 6, scope: !658)
!1604 = !DILocation(line: 116, column: 26, scope: !658)
!1605 = !DILocation(line: 117, column: 1, scope: !658)
!1606 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 122, column: 41, scope: !1058)
!1610 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1607)
!1611 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1608)
!1612 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !1609)
!1613 = !DILocation(line: 122, column: 21, scope: !1058)
!1614 = !DILocation(line: 125, column: 15, scope: !1058)
!1615 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 126, column: 9, scope: !1067)
!1617 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !1616)
!1618 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !1616)
!1619 = !DILocation(line: 126, column: 7, scope: !1058)
!1620 = !DILocation(line: 128, column: 25, scope: !1065)
!1621 = !DILocation(line: 131, column: 40, scope: !1066)
!1622 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 131, column: 5, scope: !1066)
!1624 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !1623)
!1625 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !1623)
!1626 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !1623)
!1628 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !1627)
!1629 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !1627)
!1630 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !1627)
!1631 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !1627)
!1632 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !1627)
!1633 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !1623)
!1635 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1634)
!1636 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1634)
!1637 = !DILocation(line: 132, column: 3, scope: !1066)
!1638 = !DILocation(line: 0, scope: !1058)
!1639 = !DILocation(line: 139, column: 3, scope: !1058)
!1640 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !650, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1649}
!1642 = !DILocalVariable(name: "f", arg: 1, scope: !1640, file: !124, line: 144, type: !240)
!1643 = !DILocalVariable(name: "next", scope: !1640, file: !124, line: 149, type: !240)
!1644 = !DILocalVariable(name: "temp", scope: !1640, file: !124, line: 155, type: !240)
!1645 = !DILocalVariable(name: "waitq", scope: !1640, file: !124, line: 156, type: !150)
!1646 = !DILocalVariable(name: "first", scope: !1647, file: !124, line: 163, type: !240)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !124, line: 163, column: 12)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !124, line: 160, column: 25)
!1649 = !DILocalVariable(name: "__mptr", scope: !1650, file: !124, line: 163, type: !1072)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !124, line: 163, column: 12)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !124, line: 163, column: 12)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !124, line: 163, column: 12)
!1653 = !DILocation(line: 144, column: 33, scope: !1640)
!1654 = !DILocation(line: 147, column: 6, scope: !1640)
!1655 = !DILocation(line: 147, column: 15, scope: !1640)
!1656 = !DILocation(line: 149, column: 15, scope: !1640)
!1657 = !DILocation(line: 156, column: 34, scope: !1640)
!1658 = !DILocation(line: 156, column: 21, scope: !1640)
!1659 = !DILocation(line: 160, column: 12, scope: !1640)
!1660 = !DILocation(line: 160, column: 21, scope: !1640)
!1661 = !DILocation(line: 160, column: 3, scope: !1640)
!1662 = !DILocation(line: 163, column: 12, scope: !1647)
!1663 = !DILocation(line: 163, column: 12, scope: !1652)
!1664 = !DILocation(line: 155, column: 15, scope: !1640)
!1665 = !DILocation(line: 164, column: 27, scope: !1648)
!1666 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 164, column: 5, scope: !1648)
!1668 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !1667)
!1669 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !1667)
!1670 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !1667)
!1672 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !1671)
!1673 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !1671)
!1674 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !1671)
!1675 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !1671)
!1676 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !1671)
!1677 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !1667)
!1679 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1678)
!1680 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1678)
!1681 = !DILocation(line: 165, column: 16, scope: !1648)
!1682 = !DILocation(line: 168, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1648, file: !124, line: 168, column: 9)
!1684 = !DILocation(line: 168, column: 9, scope: !1648)
!1685 = !DILocalVariable(name: "f", arg: 1, scope: !1686, file: !124, line: 663, type: !240)
!1686 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !1687, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!48, !240, !29}
!1689 = !{!1685, !1690, !1691, !1692}
!1690 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1686, file: !124, line: 663, type: !29)
!1691 = !DILocalVariable(name: "curr_thread", scope: !1686, file: !124, line: 666, type: !285)
!1692 = !DILocalVariable(name: "fiber_sched_queue", scope: !1686, file: !124, line: 674, type: !150)
!1693 = !DILocation(line: 663, column: 30, scope: !1686, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 171, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1683, file: !124, line: 168, column: 14)
!1696 = !DILocation(line: 663, column: 41, scope: !1686, inlinedAt: !1694)
!1697 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 666, column: 30, scope: !1686, inlinedAt: !1694)
!1701 = !DILocation(line: 666, column: 16, scope: !1686, inlinedAt: !1694)
!1702 = !DILocation(line: 366, column: 29, scope: !1703, inlinedAt: !1710)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !124, line: 366, column: 29)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !124, line: 366, column: 29)
!1705 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DILocalVariable(name: "sys", scope: !1705, file: !124, line: 366, type: !264)
!1708 = !DILocalVariable(name: "__r", scope: !1704, file: !124, line: 366, type: !264)
!1709 = !DILocalVariable(name: "__r", scope: !1703, file: !124, line: 366, type: !264)
!1710 = distinct !DILocation(line: 373, column: 20, scope: !1711, inlinedAt: !1719)
!1711 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !768, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1712)
!1712 = !{!1713, !1714, !1715, !1717}
!1713 = !DILocalVariable(name: "random_cpu", scope: !1711, file: !124, line: 373, type: !48)
!1714 = !DILocalVariable(name: "sys", scope: !1711, file: !124, line: 374, type: !264)
!1715 = !DILocalVariable(name: "__r", scope: !1716, file: !124, line: 374, type: !264)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !124, line: 374, column: 27)
!1717 = !DILocalVariable(name: "__r", scope: !1718, file: !124, line: 374, type: !264)
!1718 = distinct !DILexicalBlock(scope: !1716, file: !124, line: 374, column: 27)
!1719 = distinct !DILocation(line: 670, column: 19, scope: !1720, inlinedAt: !1694)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !124, line: 669, column: 23)
!1721 = distinct !DILexicalBlock(scope: !1686, file: !124, line: 669, column: 7)
!1722 = !{i32 -2147185111}
!1723 = !DILocation(line: 366, column: 29, scope: !1704, inlinedAt: !1710)
!1724 = !DILocation(line: 366, column: 23, scope: !1705, inlinedAt: !1710)
!1725 = !DILocation(line: 358, column: 5, scope: !1726, inlinedAt: !1731)
!1726 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !1727, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!25}
!1729 = !{!1730}
!1730 = !DILocalVariable(name: "t", scope: !1726, file: !124, line: 358, type: !25)
!1731 = distinct !DILocation(line: 367, column: 18, scope: !1705, inlinedAt: !1710)
!1732 = !DILocation(line: 359, column: 5, scope: !1726, inlinedAt: !1731)
!1733 = !DILocation(line: 360, column: 12, scope: !1726, inlinedAt: !1731)
!1734 = !DILocation(line: 358, column: 14, scope: !1726, inlinedAt: !1731)
!1735 = !DILocation(line: 361, column: 1, scope: !1726, inlinedAt: !1731)
!1736 = !DILocation(line: 367, column: 39, scope: !1705, inlinedAt: !1710)
!1737 = !DILocation(line: 367, column: 34, scope: !1705, inlinedAt: !1710)
!1738 = !DILocation(line: 367, column: 32, scope: !1705, inlinedAt: !1710)
!1739 = !DILocation(line: 374, column: 27, scope: !1718, inlinedAt: !1719)
!1740 = !{i32 -2147182110}
!1741 = !DILocation(line: 374, column: 27, scope: !1716, inlinedAt: !1719)
!1742 = !DILocation(line: 374, column: 21, scope: !1711, inlinedAt: !1719)
!1743 = !DILocation(line: 375, column: 10, scope: !1711, inlinedAt: !1719)
!1744 = !DILocation(line: 0, scope: !1686, inlinedAt: !1694)
!1745 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 674, column: 41, scope: !1686, inlinedAt: !1694)
!1749 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1746)
!1750 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1747)
!1751 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !1748)
!1752 = !DILocation(line: 674, column: 21, scope: !1686, inlinedAt: !1694)
!1753 = !DILocation(line: 678, column: 6, scope: !1686, inlinedAt: !1694)
!1754 = !DILocation(line: 678, column: 15, scope: !1686, inlinedAt: !1694)
!1755 = !DILocation(line: 679, column: 22, scope: !1686, inlinedAt: !1694)
!1756 = !DILocalVariable(name: "nelm", arg: 1, scope: !1757, file: !53, line: 116, type: !150)
!1757 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1101, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1758)
!1758 = !{!1756, !1759}
!1759 = !DILocalVariable(name: "head", arg: 2, scope: !1757, file: !53, line: 116, type: !150)
!1760 = !DILocation(line: 116, column: 52, scope: !1757, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 679, column: 3, scope: !1686, inlinedAt: !1694)
!1762 = !DILocation(line: 116, column: 76, scope: !1757, inlinedAt: !1761)
!1763 = !DILocation(line: 118, column: 25, scope: !1757, inlinedAt: !1761)
!1764 = !DILocalVariable(name: "nelm", arg: 1, scope: !1765, file: !53, line: 85, type: !150)
!1765 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1766, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !150, !150, !150}
!1768 = !{!1764, !1769, !1770}
!1769 = !DILocalVariable(name: "prev", arg: 2, scope: !1765, file: !53, line: 86, type: !150)
!1770 = !DILocalVariable(name: "next", arg: 3, scope: !1765, file: !53, line: 87, type: !150)
!1771 = !DILocation(line: 85, column: 49, scope: !1765, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 118, column: 2, scope: !1757, inlinedAt: !1761)
!1773 = !DILocation(line: 86, column: 28, scope: !1765, inlinedAt: !1772)
!1774 = !DILocation(line: 87, column: 28, scope: !1765, inlinedAt: !1772)
!1775 = !DILocation(line: 89, column: 13, scope: !1765, inlinedAt: !1772)
!1776 = !DILocation(line: 90, column: 8, scope: !1765, inlinedAt: !1772)
!1777 = !DILocation(line: 90, column: 13, scope: !1765, inlinedAt: !1772)
!1778 = !DILocation(line: 91, column: 8, scope: !1765, inlinedAt: !1772)
!1779 = !DILocation(line: 91, column: 13, scope: !1765, inlinedAt: !1772)
!1780 = !DILocation(line: 92, column: 8, scope: !1765, inlinedAt: !1772)
!1781 = !DILocation(line: 92, column: 13, scope: !1765, inlinedAt: !1772)
!1782 = !DILocation(line: 683, column: 20, scope: !1783, inlinedAt: !1694)
!1783 = distinct !DILexicalBlock(scope: !1686, file: !124, line: 683, column: 7)
!1784 = !DILocation(line: 683, column: 7, scope: !1783, inlinedAt: !1694)
!1785 = !DILocation(line: 683, column: 7, scope: !1686, inlinedAt: !1694)
!1786 = !DILocation(line: 687, column: 5, scope: !1787, inlinedAt: !1694)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !124, line: 683, column: 26)
!1788 = !DILocation(line: 688, column: 3, scope: !1787, inlinedAt: !1694)
!1789 = distinct !{!1789, !1661, !1790}
!1790 = !DILocation(line: 173, column: 3, scope: !1640)
!1791 = !DILocation(line: 175, column: 6, scope: !1640)
!1792 = !DILocation(line: 175, column: 14, scope: !1640)
!1793 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 179, column: 10, scope: !1640)
!1798 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1794)
!1799 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1795)
!1800 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !1796)
!1801 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !1797)
!1802 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !1797)
!1803 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !1797)
!1805 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !1804)
!1806 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !1804)
!1807 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !1797)
!1808 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !1797)
!1809 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !1797)
!1810 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !1797)
!1812 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !1811)
!1813 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !1811)
!1814 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !1811)
!1816 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !1815)
!1817 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !1815)
!1818 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !1815)
!1819 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !1815)
!1820 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !1815)
!1821 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !1811)
!1823 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1822)
!1824 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1822)
!1825 = !DILocation(line: 180, column: 8, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1640, file: !124, line: 180, column: 7)
!1827 = !DILocation(line: 180, column: 7, scope: !1640)
!1828 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 181, column: 12, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1826, file: !124, line: 180, column: 16)
!1833 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1829)
!1834 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1830)
!1835 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !1831)
!1836 = !DILocation(line: 182, column: 3, scope: !1832)
!1837 = !DILocation(line: 0, scope: !1640)
!1838 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 183, column: 3, scope: !1640)
!1841 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1839)
!1842 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1840)
!1843 = !DILocation(line: 183, column: 23, scope: !1640)
!1844 = !DILocation(line: 183, column: 34, scope: !1640)
!1845 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 186, column: 19, scope: !1640)
!1848 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1846)
!1849 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1847)
!1850 = !DILocation(line: 186, column: 39, scope: !1640)
!1851 = !DILocation(line: 186, column: 51, scope: !1640)
!1852 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 186, column: 3, scope: !1640)
!1854 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !1853)
!1855 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !1853)
!1856 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !1853)
!1858 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !1857)
!1859 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !1857)
!1860 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !1857)
!1861 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !1857)
!1862 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !1857)
!1863 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !1853)
!1865 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1864)
!1866 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1864)
!1867 = !DILocation(line: 189, column: 3, scope: !1640)
!1868 = !DILocation(line: 190, column: 3, scope: !1640)
!1869 = !DILocation(line: 193, column: 3, scope: !1640)
!1870 = !DILocation(line: 196, column: 1, scope: !1640)
!1871 = !DILocation(line: 663, column: 30, scope: !1686)
!1872 = !DILocation(line: 663, column: 41, scope: !1686)
!1873 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 666, column: 30, scope: !1686)
!1877 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1874)
!1878 = !DILocation(line: 666, column: 16, scope: !1686)
!1879 = !DILocation(line: 669, column: 7, scope: !1721)
!1880 = !DILocation(line: 669, column: 7, scope: !1686)
!1881 = !DILocation(line: 366, column: 29, scope: !1703, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 373, column: 20, scope: !1711, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 670, column: 19, scope: !1720)
!1884 = !DILocation(line: 366, column: 29, scope: !1704, inlinedAt: !1882)
!1885 = !DILocation(line: 366, column: 23, scope: !1705, inlinedAt: !1882)
!1886 = !DILocation(line: 358, column: 5, scope: !1726, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 367, column: 18, scope: !1705, inlinedAt: !1882)
!1888 = !DILocation(line: 359, column: 5, scope: !1726, inlinedAt: !1887)
!1889 = !DILocation(line: 360, column: 12, scope: !1726, inlinedAt: !1887)
!1890 = !DILocation(line: 358, column: 14, scope: !1726, inlinedAt: !1887)
!1891 = !DILocation(line: 361, column: 1, scope: !1726, inlinedAt: !1887)
!1892 = !DILocation(line: 367, column: 39, scope: !1705, inlinedAt: !1882)
!1893 = !DILocation(line: 367, column: 34, scope: !1705, inlinedAt: !1882)
!1894 = !DILocation(line: 367, column: 32, scope: !1705, inlinedAt: !1882)
!1895 = !DILocation(line: 374, column: 27, scope: !1718, inlinedAt: !1883)
!1896 = !DILocation(line: 374, column: 27, scope: !1716, inlinedAt: !1883)
!1897 = !DILocation(line: 374, column: 21, scope: !1711, inlinedAt: !1883)
!1898 = !DILocation(line: 375, column: 10, scope: !1711, inlinedAt: !1883)
!1899 = !DILocation(line: 671, column: 3, scope: !1720)
!1900 = !DILocation(line: 0, scope: !1686)
!1901 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 674, column: 41, scope: !1686)
!1905 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !1902)
!1906 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !1903)
!1907 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !1904)
!1908 = !DILocation(line: 674, column: 21, scope: !1686)
!1909 = !DILocation(line: 678, column: 6, scope: !1686)
!1910 = !DILocation(line: 678, column: 15, scope: !1686)
!1911 = !DILocation(line: 679, column: 22, scope: !1686)
!1912 = !DILocation(line: 116, column: 52, scope: !1757, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 679, column: 3, scope: !1686)
!1914 = !DILocation(line: 116, column: 76, scope: !1757, inlinedAt: !1913)
!1915 = !DILocation(line: 118, column: 25, scope: !1757, inlinedAt: !1913)
!1916 = !DILocation(line: 85, column: 49, scope: !1765, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 118, column: 2, scope: !1757, inlinedAt: !1913)
!1918 = !DILocation(line: 86, column: 28, scope: !1765, inlinedAt: !1917)
!1919 = !DILocation(line: 87, column: 28, scope: !1765, inlinedAt: !1917)
!1920 = !DILocation(line: 89, column: 13, scope: !1765, inlinedAt: !1917)
!1921 = !DILocation(line: 90, column: 8, scope: !1765, inlinedAt: !1917)
!1922 = !DILocation(line: 90, column: 13, scope: !1765, inlinedAt: !1917)
!1923 = !DILocation(line: 91, column: 8, scope: !1765, inlinedAt: !1917)
!1924 = !DILocation(line: 91, column: 13, scope: !1765, inlinedAt: !1917)
!1925 = !DILocation(line: 92, column: 8, scope: !1765, inlinedAt: !1917)
!1926 = !DILocation(line: 92, column: 13, scope: !1765, inlinedAt: !1917)
!1927 = !DILocation(line: 683, column: 20, scope: !1783)
!1928 = !DILocation(line: 683, column: 7, scope: !1783)
!1929 = !DILocation(line: 683, column: 7, scope: !1686)
!1930 = !DILocation(line: 687, column: 5, scope: !1787)
!1931 = !DILocation(line: 688, column: 3, scope: !1787)
!1932 = !DILocation(line: 690, column: 3, scope: !1686)
!1933 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !650, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1934)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "f_to", arg: 1, scope: !1933, file: !124, line: 198, type: !240)
!1936 = !DILocation(line: 198, column: 33, scope: !1933)
!1937 = !DILocation(line: 202, column: 9, scope: !1933)
!1938 = !DILocation(line: 202, column: 19, scope: !1933)
!1939 = !DILocation(line: 202, column: 32, scope: !1933)
!1940 = !DILocation(line: 202, column: 3, scope: !1933)
!1941 = !DILocation(line: 208, column: 3, scope: !1933)
!1942 = !DILocation(line: 210, column: 3, scope: !1933)
!1943 = !DILocation(line: 274, column: 33, scope: !649)
!1944 = !DILocation(line: 276, column: 26, scope: !649)
!1945 = !DILocation(line: 276, column: 37, scope: !649)
!1946 = !DILocation(line: 276, column: 6, scope: !649)
!1947 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 277, column: 3, scope: !649)
!1949 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1948)
!1950 = !DILocation(line: 276, column: 32, scope: !649)
!1951 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1948)
!1952 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1948)
!1953 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1948)
!1954 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 278, column: 3, scope: !649)
!1956 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1955)
!1957 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1955)
!1958 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1955)
!1959 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1955)
!1960 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 279, column: 3, scope: !649)
!1962 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1961)
!1963 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1961)
!1964 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1961)
!1965 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1961)
!1966 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 280, column: 3, scope: !649)
!1968 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1967)
!1969 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1967)
!1970 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1967)
!1971 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1967)
!1972 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 281, column: 3, scope: !649)
!1974 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1973)
!1975 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1973)
!1976 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1973)
!1977 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1973)
!1978 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 282, column: 3, scope: !649)
!1980 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1979)
!1981 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1979)
!1982 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1979)
!1983 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1979)
!1984 = !DILocation(line: 283, column: 18, scope: !649)
!1985 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 283, column: 3, scope: !649)
!1987 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1986)
!1988 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1986)
!1989 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1986)
!1990 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1986)
!1991 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 284, column: 3, scope: !649)
!1993 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1992)
!1994 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1992)
!1995 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1992)
!1996 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1992)
!1997 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 285, column: 3, scope: !649)
!1999 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1998)
!2000 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1998)
!2001 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1998)
!2002 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1998)
!2003 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 286, column: 3, scope: !649)
!2005 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2004)
!2006 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2004)
!2007 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2004)
!2008 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2004)
!2009 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 287, column: 3, scope: !649)
!2011 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2010)
!2012 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2010)
!2013 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2010)
!2014 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2010)
!2015 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 288, column: 3, scope: !649)
!2017 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2016)
!2018 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2016)
!2019 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2016)
!2020 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2016)
!2021 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 289, column: 3, scope: !649)
!2023 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2022)
!2024 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2022)
!2025 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2022)
!2026 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2022)
!2027 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 290, column: 3, scope: !649)
!2029 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2028)
!2030 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2028)
!2031 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2028)
!2032 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2028)
!2033 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 291, column: 3, scope: !649)
!2035 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2034)
!2036 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2034)
!2037 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2034)
!2038 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2034)
!2039 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 292, column: 3, scope: !649)
!2041 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2040)
!2042 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2040)
!2043 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2040)
!2044 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2040)
!2045 = !DILocation(line: 294, column: 3, scope: !649)
!2046 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !2047, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!48, !240}
!2049 = !{!2050, !2051, !2052}
!2050 = !DILocalVariable(name: "f_to", arg: 1, scope: !2046, file: !124, line: 299, type: !240)
!2051 = !DILocalVariable(name: "f_from", scope: !2046, file: !124, line: 302, type: !240)
!2052 = !DILocalVariable(name: "fiber_sched_queue", scope: !2053, file: !124, line: 312, type: !150)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !124, line: 310, column: 63)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !124, line: 310, column: 7)
!2055 = !DILocation(line: 299, column: 36, scope: !2046)
!2056 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 302, column: 24, scope: !2046)
!2060 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2057)
!2061 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2058)
!2062 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !2059)
!2063 = !DILocation(line: 302, column: 15, scope: !2046)
!2064 = !DILocation(line: 305, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2046, file: !124, line: 305, column: 7)
!2066 = !DILocation(line: 305, column: 32, scope: !2065)
!2067 = !DILocation(line: 306, column: 22, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !124, line: 305, column: 61)
!2069 = !DILocation(line: 307, column: 3, scope: !2068)
!2070 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 310, column: 17, scope: !2054)
!2074 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2071)
!2075 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2072)
!2076 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !2073)
!2077 = !DILocation(line: 310, column: 14, scope: !2054)
!2078 = !DILocation(line: 310, column: 34, scope: !2054)
!2079 = !DILocation(line: 310, column: 45, scope: !2054)
!2080 = !DILocation(line: 310, column: 54, scope: !2054)
!2081 = !DILocation(line: 310, column: 7, scope: !2046)
!2082 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 312, column: 43, scope: !2053)
!2086 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2083)
!2087 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2084)
!2088 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !2085)
!2089 = !DILocation(line: 312, column: 23, scope: !2053)
!2090 = !DILocation(line: 318, column: 29, scope: !2053)
!2091 = !DILocation(line: 116, column: 52, scope: !1757, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 318, column: 5, scope: !2053)
!2093 = !DILocation(line: 116, column: 76, scope: !1757, inlinedAt: !2092)
!2094 = !DILocation(line: 118, column: 25, scope: !1757, inlinedAt: !2092)
!2095 = !DILocation(line: 85, column: 49, scope: !1765, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 118, column: 2, scope: !1757, inlinedAt: !2092)
!2097 = !DILocation(line: 86, column: 28, scope: !1765, inlinedAt: !2096)
!2098 = !DILocation(line: 87, column: 28, scope: !1765, inlinedAt: !2096)
!2099 = !DILocation(line: 89, column: 13, scope: !1765, inlinedAt: !2096)
!2100 = !DILocation(line: 90, column: 8, scope: !1765, inlinedAt: !2096)
!2101 = !DILocation(line: 90, column: 13, scope: !1765, inlinedAt: !2096)
!2102 = !DILocation(line: 91, column: 8, scope: !1765, inlinedAt: !2096)
!2103 = !DILocation(line: 91, column: 13, scope: !1765, inlinedAt: !2096)
!2104 = !DILocation(line: 92, column: 8, scope: !1765, inlinedAt: !2096)
!2105 = !DILocation(line: 92, column: 13, scope: !1765, inlinedAt: !2096)
!2106 = !DILocation(line: 319, column: 3, scope: !2053)
!2107 = !DILocation(line: 323, column: 16, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2046, file: !124, line: 323, column: 7)
!2109 = !DILocation(line: 323, column: 8, scope: !2108)
!2110 = !DILocation(line: 323, column: 7, scope: !2046)
!2111 = !DILocation(line: 324, column: 29, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !124, line: 323, column: 24)
!2113 = !DILocalVariable(name: "vc", arg: 1, scope: !2114, file: !124, line: 906, type: !88)
!2114 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 906, type: !2115, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !88}
!2117 = !{!2113, !2118}
!2118 = !DILocalVariable(name: "curr_fiber", scope: !2114, file: !124, line: 909, type: !240)
!2119 = !DILocation(line: 906, column: 49, scope: !2114, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 324, column: 5, scope: !2112)
!2121 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 909, column: 28, scope: !2114, inlinedAt: !2120)
!2125 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2122)
!2126 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2123)
!2127 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !2124)
!2128 = !DILocation(line: 909, column: 15, scope: !2114, inlinedAt: !2120)
!2129 = !DILocation(line: 912, column: 15, scope: !2114, inlinedAt: !2120)
!2130 = !DILocation(line: 912, column: 18, scope: !2114, inlinedAt: !2120)
!2131 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 913, column: 3, scope: !2114, inlinedAt: !2120)
!2133 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2132)
!2134 = !DILocation(line: 913, column: 21, scope: !2114, inlinedAt: !2120)
!2135 = !DILocation(line: 913, column: 24, scope: !2114, inlinedAt: !2120)
!2136 = !DILocation(line: 325, column: 3, scope: !2112)
!2137 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 328, column: 3, scope: !2046)
!2140 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2138)
!2141 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2139)
!2142 = !DILocation(line: 328, column: 23, scope: !2046)
!2143 = !DILocation(line: 328, column: 34, scope: !2046)
!2144 = !DILocation(line: 329, column: 20, scope: !2046)
!2145 = !DILocation(line: 330, column: 9, scope: !2046)
!2146 = !DILocation(line: 330, column: 18, scope: !2046)
!2147 = !DILocation(line: 331, column: 3, scope: !2046)
!2148 = !DILocation(line: 333, column: 3, scope: !2046)
!2149 = !DILocation(line: 906, column: 49, scope: !2114)
!2150 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 909, column: 28, scope: !2114)
!2154 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2151)
!2155 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2152)
!2156 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !2153)
!2157 = !DILocation(line: 909, column: 15, scope: !2114)
!2158 = !DILocation(line: 912, column: 15, scope: !2114)
!2159 = !DILocation(line: 912, column: 18, scope: !2114)
!2160 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 913, column: 3, scope: !2114)
!2162 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2161)
!2163 = !DILocation(line: 913, column: 21, scope: !2114)
!2164 = !DILocation(line: 913, column: 24, scope: !2114)
!2165 = !DILocation(line: 914, column: 1, scope: !2114)
!2166 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !2167, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null}
!2169 = !{!2170}
!2170 = !DILocalVariable(name: "curr", scope: !2166, file: !124, line: 338, type: !240)
!2171 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 338, column: 22, scope: !2166)
!2175 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2172)
!2176 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2173)
!2177 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !2174)
!2178 = !DILocation(line: 338, column: 15, scope: !2166)
!2179 = !DILocation(line: 340, column: 3, scope: !2166)
!2180 = !DILocation(line: 341, column: 1, scope: !2166)
!2181 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !2182, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!29, !240}
!2184 = !{!2185, !2186, !2187}
!2185 = !DILocalVariable(name: "f", arg: 1, scope: !2181, file: !124, line: 343, type: !240)
!2186 = !DILocalVariable(name: "idle_fiber", scope: !2181, file: !124, line: 345, type: !240)
!2187 = !DILocalVariable(name: "result", scope: !2181, file: !124, line: 348, type: !29)
!2188 = !DILocation(line: 343, column: 36, scope: !2181)
!2189 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 345, column: 28, scope: !2181)
!2193 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2190)
!2194 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !2191)
!2195 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !2192)
!2196 = !DILocation(line: 345, column: 15, scope: !2181)
!2197 = !DILocation(line: 348, column: 11, scope: !2181)
!2198 = !DILocation(line: 349, column: 18, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2181, file: !124, line: 349, column: 7)
!2200 = !DILocation(line: 349, column: 7, scope: !2181)
!2201 = !DILocation(line: 353, column: 3, scope: !2181)
!2202 = !DILocation(line: 366, column: 29, scope: !1703, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 373, column: 20, scope: !1711)
!2204 = !DILocation(line: 366, column: 29, scope: !1704, inlinedAt: !2203)
!2205 = !DILocation(line: 366, column: 23, scope: !1705, inlinedAt: !2203)
!2206 = !DILocation(line: 358, column: 5, scope: !1726, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 367, column: 18, scope: !1705, inlinedAt: !2203)
!2208 = !DILocation(line: 359, column: 5, scope: !1726, inlinedAt: !2207)
!2209 = !DILocation(line: 360, column: 12, scope: !1726, inlinedAt: !2207)
!2210 = !DILocation(line: 358, column: 14, scope: !1726, inlinedAt: !2207)
!2211 = !DILocation(line: 361, column: 1, scope: !1726, inlinedAt: !2207)
!2212 = !DILocation(line: 367, column: 39, scope: !1705, inlinedAt: !2203)
!2213 = !DILocation(line: 367, column: 34, scope: !1705, inlinedAt: !2203)
!2214 = !DILocation(line: 367, column: 32, scope: !1705, inlinedAt: !2203)
!2215 = !DILocation(line: 374, column: 27, scope: !1718)
!2216 = !DILocation(line: 374, column: 27, scope: !1716)
!2217 = !DILocation(line: 374, column: 21, scope: !1711)
!2218 = !DILocation(line: 375, column: 10, scope: !1711)
!2219 = !DILocation(line: 375, column: 33, scope: !1711)
!2220 = !DILocation(line: 375, column: 42, scope: !1711)
!2221 = !DILocation(line: 375, column: 3, scope: !1711)
!2222 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !2047, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2223)
!2223 = !{!2224, !2225, !2226, !2228, !2230, !2231, !2232, !2233, !2235, !2240}
!2224 = !DILocalVariable(name: "to_del", arg: 1, scope: !2222, file: !124, line: 383, type: !240)
!2225 = !DILocalVariable(name: "sys", scope: !2222, file: !124, line: 386, type: !264)
!2226 = !DILocalVariable(name: "__r", scope: !2227, file: !124, line: 386, type: !264)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !124, line: 386, column: 26)
!2228 = !DILocalVariable(name: "__r", scope: !2229, file: !124, line: 386, type: !264)
!2229 = distinct !DILexicalBlock(scope: !2227, file: !124, line: 386, column: 26)
!2230 = !DILocalVariable(name: "cpu_iter", scope: !2222, file: !124, line: 387, type: !48)
!2231 = !DILocalVariable(name: "temp", scope: !2222, file: !124, line: 390, type: !150)
!2232 = !DILocalVariable(name: "test", scope: !2222, file: !124, line: 391, type: !240)
!2233 = !DILocalVariable(name: "iter", scope: !2234, file: !124, line: 392, type: !48)
!2234 = distinct !DILexicalBlock(scope: !2222, file: !124, line: 392, column: 3)
!2235 = !DILocalVariable(name: "__mptr", scope: !2236, file: !124, line: 395, type: !1072)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !124, line: 395, column: 5)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !124, line: 395, column: 5)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !124, line: 392, column: 46)
!2239 = distinct !DILexicalBlock(scope: !2234, file: !124, line: 392, column: 3)
!2240 = !DILocalVariable(name: "__mptr", scope: !2241, file: !124, line: 395, type: !1072)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !124, line: 395, column: 5)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !124, line: 395, column: 5)
!2243 = !DILocation(line: 383, column: 42, scope: !2222)
!2244 = !DILocation(line: 386, column: 26, scope: !2229)
!2245 = !{i32 -2147179109}
!2246 = !DILocation(line: 386, column: 26, scope: !2227)
!2247 = !DILocation(line: 386, column: 20, scope: !2222)
!2248 = !DILocation(line: 387, column: 23, scope: !2222)
!2249 = !DILocation(line: 387, column: 7, scope: !2222)
!2250 = !DILocation(line: 392, column: 12, scope: !2234)
!2251 = !DILocation(line: 392, column: 27, scope: !2239)
!2252 = !DILocation(line: 392, column: 3, scope: !2234)
!2253 = !DILocation(line: 394, column: 14, scope: !2238)
!2254 = !DILocation(line: 394, column: 31, scope: !2238)
!2255 = !DILocation(line: 394, column: 40, scope: !2238)
!2256 = !DILocation(line: 390, column: 21, scope: !2222)
!2257 = !DILocation(line: 395, column: 5, scope: !2236)
!2258 = !DILocation(line: 391, column: 15, scope: !2222)
!2259 = !DILocation(line: 0, scope: !2237)
!2260 = !DILocation(line: 395, column: 5, scope: !2237)
!2261 = !DILocation(line: 395, column: 5, scope: !2242)
!2262 = !DILocation(line: 400, column: 16, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !124, line: 400, column: 11)
!2264 = distinct !DILexicalBlock(scope: !2242, file: !124, line: 395, column: 48)
!2265 = !DILocation(line: 400, column: 11, scope: !2264)
!2266 = distinct !{!2266, !2260, !2267}
!2267 = !DILocation(line: 404, column: 5, scope: !2237)
!2268 = !DILocation(line: 392, column: 43, scope: !2239)
!2269 = distinct !{!2269, !2252, !2270}
!2270 = !DILocation(line: 405, column: 3, scope: !2234)
!2271 = !DILocation(line: 401, column: 33, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2263, file: !124, line: 400, column: 26)
!2273 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 401, column: 9, scope: !2272)
!2275 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !2274)
!2276 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !2274)
!2277 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !2274)
!2279 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !2278)
!2280 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !2278)
!2281 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !2278)
!2282 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !2278)
!2283 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !2278)
!2284 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !2274)
!2286 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2285)
!2287 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2285)
!2288 = !DILocation(line: 408, column: 1, scope: !2222)
!2289 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2290)
!2290 = !{!2291, !2292, !2294, !2296, !2297, !2303, !2304, !2309, !2311, !2314, !2316}
!2291 = !DILocalVariable(name: "id", scope: !2289, file: !124, line: 437, type: !291)
!2292 = !DILocalVariable(name: "__r", scope: !2293, file: !124, line: 437, type: !291)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !124, line: 437, column: 19)
!2294 = !DILocalVariable(name: "__r", scope: !2295, file: !124, line: 437, type: !291)
!2295 = distinct !DILexicalBlock(scope: !2293, file: !124, line: 437, column: 19)
!2296 = !DILocalVariable(name: "my_cpu", scope: !2289, file: !124, line: 438, type: !270)
!2297 = !DILocalVariable(name: "_p", scope: !2298, file: !124, line: 444, type: !48)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !124, line: 444, column: 2)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !124, line: 444, column: 2)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !124, line: 444, column: 2)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !124, line: 443, column: 29)
!2302 = distinct !DILexicalBlock(scope: !2289, file: !124, line: 443, column: 9)
!2303 = !DILocalVariable(name: "_t", scope: !2298, file: !124, line: 444, type: !160)
!2304 = !DILocalVariable(name: "__r", scope: !2305, file: !124, line: 444, type: !291)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !124, line: 444, column: 2)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !124, line: 444, column: 2)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !124, line: 444, column: 2)
!2308 = distinct !DILexicalBlock(scope: !2298, file: !124, line: 444, column: 2)
!2309 = !DILocalVariable(name: "__r", scope: !2310, file: !124, line: 444, type: !291)
!2310 = distinct !DILexicalBlock(scope: !2305, file: !124, line: 444, column: 2)
!2311 = !DILocalVariable(name: "__r", scope: !2312, file: !124, line: 444, type: !291)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !124, line: 444, column: 2)
!2313 = distinct !DILexicalBlock(scope: !2307, file: !124, line: 444, column: 2)
!2314 = !DILocalVariable(name: "__r", scope: !2315, file: !124, line: 444, type: !291)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !124, line: 444, column: 2)
!2316 = !DILocalVariable(name: "_p", scope: !2317, file: !124, line: 444, type: !48)
!2317 = distinct !DILexicalBlock(scope: !2299, file: !124, line: 444, column: 2)
!2318 = !DILocation(line: 437, column: 19, scope: !2295)
!2319 = !{i32 -2147162346}
!2320 = !DILocation(line: 437, column: 19, scope: !2293)
!2321 = !DILocation(line: 437, column: 14, scope: !2289)
!2322 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 438, column: 27, scope: !2289)
!2324 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !2323)
!2325 = !DILocation(line: 438, column: 18, scope: !2289)
!2326 = !DILocation(line: 442, column: 23, scope: !2289)
!2327 = !DILocation(line: 442, column: 13, scope: !2289)
!2328 = !DILocation(line: 442, column: 21, scope: !2289)
!2329 = !DILocation(line: 443, column: 10, scope: !2302)
!2330 = !DILocation(line: 443, column: 9, scope: !2289)
!2331 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2336)
!2332 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2333, file: !2333, line: 39, type: !2334, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!2333 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!31}
!2336 = distinct !DILocation(line: 444, column: 2, scope: !2299)
!2337 = !DILocation(line: 444, column: 2, scope: !2299)
!2338 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !2343)
!2340 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2333, file: !2333, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2341)
!2341 = !{!2342}
!2342 = !DILocalVariable(name: "base", scope: !2340, file: !2333, line: 84, type: !31)
!2343 = distinct !DILocation(line: 0, scope: !2299)
!2344 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !2343)
!2345 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !2343)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !2333, line: 85, column: 9)
!2347 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !2343)
!2348 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !2343)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !2333, line: 85, column: 15)
!2350 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !2343)
!2351 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !2343)
!2352 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !2343)
!2353 = !DILocation(line: 0, scope: !2346, inlinedAt: !2343)
!2354 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !2359)
!2356 = distinct !DISubprogram(name: "preempt_disable", scope: !2333, file: !2333, line: 46, type: !2167, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2357)
!2357 = !{!2358}
!2358 = !DILocalVariable(name: "base", scope: !2356, file: !2333, line: 48, type: !31)
!2359 = distinct !DILocation(line: 0, scope: !2299)
!2360 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !2359)
!2361 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !2359)
!2362 = distinct !DILexicalBlock(scope: !2356, file: !2333, line: 49, column: 9)
!2363 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !2359)
!2364 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !2359)
!2365 = distinct !DILexicalBlock(scope: !2362, file: !2333, line: 49, column: 15)
!2366 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !2359)
!2367 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !2359)
!2368 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !2359)
!2369 = !DILocation(line: 444, column: 2, scope: !2300)
!2370 = !DILocation(line: 444, column: 2, scope: !2298)
!2371 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 444, column: 2, scope: !2298)
!2373 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2372)
!2374 = !DILocation(line: 444, column: 2, scope: !2307)
!2375 = !DILocation(line: 0, scope: !2307)
!2376 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2383)
!2378 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2333, file: !2333, line: 94, type: !2379, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!39}
!2381 = !{!2382}
!2382 = !DILocalVariable(name: "base", scope: !2378, file: !2333, line: 96, type: !31)
!2383 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2385)
!2384 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2333, file: !2333, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1022)
!2385 = distinct !DILocation(line: 0, scope: !2307)
!2386 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2383)
!2387 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2383)
!2388 = distinct !DILexicalBlock(scope: !2378, file: !2333, line: 97, column: 9)
!2389 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2383)
!2390 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2383)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !2333, line: 97, column: 15)
!2392 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2383)
!2393 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2383)
!2394 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2383)
!2395 = !DILocation(line: 444, column: 2, scope: !2308)
!2396 = !DILocation(line: 444, column: 2, scope: !2306)
!2397 = !DILocation(line: 444, column: 2, scope: !2313)
!2398 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2403)
!2400 = distinct !DISubprogram(name: "preempt_enable", scope: !2333, file: !2333, line: 57, type: !2167, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2401)
!2401 = !{!2402}
!2402 = !DILocalVariable(name: "base", scope: !2400, file: !2333, line: 59, type: !31)
!2403 = distinct !DILocation(line: 444, column: 2, scope: !2298)
!2404 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2403)
!2405 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2403)
!2406 = distinct !DILexicalBlock(scope: !2400, file: !2333, line: 60, column: 9)
!2407 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2403)
!2408 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2403)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !2333, line: 60, column: 15)
!2410 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2403)
!2411 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2403)
!2412 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2403)
!2413 = !DILocation(line: 444, column: 2, scope: !2317)
!2414 = !DILocation(line: 444, column: 2, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !124, line: 444, column: 2)
!2416 = distinct !DILexicalBlock(scope: !2317, file: !124, line: 444, column: 2)
!2417 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 0, scope: !2415)
!2421 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2419)
!2422 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2419)
!2423 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2419)
!2424 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2419)
!2425 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2419)
!2426 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2419)
!2427 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2419)
!2428 = !DILocation(line: 0, scope: !2415)
!2429 = !DILocation(line: 444, column: 2, scope: !2416)
!2430 = !DILocation(line: 444, column: 2, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2415, file: !124, line: 444, column: 2)
!2432 = !DILocation(line: 444, column: 2, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2415, file: !124, line: 444, column: 2)
!2434 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 444, column: 2, scope: !2317)
!2437 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2436)
!2438 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2436)
!2439 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2436)
!2440 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2436)
!2441 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2436)
!2442 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2436)
!2443 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2436)
!2444 = !DILocation(line: 0, scope: !2289)
!2445 = !DILocation(line: 449, column: 1, scope: !2289)
!2446 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !2447, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!280}
!2449 = !{!2450, !2451, !2453, !2455, !2457, !2463, !2464, !2469, !2471, !2474, !2476}
!2450 = !DILocalVariable(name: "state", scope: !2446, file: !124, line: 412, type: !280)
!2451 = !DILocalVariable(name: "p", scope: !2452, file: !124, line: 412, type: !31)
!2452 = distinct !DILexicalBlock(scope: !2446, file: !124, line: 412, column: 74)
!2453 = !DILocalVariable(name: "__r", scope: !2454, file: !124, line: 412, type: !291)
!2454 = distinct !DILexicalBlock(scope: !2452, file: !124, line: 412, column: 74)
!2455 = !DILocalVariable(name: "__r", scope: !2456, file: !124, line: 412, type: !291)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !124, line: 412, column: 74)
!2457 = !DILocalVariable(name: "_p", scope: !2458, file: !124, line: 415, type: !48)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !124, line: 415, column: 9)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !124, line: 415, column: 9)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !124, line: 415, column: 9)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !124, line: 414, column: 17)
!2462 = distinct !DILexicalBlock(scope: !2446, file: !124, line: 414, column: 9)
!2463 = !DILocalVariable(name: "_t", scope: !2458, file: !124, line: 415, type: !160)
!2464 = !DILocalVariable(name: "__r", scope: !2465, file: !124, line: 415, type: !291)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !124, line: 415, column: 9)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !124, line: 415, column: 9)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !124, line: 415, column: 9)
!2468 = distinct !DILexicalBlock(scope: !2458, file: !124, line: 415, column: 9)
!2469 = !DILocalVariable(name: "__r", scope: !2470, file: !124, line: 415, type: !291)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !124, line: 415, column: 9)
!2471 = !DILocalVariable(name: "__r", scope: !2472, file: !124, line: 415, type: !291)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !124, line: 415, column: 9)
!2473 = distinct !DILexicalBlock(scope: !2467, file: !124, line: 415, column: 9)
!2474 = !DILocalVariable(name: "__r", scope: !2475, file: !124, line: 415, type: !291)
!2475 = distinct !DILexicalBlock(scope: !2472, file: !124, line: 415, column: 9)
!2476 = !DILocalVariable(name: "_p", scope: !2477, file: !124, line: 415, type: !48)
!2477 = distinct !DILexicalBlock(scope: !2459, file: !124, line: 415, column: 9)
!2478 = !DILocation(line: 412, column: 74, scope: !2456)
!2479 = !{i32 -2147173855}
!2480 = !DILocation(line: 412, column: 74, scope: !2454)
!2481 = !DILocation(line: 412, column: 74, scope: !2452)
!2482 = !DILocation(line: 414, column: 10, scope: !2462)
!2483 = !DILocation(line: 414, column: 9, scope: !2446)
!2484 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 415, column: 9, scope: !2459)
!2486 = !DILocation(line: 415, column: 9, scope: !2459)
!2487 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 0, scope: !2459)
!2490 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !2489)
!2491 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !2489)
!2492 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !2489)
!2493 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !2489)
!2494 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !2489)
!2495 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !2489)
!2496 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !2489)
!2497 = !DILocation(line: 0, scope: !2346, inlinedAt: !2489)
!2498 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 0, scope: !2459)
!2501 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !2500)
!2502 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !2500)
!2503 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !2500)
!2504 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !2500)
!2505 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !2500)
!2506 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !2500)
!2507 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !2500)
!2508 = !DILocation(line: 415, column: 9, scope: !2460)
!2509 = !DILocation(line: 415, column: 9, scope: !2458)
!2510 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 415, column: 9, scope: !2458)
!2512 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2511)
!2513 = !DILocation(line: 415, column: 9, scope: !2467)
!2514 = !DILocation(line: 0, scope: !2467)
!2515 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 0, scope: !2467)
!2519 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2517)
!2520 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2517)
!2521 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2517)
!2522 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2517)
!2523 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2517)
!2524 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2517)
!2525 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2517)
!2526 = !DILocation(line: 415, column: 9, scope: !2468)
!2527 = !DILocation(line: 415, column: 9, scope: !2466)
!2528 = !DILocation(line: 415, column: 9, scope: !2473)
!2529 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 415, column: 9, scope: !2458)
!2532 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2531)
!2533 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2531)
!2534 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2531)
!2535 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2531)
!2536 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2531)
!2537 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2531)
!2538 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2531)
!2539 = !DILocation(line: 415, column: 9, scope: !2477)
!2540 = !DILocation(line: 415, column: 9, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !124, line: 415, column: 9)
!2542 = distinct !DILexicalBlock(scope: !2477, file: !124, line: 415, column: 9)
!2543 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 0, scope: !2541)
!2547 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2545)
!2548 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2545)
!2549 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2545)
!2550 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2545)
!2551 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2545)
!2552 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2545)
!2553 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2545)
!2554 = !DILocation(line: 0, scope: !2541)
!2555 = !DILocation(line: 415, column: 9, scope: !2542)
!2556 = !DILocation(line: 415, column: 9, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2541, file: !124, line: 415, column: 9)
!2558 = !DILocation(line: 415, column: 9, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2541, file: !124, line: 415, column: 9)
!2560 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 415, column: 9, scope: !2477)
!2563 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2562)
!2564 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2562)
!2565 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2562)
!2566 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2562)
!2567 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2562)
!2568 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2562)
!2569 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2562)
!2570 = !DILocation(line: 412, column: 43, scope: !2446)
!2571 = !DILocation(line: 412, column: 35, scope: !2446)
!2572 = !DILocation(line: 419, column: 2, scope: !2446)
!2573 = !DILocation(line: 421, column: 27, scope: !2446)
!2574 = !DILocation(line: 421, column: 5, scope: !2446)
!2575 = !DILocation(line: 424, column: 29, scope: !2446)
!2576 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 424, column: 5, scope: !2446)
!2578 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2577)
!2579 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2577)
!2580 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2577)
!2581 = !DILocation(line: 426, column: 5, scope: !2446)
!2582 = !DILocation(line: 429, column: 5, scope: !2446)
!2583 = !DILocation(line: 431, column: 5, scope: !2446)
!2584 = !DILocation(line: 0, scope: !2446)
!2585 = !DILocation(line: 432, column: 1, scope: !2446)
!2586 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2587)
!2587 = !{!2588, !2589, !2593, !2594, !2599, !2601, !2604, !2606, !2608, !2614, !2615, !2620, !2622, !2625, !2627}
!2588 = !DILocalVariable(name: "my_cpu", scope: !2586, file: !124, line: 454, type: !270)
!2589 = !DILocalVariable(name: "_p", scope: !2590, file: !124, line: 456, type: !48)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !124, line: 456, column: 5)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !124, line: 456, column: 5)
!2592 = distinct !DILexicalBlock(scope: !2586, file: !124, line: 456, column: 5)
!2593 = !DILocalVariable(name: "_t", scope: !2590, file: !124, line: 456, type: !160)
!2594 = !DILocalVariable(name: "__r", scope: !2595, file: !124, line: 456, type: !291)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !124, line: 456, column: 5)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !124, line: 456, column: 5)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !124, line: 456, column: 5)
!2598 = distinct !DILexicalBlock(scope: !2590, file: !124, line: 456, column: 5)
!2599 = !DILocalVariable(name: "__r", scope: !2600, file: !124, line: 456, type: !291)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !124, line: 456, column: 5)
!2601 = !DILocalVariable(name: "__r", scope: !2602, file: !124, line: 456, type: !291)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !124, line: 456, column: 5)
!2603 = distinct !DILexicalBlock(scope: !2597, file: !124, line: 456, column: 5)
!2604 = !DILocalVariable(name: "__r", scope: !2605, file: !124, line: 456, type: !291)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !124, line: 456, column: 5)
!2606 = !DILocalVariable(name: "_p", scope: !2607, file: !124, line: 456, type: !48)
!2607 = distinct !DILexicalBlock(scope: !2591, file: !124, line: 456, column: 5)
!2608 = !DILocalVariable(name: "_p", scope: !2609, file: !124, line: 464, type: !48)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !124, line: 464, column: 2)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !124, line: 464, column: 2)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !124, line: 464, column: 2)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !124, line: 463, column: 29)
!2613 = distinct !DILexicalBlock(scope: !2586, file: !124, line: 463, column: 9)
!2614 = !DILocalVariable(name: "_t", scope: !2609, file: !124, line: 464, type: !160)
!2615 = !DILocalVariable(name: "__r", scope: !2616, file: !124, line: 464, type: !291)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !124, line: 464, column: 2)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !124, line: 464, column: 2)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !124, line: 464, column: 2)
!2619 = distinct !DILexicalBlock(scope: !2609, file: !124, line: 464, column: 2)
!2620 = !DILocalVariable(name: "__r", scope: !2621, file: !124, line: 464, type: !291)
!2621 = distinct !DILexicalBlock(scope: !2616, file: !124, line: 464, column: 2)
!2622 = !DILocalVariable(name: "__r", scope: !2623, file: !124, line: 464, type: !291)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !124, line: 464, column: 2)
!2624 = distinct !DILexicalBlock(scope: !2618, file: !124, line: 464, column: 2)
!2625 = !DILocalVariable(name: "__r", scope: !2626, file: !124, line: 464, type: !291)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !124, line: 464, column: 2)
!2627 = !DILocalVariable(name: "_p", scope: !2628, file: !124, line: 464, type: !48)
!2628 = distinct !DILexicalBlock(scope: !2610, file: !124, line: 464, column: 2)
!2629 = !DILocation(line: 454, column: 88, scope: !2586)
!2630 = !DILocation(line: 454, column: 27, scope: !2586)
!2631 = !DILocation(line: 454, column: 18, scope: !2586)
!2632 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 456, column: 5, scope: !2591)
!2634 = !DILocation(line: 456, column: 5, scope: !2591)
!2635 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 0, scope: !2591)
!2638 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !2637)
!2639 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !2637)
!2640 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !2637)
!2641 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !2637)
!2642 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !2637)
!2643 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !2637)
!2644 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !2637)
!2645 = !DILocation(line: 0, scope: !2346, inlinedAt: !2637)
!2646 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 0, scope: !2591)
!2649 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !2648)
!2650 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !2648)
!2651 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !2648)
!2652 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !2648)
!2653 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !2648)
!2654 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !2648)
!2655 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !2648)
!2656 = !DILocation(line: 456, column: 5, scope: !2592)
!2657 = !DILocation(line: 456, column: 5, scope: !2590)
!2658 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 456, column: 5, scope: !2590)
!2660 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2659)
!2661 = !DILocation(line: 456, column: 5, scope: !2597)
!2662 = !DILocation(line: 0, scope: !2597)
!2663 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 0, scope: !2597)
!2667 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2665)
!2668 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2665)
!2669 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2665)
!2670 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2665)
!2671 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2665)
!2672 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2665)
!2673 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2665)
!2674 = !DILocation(line: 456, column: 5, scope: !2598)
!2675 = !DILocation(line: 456, column: 5, scope: !2596)
!2676 = !DILocation(line: 456, column: 5, scope: !2603)
!2677 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 456, column: 5, scope: !2590)
!2680 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2679)
!2681 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2679)
!2682 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2679)
!2683 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2679)
!2684 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2679)
!2685 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2679)
!2686 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2679)
!2687 = !DILocation(line: 456, column: 5, scope: !2607)
!2688 = !DILocation(line: 456, column: 5, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !124, line: 456, column: 5)
!2690 = distinct !DILexicalBlock(scope: !2607, file: !124, line: 456, column: 5)
!2691 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 0, scope: !2689)
!2695 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2693)
!2696 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2693)
!2697 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2693)
!2698 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2693)
!2699 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2693)
!2700 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2693)
!2701 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2693)
!2702 = !DILocation(line: 0, scope: !2689)
!2703 = !DILocation(line: 456, column: 5, scope: !2690)
!2704 = !DILocation(line: 456, column: 5, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2689, file: !124, line: 456, column: 5)
!2706 = !DILocation(line: 456, column: 5, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2689, file: !124, line: 456, column: 5)
!2708 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 456, column: 5, scope: !2607)
!2711 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2710)
!2712 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2710)
!2713 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2710)
!2714 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2710)
!2715 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2710)
!2716 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2710)
!2717 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2710)
!2718 = !DILocation(line: 462, column: 23, scope: !2586)
!2719 = !DILocation(line: 462, column: 13, scope: !2586)
!2720 = !DILocation(line: 462, column: 21, scope: !2586)
!2721 = !DILocation(line: 463, column: 10, scope: !2613)
!2722 = !DILocation(line: 463, column: 9, scope: !2586)
!2723 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 464, column: 2, scope: !2610)
!2725 = !DILocation(line: 464, column: 2, scope: !2610)
!2726 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 0, scope: !2610)
!2729 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !2728)
!2730 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !2728)
!2731 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !2728)
!2732 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !2728)
!2733 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !2728)
!2734 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !2728)
!2735 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !2728)
!2736 = !DILocation(line: 0, scope: !2346, inlinedAt: !2728)
!2737 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 0, scope: !2610)
!2740 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !2739)
!2741 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !2739)
!2742 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !2739)
!2743 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !2739)
!2744 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !2739)
!2745 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !2739)
!2746 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !2739)
!2747 = !DILocation(line: 464, column: 2, scope: !2611)
!2748 = !DILocation(line: 464, column: 2, scope: !2609)
!2749 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 464, column: 2, scope: !2609)
!2751 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2750)
!2752 = !DILocation(line: 464, column: 2, scope: !2618)
!2753 = !DILocation(line: 0, scope: !2618)
!2754 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 0, scope: !2618)
!2758 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2756)
!2759 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2756)
!2760 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2756)
!2761 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2756)
!2762 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2756)
!2763 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2756)
!2764 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2756)
!2765 = !DILocation(line: 464, column: 2, scope: !2619)
!2766 = !DILocation(line: 464, column: 2, scope: !2617)
!2767 = !DILocation(line: 464, column: 2, scope: !2624)
!2768 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 464, column: 2, scope: !2609)
!2771 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2770)
!2772 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2770)
!2773 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2770)
!2774 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2770)
!2775 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2770)
!2776 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2770)
!2777 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2770)
!2778 = !DILocation(line: 464, column: 2, scope: !2628)
!2779 = !DILocation(line: 464, column: 2, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !124, line: 464, column: 2)
!2781 = distinct !DILexicalBlock(scope: !2628, file: !124, line: 464, column: 2)
!2782 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 0, scope: !2780)
!2786 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2784)
!2787 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2784)
!2788 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2784)
!2789 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2784)
!2790 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2784)
!2791 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2784)
!2792 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2784)
!2793 = !DILocation(line: 0, scope: !2780)
!2794 = !DILocation(line: 464, column: 2, scope: !2781)
!2795 = !DILocation(line: 464, column: 2, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2780, file: !124, line: 464, column: 2)
!2797 = !DILocation(line: 464, column: 2, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2780, file: !124, line: 464, column: 2)
!2799 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 464, column: 2, scope: !2628)
!2802 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2801)
!2803 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2801)
!2804 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2801)
!2805 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2801)
!2806 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2801)
!2807 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2801)
!2808 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2801)
!2809 = !DILocation(line: 0, scope: !2586)
!2810 = !DILocation(line: 469, column: 1, scope: !2586)
!2811 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2812)
!2812 = !{!2813, !2814, !2815, !2821, !2822, !2827, !2829, !2832, !2834, !2836, !2862, !2868, !2869, !2874, !2876, !2879, !2881, !2883, !2884, !2890, !2891, !2896, !2898, !2901, !2903, !2905, !2906, !2912, !2913, !2918, !2920, !2923, !2925}
!2813 = !DILocalVariable(name: "in", arg: 1, scope: !2811, file: !124, line: 511, type: !31)
!2814 = !DILocalVariable(name: "out", arg: 2, scope: !2811, file: !124, line: 511, type: !75)
!2815 = !DILocalVariable(name: "_p", scope: !2816, file: !124, line: 515, type: !48)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !124, line: 515, column: 5)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !124, line: 515, column: 5)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !124, line: 515, column: 5)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !124, line: 514, column: 51)
!2820 = distinct !DILexicalBlock(scope: !2811, file: !124, line: 514, column: 7)
!2821 = !DILocalVariable(name: "_t", scope: !2816, file: !124, line: 515, type: !160)
!2822 = !DILocalVariable(name: "__r", scope: !2823, file: !124, line: 515, type: !291)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !124, line: 515, column: 5)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !124, line: 515, column: 5)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !124, line: 515, column: 5)
!2826 = distinct !DILexicalBlock(scope: !2816, file: !124, line: 515, column: 5)
!2827 = !DILocalVariable(name: "__r", scope: !2828, file: !124, line: 515, type: !291)
!2828 = distinct !DILexicalBlock(scope: !2823, file: !124, line: 515, column: 5)
!2829 = !DILocalVariable(name: "__r", scope: !2830, file: !124, line: 515, type: !291)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !124, line: 515, column: 5)
!2831 = distinct !DILexicalBlock(scope: !2825, file: !124, line: 515, column: 5)
!2832 = !DILocalVariable(name: "__r", scope: !2833, file: !124, line: 515, type: !291)
!2833 = distinct !DILexicalBlock(scope: !2830, file: !124, line: 515, column: 5)
!2834 = !DILocalVariable(name: "_p", scope: !2835, file: !124, line: 515, type: !48)
!2835 = distinct !DILexicalBlock(scope: !2817, file: !124, line: 515, column: 5)
!2836 = !DILocalVariable(name: "c", scope: !2811, file: !124, line: 520, type: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !2838)
!2838 = !{!2839, !2841, !2842}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2837, file: !86, line: 68, baseType: !2840, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2837, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !86, line: 80, baseType: !2843, size: 256, offset: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !86, line: 80, size: 256, elements: !2844)
!2844 = !{!2845, !2851, !2858}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2843, file: !86, line: 81, baseType: !2846, size: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2846, file: !86, line: 50, baseType: !25, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2846, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2846, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2843, file: !86, line: 82, baseType: !2852, size: 256)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !2853)
!2853 = !{!2854, !2855, !2856, !2857}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2852, file: !86, line: 56, baseType: !25, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2852, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2852, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2852, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2843, file: !86, line: 83, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !2860)
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2859, file: !86, line: 63, baseType: !25, size: 64)
!2862 = !DILocalVariable(name: "_p", scope: !2863, file: !124, line: 525, type: !48)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !124, line: 525, column: 5)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !124, line: 525, column: 5)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !124, line: 525, column: 5)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !124, line: 524, column: 47)
!2867 = distinct !DILexicalBlock(scope: !2811, file: !124, line: 524, column: 7)
!2868 = !DILocalVariable(name: "_t", scope: !2863, file: !124, line: 525, type: !160)
!2869 = !DILocalVariable(name: "__r", scope: !2870, file: !124, line: 525, type: !291)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !124, line: 525, column: 5)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !124, line: 525, column: 5)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !124, line: 525, column: 5)
!2873 = distinct !DILexicalBlock(scope: !2863, file: !124, line: 525, column: 5)
!2874 = !DILocalVariable(name: "__r", scope: !2875, file: !124, line: 525, type: !291)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !124, line: 525, column: 5)
!2876 = !DILocalVariable(name: "__r", scope: !2877, file: !124, line: 525, type: !291)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !124, line: 525, column: 5)
!2878 = distinct !DILexicalBlock(scope: !2872, file: !124, line: 525, column: 5)
!2879 = !DILocalVariable(name: "__r", scope: !2880, file: !124, line: 525, type: !291)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !124, line: 525, column: 5)
!2881 = !DILocalVariable(name: "_p", scope: !2882, file: !124, line: 525, type: !48)
!2882 = distinct !DILexicalBlock(scope: !2864, file: !124, line: 525, column: 5)
!2883 = !DILocalVariable(name: "state", scope: !2811, file: !124, line: 534, type: !1033)
!2884 = !DILocalVariable(name: "_p", scope: !2885, file: !124, line: 536, type: !48)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !124, line: 536, column: 5)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !124, line: 536, column: 5)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !124, line: 536, column: 5)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !124, line: 535, column: 17)
!2889 = distinct !DILexicalBlock(scope: !2811, file: !124, line: 535, column: 7)
!2890 = !DILocalVariable(name: "_t", scope: !2885, file: !124, line: 536, type: !160)
!2891 = !DILocalVariable(name: "__r", scope: !2892, file: !124, line: 536, type: !291)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !124, line: 536, column: 5)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !124, line: 536, column: 5)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !124, line: 536, column: 5)
!2895 = distinct !DILexicalBlock(scope: !2885, file: !124, line: 536, column: 5)
!2896 = !DILocalVariable(name: "__r", scope: !2897, file: !124, line: 536, type: !291)
!2897 = distinct !DILexicalBlock(scope: !2892, file: !124, line: 536, column: 5)
!2898 = !DILocalVariable(name: "__r", scope: !2899, file: !124, line: 536, type: !291)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !124, line: 536, column: 5)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !124, line: 536, column: 5)
!2901 = !DILocalVariable(name: "__r", scope: !2902, file: !124, line: 536, type: !291)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !124, line: 536, column: 5)
!2903 = !DILocalVariable(name: "_p", scope: !2904, file: !124, line: 536, type: !48)
!2904 = distinct !DILexicalBlock(scope: !2886, file: !124, line: 536, column: 5)
!2905 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2811, file: !124, line: 541, type: !240)
!2906 = !DILocalVariable(name: "_p", scope: !2907, file: !124, line: 543, type: !48)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !124, line: 543, column: 5)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !124, line: 543, column: 5)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !124, line: 543, column: 5)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !124, line: 542, column: 71)
!2911 = distinct !DILexicalBlock(scope: !2811, file: !124, line: 542, column: 7)
!2912 = !DILocalVariable(name: "_t", scope: !2907, file: !124, line: 543, type: !160)
!2913 = !DILocalVariable(name: "__r", scope: !2914, file: !124, line: 543, type: !291)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !124, line: 543, column: 5)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !124, line: 543, column: 5)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !124, line: 543, column: 5)
!2917 = distinct !DILexicalBlock(scope: !2907, file: !124, line: 543, column: 5)
!2918 = !DILocalVariable(name: "__r", scope: !2919, file: !124, line: 543, type: !291)
!2919 = distinct !DILexicalBlock(scope: !2914, file: !124, line: 543, column: 5)
!2920 = !DILocalVariable(name: "__r", scope: !2921, file: !124, line: 543, type: !291)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !124, line: 543, column: 5)
!2922 = distinct !DILexicalBlock(scope: !2916, file: !124, line: 543, column: 5)
!2923 = !DILocalVariable(name: "__r", scope: !2924, file: !124, line: 543, type: !291)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !124, line: 543, column: 5)
!2925 = !DILocalVariable(name: "_p", scope: !2926, file: !124, line: 543, type: !48)
!2926 = distinct !DILexicalBlock(scope: !2908, file: !124, line: 543, column: 5)
!2927 = !DILocation(line: 511, column: 27, scope: !2811)
!2928 = !DILocation(line: 511, column: 38, scope: !2811)
!2929 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 514, column: 22, scope: !2820)
!2931 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2930)
!2932 = !DILocation(line: 514, column: 22, scope: !2820)
!2933 = !DILocation(line: 514, column: 7, scope: !2820)
!2934 = !DILocation(line: 514, column: 7, scope: !2811)
!2935 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 515, column: 5, scope: !2817)
!2937 = !DILocation(line: 515, column: 5, scope: !2817)
!2938 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 0, scope: !2817)
!2941 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !2940)
!2942 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !2940)
!2943 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !2940)
!2944 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !2940)
!2945 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !2940)
!2946 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !2940)
!2947 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !2940)
!2948 = !DILocation(line: 0, scope: !2346, inlinedAt: !2940)
!2949 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 0, scope: !2817)
!2952 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !2951)
!2953 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !2951)
!2954 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !2951)
!2955 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !2951)
!2956 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !2951)
!2957 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !2951)
!2958 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !2951)
!2959 = !DILocation(line: 515, column: 5, scope: !2818)
!2960 = !DILocation(line: 515, column: 5, scope: !2816)
!2961 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 515, column: 5, scope: !2816)
!2963 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2962)
!2964 = !DILocation(line: 515, column: 5, scope: !2825)
!2965 = !DILocation(line: 0, scope: !2825)
!2966 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 0, scope: !2825)
!2970 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2968)
!2971 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2968)
!2972 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2968)
!2973 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2968)
!2974 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2968)
!2975 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2968)
!2976 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2968)
!2977 = !DILocation(line: 515, column: 5, scope: !2826)
!2978 = !DILocation(line: 515, column: 5, scope: !2824)
!2979 = !DILocation(line: 515, column: 5, scope: !2831)
!2980 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 515, column: 5, scope: !2816)
!2983 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !2982)
!2984 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !2982)
!2985 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !2982)
!2986 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !2982)
!2987 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !2982)
!2988 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !2982)
!2989 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !2982)
!2990 = !DILocation(line: 515, column: 5, scope: !2835)
!2991 = !DILocation(line: 515, column: 5, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !124, line: 515, column: 5)
!2993 = distinct !DILexicalBlock(scope: !2835, file: !124, line: 515, column: 5)
!2994 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 0, scope: !2992)
!2998 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !2996)
!2999 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !2996)
!3000 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !2996)
!3001 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !2996)
!3002 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !2996)
!3003 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !2996)
!3004 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !2996)
!3005 = !DILocation(line: 0, scope: !2992)
!3006 = !DILocation(line: 515, column: 5, scope: !2993)
!3007 = !DILocation(line: 515, column: 5, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2992, file: !124, line: 515, column: 5)
!3009 = !DILocation(line: 515, column: 5, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2992, file: !124, line: 515, column: 5)
!3011 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 515, column: 5, scope: !2835)
!3014 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3013)
!3015 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3013)
!3016 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3013)
!3017 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3013)
!3018 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3013)
!3019 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3013)
!3020 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3013)
!3021 = !DILocation(line: 520, column: 3, scope: !2811)
!3022 = !DILocation(line: 520, column: 31, scope: !2811)
!3023 = !DILocation(line: 524, column: 7, scope: !2867)
!3024 = !DILocation(line: 0, scope: !2811)
!3025 = !DILocation(line: 524, column: 7, scope: !2811)
!3026 = !DILocation(line: 525, column: 5, scope: !2864)
!3027 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 0, scope: !2864)
!3030 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !3029)
!3031 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !3029)
!3032 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !3029)
!3033 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !3029)
!3034 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !3029)
!3035 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !3029)
!3036 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !3029)
!3037 = !DILocation(line: 0, scope: !2346, inlinedAt: !3029)
!3038 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 0, scope: !2864)
!3041 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !3040)
!3042 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !3040)
!3043 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !3040)
!3044 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !3040)
!3045 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !3040)
!3046 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !3040)
!3047 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !3040)
!3048 = !DILocation(line: 525, column: 5, scope: !2865)
!3049 = !DILocation(line: 525, column: 5, scope: !2863)
!3050 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 525, column: 5, scope: !2863)
!3052 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3051)
!3053 = !DILocation(line: 525, column: 5, scope: !2872)
!3054 = !DILocation(line: 0, scope: !2872)
!3055 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 0, scope: !2872)
!3059 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3057)
!3060 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3057)
!3061 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3057)
!3062 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3057)
!3063 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3057)
!3064 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3057)
!3065 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3057)
!3066 = !DILocation(line: 525, column: 5, scope: !2873)
!3067 = !DILocation(line: 525, column: 5, scope: !2871)
!3068 = !DILocation(line: 525, column: 5, scope: !2878)
!3069 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 525, column: 5, scope: !2863)
!3072 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3071)
!3073 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3071)
!3074 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3071)
!3075 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3071)
!3076 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3071)
!3077 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3071)
!3078 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3071)
!3079 = !DILocation(line: 525, column: 5, scope: !2882)
!3080 = !DILocation(line: 525, column: 5, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !124, line: 525, column: 5)
!3082 = distinct !DILexicalBlock(scope: !2882, file: !124, line: 525, column: 5)
!3083 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 0, scope: !3081)
!3087 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3085)
!3088 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3085)
!3089 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3085)
!3090 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3085)
!3091 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3085)
!3092 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3085)
!3093 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3085)
!3094 = !DILocation(line: 0, scope: !3081)
!3095 = !DILocation(line: 525, column: 5, scope: !3082)
!3096 = !DILocation(line: 525, column: 5, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3081, file: !124, line: 525, column: 5)
!3098 = !DILocation(line: 525, column: 5, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3081, file: !124, line: 525, column: 5)
!3100 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 525, column: 5, scope: !2882)
!3103 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3102)
!3104 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3102)
!3105 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3102)
!3106 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3102)
!3107 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3102)
!3108 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3102)
!3109 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3102)
!3110 = !DILocation(line: 526, column: 5, scope: !2866)
!3111 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 534, column: 24, scope: !2811)
!3114 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3113)
!3115 = !DILocation(line: 534, column: 16, scope: !2811)
!3116 = !DILocation(line: 535, column: 8, scope: !2889)
!3117 = !DILocation(line: 535, column: 7, scope: !2811)
!3118 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 536, column: 5, scope: !2886)
!3120 = !DILocation(line: 536, column: 5, scope: !2886)
!3121 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 0, scope: !2886)
!3124 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !3123)
!3125 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !3123)
!3126 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !3123)
!3127 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !3123)
!3128 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !3123)
!3129 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !3123)
!3130 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !3123)
!3131 = !DILocation(line: 0, scope: !2346, inlinedAt: !3123)
!3132 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 0, scope: !2886)
!3135 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !3134)
!3136 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !3134)
!3137 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !3134)
!3138 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !3134)
!3139 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !3134)
!3140 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !3134)
!3141 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !3134)
!3142 = !DILocation(line: 536, column: 5, scope: !2887)
!3143 = !DILocation(line: 536, column: 5, scope: !2885)
!3144 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 536, column: 5, scope: !2885)
!3146 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3145)
!3147 = !DILocation(line: 536, column: 5, scope: !2894)
!3148 = !DILocation(line: 0, scope: !2894)
!3149 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 0, scope: !2894)
!3153 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3151)
!3154 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3151)
!3155 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3151)
!3156 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3151)
!3157 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3151)
!3158 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3151)
!3159 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3151)
!3160 = !DILocation(line: 536, column: 5, scope: !2895)
!3161 = !DILocation(line: 536, column: 5, scope: !2893)
!3162 = !DILocation(line: 536, column: 5, scope: !2900)
!3163 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 536, column: 5, scope: !2885)
!3166 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3165)
!3167 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3165)
!3168 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3165)
!3169 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3165)
!3170 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3165)
!3171 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3165)
!3172 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3165)
!3173 = !DILocation(line: 536, column: 5, scope: !2904)
!3174 = !DILocation(line: 536, column: 5, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !124, line: 536, column: 5)
!3176 = distinct !DILexicalBlock(scope: !2904, file: !124, line: 536, column: 5)
!3177 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 0, scope: !3175)
!3181 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3179)
!3182 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3179)
!3183 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3179)
!3184 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3179)
!3185 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3179)
!3186 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3179)
!3187 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3179)
!3188 = !DILocation(line: 0, scope: !3175)
!3189 = !DILocation(line: 536, column: 5, scope: !3176)
!3190 = !DILocation(line: 536, column: 5, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3175, file: !124, line: 536, column: 5)
!3192 = !DILocation(line: 536, column: 5, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3175, file: !124, line: 536, column: 5)
!3194 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 536, column: 5, scope: !2904)
!3197 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3196)
!3198 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3196)
!3199 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3196)
!3200 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3196)
!3201 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3196)
!3202 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3196)
!3203 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3196)
!3204 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 538, column: 25, scope: !2811)
!3206 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3205)
!3207 = !DILocation(line: 538, column: 10, scope: !2811)
!3208 = !DILocation(line: 538, column: 23, scope: !2811)
!3209 = !DILocation(line: 541, column: 3, scope: !2811)
!3210 = !DILocation(line: 541, column: 15, scope: !2811)
!3211 = !DILocation(line: 542, column: 7, scope: !2911)
!3212 = !DILocation(line: 542, column: 66, scope: !2911)
!3213 = !DILocation(line: 542, column: 7, scope: !2811)
!3214 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 543, column: 5, scope: !2908)
!3216 = !DILocation(line: 543, column: 5, scope: !2908)
!3217 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 0, scope: !2908)
!3220 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !3219)
!3221 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !3219)
!3222 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !3219)
!3223 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !3219)
!3224 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !3219)
!3225 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !3219)
!3226 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !3219)
!3227 = !DILocation(line: 0, scope: !2346, inlinedAt: !3219)
!3228 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 0, scope: !2908)
!3231 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !3230)
!3232 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !3230)
!3233 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !3230)
!3234 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !3230)
!3235 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !3230)
!3236 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !3230)
!3237 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !3230)
!3238 = !DILocation(line: 543, column: 5, scope: !2909)
!3239 = !DILocation(line: 543, column: 5, scope: !2907)
!3240 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 543, column: 5, scope: !2907)
!3242 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3241)
!3243 = !DILocation(line: 543, column: 5, scope: !2916)
!3244 = !DILocation(line: 0, scope: !2916)
!3245 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 0, scope: !2916)
!3249 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3247)
!3250 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3247)
!3251 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3247)
!3252 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3247)
!3253 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3247)
!3254 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3247)
!3255 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3247)
!3256 = !DILocation(line: 543, column: 5, scope: !2917)
!3257 = !DILocation(line: 543, column: 5, scope: !2915)
!3258 = !DILocation(line: 543, column: 5, scope: !2922)
!3259 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 543, column: 5, scope: !2907)
!3262 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3261)
!3263 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3261)
!3264 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3261)
!3265 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3261)
!3266 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3261)
!3267 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3261)
!3268 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3261)
!3269 = !DILocation(line: 543, column: 5, scope: !2926)
!3270 = !DILocation(line: 543, column: 5, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !124, line: 543, column: 5)
!3272 = distinct !DILexicalBlock(scope: !2926, file: !124, line: 543, column: 5)
!3273 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 0, scope: !3271)
!3277 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3275)
!3278 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3275)
!3279 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3275)
!3280 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3275)
!3281 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3275)
!3282 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3275)
!3283 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3275)
!3284 = !DILocation(line: 0, scope: !3271)
!3285 = !DILocation(line: 543, column: 5, scope: !3272)
!3286 = !DILocation(line: 543, column: 5, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3271, file: !124, line: 543, column: 5)
!3288 = !DILocation(line: 543, column: 5, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3271, file: !124, line: 543, column: 5)
!3290 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 543, column: 5, scope: !2926)
!3293 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3292)
!3294 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3292)
!3295 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3292)
!3296 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3292)
!3297 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3292)
!3298 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3292)
!3299 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3292)
!3300 = !DILocation(line: 547, column: 23, scope: !2811)
!3301 = !DILocation(line: 547, column: 10, scope: !2811)
!3302 = !DILocation(line: 547, column: 21, scope: !2811)
!3303 = !DILocation(line: 548, column: 10, scope: !2811)
!3304 = !DILocation(line: 548, column: 21, scope: !2811)
!3305 = !DILocation(line: 551, column: 3, scope: !2811)
!3306 = !DILocation(line: 551, column: 19, scope: !2811)
!3307 = !DILocation(line: 551, column: 27, scope: !2811)
!3308 = !DILocation(line: 198, column: 33, scope: !1933, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 554, column: 3, scope: !2811)
!3310 = !DILocation(line: 202, column: 9, scope: !1933, inlinedAt: !3309)
!3311 = !DILocation(line: 202, column: 19, scope: !1933, inlinedAt: !3309)
!3312 = !DILocation(line: 202, column: 32, scope: !1933, inlinedAt: !3309)
!3313 = !DILocation(line: 202, column: 3, scope: !1933, inlinedAt: !3309)
!3314 = !DILocation(line: 208, column: 3, scope: !1933, inlinedAt: !3309)
!3315 = !DILocation(line: 557, column: 1, scope: !2811)
!3316 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3317)
!3317 = !{!3318, !3319}
!3318 = !DILocalVariable(name: "in", arg: 1, scope: !3316, file: !124, line: 479, type: !31)
!3319 = !DILocalVariable(name: "out", arg: 2, scope: !3316, file: !124, line: 479, type: !75)
!3320 = !DILocation(line: 479, column: 35, scope: !3316)
!3321 = !DILocation(line: 479, column: 46, scope: !3316)
!3322 = !DILocation(line: 481, column: 3, scope: !3316)
!3323 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 704, column: 7, scope: !1038, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 489, column: 5, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3316, file: !124, line: 481, column: 13)
!3329 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3324)
!3330 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3325)
!3331 = !DILocation(line: 98, column: 30, scope: !1036, inlinedAt: !3326)
!3332 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 704, column: 30, scope: !1038, inlinedAt: !3327)
!3334 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3333)
!3335 = !DILocation(line: 704, column: 27, scope: !1038, inlinedAt: !3327)
!3336 = !DILocation(line: 704, column: 7, scope: !1039, inlinedAt: !3327)
!3337 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 708, column: 22, scope: !1039, inlinedAt: !3327)
!3342 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3338)
!3343 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3339)
!3344 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !3340)
!3345 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !3341)
!3346 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !3341)
!3347 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !3341)
!3349 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !3348)
!3350 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !3348)
!3351 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !3341)
!3352 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !3341)
!3353 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !3341)
!3354 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !3341)
!3356 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !3355)
!3357 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !3355)
!3358 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !3355)
!3360 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !3359)
!3361 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !3359)
!3362 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !3359)
!3363 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !3359)
!3364 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !3359)
!3365 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !3355)
!3367 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3366)
!3368 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3366)
!3369 = !DILocation(line: 708, column: 15, scope: !1039, inlinedAt: !3327)
!3370 = !DILocation(line: 718, column: 12, scope: !1118, inlinedAt: !3327)
!3371 = !DILocation(line: 718, column: 7, scope: !1039, inlinedAt: !3327)
!3372 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 719, column: 9, scope: !1125, inlinedAt: !3327)
!3376 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3373)
!3377 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3374)
!3378 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !3375)
!3379 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 719, column: 31, scope: !1125, inlinedAt: !3327)
!3383 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3380)
!3384 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3381)
!3385 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !3382)
!3386 = !DILocation(line: 719, column: 28, scope: !1125, inlinedAt: !3327)
!3387 = !DILocation(line: 719, column: 9, scope: !1126, inlinedAt: !3327)
!3388 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 723, column: 16, scope: !1144, inlinedAt: !3327)
!3392 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3389)
!3393 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3390)
!3394 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !3391)
!3395 = !DILocation(line: 725, column: 3, scope: !1126, inlinedAt: !3327)
!3396 = !DILocation(line: 0, scope: !1039, inlinedAt: !3327)
!3397 = !DILocation(line: 727, column: 10, scope: !1039, inlinedAt: !3327)
!3398 = !DILocation(line: 727, column: 3, scope: !1039, inlinedAt: !3327)
!3399 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 490, column: 28, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3328, file: !124, line: 490, column: 9)
!3404 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3400)
!3405 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3401)
!3406 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !3402)
!3407 = !DILocalVariable(name: "head", arg: 1, scope: !3408, file: !53, line: 201, type: !1072)
!3408 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1082, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3409)
!3409 = !{!3407, !3410}
!3410 = !DILocalVariable(name: "next", scope: !3408, file: !53, line: 203, type: !150)
!3411 = !DILocation(line: 201, column: 62, scope: !3408, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 490, column: 9, scope: !3403)
!3413 = !DILocation(line: 203, column: 33, scope: !3408, inlinedAt: !3412)
!3414 = !DILocation(line: 203, column: 20, scope: !3408, inlinedAt: !3412)
!3415 = !DILocation(line: 204, column: 15, scope: !3408, inlinedAt: !3412)
!3416 = !DILocation(line: 204, column: 24, scope: !3408, inlinedAt: !3412)
!3417 = !DILocation(line: 204, column: 42, scope: !3408, inlinedAt: !3412)
!3418 = !DILocation(line: 204, column: 33, scope: !3408, inlinedAt: !3412)
!3419 = !DILocation(line: 490, column: 9, scope: !3328)
!3420 = !DILocation(line: 489, column: 5, scope: !3328)
!3421 = distinct !{!3421, !3322, !3422}
!3422 = !DILocation(line: 508, column: 3, scope: !3316)
!3423 = !DILocation(line: 492, column: 7, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3403, file: !124, line: 490, column: 47)
!3425 = !DILocation(line: 494, column: 5, scope: !3424)
!3426 = !DILocation(line: 602, column: 36, scope: !602)
!3427 = !DILocation(line: 602, column: 47, scope: !602)
!3428 = !DILocation(line: 602, column: 61, scope: !602)
!3429 = !DILocation(line: 602, column: 85, scope: !602)
!3430 = !DILocation(line: 602, column: 110, scope: !602)
!3431 = !DILocation(line: 605, column: 15, scope: !602)
!3432 = !DILocation(line: 608, column: 41, scope: !602)
!3433 = !DILocation(line: 608, column: 19, scope: !602)
!3434 = !DILocation(line: 611, column: 11, scope: !613)
!3435 = !DILocation(line: 614, column: 8, scope: !626)
!3436 = !DILocation(line: 614, column: 7, scope: !602)
!3437 = !DILocation(line: 620, column: 3, scope: !602)
!3438 = !DILocation(line: 623, column: 10, scope: !602)
!3439 = !DILocation(line: 623, column: 19, scope: !602)
!3440 = !DILocation(line: 625, column: 10, scope: !602)
!3441 = !DILocation(line: 625, column: 21, scope: !602)
!3442 = !DILocation(line: 628, column: 26, scope: !615)
!3443 = !DILocation(line: 628, column: 10, scope: !602)
!3444 = !DILocation(line: 628, column: 16, scope: !602)
!3445 = !DILocation(line: 631, column: 8, scope: !637)
!3446 = !DILocation(line: 631, column: 7, scope: !602)
!3447 = !DILocation(line: 634, column: 5, scope: !640)
!3448 = !DILocation(line: 635, column: 5, scope: !640)
!3449 = !DILocation(line: 639, column: 10, scope: !602)
!3450 = !DILocation(line: 639, column: 14, scope: !602)
!3451 = !DILocation(line: 640, column: 10, scope: !602)
!3452 = !DILocation(line: 640, column: 16, scope: !602)
!3453 = !DILocation(line: 641, column: 10, scope: !602)
!3454 = !DILocation(line: 641, column: 17, scope: !602)
!3455 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 644, column: 3, scope: !602)
!3457 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !3456)
!3458 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !3456)
!3459 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !3456)
!3461 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3460)
!3462 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !3456)
!3463 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3460)
!3464 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3460)
!3465 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3460)
!3466 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !3456)
!3468 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3467)
!3469 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3467)
!3470 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3467)
!3471 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3467)
!3472 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !3456)
!3474 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3473)
!3475 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3473)
!3476 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3473)
!3477 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3473)
!3478 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !3456)
!3480 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3479)
!3481 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3479)
!3482 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3479)
!3483 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3479)
!3484 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !3456)
!3486 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3485)
!3487 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3485)
!3488 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3485)
!3489 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3485)
!3490 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !3456)
!3492 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3491)
!3493 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3491)
!3494 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3491)
!3495 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3491)
!3496 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !3456)
!3497 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !3456)
!3499 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3498)
!3500 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3498)
!3501 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3498)
!3502 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3498)
!3503 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !3456)
!3505 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3504)
!3506 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3504)
!3507 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3504)
!3508 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3504)
!3509 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !3456)
!3511 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3510)
!3512 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3510)
!3513 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3510)
!3514 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3510)
!3515 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !3456)
!3517 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3516)
!3518 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3516)
!3519 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3516)
!3520 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3516)
!3521 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !3456)
!3523 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3522)
!3524 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3522)
!3525 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3522)
!3526 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3522)
!3527 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !3456)
!3529 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3528)
!3530 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3528)
!3531 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3528)
!3532 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3528)
!3533 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !3456)
!3535 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3534)
!3536 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3534)
!3537 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3534)
!3538 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3534)
!3539 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !3456)
!3541 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3540)
!3542 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3540)
!3543 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3540)
!3544 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3540)
!3545 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !3456)
!3547 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3546)
!3548 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3546)
!3549 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3546)
!3550 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3546)
!3551 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !3456)
!3553 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3552)
!3554 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3552)
!3555 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3552)
!3556 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3552)
!3557 = !DILocation(line: 647, column: 7, scope: !763)
!3558 = !DILocation(line: 647, column: 7, scope: !602)
!3559 = !DILocation(line: 648, column: 19, scope: !762)
!3560 = !DILocation(line: 649, column: 3, scope: !762)
!3561 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 650, column: 15, scope: !602)
!3563 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3562)
!3564 = !DILocation(line: 650, column: 33, scope: !602)
!3565 = !DILocation(line: 650, column: 10, scope: !602)
!3566 = !DILocation(line: 650, column: 13, scope: !602)
!3567 = !DILocation(line: 653, column: 27, scope: !602)
!3568 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 653, column: 3, scope: !602)
!3570 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3569)
!3571 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3569)
!3572 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3569)
!3573 = !DILocation(line: 656, column: 10, scope: !602)
!3574 = !DILocation(line: 656, column: 19, scope: !602)
!3575 = !DILocation(line: 657, column: 27, scope: !602)
!3576 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 657, column: 3, scope: !602)
!3578 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3577)
!3579 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3577)
!3580 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3577)
!3581 = !DILocation(line: 658, column: 27, scope: !602)
!3582 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 658, column: 3, scope: !602)
!3584 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3583)
!3585 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3583)
!3586 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3583)
!3587 = !DILocation(line: 660, column: 3, scope: !602)
!3588 = !DILocation(line: 0, scope: !602)
!3589 = !DILocation(line: 661, column: 1, scope: !602)
!3590 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 704, column: 7, scope: !1038)
!3594 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3591)
!3595 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3592)
!3596 = !DILocation(line: 98, column: 30, scope: !1036, inlinedAt: !3593)
!3597 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 704, column: 30, scope: !1038)
!3599 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3598)
!3600 = !DILocation(line: 704, column: 27, scope: !1038)
!3601 = !DILocation(line: 704, column: 7, scope: !1039)
!3602 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 708, column: 22, scope: !1039)
!3607 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3603)
!3608 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3604)
!3609 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !3605)
!3610 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !3606)
!3611 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !3606)
!3612 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !3606)
!3614 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !3613)
!3615 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !3613)
!3616 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !3606)
!3617 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !3606)
!3618 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !3606)
!3619 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !3606)
!3621 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !3620)
!3622 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !3620)
!3623 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !3620)
!3625 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !3624)
!3626 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !3624)
!3627 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !3624)
!3628 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !3624)
!3629 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !3624)
!3630 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !3620)
!3632 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3631)
!3633 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3631)
!3634 = !DILocation(line: 708, column: 15, scope: !1039)
!3635 = !DILocation(line: 718, column: 12, scope: !1118)
!3636 = !DILocation(line: 718, column: 7, scope: !1039)
!3637 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 719, column: 9, scope: !1125)
!3641 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3638)
!3642 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3639)
!3643 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !3640)
!3644 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 719, column: 31, scope: !1125)
!3648 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3645)
!3649 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3646)
!3650 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !3647)
!3651 = !DILocation(line: 719, column: 28, scope: !1125)
!3652 = !DILocation(line: 719, column: 9, scope: !1126)
!3653 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 723, column: 16, scope: !1144)
!3657 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3654)
!3658 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !3655)
!3659 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !3656)
!3660 = !DILocation(line: 725, column: 3, scope: !1126)
!3661 = !DILocation(line: 0, scope: !1039)
!3662 = !DILocation(line: 727, column: 10, scope: !1039)
!3663 = !DILocation(line: 727, column: 3, scope: !1039)
!3664 = !DILocation(line: 728, column: 1, scope: !1039)
!3665 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !2167, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3666)
!3666 = !{!3667, !3668, !3672, !3673, !3678, !3680, !3683, !3685, !3687, !3693, !3694, !3699, !3701, !3704, !3706}
!3667 = !DILocalVariable(name: "my_cpu", scope: !3665, file: !124, line: 572, type: !270)
!3668 = !DILocalVariable(name: "_p", scope: !3669, file: !124, line: 573, type: !48)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !124, line: 573, column: 5)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !124, line: 573, column: 5)
!3671 = distinct !DILexicalBlock(scope: !3665, file: !124, line: 573, column: 5)
!3672 = !DILocalVariable(name: "_t", scope: !3669, file: !124, line: 573, type: !160)
!3673 = !DILocalVariable(name: "__r", scope: !3674, file: !124, line: 573, type: !291)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !124, line: 573, column: 5)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !124, line: 573, column: 5)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !124, line: 573, column: 5)
!3677 = distinct !DILexicalBlock(scope: !3669, file: !124, line: 573, column: 5)
!3678 = !DILocalVariable(name: "__r", scope: !3679, file: !124, line: 573, type: !291)
!3679 = distinct !DILexicalBlock(scope: !3674, file: !124, line: 573, column: 5)
!3680 = !DILocalVariable(name: "__r", scope: !3681, file: !124, line: 573, type: !291)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !124, line: 573, column: 5)
!3682 = distinct !DILexicalBlock(scope: !3676, file: !124, line: 573, column: 5)
!3683 = !DILocalVariable(name: "__r", scope: !3684, file: !124, line: 573, type: !291)
!3684 = distinct !DILexicalBlock(scope: !3681, file: !124, line: 573, column: 5)
!3685 = !DILocalVariable(name: "_p", scope: !3686, file: !124, line: 573, type: !48)
!3686 = distinct !DILexicalBlock(scope: !3670, file: !124, line: 573, column: 5)
!3687 = !DILocalVariable(name: "_p", scope: !3688, file: !124, line: 575, type: !48)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !124, line: 575, column: 2)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !124, line: 575, column: 2)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !124, line: 575, column: 2)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !124, line: 574, column: 45)
!3692 = distinct !DILexicalBlock(scope: !3665, file: !124, line: 574, column: 9)
!3693 = !DILocalVariable(name: "_t", scope: !3688, file: !124, line: 575, type: !160)
!3694 = !DILocalVariable(name: "__r", scope: !3695, file: !124, line: 575, type: !291)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !124, line: 575, column: 2)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !124, line: 575, column: 2)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !124, line: 575, column: 2)
!3698 = distinct !DILexicalBlock(scope: !3688, file: !124, line: 575, column: 2)
!3699 = !DILocalVariable(name: "__r", scope: !3700, file: !124, line: 575, type: !291)
!3700 = distinct !DILexicalBlock(scope: !3695, file: !124, line: 575, column: 2)
!3701 = !DILocalVariable(name: "__r", scope: !3702, file: !124, line: 575, type: !291)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !124, line: 575, column: 2)
!3703 = distinct !DILexicalBlock(scope: !3697, file: !124, line: 575, column: 2)
!3704 = !DILocalVariable(name: "__r", scope: !3705, file: !124, line: 575, type: !291)
!3705 = distinct !DILexicalBlock(scope: !3702, file: !124, line: 575, column: 2)
!3706 = !DILocalVariable(name: "_p", scope: !3707, file: !124, line: 575, type: !48)
!3707 = distinct !DILexicalBlock(scope: !3689, file: !124, line: 575, column: 2)
!3708 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 572, column: 26, scope: !3665)
!3710 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !3709)
!3711 = !DILocation(line: 572, column: 17, scope: !3665)
!3712 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 573, column: 5, scope: !3670)
!3714 = !DILocation(line: 573, column: 5, scope: !3670)
!3715 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 0, scope: !3670)
!3718 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !3717)
!3719 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !3717)
!3720 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !3717)
!3721 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !3717)
!3722 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !3717)
!3723 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !3717)
!3724 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !3717)
!3725 = !DILocation(line: 0, scope: !2346, inlinedAt: !3717)
!3726 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 0, scope: !3670)
!3729 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !3728)
!3730 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !3728)
!3731 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !3728)
!3732 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !3728)
!3733 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !3728)
!3734 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !3728)
!3735 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !3728)
!3736 = !DILocation(line: 573, column: 5, scope: !3671)
!3737 = !DILocation(line: 573, column: 5, scope: !3669)
!3738 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 573, column: 5, scope: !3669)
!3740 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3739)
!3741 = !DILocation(line: 573, column: 5, scope: !3676)
!3742 = !DILocation(line: 0, scope: !3676)
!3743 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 0, scope: !3676)
!3747 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3745)
!3748 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3745)
!3749 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3745)
!3750 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3745)
!3751 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3745)
!3752 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3745)
!3753 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3745)
!3754 = !DILocation(line: 573, column: 5, scope: !3677)
!3755 = !DILocation(line: 573, column: 5, scope: !3675)
!3756 = !DILocation(line: 573, column: 5, scope: !3682)
!3757 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 573, column: 5, scope: !3669)
!3760 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3759)
!3761 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3759)
!3762 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3759)
!3763 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3759)
!3764 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3759)
!3765 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3759)
!3766 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3759)
!3767 = !DILocation(line: 573, column: 5, scope: !3686)
!3768 = !DILocation(line: 573, column: 5, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !124, line: 573, column: 5)
!3770 = distinct !DILexicalBlock(scope: !3686, file: !124, line: 573, column: 5)
!3771 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 0, scope: !3769)
!3775 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3773)
!3776 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3773)
!3777 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3773)
!3778 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3773)
!3779 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3773)
!3780 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3773)
!3781 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3773)
!3782 = !DILocation(line: 0, scope: !3769)
!3783 = !DILocation(line: 573, column: 5, scope: !3770)
!3784 = !DILocation(line: 573, column: 5, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3769, file: !124, line: 573, column: 5)
!3786 = !DILocation(line: 573, column: 5, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3769, file: !124, line: 573, column: 5)
!3788 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 573, column: 5, scope: !3686)
!3791 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3790)
!3792 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3790)
!3793 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3790)
!3794 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3790)
!3795 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3790)
!3796 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3790)
!3797 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3790)
!3798 = !DILocation(line: 561, column: 3, scope: !3799, inlinedAt: !3828)
!3799 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3800)
!3800 = !{!3801, !3803, !3806, !3808, !3813, !3814, !3819, !3821, !3824, !3826}
!3801 = !DILocalVariable(name: "tid", scope: !3799, file: !124, line: 561, type: !3802)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!3803 = !DILocalVariable(name: "__r", scope: !3804, file: !124, line: 562, type: !291)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !124, line: 562, column: 79)
!3805 = distinct !DILexicalBlock(scope: !3799, file: !124, line: 562, column: 7)
!3806 = !DILocalVariable(name: "__r", scope: !3807, file: !124, line: 562, type: !291)
!3807 = distinct !DILexicalBlock(scope: !3804, file: !124, line: 562, column: 79)
!3808 = !DILocalVariable(name: "_p", scope: !3809, file: !124, line: 563, type: !48)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !124, line: 563, column: 7)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !124, line: 563, column: 7)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !124, line: 563, column: 7)
!3812 = distinct !DILexicalBlock(scope: !3805, file: !124, line: 562, column: 93)
!3813 = !DILocalVariable(name: "_t", scope: !3809, file: !124, line: 563, type: !160)
!3814 = !DILocalVariable(name: "__r", scope: !3815, file: !124, line: 563, type: !291)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !124, line: 563, column: 7)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !124, line: 563, column: 7)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !124, line: 563, column: 7)
!3818 = distinct !DILexicalBlock(scope: !3809, file: !124, line: 563, column: 7)
!3819 = !DILocalVariable(name: "__r", scope: !3820, file: !124, line: 563, type: !291)
!3820 = distinct !DILexicalBlock(scope: !3815, file: !124, line: 563, column: 7)
!3821 = !DILocalVariable(name: "__r", scope: !3822, file: !124, line: 563, type: !291)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !124, line: 563, column: 7)
!3823 = distinct !DILexicalBlock(scope: !3817, file: !124, line: 563, column: 7)
!3824 = !DILocalVariable(name: "__r", scope: !3825, file: !124, line: 563, type: !291)
!3825 = distinct !DILexicalBlock(scope: !3822, file: !124, line: 563, column: 7)
!3826 = !DILocalVariable(name: "_p", scope: !3827, file: !124, line: 563, type: !48)
!3827 = distinct !DILexicalBlock(scope: !3810, file: !124, line: 563, column: 7)
!3828 = distinct !DILocation(line: 574, column: 9, scope: !3692)
!3829 = !DILocation(line: 562, column: 79, scope: !3807, inlinedAt: !3828)
!3830 = !{i32 -2147099479}
!3831 = !DILocation(line: 562, column: 79, scope: !3804, inlinedAt: !3828)
!3832 = !DILocation(line: 561, column: 18, scope: !3799, inlinedAt: !3828)
!3833 = !DILocation(line: 562, column: 7, scope: !3805, inlinedAt: !3828)
!3834 = !DILocation(line: 562, column: 7, scope: !3799, inlinedAt: !3828)
!3835 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 563, column: 7, scope: !3810, inlinedAt: !3828)
!3837 = !DILocation(line: 563, column: 7, scope: !3810, inlinedAt: !3828)
!3838 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 0, scope: !3810, inlinedAt: !3828)
!3841 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !3840)
!3842 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !3840)
!3843 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !3840)
!3844 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !3840)
!3845 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !3840)
!3846 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !3840)
!3847 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !3840)
!3848 = !DILocation(line: 0, scope: !2346, inlinedAt: !3840)
!3849 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 0, scope: !3810, inlinedAt: !3828)
!3852 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !3851)
!3853 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !3851)
!3854 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !3851)
!3855 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !3851)
!3856 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !3851)
!3857 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !3851)
!3858 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !3851)
!3859 = !DILocation(line: 563, column: 7, scope: !3811, inlinedAt: !3828)
!3860 = !DILocation(line: 563, column: 7, scope: !3809, inlinedAt: !3828)
!3861 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 563, column: 7, scope: !3809, inlinedAt: !3828)
!3863 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3862)
!3864 = !DILocation(line: 563, column: 7, scope: !3817, inlinedAt: !3828)
!3865 = !DILocation(line: 0, scope: !3817, inlinedAt: !3828)
!3866 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 0, scope: !3817, inlinedAt: !3828)
!3870 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3868)
!3871 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3868)
!3872 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3868)
!3873 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3868)
!3874 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3868)
!3875 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3868)
!3876 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3868)
!3877 = !DILocation(line: 563, column: 7, scope: !3818, inlinedAt: !3828)
!3878 = !DILocation(line: 563, column: 7, scope: !3816, inlinedAt: !3828)
!3879 = !DILocation(line: 563, column: 7, scope: !3823, inlinedAt: !3828)
!3880 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 563, column: 7, scope: !3809, inlinedAt: !3828)
!3883 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3882)
!3884 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3882)
!3885 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3882)
!3886 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3882)
!3887 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3882)
!3888 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3882)
!3889 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3882)
!3890 = !DILocation(line: 563, column: 7, scope: !3827, inlinedAt: !3828)
!3891 = !DILocation(line: 563, column: 7, scope: !3892, inlinedAt: !3828)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !124, line: 563, column: 7)
!3893 = distinct !DILexicalBlock(scope: !3827, file: !124, line: 563, column: 7)
!3894 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 0, scope: !3892, inlinedAt: !3828)
!3898 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3896)
!3899 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3896)
!3900 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3896)
!3901 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3896)
!3902 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3896)
!3903 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3896)
!3904 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3896)
!3905 = !DILocation(line: 0, scope: !3892, inlinedAt: !3828)
!3906 = !DILocation(line: 563, column: 7, scope: !3893, inlinedAt: !3828)
!3907 = !DILocation(line: 563, column: 7, scope: !3908, inlinedAt: !3828)
!3908 = distinct !DILexicalBlock(scope: !3892, file: !124, line: 563, column: 7)
!3909 = !DILocation(line: 563, column: 7, scope: !3910, inlinedAt: !3828)
!3910 = distinct !DILexicalBlock(scope: !3892, file: !124, line: 563, column: 7)
!3911 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 563, column: 7, scope: !3827, inlinedAt: !3828)
!3914 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3913)
!3915 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3913)
!3916 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3913)
!3917 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3913)
!3918 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3913)
!3919 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3913)
!3920 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3913)
!3921 = !DILocation(line: 568, column: 1, scope: !3799, inlinedAt: !3828)
!3922 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 575, column: 2, scope: !3689)
!3924 = !DILocation(line: 575, column: 2, scope: !3689)
!3925 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 84, column: 18, scope: !2340, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 0, scope: !3689)
!3928 = !DILocation(line: 84, column: 11, scope: !2340, inlinedAt: !3927)
!3929 = !DILocation(line: 85, column: 9, scope: !2346, inlinedAt: !3927)
!3930 = !DILocation(line: 85, column: 9, scope: !2340, inlinedAt: !3927)
!3931 = !DILocation(line: 87, column: 57, scope: !2349, inlinedAt: !3927)
!3932 = !DILocation(line: 87, column: 30, scope: !2349, inlinedAt: !3927)
!3933 = !DILocation(line: 87, column: 9, scope: !2349, inlinedAt: !3927)
!3934 = !DILocation(line: 87, column: 2, scope: !2349, inlinedAt: !3927)
!3935 = !DILocation(line: 0, scope: !2346, inlinedAt: !3927)
!3936 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 48, column: 18, scope: !2356, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 0, scope: !3689)
!3939 = !DILocation(line: 48, column: 11, scope: !2356, inlinedAt: !3938)
!3940 = !DILocation(line: 49, column: 9, scope: !2362, inlinedAt: !3938)
!3941 = !DILocation(line: 49, column: 9, scope: !2356, inlinedAt: !3938)
!3942 = !DILocation(line: 51, column: 50, scope: !2365, inlinedAt: !3938)
!3943 = !DILocation(line: 51, column: 23, scope: !2365, inlinedAt: !3938)
!3944 = !DILocation(line: 51, column: 2, scope: !2365, inlinedAt: !3938)
!3945 = !DILocation(line: 52, column: 5, scope: !2365, inlinedAt: !3938)
!3946 = !DILocation(line: 575, column: 2, scope: !3690)
!3947 = !DILocation(line: 575, column: 2, scope: !3688)
!3948 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 575, column: 2, scope: !3688)
!3950 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3949)
!3951 = !DILocation(line: 575, column: 2, scope: !3697)
!3952 = !DILocation(line: 0, scope: !3697)
!3953 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 0, scope: !3697)
!3957 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3955)
!3958 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3955)
!3959 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3955)
!3960 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3955)
!3961 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3955)
!3962 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3955)
!3963 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3955)
!3964 = !DILocation(line: 575, column: 2, scope: !3698)
!3965 = !DILocation(line: 575, column: 2, scope: !3696)
!3966 = !DILocation(line: 575, column: 2, scope: !3703)
!3967 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 575, column: 2, scope: !3688)
!3970 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !3969)
!3971 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !3969)
!3972 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !3969)
!3973 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !3969)
!3974 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !3969)
!3975 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !3969)
!3976 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !3969)
!3977 = !DILocation(line: 575, column: 2, scope: !3707)
!3978 = !DILocation(line: 575, column: 2, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !124, line: 575, column: 2)
!3980 = distinct !DILexicalBlock(scope: !3707, file: !124, line: 575, column: 2)
!3981 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 96, column: 18, scope: !2378, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 107, column: 12, scope: !2384, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 0, scope: !3979)
!3985 = !DILocation(line: 96, column: 11, scope: !2378, inlinedAt: !3983)
!3986 = !DILocation(line: 97, column: 9, scope: !2388, inlinedAt: !3983)
!3987 = !DILocation(line: 97, column: 9, scope: !2378, inlinedAt: !3983)
!3988 = !DILocation(line: 98, column: 57, scope: !2391, inlinedAt: !3983)
!3989 = !DILocation(line: 98, column: 30, scope: !2391, inlinedAt: !3983)
!3990 = !DILocation(line: 98, column: 9, scope: !2391, inlinedAt: !3983)
!3991 = !DILocation(line: 98, column: 2, scope: !2391, inlinedAt: !3983)
!3992 = !DILocation(line: 0, scope: !3979)
!3993 = !DILocation(line: 575, column: 2, scope: !3980)
!3994 = !DILocation(line: 575, column: 2, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3979, file: !124, line: 575, column: 2)
!3996 = !DILocation(line: 575, column: 2, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3979, file: !124, line: 575, column: 2)
!3998 = !DILocation(line: 43, column: 21, scope: !2332, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 59, column: 18, scope: !2400, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 575, column: 2, scope: !3707)
!4001 = !DILocation(line: 59, column: 11, scope: !2400, inlinedAt: !4000)
!4002 = !DILocation(line: 60, column: 9, scope: !2406, inlinedAt: !4000)
!4003 = !DILocation(line: 60, column: 9, scope: !2400, inlinedAt: !4000)
!4004 = !DILocation(line: 62, column: 50, scope: !2409, inlinedAt: !4000)
!4005 = !DILocation(line: 62, column: 23, scope: !2409, inlinedAt: !4000)
!4006 = !DILocation(line: 62, column: 2, scope: !2409, inlinedAt: !4000)
!4007 = !DILocation(line: 63, column: 5, scope: !2409, inlinedAt: !4000)
!4008 = !DILocation(line: 576, column: 2, scope: !3691)
!4009 = !DILocation(line: 579, column: 1, scope: !3665)
!4010 = !DILocation(line: 693, column: 35, scope: !584)
!4011 = !DILocation(line: 693, column: 46, scope: !584)
!4012 = !DILocation(line: 693, column: 60, scope: !584)
!4013 = !DILocation(line: 693, column: 84, scope: !584)
!4014 = !DILocation(line: 693, column: 104, scope: !584)
!4015 = !DILocation(line: 693, column: 134, scope: !584)
!4016 = !DILocation(line: 695, column: 3, scope: !584)
!4017 = !DILocation(line: 696, column: 16, scope: !584)
!4018 = !DILocation(line: 696, column: 3, scope: !584)
!4019 = !DILocation(line: 698, column: 3, scope: !584)
!4020 = !DILocation(line: 732, column: 3, scope: !1021)
!4021 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 704, column: 7, scope: !1038, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 733, column: 10, scope: !1021)
!4026 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4022)
!4027 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4023)
!4028 = !DILocation(line: 98, column: 30, scope: !1036, inlinedAt: !4024)
!4029 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 704, column: 30, scope: !1038, inlinedAt: !4025)
!4031 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4030)
!4032 = !DILocation(line: 704, column: 27, scope: !1038, inlinedAt: !4025)
!4033 = !DILocation(line: 704, column: 7, scope: !1039, inlinedAt: !4025)
!4034 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 708, column: 22, scope: !1039, inlinedAt: !4025)
!4039 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4035)
!4040 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4036)
!4041 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !4037)
!4042 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !4038)
!4043 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !4038)
!4044 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !4038)
!4046 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !4045)
!4047 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !4045)
!4048 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !4038)
!4049 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !4038)
!4050 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !4038)
!4051 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !4038)
!4053 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !4052)
!4054 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !4052)
!4055 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !4052)
!4057 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !4056)
!4058 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !4056)
!4059 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !4056)
!4060 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !4056)
!4061 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !4056)
!4062 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !4052)
!4064 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4063)
!4065 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4063)
!4066 = !DILocation(line: 708, column: 15, scope: !1039, inlinedAt: !4025)
!4067 = !DILocation(line: 718, column: 12, scope: !1118, inlinedAt: !4025)
!4068 = !DILocation(line: 718, column: 7, scope: !1039, inlinedAt: !4025)
!4069 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 719, column: 9, scope: !1125, inlinedAt: !4025)
!4073 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4070)
!4074 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4071)
!4075 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !4072)
!4076 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 719, column: 31, scope: !1125, inlinedAt: !4025)
!4080 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4077)
!4081 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4078)
!4082 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4079)
!4083 = !DILocation(line: 719, column: 28, scope: !1125, inlinedAt: !4025)
!4084 = !DILocation(line: 719, column: 9, scope: !1126, inlinedAt: !4025)
!4085 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 723, column: 16, scope: !1144, inlinedAt: !4025)
!4089 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4086)
!4090 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4087)
!4091 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4088)
!4092 = !DILocation(line: 725, column: 3, scope: !1126, inlinedAt: !4025)
!4093 = !DILocation(line: 0, scope: !1039, inlinedAt: !4025)
!4094 = !DILocation(line: 727, column: 10, scope: !1039, inlinedAt: !4025)
!4095 = !DILocation(line: 727, column: 3, scope: !1039, inlinedAt: !4025)
!4096 = !DILocation(line: 733, column: 3, scope: !1021)
!4097 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 736, type: !2047, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4098)
!4098 = !{!4099, !4100}
!4099 = !DILocalVariable(name: "f_to", arg: 1, scope: !4097, file: !124, line: 736, type: !240)
!4100 = !DILocalVariable(name: "new_to", scope: !4101, file: !124, line: 744, type: !240)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !124, line: 740, column: 38)
!4102 = distinct !DILexicalBlock(scope: !4097, file: !124, line: 740, column: 7)
!4103 = !DILocation(line: 736, column: 35, scope: !4097)
!4104 = !DILocation(line: 383, column: 42, scope: !2222, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 740, column: 7, scope: !4102)
!4106 = !DILocation(line: 386, column: 26, scope: !2229, inlinedAt: !4105)
!4107 = !DILocation(line: 386, column: 26, scope: !2227, inlinedAt: !4105)
!4108 = !DILocation(line: 386, column: 20, scope: !2222, inlinedAt: !4105)
!4109 = !DILocation(line: 387, column: 23, scope: !2222, inlinedAt: !4105)
!4110 = !DILocation(line: 387, column: 7, scope: !2222, inlinedAt: !4105)
!4111 = !DILocation(line: 392, column: 12, scope: !2234, inlinedAt: !4105)
!4112 = !DILocation(line: 392, column: 27, scope: !2239, inlinedAt: !4105)
!4113 = !DILocation(line: 392, column: 3, scope: !2234, inlinedAt: !4105)
!4114 = !DILocation(line: 394, column: 14, scope: !2238, inlinedAt: !4105)
!4115 = !DILocation(line: 394, column: 31, scope: !2238, inlinedAt: !4105)
!4116 = !DILocation(line: 394, column: 40, scope: !2238, inlinedAt: !4105)
!4117 = !DILocation(line: 390, column: 21, scope: !2222, inlinedAt: !4105)
!4118 = !DILocation(line: 395, column: 5, scope: !2236, inlinedAt: !4105)
!4119 = !DILocation(line: 391, column: 15, scope: !2222, inlinedAt: !4105)
!4120 = !DILocation(line: 0, scope: !2237, inlinedAt: !4105)
!4121 = !DILocation(line: 395, column: 5, scope: !2237, inlinedAt: !4105)
!4122 = !DILocation(line: 395, column: 5, scope: !2242, inlinedAt: !4105)
!4123 = !DILocation(line: 400, column: 16, scope: !2263, inlinedAt: !4105)
!4124 = !DILocation(line: 400, column: 11, scope: !2264, inlinedAt: !4105)
!4125 = !DILocation(line: 392, column: 43, scope: !2239, inlinedAt: !4105)
!4126 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 744, column: 26, scope: !4101)
!4131 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4127)
!4132 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4128)
!4133 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !4129)
!4134 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !4130)
!4135 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !4130)
!4136 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !4130)
!4138 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !4137)
!4139 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !4137)
!4140 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !4130)
!4141 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !4130)
!4142 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !4130)
!4143 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !4130)
!4145 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !4144)
!4146 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !4144)
!4147 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !4144)
!4149 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !4148)
!4150 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !4148)
!4151 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !4148)
!4152 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !4148)
!4153 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !4148)
!4154 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !4144)
!4156 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4155)
!4157 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4155)
!4158 = !DILocation(line: 744, column: 17, scope: !4101)
!4159 = !DILocation(line: 746, column: 16, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4101, file: !124, line: 746, column: 9)
!4161 = !DILocation(line: 746, column: 9, scope: !4101)
!4162 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 747, column: 11, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !124, line: 747, column: 11)
!4167 = distinct !DILexicalBlock(scope: !4160, file: !124, line: 746, column: 25)
!4168 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4163)
!4169 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4164)
!4170 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !4165)
!4171 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 747, column: 33, scope: !4166)
!4175 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4172)
!4176 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4173)
!4177 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4174)
!4178 = !DILocation(line: 747, column: 30, scope: !4166)
!4179 = !DILocation(line: 747, column: 11, scope: !4167)
!4180 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 751, column: 20, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4166, file: !124, line: 750, column: 14)
!4185 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4181)
!4186 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4182)
!4187 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4183)
!4188 = !DILocation(line: 753, column: 5, scope: !4167)
!4189 = !DILocation(line: 0, scope: !4101)
!4190 = !DILocation(line: 756, column: 5, scope: !4101)
!4191 = !DILocation(line: 758, column: 5, scope: !4101)
!4192 = !DILocation(line: 401, column: 33, scope: !2272, inlinedAt: !4105)
!4193 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 401, column: 9, scope: !2272, inlinedAt: !4105)
!4195 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !4194)
!4196 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !4194)
!4197 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !4194)
!4199 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !4198)
!4200 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !4198)
!4201 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !4198)
!4202 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !4198)
!4203 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !4198)
!4204 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !4194)
!4206 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4205)
!4207 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4205)
!4208 = !DILocation(line: 762, column: 3, scope: !4097)
!4209 = !DILocation(line: 765, column: 3, scope: !4097)
!4210 = !DILocation(line: 0, scope: !4097)
!4211 = !DILocation(line: 766, column: 1, scope: !4097)
!4212 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 768, type: !4213, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4218)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!48, !4215, !31}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!29, !31}
!4218 = !{!4219, !4220}
!4219 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4212, file: !124, line: 768, type: !4215)
!4220 = !DILocalVariable(name: "state", arg: 2, scope: !4212, file: !124, line: 768, type: !31)
!4221 = !DILocation(line: 768, column: 42, scope: !4212)
!4222 = !DILocation(line: 768, column: 77, scope: !4212)
!4223 = !DILocation(line: 770, column: 7, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4212, file: !124, line: 770, column: 7)
!4225 = !DILocation(line: 770, column: 7, scope: !4212)
!4226 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 704, column: 7, scope: !1038, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 771, column: 12, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4224, file: !124, line: 770, column: 28)
!4232 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4227)
!4233 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4228)
!4234 = !DILocation(line: 98, column: 30, scope: !1036, inlinedAt: !4229)
!4235 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 704, column: 30, scope: !1038, inlinedAt: !4230)
!4237 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4236)
!4238 = !DILocation(line: 704, column: 27, scope: !1038, inlinedAt: !4230)
!4239 = !DILocation(line: 704, column: 7, scope: !1039, inlinedAt: !4230)
!4240 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 708, column: 22, scope: !1039, inlinedAt: !4230)
!4245 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4241)
!4246 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4242)
!4247 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !4243)
!4248 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !4244)
!4249 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !4244)
!4250 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !4244)
!4252 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !4251)
!4253 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !4251)
!4254 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !4244)
!4255 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !4244)
!4256 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !4244)
!4257 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !4244)
!4259 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !4258)
!4260 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !4258)
!4261 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !4258)
!4263 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !4262)
!4264 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !4262)
!4265 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !4262)
!4266 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !4262)
!4267 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !4262)
!4268 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !4258)
!4270 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4269)
!4271 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4269)
!4272 = !DILocation(line: 708, column: 15, scope: !1039, inlinedAt: !4230)
!4273 = !DILocation(line: 718, column: 12, scope: !1118, inlinedAt: !4230)
!4274 = !DILocation(line: 718, column: 7, scope: !1039, inlinedAt: !4230)
!4275 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 719, column: 9, scope: !1125, inlinedAt: !4230)
!4279 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4276)
!4280 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4277)
!4281 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !4278)
!4282 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 719, column: 31, scope: !1125, inlinedAt: !4230)
!4286 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4283)
!4287 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4284)
!4288 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4285)
!4289 = !DILocation(line: 719, column: 28, scope: !1125, inlinedAt: !4230)
!4290 = !DILocation(line: 719, column: 9, scope: !1126, inlinedAt: !4230)
!4291 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 723, column: 16, scope: !1144, inlinedAt: !4230)
!4295 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4292)
!4296 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4293)
!4297 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4294)
!4298 = !DILocation(line: 725, column: 3, scope: !1126, inlinedAt: !4230)
!4299 = !DILocation(line: 0, scope: !1039, inlinedAt: !4230)
!4300 = !DILocation(line: 727, column: 10, scope: !1039, inlinedAt: !4230)
!4301 = !DILocation(line: 727, column: 3, scope: !1039, inlinedAt: !4230)
!4302 = !DILocation(line: 771, column: 5, scope: !4231)
!4303 = !DILocation(line: 0, scope: !4212)
!4304 = !DILocation(line: 774, column: 1, scope: !4212)
!4305 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 776, type: !4306, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!48, !240, !4215, !31}
!4308 = !{!4309, !4310, !4311}
!4309 = !DILocalVariable(name: "fib", arg: 1, scope: !4305, file: !124, line: 776, type: !240)
!4310 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4305, file: !124, line: 776, type: !4215)
!4311 = !DILocalVariable(name: "state", arg: 3, scope: !4305, file: !124, line: 776, type: !31)
!4312 = !DILocation(line: 776, column: 47, scope: !4305)
!4313 = !DILocation(line: 776, column: 62, scope: !4305)
!4314 = !DILocation(line: 776, column: 97, scope: !4305)
!4315 = !DILocation(line: 778, column: 7, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4305, file: !124, line: 778, column: 7)
!4317 = !DILocation(line: 778, column: 7, scope: !4305)
!4318 = !DILocation(line: 779, column: 12, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !124, line: 778, column: 28)
!4320 = !DILocation(line: 779, column: 5, scope: !4319)
!4321 = !DILocation(line: 0, scope: !4305)
!4322 = !DILocation(line: 782, column: 1, scope: !4305)
!4323 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 784, type: !1059, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341}
!4325 = !DILocalVariable(name: "curr", scope: !4323, file: !124, line: 787, type: !240)
!4326 = !DILocalVariable(name: "size", scope: !4323, file: !124, line: 790, type: !25)
!4327 = !DILocalVariable(name: "alloc_size", scope: !4323, file: !124, line: 790, type: !25)
!4328 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4323, file: !124, line: 791, type: !25)
!4329 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4323, file: !124, line: 792, type: !25)
!4330 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4323, file: !124, line: 793, type: !25)
!4331 = !DILocalVariable(name: "child_stack", scope: !4323, file: !124, line: 794, type: !31)
!4332 = !DILocalVariable(name: "rsp", scope: !4323, file: !124, line: 795, type: !25)
!4333 = !DILocalVariable(name: "rbp0", scope: !4323, file: !124, line: 800, type: !31)
!4334 = !DILocalVariable(name: "rbp1", scope: !4323, file: !124, line: 801, type: !31)
!4335 = !DILocalVariable(name: "rbp_tos", scope: !4323, file: !124, line: 802, type: !31)
!4336 = !DILocalVariable(name: "ret0_addr", scope: !4323, file: !124, line: 803, type: !31)
!4337 = !DILocalVariable(name: "rbp_stash_addr", scope: !4323, file: !124, line: 815, type: !31)
!4338 = !DILocalVariable(name: "new", scope: !4323, file: !124, line: 831, type: !240)
!4339 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4323, file: !124, line: 847, type: !75)
!4340 = !DILocalVariable(name: "rbp2_ptr", scope: !4323, file: !124, line: 851, type: !75)
!4341 = !DILocalVariable(name: "ret2_ptr", scope: !4323, file: !124, line: 852, type: !75)
!4342 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 787, column: 22, scope: !4323)
!4346 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4343)
!4347 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4344)
!4348 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !4345)
!4349 = !DILocation(line: 787, column: 15, scope: !4323)
!4350 = !DILocation(line: 798, column: 3, scope: !4323)
!4351 = !{i32 23631}
!4352 = !DILocation(line: 795, column: 16, scope: !4323)
!4353 = !DILocation(line: 800, column: 21, scope: !4323)
!4354 = !DILocation(line: 800, column: 9, scope: !4323)
!4355 = !DILocation(line: 801, column: 21, scope: !4323)
!4356 = !DILocation(line: 801, column: 9, scope: !4323)
!4357 = !DILocation(line: 802, column: 21, scope: !4323)
!4358 = !DILocation(line: 802, column: 9, scope: !4323)
!4359 = !DILocation(line: 803, column: 26, scope: !4323)
!4360 = !DILocation(line: 803, column: 9, scope: !4323)
!4361 = !DILocation(line: 805, column: 44, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4323, file: !124, line: 805, column: 7)
!4363 = !DILocation(line: 805, column: 25, scope: !4362)
!4364 = !DILocation(line: 0, scope: !4323)
!4365 = !DILocation(line: 806, column: 46, scope: !4362)
!4366 = !DILocation(line: 806, column: 20, scope: !4362)
!4367 = !DILocation(line: 805, column: 50, scope: !4362)
!4368 = !DILocation(line: 815, column: 36, scope: !4323)
!4369 = !DILocation(line: 815, column: 9, scope: !4323)
!4370 = !DILocation(line: 821, column: 19, scope: !4323)
!4371 = !DILocation(line: 821, column: 24, scope: !4323)
!4372 = !DILocation(line: 790, column: 12, scope: !4323)
!4373 = !DILocation(line: 822, column: 37, scope: !4323)
!4374 = !DILocation(line: 791, column: 16, scope: !4323)
!4375 = !DILocation(line: 792, column: 16, scope: !4323)
!4376 = !DILocation(line: 825, column: 32, scope: !4323)
!4377 = !DILocation(line: 825, column: 57, scope: !4323)
!4378 = !DILocation(line: 793, column: 16, scope: !4323)
!4379 = !DILocation(line: 790, column: 18, scope: !4323)
!4380 = !DILocation(line: 831, column: 3, scope: !4323)
!4381 = !DILocation(line: 831, column: 15, scope: !4323)
!4382 = !DILocation(line: 832, column: 3, scope: !4323)
!4383 = !DILocation(line: 835, column: 15, scope: !4323)
!4384 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 835, column: 3, scope: !4323)
!4386 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4385)
!4387 = !DILocation(line: 115, column: 8, scope: !658, inlinedAt: !4385)
!4388 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4385)
!4389 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4385)
!4390 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4385)
!4391 = !DILocation(line: 837, column: 17, scope: !4323)
!4392 = !DILocation(line: 837, column: 22, scope: !4323)
!4393 = !DILocation(line: 794, column: 17, scope: !4323)
!4394 = !DILocation(line: 839, column: 22, scope: !4323)
!4395 = !DILocation(line: 839, column: 35, scope: !4323)
!4396 = !DILocation(line: 839, column: 3, scope: !4323)
!4397 = !DILocation(line: 840, column: 57, scope: !4323)
!4398 = !DILocation(line: 840, column: 14, scope: !4323)
!4399 = !DILocation(line: 840, column: 3, scope: !4323)
!4400 = !DILocation(line: 840, column: 8, scope: !4323)
!4401 = !DILocation(line: 840, column: 12, scope: !4323)
!4402 = !DILocation(line: 847, column: 35, scope: !4323)
!4403 = !DILocation(line: 847, column: 40, scope: !4323)
!4404 = !DILocation(line: 847, column: 78, scope: !4323)
!4405 = !DILocation(line: 847, column: 26, scope: !4323)
!4406 = !DILocation(line: 847, column: 10, scope: !4323)
!4407 = !DILocation(line: 848, column: 37, scope: !4323)
!4408 = !DILocation(line: 848, column: 20, scope: !4323)
!4409 = !DILocation(line: 848, column: 18, scope: !4323)
!4410 = !DILocation(line: 851, column: 30, scope: !4323)
!4411 = !DILocation(line: 851, column: 35, scope: !4323)
!4412 = !DILocation(line: 851, column: 39, scope: !4323)
!4413 = !DILocation(line: 851, column: 68, scope: !4323)
!4414 = !DILocation(line: 851, column: 21, scope: !4323)
!4415 = !DILocation(line: 851, column: 10, scope: !4323)
!4416 = !DILocation(line: 852, column: 29, scope: !4323)
!4417 = !DILocation(line: 852, column: 10, scope: !4323)
!4418 = !DILocation(line: 861, column: 13, scope: !4323)
!4419 = !DILocation(line: 868, column: 16, scope: !4323)
!4420 = !DILocation(line: 868, column: 21, scope: !4323)
!4421 = !DILocation(line: 868, column: 24, scope: !4323)
!4422 = !DILocation(line: 868, column: 4, scope: !4323)
!4423 = !DILocation(line: 868, column: 41, scope: !4323)
!4424 = !DILocation(line: 871, column: 16, scope: !4323)
!4425 = !DILocation(line: 663, column: 30, scope: !1686, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 871, column: 3, scope: !4323)
!4427 = !DILocation(line: 663, column: 41, scope: !1686, inlinedAt: !4426)
!4428 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 666, column: 30, scope: !1686, inlinedAt: !4426)
!4432 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4429)
!4433 = !DILocation(line: 666, column: 16, scope: !1686, inlinedAt: !4426)
!4434 = !DILocation(line: 0, scope: !1686, inlinedAt: !4426)
!4435 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 674, column: 41, scope: !1686, inlinedAt: !4426)
!4439 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4436)
!4440 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4437)
!4441 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !4438)
!4442 = !DILocation(line: 674, column: 21, scope: !1686, inlinedAt: !4426)
!4443 = !DILocation(line: 678, column: 6, scope: !1686, inlinedAt: !4426)
!4444 = !DILocation(line: 678, column: 15, scope: !1686, inlinedAt: !4426)
!4445 = !DILocation(line: 679, column: 22, scope: !1686, inlinedAt: !4426)
!4446 = !DILocation(line: 116, column: 52, scope: !1757, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 679, column: 3, scope: !1686, inlinedAt: !4426)
!4448 = !DILocation(line: 116, column: 76, scope: !1757, inlinedAt: !4447)
!4449 = !DILocation(line: 118, column: 25, scope: !1757, inlinedAt: !4447)
!4450 = !DILocation(line: 85, column: 49, scope: !1765, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 118, column: 2, scope: !1757, inlinedAt: !4447)
!4452 = !DILocation(line: 86, column: 28, scope: !1765, inlinedAt: !4451)
!4453 = !DILocation(line: 87, column: 28, scope: !1765, inlinedAt: !4451)
!4454 = !DILocation(line: 89, column: 13, scope: !1765, inlinedAt: !4451)
!4455 = !DILocation(line: 90, column: 8, scope: !1765, inlinedAt: !4451)
!4456 = !DILocation(line: 90, column: 13, scope: !1765, inlinedAt: !4451)
!4457 = !DILocation(line: 91, column: 8, scope: !1765, inlinedAt: !4451)
!4458 = !DILocation(line: 91, column: 13, scope: !1765, inlinedAt: !4451)
!4459 = !DILocation(line: 92, column: 8, scope: !1765, inlinedAt: !4451)
!4460 = !DILocation(line: 92, column: 13, scope: !1765, inlinedAt: !4451)
!4461 = !DILocation(line: 683, column: 20, scope: !1783, inlinedAt: !4426)
!4462 = !DILocation(line: 683, column: 7, scope: !1783, inlinedAt: !4426)
!4463 = !DILocation(line: 683, column: 7, scope: !1686, inlinedAt: !4426)
!4464 = !DILocation(line: 687, column: 5, scope: !1787, inlinedAt: !4426)
!4465 = !DILocation(line: 688, column: 3, scope: !1787, inlinedAt: !4426)
!4466 = !DILocation(line: 873, column: 10, scope: !4323)
!4467 = !DILocation(line: 874, column: 1, scope: !4323)
!4468 = !DILocation(line: 873, column: 3, scope: !4323)
!4469 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 877, type: !2047, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4470)
!4470 = !{!4471, !4472, !4473}
!4471 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4469, file: !124, line: 877, type: !240)
!4472 = !DILocalVariable(name: "curr_fiber", scope: !4469, file: !124, line: 887, type: !240)
!4473 = !DILocalVariable(name: "wait_q", scope: !4469, file: !124, line: 896, type: !150)
!4474 = !DILocation(line: 877, column: 31, scope: !4469)
!4475 = !DILocation(line: 883, column: 8, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4469, file: !124, line: 883, column: 7)
!4477 = !DILocation(line: 883, column: 7, scope: !4469)
!4478 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 887, column: 28, scope: !4469)
!4482 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4479)
!4483 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4480)
!4484 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !4481)
!4485 = !DILocation(line: 887, column: 15, scope: !4469)
!4486 = !DILocation(line: 896, column: 41, scope: !4469)
!4487 = !DILocation(line: 896, column: 21, scope: !4469)
!4488 = !DILocation(line: 897, column: 31, scope: !4469)
!4489 = !DILocation(line: 116, column: 52, scope: !1757, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 897, column: 3, scope: !4469)
!4491 = !DILocation(line: 116, column: 76, scope: !1757, inlinedAt: !4490)
!4492 = !DILocation(line: 118, column: 25, scope: !1757, inlinedAt: !4490)
!4493 = !DILocation(line: 85, column: 49, scope: !1765, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 118, column: 2, scope: !1757, inlinedAt: !4490)
!4495 = !DILocation(line: 86, column: 28, scope: !1765, inlinedAt: !4494)
!4496 = !DILocation(line: 87, column: 28, scope: !1765, inlinedAt: !4494)
!4497 = !DILocation(line: 89, column: 13, scope: !1765, inlinedAt: !4494)
!4498 = !DILocation(line: 90, column: 8, scope: !1765, inlinedAt: !4494)
!4499 = !DILocation(line: 90, column: 13, scope: !1765, inlinedAt: !4494)
!4500 = !DILocation(line: 91, column: 8, scope: !1765, inlinedAt: !4494)
!4501 = !DILocation(line: 91, column: 13, scope: !1765, inlinedAt: !4494)
!4502 = !DILocation(line: 92, column: 8, scope: !1765, inlinedAt: !4494)
!4503 = !DILocation(line: 92, column: 13, scope: !1765, inlinedAt: !4494)
!4504 = !DILocation(line: 898, column: 12, scope: !4469)
!4505 = !DILocation(line: 898, column: 20, scope: !4469)
!4506 = !DILocation(line: 899, column: 15, scope: !4469)
!4507 = !DILocation(line: 899, column: 24, scope: !4469)
!4508 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 98, column: 10, scope: !1036, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 704, column: 7, scope: !1038, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 903, column: 10, scope: !4469)
!4513 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4509)
!4514 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4510)
!4515 = !DILocation(line: 98, column: 30, scope: !1036, inlinedAt: !4511)
!4516 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 704, column: 30, scope: !1038, inlinedAt: !4512)
!4518 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4517)
!4519 = !DILocation(line: 704, column: 27, scope: !1038, inlinedAt: !4512)
!4520 = !DILocation(line: 704, column: 7, scope: !1039, inlinedAt: !4512)
!4521 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4522)
!4522 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 105, column: 12, scope: !1054, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 122, column: 41, scope: !1058, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 708, column: 22, scope: !1039, inlinedAt: !4512)
!4526 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4522)
!4527 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4523)
!4528 = !DILocation(line: 105, column: 32, scope: !1054, inlinedAt: !4524)
!4529 = !DILocation(line: 122, column: 21, scope: !1058, inlinedAt: !4525)
!4530 = !DILocation(line: 125, column: 15, scope: !1058, inlinedAt: !4525)
!4531 = !DILocation(line: 184, column: 54, scope: !1081, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 126, column: 9, scope: !1067, inlinedAt: !4525)
!4533 = !DILocation(line: 186, column: 15, scope: !1081, inlinedAt: !4532)
!4534 = !DILocation(line: 186, column: 20, scope: !1081, inlinedAt: !4532)
!4535 = !DILocation(line: 126, column: 7, scope: !1058, inlinedAt: !4525)
!4536 = !DILocation(line: 128, column: 25, scope: !1065, inlinedAt: !4525)
!4537 = !DILocation(line: 131, column: 40, scope: !1066, inlinedAt: !4525)
!4538 = !DILocation(line: 151, column: 52, scope: !1093, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 131, column: 5, scope: !1066, inlinedAt: !4525)
!4540 = !DILocation(line: 153, column: 20, scope: !1093, inlinedAt: !4539)
!4541 = !DILocation(line: 153, column: 33, scope: !1093, inlinedAt: !4539)
!4542 = !DILocation(line: 128, column: 50, scope: !1100, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 153, column: 2, scope: !1093, inlinedAt: !4539)
!4544 = !DILocation(line: 128, column: 75, scope: !1100, inlinedAt: !4543)
!4545 = !DILocation(line: 130, column: 8, scope: !1100, inlinedAt: !4543)
!4546 = !DILocation(line: 130, column: 13, scope: !1100, inlinedAt: !4543)
!4547 = !DILocation(line: 131, column: 8, scope: !1100, inlinedAt: !4543)
!4548 = !DILocation(line: 131, column: 13, scope: !1100, inlinedAt: !4543)
!4549 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 154, column: 2, scope: !1093, inlinedAt: !4539)
!4551 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4550)
!4552 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4550)
!4553 = !DILocation(line: 708, column: 15, scope: !1039, inlinedAt: !4512)
!4554 = !DILocation(line: 718, column: 12, scope: !1118, inlinedAt: !4512)
!4555 = !DILocation(line: 718, column: 7, scope: !1039, inlinedAt: !4512)
!4556 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 85, column: 10, scope: !1123, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 719, column: 9, scope: !1125, inlinedAt: !4512)
!4560 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4557)
!4561 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4558)
!4562 = !DILocation(line: 85, column: 30, scope: !1123, inlinedAt: !4559)
!4563 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 719, column: 31, scope: !1125, inlinedAt: !4512)
!4567 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4564)
!4568 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4565)
!4569 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4566)
!4570 = !DILocation(line: 719, column: 28, scope: !1125, inlinedAt: !4512)
!4571 = !DILocation(line: 719, column: 9, scope: !1126, inlinedAt: !4512)
!4572 = !DILocation(line: 129, column: 25, scope: !1025, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 78, column: 10, scope: !1030, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 92, column: 10, scope: !1133, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 723, column: 16, scope: !1144, inlinedAt: !4512)
!4576 = !DILocation(line: 129, column: 12, scope: !1025, inlinedAt: !4573)
!4577 = !DILocation(line: 78, column: 21, scope: !1030, inlinedAt: !4574)
!4578 = !DILocation(line: 92, column: 30, scope: !1133, inlinedAt: !4575)
!4579 = !DILocation(line: 725, column: 3, scope: !1126, inlinedAt: !4512)
!4580 = !DILocation(line: 0, scope: !1039, inlinedAt: !4512)
!4581 = !DILocation(line: 727, column: 10, scope: !1039, inlinedAt: !4512)
!4582 = !DILocation(line: 727, column: 3, scope: !1039, inlinedAt: !4512)
!4583 = !DILocation(line: 0, scope: !4469)
!4584 = !DILocation(line: 904, column: 1, scope: !4469)
