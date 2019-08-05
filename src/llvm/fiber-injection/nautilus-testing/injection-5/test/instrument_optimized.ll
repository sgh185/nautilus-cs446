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
  %4 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !991
  %5 = call i64 @msr_read(i32 -1073741567) #12, !dbg !995
  %6 = inttoptr i64 %5 to %struct.cpu*, !dbg !1014
  %7 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i64 0, i32 5, !dbg !1015
  %8 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %7, align 8, !dbg !1015
  %9 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 1, !dbg !1016
  %10 = load %struct.nk_thread*, %struct.nk_thread** %9, align 8, !dbg !1016
  %11 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1017, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %11, metadata !772, metadata !DIExpression()) #11, !dbg !1017
  call void @llvm.dbg.value(metadata %struct.nk_thread* %11, metadata !771, metadata !DIExpression()) #11, !dbg !1019
  %12 = icmp eq %struct.nk_thread* %10, %11, !dbg !1020
  br i1 %12, label %13, label %wrapper_nk_fiber_yield.exit3, !dbg !1021

; <label>:13:                                     ; preds = %2
  %14 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1022
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1046
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1047
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1047
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 4, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.list_head* %18, metadata !1033, metadata !DIExpression()) #11, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.list_head* %18, metadata !1051, metadata !DIExpression()) #11, !dbg !1056
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %18, i64 0, i32 0, !dbg !1058
  %20 = load %struct.list_head*, %struct.list_head** %19, align 8, !dbg !1058
  %21 = icmp eq %struct.list_head* %20, %18, !dbg !1059
  br i1 %21, label %34, label %22, !dbg !1060

; <label>:22:                                     ; preds = %13
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1061
  %23 = getelementptr %struct.list_head, %struct.list_head* %20, i64 -7, i32 1, !dbg !1061
  %24 = bitcast %struct.list_head** %23 to %struct.nk_fiber*, !dbg !1061
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !1035, metadata !DIExpression()) #11, !dbg !1061
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !1034, metadata !DIExpression()) #11, !dbg !1050
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %23, i64 13, !dbg !1062
  call void @llvm.dbg.value(metadata %struct.list_head** %25, metadata !1063, metadata !DIExpression()) #11, !dbg !1066
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %23, i64 14, !dbg !1068
  %27 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !1068
  %28 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !1069
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1070, metadata !DIExpression()) #11, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1075, metadata !DIExpression()) #11, !dbg !1078
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 1, !dbg !1079
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !1080
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 0, !dbg !1081
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.list_head** %25, metadata !780, metadata !DIExpression()) #11, !dbg !1083
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !1085
  store %struct.list_head** %25, %struct.list_head*** %31, align 8, !dbg !1085
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !1086
  store %struct.list_head** %25, %struct.list_head*** %32, align 8, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !1034, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !1012, metadata !DIExpression()) #11, !dbg !1087
  %33 = icmp eq %struct.list_head** %23, null, !dbg !1088
  br i1 %33, label %34, label %55, !dbg !1090

; <label>:34:                                     ; preds = %22, %13
  %35 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1091
  %36 = inttoptr i64 %35 to %struct.cpu*, !dbg !1098
  %37 = getelementptr inbounds %struct.cpu, %struct.cpu* %36, i64 0, i32 5, !dbg !1099
  %38 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %37, align 8, !dbg !1099
  %39 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %38, i64 0, i32 2, !dbg !1100
  %40 = load %struct.nk_fiber*, %struct.nk_fiber** %39, align 8, !dbg !1100
  %41 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1101
  %42 = inttoptr i64 %41 to %struct.cpu*, !dbg !1106
  %43 = getelementptr inbounds %struct.cpu, %struct.cpu* %42, i64 0, i32 5, !dbg !1107
  %44 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %43, align 8, !dbg !1107
  %45 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %44, i64 0, i32 3, !dbg !1108
  %46 = load %struct.nk_fiber*, %struct.nk_fiber** %45, align 8, !dbg !1108
  %47 = icmp eq %struct.nk_fiber* %40, %46, !dbg !1109
  br i1 %47, label %wrapper_nk_fiber_yield.exit3, label %48, !dbg !1110

; <label>:48:                                     ; preds = %34
  %49 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1111
  %50 = inttoptr i64 %49 to %struct.cpu*, !dbg !1116
  %51 = getelementptr inbounds %struct.cpu, %struct.cpu* %50, i64 0, i32 5, !dbg !1117
  %52 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %51, align 8, !dbg !1117
  %53 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %52, i64 0, i32 3, !dbg !1118
  %54 = load %struct.nk_fiber*, %struct.nk_fiber** %53, align 8, !dbg !1118
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %54, metadata !1012, metadata !DIExpression()) #11, !dbg !1087
  br label %55, !dbg !1119

; <label>:55:                                     ; preds = %48, %22
  %56 = phi %struct.nk_fiber* [ %54, %48 ], [ %24, %22 ], !dbg !1120
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !1012, metadata !DIExpression()) #11, !dbg !1087
  %57 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %56) #12, !dbg !1121
  br label %wrapper_nk_fiber_yield.exit3, !dbg !1122

wrapper_nk_fiber_yield.exit3:                     ; preds = %2, %34, %55
  %58 = phi i32 [ 1, %2 ], [ 0, %34 ], [ 0, %55 ], !dbg !1120
  %59 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1123
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %59) #12, !dbg !1124
  call void @llvm.dbg.value(metadata i32 0, metadata !986, metadata !DIExpression()), !dbg !1125
  %60 = load i64, i64* %3, align 8, !dbg !1126
  %61 = icmp eq i64 %60, 0, !dbg !1127
  %62 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1128
  %63 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1130
  %64 = inttoptr i64 %63 to %struct.cpu*, !dbg !1135
  %65 = getelementptr inbounds %struct.cpu, %struct.cpu* %64, i64 0, i32 5, !dbg !1136
  %66 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %65, align 8, !dbg !1136
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %66, i64 0, i32 1, !dbg !1137
  %68 = load %struct.nk_thread*, %struct.nk_thread** %67, align 8, !dbg !1137
  %69 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1138, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %69, metadata !772, metadata !DIExpression()) #11, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.nk_thread* %69, metadata !771, metadata !DIExpression()) #11, !dbg !1140
  %70 = icmp eq %struct.nk_thread* %68, %69, !dbg !1141
  br i1 %70, label %71, label %wrapper_nk_fiber_yield.exit2, !dbg !1142

; <label>:71:                                     ; preds = %wrapper_nk_fiber_yield.exit3
  %72 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1143
  %73 = inttoptr i64 %72 to %struct.cpu*, !dbg !1148
  %74 = getelementptr inbounds %struct.cpu, %struct.cpu* %73, i64 0, i32 5, !dbg !1149
  %75 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %74, align 8, !dbg !1149
  %76 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %75, i64 0, i32 4, !dbg !1150
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1033, metadata !DIExpression()) #11, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1152
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1051, metadata !DIExpression()) #11, !dbg !1153
  %77 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !1155
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !1155
  %79 = icmp eq %struct.list_head* %78, %76, !dbg !1156
  br i1 %79, label %92, label %80, !dbg !1157

; <label>:80:                                     ; preds = %71
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1158
  %81 = getelementptr %struct.list_head, %struct.list_head* %78, i64 -7, i32 1, !dbg !1158
  %82 = bitcast %struct.list_head** %81 to %struct.nk_fiber*, !dbg !1158
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %82, metadata !1035, metadata !DIExpression()) #11, !dbg !1158
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %82, metadata !1034, metadata !DIExpression()) #11, !dbg !1152
  %83 = getelementptr inbounds %struct.list_head*, %struct.list_head** %81, i64 13, !dbg !1159
  call void @llvm.dbg.value(metadata %struct.list_head** %83, metadata !1063, metadata !DIExpression()) #11, !dbg !1160
  %84 = getelementptr inbounds %struct.list_head*, %struct.list_head** %81, i64 14, !dbg !1162
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !1162
  %86 = load %struct.list_head*, %struct.list_head** %83, align 8, !dbg !1163
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1070, metadata !DIExpression()) #11, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.list_head* %86, metadata !1075, metadata !DIExpression()) #11, !dbg !1166
  %87 = getelementptr inbounds %struct.list_head, %struct.list_head* %86, i64 0, i32 1, !dbg !1167
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !1168
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !1169
  store %struct.list_head* %86, %struct.list_head** %88, align 8, !dbg !1170
  call void @llvm.dbg.value(metadata %struct.list_head** %83, metadata !780, metadata !DIExpression()) #11, !dbg !1171
  %89 = bitcast %struct.list_head** %83 to %struct.list_head***, !dbg !1173
  store %struct.list_head** %83, %struct.list_head*** %89, align 8, !dbg !1173
  %90 = bitcast %struct.list_head** %84 to %struct.list_head***, !dbg !1174
  store %struct.list_head** %83, %struct.list_head*** %90, align 8, !dbg !1174
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %82, metadata !1034, metadata !DIExpression()) #11, !dbg !1152
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %82, metadata !1012, metadata !DIExpression()) #11, !dbg !1175
  %91 = icmp eq %struct.list_head** %81, null, !dbg !1176
  br i1 %91, label %92, label %113, !dbg !1177

; <label>:92:                                     ; preds = %80, %71
  %93 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1178
  %94 = inttoptr i64 %93 to %struct.cpu*, !dbg !1182
  %95 = getelementptr inbounds %struct.cpu, %struct.cpu* %94, i64 0, i32 5, !dbg !1183
  %96 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %95, align 8, !dbg !1183
  %97 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %96, i64 0, i32 2, !dbg !1184
  %98 = load %struct.nk_fiber*, %struct.nk_fiber** %97, align 8, !dbg !1184
  %99 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1185
  %100 = inttoptr i64 %99 to %struct.cpu*, !dbg !1189
  %101 = getelementptr inbounds %struct.cpu, %struct.cpu* %100, i64 0, i32 5, !dbg !1190
  %102 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %101, align 8, !dbg !1190
  %103 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %102, i64 0, i32 3, !dbg !1191
  %104 = load %struct.nk_fiber*, %struct.nk_fiber** %103, align 8, !dbg !1191
  %105 = icmp eq %struct.nk_fiber* %98, %104, !dbg !1192
  br i1 %105, label %wrapper_nk_fiber_yield.exit2, label %106, !dbg !1193

; <label>:106:                                    ; preds = %92
  %107 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1194
  %108 = inttoptr i64 %107 to %struct.cpu*, !dbg !1198
  %109 = getelementptr inbounds %struct.cpu, %struct.cpu* %108, i64 0, i32 5, !dbg !1199
  %110 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %109, align 8, !dbg !1199
  %111 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %110, i64 0, i32 3, !dbg !1200
  %112 = load %struct.nk_fiber*, %struct.nk_fiber** %111, align 8, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %112, metadata !1012, metadata !DIExpression()) #11, !dbg !1175
  br label %113, !dbg !1201

; <label>:113:                                    ; preds = %106, %80
  %114 = phi %struct.nk_fiber* [ %112, %106 ], [ %82, %80 ], !dbg !1202
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %114, metadata !1012, metadata !DIExpression()) #11, !dbg !1175
  %115 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %114) #12, !dbg !1203
  br label %wrapper_nk_fiber_yield.exit2, !dbg !1204

wrapper_nk_fiber_yield.exit2:                     ; preds = %wrapper_nk_fiber_yield.exit3, %92, %113
  %116 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit3 ], [ 0, %92 ], [ 0, %113 ], !dbg !1202
  br i1 %61, label %179, label %117, !dbg !1205

; <label>:117:                                    ; preds = %wrapper_nk_fiber_yield.exit2, %wrapper_nk_fiber_yield.exit1
  %118 = phi i32 [ %119, %wrapper_nk_fiber_yield.exit1 ], [ 0, %wrapper_nk_fiber_yield.exit2 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !986, metadata !DIExpression()), !dbg !1125
  %119 = add i32 %118, 1, !dbg !1206
  %120 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %118) #12, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %119, metadata !986, metadata !DIExpression()), !dbg !1125
  %121 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1209
  %122 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1211
  %123 = inttoptr i64 %122 to %struct.cpu*, !dbg !1216
  %124 = getelementptr inbounds %struct.cpu, %struct.cpu* %123, i64 0, i32 5, !dbg !1217
  %125 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %124, align 8, !dbg !1217
  %126 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %125, i64 0, i32 1, !dbg !1218
  %127 = load %struct.nk_thread*, %struct.nk_thread** %126, align 8, !dbg !1218
  %128 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1219, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %128, metadata !772, metadata !DIExpression()) #11, !dbg !1219
  call void @llvm.dbg.value(metadata %struct.nk_thread* %128, metadata !771, metadata !DIExpression()) #11, !dbg !1221
  %129 = icmp eq %struct.nk_thread* %127, %128, !dbg !1222
  br i1 %129, label %130, label %wrapper_nk_fiber_yield.exit1, !dbg !1223

; <label>:130:                                    ; preds = %117
  %131 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1224
  %132 = inttoptr i64 %131 to %struct.cpu*, !dbg !1229
  %133 = getelementptr inbounds %struct.cpu, %struct.cpu* %132, i64 0, i32 5, !dbg !1230
  %134 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %133, align 8, !dbg !1230
  %135 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %134, i64 0, i32 4, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.list_head* %135, metadata !1033, metadata !DIExpression()) #11, !dbg !1232
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1233
  call void @llvm.dbg.value(metadata %struct.list_head* %135, metadata !1051, metadata !DIExpression()) #11, !dbg !1234
  %136 = getelementptr inbounds %struct.list_head, %struct.list_head* %135, i64 0, i32 0, !dbg !1236
  %137 = load %struct.list_head*, %struct.list_head** %136, align 8, !dbg !1236
  %138 = icmp eq %struct.list_head* %137, %135, !dbg !1237
  br i1 %138, label %151, label %139, !dbg !1238

; <label>:139:                                    ; preds = %130
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1239
  %140 = getelementptr %struct.list_head, %struct.list_head* %137, i64 -7, i32 1, !dbg !1239
  %141 = bitcast %struct.list_head** %140 to %struct.nk_fiber*, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %141, metadata !1035, metadata !DIExpression()) #11, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %141, metadata !1034, metadata !DIExpression()) #11, !dbg !1233
  %142 = getelementptr inbounds %struct.list_head*, %struct.list_head** %140, i64 13, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.list_head** %142, metadata !1063, metadata !DIExpression()) #11, !dbg !1241
  %143 = getelementptr inbounds %struct.list_head*, %struct.list_head** %140, i64 14, !dbg !1243
  %144 = load %struct.list_head*, %struct.list_head** %143, align 8, !dbg !1243
  %145 = load %struct.list_head*, %struct.list_head** %142, align 8, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.list_head* %144, metadata !1070, metadata !DIExpression()) #11, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.list_head* %145, metadata !1075, metadata !DIExpression()) #11, !dbg !1247
  %146 = getelementptr inbounds %struct.list_head, %struct.list_head* %145, i64 0, i32 1, !dbg !1248
  store %struct.list_head* %144, %struct.list_head** %146, align 8, !dbg !1249
  %147 = getelementptr inbounds %struct.list_head, %struct.list_head* %144, i64 0, i32 0, !dbg !1250
  store %struct.list_head* %145, %struct.list_head** %147, align 8, !dbg !1251
  call void @llvm.dbg.value(metadata %struct.list_head** %142, metadata !780, metadata !DIExpression()) #11, !dbg !1252
  %148 = bitcast %struct.list_head** %142 to %struct.list_head***, !dbg !1254
  store %struct.list_head** %142, %struct.list_head*** %148, align 8, !dbg !1254
  %149 = bitcast %struct.list_head** %143 to %struct.list_head***, !dbg !1255
  store %struct.list_head** %142, %struct.list_head*** %149, align 8, !dbg !1255
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %141, metadata !1034, metadata !DIExpression()) #11, !dbg !1233
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %141, metadata !1012, metadata !DIExpression()) #11, !dbg !1256
  %150 = icmp eq %struct.list_head** %140, null, !dbg !1257
  br i1 %150, label %151, label %172, !dbg !1258

; <label>:151:                                    ; preds = %139, %130
  %152 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1259
  %153 = inttoptr i64 %152 to %struct.cpu*, !dbg !1263
  %154 = getelementptr inbounds %struct.cpu, %struct.cpu* %153, i64 0, i32 5, !dbg !1264
  %155 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %154, align 8, !dbg !1264
  %156 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %155, i64 0, i32 2, !dbg !1265
  %157 = load %struct.nk_fiber*, %struct.nk_fiber** %156, align 8, !dbg !1265
  %158 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1266
  %159 = inttoptr i64 %158 to %struct.cpu*, !dbg !1270
  %160 = getelementptr inbounds %struct.cpu, %struct.cpu* %159, i64 0, i32 5, !dbg !1271
  %161 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %160, align 8, !dbg !1271
  %162 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %161, i64 0, i32 3, !dbg !1272
  %163 = load %struct.nk_fiber*, %struct.nk_fiber** %162, align 8, !dbg !1272
  %164 = icmp eq %struct.nk_fiber* %157, %163, !dbg !1273
  br i1 %164, label %wrapper_nk_fiber_yield.exit1, label %165, !dbg !1274

; <label>:165:                                    ; preds = %151
  %166 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1275
  %167 = inttoptr i64 %166 to %struct.cpu*, !dbg !1279
  %168 = getelementptr inbounds %struct.cpu, %struct.cpu* %167, i64 0, i32 5, !dbg !1280
  %169 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %168, align 8, !dbg !1280
  %170 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %169, i64 0, i32 3, !dbg !1281
  %171 = load %struct.nk_fiber*, %struct.nk_fiber** %170, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %171, metadata !1012, metadata !DIExpression()) #11, !dbg !1256
  br label %172, !dbg !1282

; <label>:172:                                    ; preds = %165, %139
  %173 = phi %struct.nk_fiber* [ %171, %165 ], [ %141, %139 ], !dbg !1283
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %173, metadata !1012, metadata !DIExpression()) #11, !dbg !1256
  %174 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %173) #12, !dbg !1284
  br label %wrapper_nk_fiber_yield.exit1, !dbg !1285

wrapper_nk_fiber_yield.exit1:                     ; preds = %117, %151, %172
  %175 = phi i32 [ 1, %117 ], [ 0, %151 ], [ 0, %172 ], !dbg !1283
  %176 = zext i32 %119 to i64, !dbg !1286
  %177 = load i64, i64* %3, align 8, !dbg !1126
  %178 = icmp ugt i64 %177, %176, !dbg !1127
  br i1 %178, label %117, label %179, !dbg !1205, !llvm.loop !1287

; <label>:179:                                    ; preds = %wrapper_nk_fiber_yield.exit1, %wrapper_nk_fiber_yield.exit2
  %180 = phi i32 [ 0, %wrapper_nk_fiber_yield.exit2 ], [ %119, %wrapper_nk_fiber_yield.exit1 ], !dbg !1289
  call void @llvm.dbg.value(metadata i32 %180, metadata !986, metadata !DIExpression()), !dbg !1125
  %181 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1290
  %182 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1292
  %183 = inttoptr i64 %182 to %struct.cpu*, !dbg !1297
  %184 = getelementptr inbounds %struct.cpu, %struct.cpu* %183, i64 0, i32 5, !dbg !1298
  %185 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %184, align 8, !dbg !1298
  %186 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %185, i64 0, i32 1, !dbg !1299
  %187 = load %struct.nk_thread*, %struct.nk_thread** %186, align 8, !dbg !1299
  %188 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1300, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %188, metadata !772, metadata !DIExpression()) #11, !dbg !1300
  call void @llvm.dbg.value(metadata %struct.nk_thread* %188, metadata !771, metadata !DIExpression()) #11, !dbg !1302
  %189 = icmp eq %struct.nk_thread* %187, %188, !dbg !1303
  br i1 %189, label %190, label %wrapper_nk_fiber_yield.exit, !dbg !1304

; <label>:190:                                    ; preds = %179
  %191 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1305
  %192 = inttoptr i64 %191 to %struct.cpu*, !dbg !1310
  %193 = getelementptr inbounds %struct.cpu, %struct.cpu* %192, i64 0, i32 5, !dbg !1311
  %194 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %193, align 8, !dbg !1311
  %195 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %194, i64 0, i32 4, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.list_head* %195, metadata !1033, metadata !DIExpression()) #11, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.list_head* %195, metadata !1051, metadata !DIExpression()) #11, !dbg !1315
  %196 = getelementptr inbounds %struct.list_head, %struct.list_head* %195, i64 0, i32 0, !dbg !1317
  %197 = load %struct.list_head*, %struct.list_head** %196, align 8, !dbg !1317
  %198 = icmp eq %struct.list_head* %197, %195, !dbg !1318
  br i1 %198, label %211, label %199, !dbg !1319

; <label>:199:                                    ; preds = %190
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1320
  %200 = getelementptr %struct.list_head, %struct.list_head* %197, i64 -7, i32 1, !dbg !1320
  %201 = bitcast %struct.list_head** %200 to %struct.nk_fiber*, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %201, metadata !1035, metadata !DIExpression()) #11, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %201, metadata !1034, metadata !DIExpression()) #11, !dbg !1314
  %202 = getelementptr inbounds %struct.list_head*, %struct.list_head** %200, i64 13, !dbg !1321
  call void @llvm.dbg.value(metadata %struct.list_head** %202, metadata !1063, metadata !DIExpression()) #11, !dbg !1322
  %203 = getelementptr inbounds %struct.list_head*, %struct.list_head** %200, i64 14, !dbg !1324
  %204 = load %struct.list_head*, %struct.list_head** %203, align 8, !dbg !1324
  %205 = load %struct.list_head*, %struct.list_head** %202, align 8, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.list_head* %204, metadata !1070, metadata !DIExpression()) #11, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.list_head* %205, metadata !1075, metadata !DIExpression()) #11, !dbg !1328
  %206 = getelementptr inbounds %struct.list_head, %struct.list_head* %205, i64 0, i32 1, !dbg !1329
  store %struct.list_head* %204, %struct.list_head** %206, align 8, !dbg !1330
  %207 = getelementptr inbounds %struct.list_head, %struct.list_head* %204, i64 0, i32 0, !dbg !1331
  store %struct.list_head* %205, %struct.list_head** %207, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.list_head** %202, metadata !780, metadata !DIExpression()) #11, !dbg !1333
  %208 = bitcast %struct.list_head** %202 to %struct.list_head***, !dbg !1335
  store %struct.list_head** %202, %struct.list_head*** %208, align 8, !dbg !1335
  %209 = bitcast %struct.list_head** %203 to %struct.list_head***, !dbg !1336
  store %struct.list_head** %202, %struct.list_head*** %209, align 8, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %201, metadata !1034, metadata !DIExpression()) #11, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %201, metadata !1012, metadata !DIExpression()) #11, !dbg !1337
  %210 = icmp eq %struct.list_head** %200, null, !dbg !1338
  br i1 %210, label %211, label %232, !dbg !1339

; <label>:211:                                    ; preds = %199, %190
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1340
  %213 = inttoptr i64 %212 to %struct.cpu*, !dbg !1344
  %214 = getelementptr inbounds %struct.cpu, %struct.cpu* %213, i64 0, i32 5, !dbg !1345
  %215 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %214, align 8, !dbg !1345
  %216 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %215, i64 0, i32 2, !dbg !1346
  %217 = load %struct.nk_fiber*, %struct.nk_fiber** %216, align 8, !dbg !1346
  %218 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1347
  %219 = inttoptr i64 %218 to %struct.cpu*, !dbg !1351
  %220 = getelementptr inbounds %struct.cpu, %struct.cpu* %219, i64 0, i32 5, !dbg !1352
  %221 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %220, align 8, !dbg !1352
  %222 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %221, i64 0, i32 3, !dbg !1353
  %223 = load %struct.nk_fiber*, %struct.nk_fiber** %222, align 8, !dbg !1353
  %224 = icmp eq %struct.nk_fiber* %217, %223, !dbg !1354
  br i1 %224, label %wrapper_nk_fiber_yield.exit, label %225, !dbg !1355

; <label>:225:                                    ; preds = %211
  %226 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1356
  %227 = inttoptr i64 %226 to %struct.cpu*, !dbg !1360
  %228 = getelementptr inbounds %struct.cpu, %struct.cpu* %227, i64 0, i32 5, !dbg !1361
  %229 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %228, align 8, !dbg !1361
  %230 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %229, i64 0, i32 3, !dbg !1362
  %231 = load %struct.nk_fiber*, %struct.nk_fiber** %230, align 8, !dbg !1362
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %231, metadata !1012, metadata !DIExpression()) #11, !dbg !1337
  br label %232, !dbg !1363

; <label>:232:                                    ; preds = %225, %199
  %233 = phi %struct.nk_fiber* [ %231, %225 ], [ %201, %199 ], !dbg !1364
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %233, metadata !1012, metadata !DIExpression()) #11, !dbg !1337
  %234 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %233) #12, !dbg !1365
  br label %wrapper_nk_fiber_yield.exit, !dbg !1366

wrapper_nk_fiber_yield.exit:                      ; preds = %179, %211, %232
  %235 = phi i32 [ 1, %179 ], [ 0, %211 ], [ 0, %232 ], !dbg !1364
  %236 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %180) #12, !dbg !1367
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1368
  ret void, !dbg !1369
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !1370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1372, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8** undef, metadata !1373, metadata !DIExpression()), !dbg !1377
  %3 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1378
  %4 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1380
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1385
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !1386
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !1386
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !1387
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !1387
  %10 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1388, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !1388
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !1390
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !1391
  br i1 %11, label %12, label %wrapper_nk_fiber_yield.exit4, !dbg !1392

; <label>:12:                                     ; preds = %2
  %13 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1393
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !1398
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !1399
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !1399
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1033, metadata !DIExpression()) #11, !dbg !1401
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1051, metadata !DIExpression()) #11, !dbg !1403
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1405
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1405
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !1406
  br i1 %20, label %33, label %21, !dbg !1407

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1408
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !1408
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1035, metadata !DIExpression()) #11, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1034, metadata !DIExpression()) #11, !dbg !1402
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1063, metadata !DIExpression()) #11, !dbg !1410
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !1412
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !1412
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1070, metadata !DIExpression()) #11, !dbg !1414
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1075, metadata !DIExpression()) #11, !dbg !1416
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !1417
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !1418
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !1419
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !1420
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !1421
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !1423
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !1423
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !1424
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !1424
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1034, metadata !DIExpression()) #11, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1012, metadata !DIExpression()) #11, !dbg !1425
  %32 = icmp eq %struct.list_head** %22, null, !dbg !1426
  br i1 %32, label %33, label %54, !dbg !1427

; <label>:33:                                     ; preds = %21, %12
  %34 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1428
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !1432
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !1433
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !1433
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !1434
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !1434
  %40 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1435
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !1439
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !1440
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !1440
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !1441
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !1441
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !1442
  br i1 %46, label %wrapper_nk_fiber_yield.exit4, label %47, !dbg !1443

; <label>:47:                                     ; preds = %33
  %48 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1444
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !1448
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !1449
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !1449
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !1450
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !1450
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1012, metadata !DIExpression()) #11, !dbg !1425
  br label %54, !dbg !1451

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !1452
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1012, metadata !DIExpression()) #11, !dbg !1425
  %56 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !1453
  br label %wrapper_nk_fiber_yield.exit4, !dbg !1454

wrapper_nk_fiber_yield.exit4:                     ; preds = %2, %33, %54
  %57 = phi i32 [ 1, %2 ], [ 0, %33 ], [ 0, %54 ], !dbg !1452
  %58 = bitcast i8* %0 to i64*, !dbg !1455
  call void @llvm.dbg.value(metadata i64* %58, metadata !1374, metadata !DIExpression()), !dbg !1456
  %59 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1457
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %59) #12, !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, metadata !1375, metadata !DIExpression()), !dbg !1459
  %60 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1460
  %61 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1462
  %62 = inttoptr i64 %61 to %struct.cpu*, !dbg !1467
  %63 = getelementptr inbounds %struct.cpu, %struct.cpu* %62, i64 0, i32 5, !dbg !1468
  %64 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %63, align 8, !dbg !1468
  %65 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %64, i64 0, i32 1, !dbg !1469
  %66 = load %struct.nk_thread*, %struct.nk_thread** %65, align 8, !dbg !1469
  %67 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1470, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %67, metadata !772, metadata !DIExpression()) #11, !dbg !1470
  call void @llvm.dbg.value(metadata %struct.nk_thread* %67, metadata !771, metadata !DIExpression()) #11, !dbg !1472
  %68 = icmp eq %struct.nk_thread* %66, %67, !dbg !1473
  br i1 %68, label %69, label %wrapper_nk_fiber_yield.exit3, !dbg !1474

; <label>:69:                                     ; preds = %wrapper_nk_fiber_yield.exit4
  %70 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1475
  %71 = inttoptr i64 %70 to %struct.cpu*, !dbg !1480
  %72 = getelementptr inbounds %struct.cpu, %struct.cpu* %71, i64 0, i32 5, !dbg !1481
  %73 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %72, align 8, !dbg !1481
  %74 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %73, i64 0, i32 4, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.list_head* %74, metadata !1033, metadata !DIExpression()) #11, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.list_head* %74, metadata !1051, metadata !DIExpression()) #11, !dbg !1485
  %75 = getelementptr inbounds %struct.list_head, %struct.list_head* %74, i64 0, i32 0, !dbg !1487
  %76 = load %struct.list_head*, %struct.list_head** %75, align 8, !dbg !1487
  %77 = icmp eq %struct.list_head* %76, %74, !dbg !1488
  br i1 %77, label %90, label %78, !dbg !1489

; <label>:78:                                     ; preds = %69
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1490
  %79 = getelementptr %struct.list_head, %struct.list_head* %76, i64 -7, i32 1, !dbg !1490
  %80 = bitcast %struct.list_head** %79 to %struct.nk_fiber*, !dbg !1490
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1035, metadata !DIExpression()) #11, !dbg !1490
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1034, metadata !DIExpression()) #11, !dbg !1484
  %81 = getelementptr inbounds %struct.list_head*, %struct.list_head** %79, i64 13, !dbg !1491
  call void @llvm.dbg.value(metadata %struct.list_head** %81, metadata !1063, metadata !DIExpression()) #11, !dbg !1492
  %82 = getelementptr inbounds %struct.list_head*, %struct.list_head** %79, i64 14, !dbg !1494
  %83 = load %struct.list_head*, %struct.list_head** %82, align 8, !dbg !1494
  %84 = load %struct.list_head*, %struct.list_head** %81, align 8, !dbg !1495
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1070, metadata !DIExpression()) #11, !dbg !1496
  call void @llvm.dbg.value(metadata %struct.list_head* %84, metadata !1075, metadata !DIExpression()) #11, !dbg !1498
  %85 = getelementptr inbounds %struct.list_head, %struct.list_head* %84, i64 0, i32 1, !dbg !1499
  store %struct.list_head* %83, %struct.list_head** %85, align 8, !dbg !1500
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !1501
  store %struct.list_head* %84, %struct.list_head** %86, align 8, !dbg !1502
  call void @llvm.dbg.value(metadata %struct.list_head** %81, metadata !780, metadata !DIExpression()) #11, !dbg !1503
  %87 = bitcast %struct.list_head** %81 to %struct.list_head***, !dbg !1505
  store %struct.list_head** %81, %struct.list_head*** %87, align 8, !dbg !1505
  %88 = bitcast %struct.list_head** %82 to %struct.list_head***, !dbg !1506
  store %struct.list_head** %81, %struct.list_head*** %88, align 8, !dbg !1506
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1034, metadata !DIExpression()) #11, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %80, metadata !1012, metadata !DIExpression()) #11, !dbg !1507
  %89 = icmp eq %struct.list_head** %79, null, !dbg !1508
  br i1 %89, label %90, label %111, !dbg !1509

; <label>:90:                                     ; preds = %78, %69
  %91 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1510
  %92 = inttoptr i64 %91 to %struct.cpu*, !dbg !1514
  %93 = getelementptr inbounds %struct.cpu, %struct.cpu* %92, i64 0, i32 5, !dbg !1515
  %94 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %93, align 8, !dbg !1515
  %95 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %94, i64 0, i32 2, !dbg !1516
  %96 = load %struct.nk_fiber*, %struct.nk_fiber** %95, align 8, !dbg !1516
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1517
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1521
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1522
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1522
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 3, !dbg !1523
  %102 = load %struct.nk_fiber*, %struct.nk_fiber** %101, align 8, !dbg !1523
  %103 = icmp eq %struct.nk_fiber* %96, %102, !dbg !1524
  br i1 %103, label %wrapper_nk_fiber_yield.exit3, label %104, !dbg !1525

; <label>:104:                                    ; preds = %90
  %105 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1526
  %106 = inttoptr i64 %105 to %struct.cpu*, !dbg !1530
  %107 = getelementptr inbounds %struct.cpu, %struct.cpu* %106, i64 0, i32 5, !dbg !1531
  %108 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %107, align 8, !dbg !1531
  %109 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %108, i64 0, i32 3, !dbg !1532
  %110 = load %struct.nk_fiber*, %struct.nk_fiber** %109, align 8, !dbg !1532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %110, metadata !1012, metadata !DIExpression()) #11, !dbg !1507
  br label %111, !dbg !1533

; <label>:111:                                    ; preds = %104, %78
  %112 = phi %struct.nk_fiber* [ %110, %104 ], [ %80, %78 ], !dbg !1534
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %112, metadata !1012, metadata !DIExpression()) #11, !dbg !1507
  %113 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %112) #12, !dbg !1535
  br label %wrapper_nk_fiber_yield.exit3, !dbg !1536

wrapper_nk_fiber_yield.exit3:                     ; preds = %wrapper_nk_fiber_yield.exit4, %90, %111
  %114 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit4 ], [ 0, %90 ], [ 0, %111 ], !dbg !1534
  %115 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #12, !dbg !1537
  call void @llvm.dbg.value(metadata i32 0, metadata !1375, metadata !DIExpression()), !dbg !1459
  %116 = load i64, i64* %58, align 8, !dbg !1538
  %117 = icmp eq i64 %116, 0, !dbg !1539
  br i1 %117, label %235, label %118, !dbg !1540

; <label>:118:                                    ; preds = %wrapper_nk_fiber_yield.exit3, %wrapper_nk_fiber_yield.exit1
  %119 = phi i32 [ %175, %wrapper_nk_fiber_yield.exit1 ], [ 0, %wrapper_nk_fiber_yield.exit3 ]
  %120 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1541
  %121 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1543
  %122 = inttoptr i64 %121 to %struct.cpu*, !dbg !1548
  %123 = getelementptr inbounds %struct.cpu, %struct.cpu* %122, i64 0, i32 5, !dbg !1549
  %124 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %123, align 8, !dbg !1549
  %125 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %124, i64 0, i32 1, !dbg !1550
  %126 = load %struct.nk_thread*, %struct.nk_thread** %125, align 8, !dbg !1550
  %127 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1551, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %127, metadata !772, metadata !DIExpression()) #11, !dbg !1551
  call void @llvm.dbg.value(metadata %struct.nk_thread* %127, metadata !771, metadata !DIExpression()) #11, !dbg !1553
  %128 = icmp eq %struct.nk_thread* %126, %127, !dbg !1554
  br i1 %128, label %129, label %wrapper_nk_fiber_yield.exit2, !dbg !1555

; <label>:129:                                    ; preds = %118
  %130 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1556
  %131 = inttoptr i64 %130 to %struct.cpu*, !dbg !1561
  %132 = getelementptr inbounds %struct.cpu, %struct.cpu* %131, i64 0, i32 5, !dbg !1562
  %133 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %132, align 8, !dbg !1562
  %134 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %133, i64 0, i32 4, !dbg !1563
  call void @llvm.dbg.value(metadata %struct.list_head* %134, metadata !1033, metadata !DIExpression()) #11, !dbg !1564
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.list_head* %134, metadata !1051, metadata !DIExpression()) #11, !dbg !1566
  %135 = getelementptr inbounds %struct.list_head, %struct.list_head* %134, i64 0, i32 0, !dbg !1568
  %136 = load %struct.list_head*, %struct.list_head** %135, align 8, !dbg !1568
  %137 = icmp eq %struct.list_head* %136, %134, !dbg !1569
  br i1 %137, label %150, label %138, !dbg !1570

; <label>:138:                                    ; preds = %129
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1571
  %139 = getelementptr %struct.list_head, %struct.list_head* %136, i64 -7, i32 1, !dbg !1571
  %140 = bitcast %struct.list_head** %139 to %struct.nk_fiber*, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %140, metadata !1035, metadata !DIExpression()) #11, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %140, metadata !1034, metadata !DIExpression()) #11, !dbg !1565
  %141 = getelementptr inbounds %struct.list_head*, %struct.list_head** %139, i64 13, !dbg !1572
  call void @llvm.dbg.value(metadata %struct.list_head** %141, metadata !1063, metadata !DIExpression()) #11, !dbg !1573
  %142 = getelementptr inbounds %struct.list_head*, %struct.list_head** %139, i64 14, !dbg !1575
  %143 = load %struct.list_head*, %struct.list_head** %142, align 8, !dbg !1575
  %144 = load %struct.list_head*, %struct.list_head** %141, align 8, !dbg !1576
  call void @llvm.dbg.value(metadata %struct.list_head* %143, metadata !1070, metadata !DIExpression()) #11, !dbg !1577
  call void @llvm.dbg.value(metadata %struct.list_head* %144, metadata !1075, metadata !DIExpression()) #11, !dbg !1579
  %145 = getelementptr inbounds %struct.list_head, %struct.list_head* %144, i64 0, i32 1, !dbg !1580
  store %struct.list_head* %143, %struct.list_head** %145, align 8, !dbg !1581
  %146 = getelementptr inbounds %struct.list_head, %struct.list_head* %143, i64 0, i32 0, !dbg !1582
  store %struct.list_head* %144, %struct.list_head** %146, align 8, !dbg !1583
  call void @llvm.dbg.value(metadata %struct.list_head** %141, metadata !780, metadata !DIExpression()) #11, !dbg !1584
  %147 = bitcast %struct.list_head** %141 to %struct.list_head***, !dbg !1586
  store %struct.list_head** %141, %struct.list_head*** %147, align 8, !dbg !1586
  %148 = bitcast %struct.list_head** %142 to %struct.list_head***, !dbg !1587
  store %struct.list_head** %141, %struct.list_head*** %148, align 8, !dbg !1587
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %140, metadata !1034, metadata !DIExpression()) #11, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %140, metadata !1012, metadata !DIExpression()) #11, !dbg !1588
  %149 = icmp eq %struct.list_head** %139, null, !dbg !1589
  br i1 %149, label %150, label %171, !dbg !1590

; <label>:150:                                    ; preds = %138, %129
  %151 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1591
  %152 = inttoptr i64 %151 to %struct.cpu*, !dbg !1595
  %153 = getelementptr inbounds %struct.cpu, %struct.cpu* %152, i64 0, i32 5, !dbg !1596
  %154 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %153, align 8, !dbg !1596
  %155 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %154, i64 0, i32 2, !dbg !1597
  %156 = load %struct.nk_fiber*, %struct.nk_fiber** %155, align 8, !dbg !1597
  %157 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1598
  %158 = inttoptr i64 %157 to %struct.cpu*, !dbg !1602
  %159 = getelementptr inbounds %struct.cpu, %struct.cpu* %158, i64 0, i32 5, !dbg !1603
  %160 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %159, align 8, !dbg !1603
  %161 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %160, i64 0, i32 3, !dbg !1604
  %162 = load %struct.nk_fiber*, %struct.nk_fiber** %161, align 8, !dbg !1604
  %163 = icmp eq %struct.nk_fiber* %156, %162, !dbg !1605
  br i1 %163, label %wrapper_nk_fiber_yield.exit2, label %164, !dbg !1606

; <label>:164:                                    ; preds = %150
  %165 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1607
  %166 = inttoptr i64 %165 to %struct.cpu*, !dbg !1611
  %167 = getelementptr inbounds %struct.cpu, %struct.cpu* %166, i64 0, i32 5, !dbg !1612
  %168 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %167, align 8, !dbg !1612
  %169 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %168, i64 0, i32 3, !dbg !1613
  %170 = load %struct.nk_fiber*, %struct.nk_fiber** %169, align 8, !dbg !1613
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %170, metadata !1012, metadata !DIExpression()) #11, !dbg !1588
  br label %171, !dbg !1614

; <label>:171:                                    ; preds = %164, %138
  %172 = phi %struct.nk_fiber* [ %170, %164 ], [ %140, %138 ], !dbg !1615
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %172, metadata !1012, metadata !DIExpression()) #11, !dbg !1588
  %173 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %172) #12, !dbg !1616
  br label %wrapper_nk_fiber_yield.exit2, !dbg !1617

wrapper_nk_fiber_yield.exit2:                     ; preds = %118, %150, %171
  %174 = phi i32 [ 1, %118 ], [ 0, %150 ], [ 0, %171 ], !dbg !1615
  call void @llvm.dbg.value(metadata i32 %119, metadata !1375, metadata !DIExpression()), !dbg !1459
  %175 = add i32 %119, 1, !dbg !1618
  %176 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %119) #12, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %175, metadata !1375, metadata !DIExpression()), !dbg !1459
  %177 = zext i32 %175 to i64, !dbg !1621
  %178 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1622
  %179 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1624
  %180 = inttoptr i64 %179 to %struct.cpu*, !dbg !1629
  %181 = getelementptr inbounds %struct.cpu, %struct.cpu* %180, i64 0, i32 5, !dbg !1630
  %182 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %181, align 8, !dbg !1630
  %183 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %182, i64 0, i32 1, !dbg !1631
  %184 = load %struct.nk_thread*, %struct.nk_thread** %183, align 8, !dbg !1631
  %185 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1632, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %185, metadata !772, metadata !DIExpression()) #11, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.nk_thread* %185, metadata !771, metadata !DIExpression()) #11, !dbg !1634
  %186 = icmp eq %struct.nk_thread* %184, %185, !dbg !1635
  br i1 %186, label %187, label %wrapper_nk_fiber_yield.exit1, !dbg !1636

; <label>:187:                                    ; preds = %wrapper_nk_fiber_yield.exit2
  %188 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1637
  %189 = inttoptr i64 %188 to %struct.cpu*, !dbg !1642
  %190 = getelementptr inbounds %struct.cpu, %struct.cpu* %189, i64 0, i32 5, !dbg !1643
  %191 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %190, align 8, !dbg !1643
  %192 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %191, i64 0, i32 4, !dbg !1644
  call void @llvm.dbg.value(metadata %struct.list_head* %192, metadata !1033, metadata !DIExpression()) #11, !dbg !1645
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1646
  call void @llvm.dbg.value(metadata %struct.list_head* %192, metadata !1051, metadata !DIExpression()) #11, !dbg !1647
  %193 = getelementptr inbounds %struct.list_head, %struct.list_head* %192, i64 0, i32 0, !dbg !1649
  %194 = load %struct.list_head*, %struct.list_head** %193, align 8, !dbg !1649
  %195 = icmp eq %struct.list_head* %194, %192, !dbg !1650
  br i1 %195, label %208, label %196, !dbg !1651

; <label>:196:                                    ; preds = %187
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1652
  %197 = getelementptr %struct.list_head, %struct.list_head* %194, i64 -7, i32 1, !dbg !1652
  %198 = bitcast %struct.list_head** %197 to %struct.nk_fiber*, !dbg !1652
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %198, metadata !1035, metadata !DIExpression()) #11, !dbg !1652
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %198, metadata !1034, metadata !DIExpression()) #11, !dbg !1646
  %199 = getelementptr inbounds %struct.list_head*, %struct.list_head** %197, i64 13, !dbg !1653
  call void @llvm.dbg.value(metadata %struct.list_head** %199, metadata !1063, metadata !DIExpression()) #11, !dbg !1654
  %200 = getelementptr inbounds %struct.list_head*, %struct.list_head** %197, i64 14, !dbg !1656
  %201 = load %struct.list_head*, %struct.list_head** %200, align 8, !dbg !1656
  %202 = load %struct.list_head*, %struct.list_head** %199, align 8, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.list_head* %201, metadata !1070, metadata !DIExpression()) #11, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.list_head* %202, metadata !1075, metadata !DIExpression()) #11, !dbg !1660
  %203 = getelementptr inbounds %struct.list_head, %struct.list_head* %202, i64 0, i32 1, !dbg !1661
  store %struct.list_head* %201, %struct.list_head** %203, align 8, !dbg !1662
  %204 = getelementptr inbounds %struct.list_head, %struct.list_head* %201, i64 0, i32 0, !dbg !1663
  store %struct.list_head* %202, %struct.list_head** %204, align 8, !dbg !1664
  call void @llvm.dbg.value(metadata %struct.list_head** %199, metadata !780, metadata !DIExpression()) #11, !dbg !1665
  %205 = bitcast %struct.list_head** %199 to %struct.list_head***, !dbg !1667
  store %struct.list_head** %199, %struct.list_head*** %205, align 8, !dbg !1667
  %206 = bitcast %struct.list_head** %200 to %struct.list_head***, !dbg !1668
  store %struct.list_head** %199, %struct.list_head*** %206, align 8, !dbg !1668
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %198, metadata !1034, metadata !DIExpression()) #11, !dbg !1646
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %198, metadata !1012, metadata !DIExpression()) #11, !dbg !1669
  %207 = icmp eq %struct.list_head** %197, null, !dbg !1670
  br i1 %207, label %208, label %229, !dbg !1671

; <label>:208:                                    ; preds = %196, %187
  %209 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1672
  %210 = inttoptr i64 %209 to %struct.cpu*, !dbg !1676
  %211 = getelementptr inbounds %struct.cpu, %struct.cpu* %210, i64 0, i32 5, !dbg !1677
  %212 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %211, align 8, !dbg !1677
  %213 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %212, i64 0, i32 2, !dbg !1678
  %214 = load %struct.nk_fiber*, %struct.nk_fiber** %213, align 8, !dbg !1678
  %215 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1679
  %216 = inttoptr i64 %215 to %struct.cpu*, !dbg !1683
  %217 = getelementptr inbounds %struct.cpu, %struct.cpu* %216, i64 0, i32 5, !dbg !1684
  %218 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %217, align 8, !dbg !1684
  %219 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %218, i64 0, i32 3, !dbg !1685
  %220 = load %struct.nk_fiber*, %struct.nk_fiber** %219, align 8, !dbg !1685
  %221 = icmp eq %struct.nk_fiber* %214, %220, !dbg !1686
  br i1 %221, label %wrapper_nk_fiber_yield.exit1, label %222, !dbg !1687

; <label>:222:                                    ; preds = %208
  %223 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1688
  %224 = inttoptr i64 %223 to %struct.cpu*, !dbg !1692
  %225 = getelementptr inbounds %struct.cpu, %struct.cpu* %224, i64 0, i32 5, !dbg !1693
  %226 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %225, align 8, !dbg !1693
  %227 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %226, i64 0, i32 3, !dbg !1694
  %228 = load %struct.nk_fiber*, %struct.nk_fiber** %227, align 8, !dbg !1694
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %228, metadata !1012, metadata !DIExpression()) #11, !dbg !1669
  br label %229, !dbg !1695

; <label>:229:                                    ; preds = %222, %196
  %230 = phi %struct.nk_fiber* [ %228, %222 ], [ %198, %196 ], !dbg !1696
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %230, metadata !1012, metadata !DIExpression()) #11, !dbg !1669
  %231 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %230) #12, !dbg !1697
  br label %wrapper_nk_fiber_yield.exit1, !dbg !1698

wrapper_nk_fiber_yield.exit1:                     ; preds = %wrapper_nk_fiber_yield.exit2, %208, %229
  %232 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit2 ], [ 0, %208 ], [ 0, %229 ], !dbg !1696
  %233 = load i64, i64* %58, align 8, !dbg !1538
  %234 = icmp ugt i64 %233, %177, !dbg !1539
  br i1 %234, label %118, label %235, !dbg !1540, !llvm.loop !1699

; <label>:235:                                    ; preds = %wrapper_nk_fiber_yield.exit1, %wrapper_nk_fiber_yield.exit3
  %236 = phi i32 [ 0, %wrapper_nk_fiber_yield.exit3 ], [ %175, %wrapper_nk_fiber_yield.exit1 ], !dbg !1701
  call void @llvm.dbg.value(metadata i32 %236, metadata !1375, metadata !DIExpression()), !dbg !1459
  %237 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %236) #12, !dbg !1702
  %238 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1703
  %239 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1705
  %240 = inttoptr i64 %239 to %struct.cpu*, !dbg !1710
  %241 = getelementptr inbounds %struct.cpu, %struct.cpu* %240, i64 0, i32 5, !dbg !1711
  %242 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %241, align 8, !dbg !1711
  %243 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %242, i64 0, i32 1, !dbg !1712
  %244 = load %struct.nk_thread*, %struct.nk_thread** %243, align 8, !dbg !1712
  %245 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1713, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %245, metadata !772, metadata !DIExpression()) #11, !dbg !1713
  call void @llvm.dbg.value(metadata %struct.nk_thread* %245, metadata !771, metadata !DIExpression()) #11, !dbg !1715
  %246 = icmp eq %struct.nk_thread* %244, %245, !dbg !1716
  br i1 %246, label %247, label %wrapper_nk_fiber_yield.exit, !dbg !1717

; <label>:247:                                    ; preds = %235
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1718
  %249 = inttoptr i64 %248 to %struct.cpu*, !dbg !1723
  %250 = getelementptr inbounds %struct.cpu, %struct.cpu* %249, i64 0, i32 5, !dbg !1724
  %251 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %250, align 8, !dbg !1724
  %252 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %251, i64 0, i32 4, !dbg !1725
  call void @llvm.dbg.value(metadata %struct.list_head* %252, metadata !1033, metadata !DIExpression()) #11, !dbg !1726
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !1727
  call void @llvm.dbg.value(metadata %struct.list_head* %252, metadata !1051, metadata !DIExpression()) #11, !dbg !1728
  %253 = getelementptr inbounds %struct.list_head, %struct.list_head* %252, i64 0, i32 0, !dbg !1730
  %254 = load %struct.list_head*, %struct.list_head** %253, align 8, !dbg !1730
  %255 = icmp eq %struct.list_head* %254, %252, !dbg !1731
  br i1 %255, label %268, label %256, !dbg !1732

; <label>:256:                                    ; preds = %247
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !1733
  %257 = getelementptr %struct.list_head, %struct.list_head* %254, i64 -7, i32 1, !dbg !1733
  %258 = bitcast %struct.list_head** %257 to %struct.nk_fiber*, !dbg !1733
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %258, metadata !1035, metadata !DIExpression()) #11, !dbg !1733
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %258, metadata !1034, metadata !DIExpression()) #11, !dbg !1727
  %259 = getelementptr inbounds %struct.list_head*, %struct.list_head** %257, i64 13, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.list_head** %259, metadata !1063, metadata !DIExpression()) #11, !dbg !1735
  %260 = getelementptr inbounds %struct.list_head*, %struct.list_head** %257, i64 14, !dbg !1737
  %261 = load %struct.list_head*, %struct.list_head** %260, align 8, !dbg !1737
  %262 = load %struct.list_head*, %struct.list_head** %259, align 8, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.list_head* %261, metadata !1070, metadata !DIExpression()) #11, !dbg !1739
  call void @llvm.dbg.value(metadata %struct.list_head* %262, metadata !1075, metadata !DIExpression()) #11, !dbg !1741
  %263 = getelementptr inbounds %struct.list_head, %struct.list_head* %262, i64 0, i32 1, !dbg !1742
  store %struct.list_head* %261, %struct.list_head** %263, align 8, !dbg !1743
  %264 = getelementptr inbounds %struct.list_head, %struct.list_head* %261, i64 0, i32 0, !dbg !1744
  store %struct.list_head* %262, %struct.list_head** %264, align 8, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.list_head** %259, metadata !780, metadata !DIExpression()) #11, !dbg !1746
  %265 = bitcast %struct.list_head** %259 to %struct.list_head***, !dbg !1748
  store %struct.list_head** %259, %struct.list_head*** %265, align 8, !dbg !1748
  %266 = bitcast %struct.list_head** %260 to %struct.list_head***, !dbg !1749
  store %struct.list_head** %259, %struct.list_head*** %266, align 8, !dbg !1749
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %258, metadata !1034, metadata !DIExpression()) #11, !dbg !1727
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %258, metadata !1012, metadata !DIExpression()) #11, !dbg !1750
  %267 = icmp eq %struct.list_head** %257, null, !dbg !1751
  br i1 %267, label %268, label %289, !dbg !1752

; <label>:268:                                    ; preds = %256, %247
  %269 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1753
  %270 = inttoptr i64 %269 to %struct.cpu*, !dbg !1757
  %271 = getelementptr inbounds %struct.cpu, %struct.cpu* %270, i64 0, i32 5, !dbg !1758
  %272 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %271, align 8, !dbg !1758
  %273 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %272, i64 0, i32 2, !dbg !1759
  %274 = load %struct.nk_fiber*, %struct.nk_fiber** %273, align 8, !dbg !1759
  %275 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1760
  %276 = inttoptr i64 %275 to %struct.cpu*, !dbg !1764
  %277 = getelementptr inbounds %struct.cpu, %struct.cpu* %276, i64 0, i32 5, !dbg !1765
  %278 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %277, align 8, !dbg !1765
  %279 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %278, i64 0, i32 3, !dbg !1766
  %280 = load %struct.nk_fiber*, %struct.nk_fiber** %279, align 8, !dbg !1766
  %281 = icmp eq %struct.nk_fiber* %274, %280, !dbg !1767
  br i1 %281, label %wrapper_nk_fiber_yield.exit, label %282, !dbg !1768

; <label>:282:                                    ; preds = %268
  %283 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1769
  %284 = inttoptr i64 %283 to %struct.cpu*, !dbg !1773
  %285 = getelementptr inbounds %struct.cpu, %struct.cpu* %284, i64 0, i32 5, !dbg !1774
  %286 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %285, align 8, !dbg !1774
  %287 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %286, i64 0, i32 3, !dbg !1775
  %288 = load %struct.nk_fiber*, %struct.nk_fiber** %287, align 8, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %288, metadata !1012, metadata !DIExpression()) #11, !dbg !1750
  br label %289, !dbg !1776

; <label>:289:                                    ; preds = %282, %256
  %290 = phi %struct.nk_fiber* [ %288, %282 ], [ %258, %256 ], !dbg !1777
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %290, metadata !1012, metadata !DIExpression()) #11, !dbg !1750
  %291 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %290) #12, !dbg !1778
  br label %wrapper_nk_fiber_yield.exit, !dbg !1779

wrapper_nk_fiber_yield.exit:                      ; preds = %235, %268, %289
  %292 = phi i32 [ 1, %235 ], [ 0, %268 ], [ 0, %289 ], !dbg !1777
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1780
  ret void, !dbg !1781
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1782 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1784, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8* %1, metadata !1785, metadata !DIExpression()), !dbg !1787
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1788
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1788
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1797, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #11, !dbg !1797
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #11, !dbg !1799
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !1800
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !1800
  %9 = load i64, i64* %8, align 8, !dbg !1800
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1801
  %10 = bitcast i64* %4 to i8*, !dbg !1802
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1802
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1803
  %11 = call i8* @kmem_malloc(i64 8) #12, !dbg !1804
  call void @llvm.dbg.value(metadata i8* %11, metadata !1794, metadata !DIExpression()) #11, !dbg !1804
  %12 = icmp eq i8* %11, null, !dbg !1805
  br i1 %12, label %13, label %15, !dbg !1807

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1808
  br label %115, !dbg !1810

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !1811
  call void @llvm.dbg.value(metadata i64* %16, metadata !1793, metadata !DIExpression()) #11, !dbg !1812
  %17 = load i64, i64* %4, align 8, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %17, metadata !1792, metadata !DIExpression()) #11, !dbg !1814
  %18 = urem i64 %17, 5000, !dbg !1815
  store i64 %18, i64* %16, align 8, !dbg !1816
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1791, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1817
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1818
  call void @llvm.dbg.value(metadata i8* %11, metadata !589, metadata !DIExpression()) #11, !dbg !1820
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1822
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !593, metadata !DIExpression()) #11, !dbg !1824
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %11, metadata !606, metadata !DIExpression()) #11, !dbg !1827
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1828
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !609, metadata !DIExpression()) #11, !dbg !1830
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1831
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1832
  %19 = call i8* @kmem_malloc(i64 152) #12, !dbg !1833
  call void @llvm.dbg.value(metadata i8* %19, metadata !612, metadata !DIExpression()) #11, !dbg !1833
  call void @llvm.dbg.value(metadata i8* %19, metadata !610, metadata !DIExpression()) #11, !dbg !1831
  %20 = icmp eq i8* %19, null, !dbg !1834
  br i1 %20, label %nk_fiber_create.exit, label %21, !dbg !1835

; <label>:21:                                     ; preds = %15
  %22 = call i8* @memset(i8* nonnull %19, i8 signext 0, i64 152) #12, !dbg !1836
  %23 = getelementptr inbounds i8, i8* %19, i64 44, !dbg !1837
  %24 = bitcast i8* %23 to i32*, !dbg !1837
  store i32 0, i32* %24, align 4, !dbg !1838
  %25 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1839
  %26 = bitcast i8* %25 to i64*, !dbg !1839
  store i64 2097152, i64* %26, align 8, !dbg !1840
  %27 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %27, metadata !614, metadata !DIExpression()) #11, !dbg !1841
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1842
  %29 = bitcast i8* %28 to i8**, !dbg !1842
  store i8* %27, i8** %29, align 8, !dbg !1843
  %30 = icmp eq i8* %27, null, !dbg !1844
  br i1 %30, label %31, label %32, !dbg !1845

; <label>:31:                                     ; preds = %21
  call void @kmem_free(i8* nonnull %19) #12, !dbg !1846
  br label %nk_fiber_create.exit, !dbg !1847

; <label>:32:                                     ; preds = %21
  %33 = ptrtoint i8* %27 to i64, !dbg !1845
  %34 = getelementptr inbounds i8, i8* %19, i64 120, !dbg !1848
  %35 = bitcast i8* %34 to void (i8*, i8**)**, !dbg !1848
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %35, align 8, !dbg !1849
  %36 = getelementptr inbounds i8, i8* %19, i64 128, !dbg !1850
  %37 = bitcast i8* %36 to i8**, !dbg !1850
  store i8* %11, i8** %37, align 8, !dbg !1851
  %38 = getelementptr inbounds i8, i8* %19, i64 136, !dbg !1852
  %39 = bitcast i8* %38 to i8***, !dbg !1852
  store i8** null, i8*** %39, align 8, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %19, metadata !648, metadata !DIExpression()) #11, !dbg !1854
  %40 = load i64, i64* %26, align 8, !dbg !1856
  %41 = bitcast i8* %19 to i64*, !dbg !1857
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1858
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1860
  %42 = add i64 %33, -8, !dbg !1861
  %43 = add i64 %42, %40, !dbg !1862
  store i64 %43, i64* %41, align 8, !dbg !1862
  %44 = inttoptr i64 %43 to i64*, !dbg !1863
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %44, align 8, !dbg !1864
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1865
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1867
  %45 = load i64, i64* %41, align 8, !dbg !1868
  %46 = add i64 %45, -8, !dbg !1868
  store i64 %46, i64* %41, align 8, !dbg !1868
  %47 = inttoptr i64 %46 to i64*, !dbg !1869
  store i64 0, i64* %47, align 8, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1871
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1873
  %48 = load i64, i64* %41, align 8, !dbg !1874
  %49 = add i64 %48, -8, !dbg !1874
  store i64 %49, i64* %41, align 8, !dbg !1874
  %50 = inttoptr i64 %49 to i64*, !dbg !1875
  store i64 0, i64* %50, align 8, !dbg !1876
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1877
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1879
  %51 = load i64, i64* %41, align 8, !dbg !1880
  %52 = add i64 %51, -8, !dbg !1880
  store i64 %52, i64* %41, align 8, !dbg !1880
  %53 = inttoptr i64 %52 to i64*, !dbg !1881
  store i64 0, i64* %53, align 8, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1885
  %54 = load i64, i64* %41, align 8, !dbg !1886
  %55 = add i64 %54, -8, !dbg !1886
  store i64 %55, i64* %41, align 8, !dbg !1886
  %56 = inttoptr i64 %55 to i64*, !dbg !1887
  store i64 0, i64* %56, align 8, !dbg !1888
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1889
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1891
  %57 = load i64, i64* %41, align 8, !dbg !1892
  %58 = add i64 %57, -8, !dbg !1892
  store i64 %58, i64* %41, align 8, !dbg !1892
  %59 = inttoptr i64 %58 to i64*, !dbg !1893
  store i64 0, i64* %59, align 8, !dbg !1894
  %60 = ptrtoint i8* %19 to i64, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %60, metadata !662, metadata !DIExpression()) #11, !dbg !1898
  %61 = load i64, i64* %41, align 8, !dbg !1899
  %62 = add i64 %61, -8, !dbg !1899
  store i64 %62, i64* %41, align 8, !dbg !1899
  %63 = inttoptr i64 %62 to i64*, !dbg !1900
  store i64 %60, i64* %63, align 8, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1902
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1904
  %64 = load i64, i64* %41, align 8, !dbg !1905
  %65 = add i64 %64, -8, !dbg !1905
  store i64 %65, i64* %41, align 8, !dbg !1905
  %66 = inttoptr i64 %65 to i64*, !dbg !1906
  store i64 0, i64* %66, align 8, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1908
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1910
  %67 = load i64, i64* %41, align 8, !dbg !1911
  %68 = add i64 %67, -8, !dbg !1911
  store i64 %68, i64* %41, align 8, !dbg !1911
  %69 = inttoptr i64 %68 to i64*, !dbg !1912
  store i64 0, i64* %69, align 8, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1914
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1916
  %70 = load i64, i64* %41, align 8, !dbg !1917
  %71 = add i64 %70, -8, !dbg !1917
  store i64 %71, i64* %41, align 8, !dbg !1917
  %72 = inttoptr i64 %71 to i64*, !dbg !1918
  store i64 0, i64* %72, align 8, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1920
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1922
  %73 = load i64, i64* %41, align 8, !dbg !1923
  %74 = add i64 %73, -8, !dbg !1923
  store i64 %74, i64* %41, align 8, !dbg !1923
  %75 = inttoptr i64 %74 to i64*, !dbg !1924
  store i64 0, i64* %75, align 8, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1926
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1928
  %76 = load i64, i64* %41, align 8, !dbg !1929
  %77 = add i64 %76, -8, !dbg !1929
  store i64 %77, i64* %41, align 8, !dbg !1929
  %78 = inttoptr i64 %77 to i64*, !dbg !1930
  store i64 0, i64* %78, align 8, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1934
  %79 = load i64, i64* %41, align 8, !dbg !1935
  %80 = add i64 %79, -8, !dbg !1935
  store i64 %80, i64* %41, align 8, !dbg !1935
  %81 = inttoptr i64 %80 to i64*, !dbg !1936
  store i64 0, i64* %81, align 8, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1938
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1940
  %82 = load i64, i64* %41, align 8, !dbg !1941
  %83 = add i64 %82, -8, !dbg !1941
  store i64 %83, i64* %41, align 8, !dbg !1941
  %84 = inttoptr i64 %83 to i64*, !dbg !1942
  store i64 0, i64* %84, align 8, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1946
  %85 = load i64, i64* %41, align 8, !dbg !1947
  %86 = add i64 %85, -8, !dbg !1947
  store i64 %86, i64* %41, align 8, !dbg !1947
  %87 = inttoptr i64 %86 to i64*, !dbg !1948
  store i64 0, i64* %87, align 8, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1950
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1952
  %88 = load i64, i64* %41, align 8, !dbg !1953
  %89 = add i64 %88, -8, !dbg !1953
  store i64 %89, i64* %41, align 8, !dbg !1953
  %90 = inttoptr i64 %89 to i64*, !dbg !1954
  store i64 0, i64* %90, align 8, !dbg !1955
  %91 = bitcast %struct.nk_fiber** %3 to i8**, !dbg !1956
  store i8* %19, i8** %91, align 8, !dbg !1956
  %92 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1957, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !772, metadata !DIExpression()) #11, !dbg !1957
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !771, metadata !DIExpression()) #11, !dbg !1959
  %93 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %92, i64 0, i32 24, !dbg !1960
  %94 = bitcast %struct.nk_virtual_console** %93 to i64*, !dbg !1960
  %95 = load i64, i64* %94, align 8, !dbg !1960
  %96 = getelementptr inbounds i8, i8* %19, i64 48, !dbg !1961
  %97 = bitcast i8* %96 to i64*, !dbg !1962
  store i64 %95, i64* %97, align 8, !dbg !1962
  %98 = getelementptr inbounds i8, i8* %19, i64 104, !dbg !1963
  call void @llvm.dbg.value(metadata i8* %98, metadata !780, metadata !DIExpression()) #11, !dbg !1964
  %99 = bitcast i8* %98 to i8**, !dbg !1966
  store i8* %98, i8** %99, align 8, !dbg !1966
  %100 = getelementptr inbounds i8, i8* %19, i64 112, !dbg !1967
  %101 = bitcast i8* %100 to i8**, !dbg !1968
  store i8* %98, i8** %101, align 8, !dbg !1968
  %102 = getelementptr inbounds i8, i8* %19, i64 96, !dbg !1969
  %103 = bitcast i8* %102 to i32*, !dbg !1969
  store i32 0, i32* %103, align 8, !dbg !1970
  %104 = getelementptr inbounds i8, i8* %19, i64 64, !dbg !1971
  call void @llvm.dbg.value(metadata i8* %104, metadata !780, metadata !DIExpression()) #11, !dbg !1972
  %105 = bitcast i8* %104 to i8**, !dbg !1974
  store i8* %104, i8** %105, align 8, !dbg !1974
  %106 = getelementptr inbounds i8, i8* %19, i64 72, !dbg !1975
  %107 = bitcast i8* %106 to i8**, !dbg !1976
  store i8* %104, i8** %107, align 8, !dbg !1976
  %108 = getelementptr inbounds i8, i8* %19, i64 80, !dbg !1977
  call void @llvm.dbg.value(metadata i8* %108, metadata !780, metadata !DIExpression()) #11, !dbg !1978
  %109 = bitcast i8* %108 to i8**, !dbg !1980
  store i8* %108, i8** %109, align 8, !dbg !1980
  %110 = getelementptr inbounds i8, i8* %19, i64 88, !dbg !1981
  %111 = bitcast i8* %110 to i8**, !dbg !1982
  store i8* %108, i8** %111, align 8, !dbg !1982
  br label %nk_fiber_create.exit, !dbg !1983

nk_fiber_create.exit:                             ; preds = %15, %31, %32
  %112 = phi i32 [ 0, %32 ], [ -22, %31 ], [ -22, %15 ], !dbg !1984
  %113 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1985
  %114 = call i32 @nk_fiber_run(%struct.nk_fiber* %113, i8 zeroext 1) #12, !dbg !1986
  br label %115, !dbg !1987

; <label>:115:                                    ; preds = %13, %nk_fiber_create.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1988
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1988
  ret i32 0, !dbg !1989
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !1789 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1990
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1990
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1991, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #11, !dbg !1991
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #11, !dbg !1993
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !1994
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !1994
  %7 = load i64, i64* %6, align 8, !dbg !1994
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1995
  %8 = bitcast i64* %2 to i8*, !dbg !1996
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1996
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #12, !dbg !1997
  %9 = call i8* @kmem_malloc(i64 8) #12, !dbg !1998
  call void @llvm.dbg.value(metadata i8* %9, metadata !1794, metadata !DIExpression()), !dbg !1998
  %10 = icmp eq i8* %9, null, !dbg !1999
  br i1 %10, label %11, label %13, !dbg !2000

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !2001
  br label %113, !dbg !2002

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !2003
  call void @llvm.dbg.value(metadata i64* %14, metadata !1793, metadata !DIExpression()), !dbg !2004
  %15 = load i64, i64* %2, align 8, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %15, metadata !1792, metadata !DIExpression()), !dbg !2006
  %16 = urem i64 %15, 5000, !dbg !2007
  store i64 %16, i64* %14, align 8, !dbg !2008
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1791, metadata !DIExpression(DW_OP_deref)), !dbg !2009
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %9, metadata !589, metadata !DIExpression()) #11, !dbg !2012
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !2013
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !2014
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !2015
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !2016
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !2017
  call void @llvm.dbg.value(metadata i8* %9, metadata !606, metadata !DIExpression()) #11, !dbg !2019
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !2020
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !2021
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !609, metadata !DIExpression()) #11, !dbg !2022
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !2023
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !2024
  %17 = call i8* @kmem_malloc(i64 152) #12, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %17, metadata !612, metadata !DIExpression()) #11, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %17, metadata !610, metadata !DIExpression()) #11, !dbg !2023
  %18 = icmp eq i8* %17, null, !dbg !2026
  br i1 %18, label %nk_fiber_create.exit, label %19, !dbg !2027

; <label>:19:                                     ; preds = %13
  %20 = call i8* @memset(i8* nonnull %17, i8 signext 0, i64 152) #12, !dbg !2028
  %21 = getelementptr inbounds i8, i8* %17, i64 44, !dbg !2029
  %22 = bitcast i8* %21 to i32*, !dbg !2029
  store i32 0, i32* %22, align 4, !dbg !2030
  %23 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !2031
  %24 = bitcast i8* %23 to i64*, !dbg !2031
  store i64 2097152, i64* %24, align 8, !dbg !2032
  %25 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !2033
  call void @llvm.dbg.value(metadata i8* %25, metadata !614, metadata !DIExpression()) #11, !dbg !2033
  %26 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !2034
  %27 = bitcast i8* %26 to i8**, !dbg !2034
  store i8* %25, i8** %27, align 8, !dbg !2035
  %28 = icmp eq i8* %25, null, !dbg !2036
  br i1 %28, label %29, label %30, !dbg !2037

; <label>:29:                                     ; preds = %19
  call void @kmem_free(i8* nonnull %17) #12, !dbg !2038
  br label %nk_fiber_create.exit, !dbg !2039

; <label>:30:                                     ; preds = %19
  %31 = ptrtoint i8* %25 to i64, !dbg !2037
  %32 = getelementptr inbounds i8, i8* %17, i64 120, !dbg !2040
  %33 = bitcast i8* %32 to void (i8*, i8**)**, !dbg !2040
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %33, align 8, !dbg !2041
  %34 = getelementptr inbounds i8, i8* %17, i64 128, !dbg !2042
  %35 = bitcast i8* %34 to i8**, !dbg !2042
  store i8* %9, i8** %35, align 8, !dbg !2043
  %36 = getelementptr inbounds i8, i8* %17, i64 136, !dbg !2044
  %37 = bitcast i8* %36 to i8***, !dbg !2044
  store i8** null, i8*** %37, align 8, !dbg !2045
  call void @llvm.dbg.value(metadata i8* %17, metadata !648, metadata !DIExpression()) #11, !dbg !2046
  %38 = load i64, i64* %24, align 8, !dbg !2048
  %39 = bitcast i8* %17 to i64*, !dbg !2049
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2050
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !2052
  %40 = add i64 %31, -8, !dbg !2053
  %41 = add i64 %40, %38, !dbg !2054
  store i64 %41, i64* %39, align 8, !dbg !2054
  %42 = inttoptr i64 %41 to i64*, !dbg !2055
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %42, align 8, !dbg !2056
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2057
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2059
  %43 = load i64, i64* %39, align 8, !dbg !2060
  %44 = add i64 %43, -8, !dbg !2060
  store i64 %44, i64* %39, align 8, !dbg !2060
  %45 = inttoptr i64 %44 to i64*, !dbg !2061
  store i64 0, i64* %45, align 8, !dbg !2062
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2065
  %46 = load i64, i64* %39, align 8, !dbg !2066
  %47 = add i64 %46, -8, !dbg !2066
  store i64 %47, i64* %39, align 8, !dbg !2066
  %48 = inttoptr i64 %47 to i64*, !dbg !2067
  store i64 0, i64* %48, align 8, !dbg !2068
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2069
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2071
  %49 = load i64, i64* %39, align 8, !dbg !2072
  %50 = add i64 %49, -8, !dbg !2072
  store i64 %50, i64* %39, align 8, !dbg !2072
  %51 = inttoptr i64 %50 to i64*, !dbg !2073
  store i64 0, i64* %51, align 8, !dbg !2074
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2075
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2077
  %52 = load i64, i64* %39, align 8, !dbg !2078
  %53 = add i64 %52, -8, !dbg !2078
  store i64 %53, i64* %39, align 8, !dbg !2078
  %54 = inttoptr i64 %53 to i64*, !dbg !2079
  store i64 0, i64* %54, align 8, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2083
  %55 = load i64, i64* %39, align 8, !dbg !2084
  %56 = add i64 %55, -8, !dbg !2084
  store i64 %56, i64* %39, align 8, !dbg !2084
  %57 = inttoptr i64 %56 to i64*, !dbg !2085
  store i64 0, i64* %57, align 8, !dbg !2086
  %58 = ptrtoint i8* %17 to i64, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %58, metadata !662, metadata !DIExpression()) #11, !dbg !2090
  %59 = load i64, i64* %39, align 8, !dbg !2091
  %60 = add i64 %59, -8, !dbg !2091
  store i64 %60, i64* %39, align 8, !dbg !2091
  %61 = inttoptr i64 %60 to i64*, !dbg !2092
  store i64 %58, i64* %61, align 8, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2094
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2096
  %62 = load i64, i64* %39, align 8, !dbg !2097
  %63 = add i64 %62, -8, !dbg !2097
  store i64 %63, i64* %39, align 8, !dbg !2097
  %64 = inttoptr i64 %63 to i64*, !dbg !2098
  store i64 0, i64* %64, align 8, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2102
  %65 = load i64, i64* %39, align 8, !dbg !2103
  %66 = add i64 %65, -8, !dbg !2103
  store i64 %66, i64* %39, align 8, !dbg !2103
  %67 = inttoptr i64 %66 to i64*, !dbg !2104
  store i64 0, i64* %67, align 8, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2106
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2108
  %68 = load i64, i64* %39, align 8, !dbg !2109
  %69 = add i64 %68, -8, !dbg !2109
  store i64 %69, i64* %39, align 8, !dbg !2109
  %70 = inttoptr i64 %69 to i64*, !dbg !2110
  store i64 0, i64* %70, align 8, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2112
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2114
  %71 = load i64, i64* %39, align 8, !dbg !2115
  %72 = add i64 %71, -8, !dbg !2115
  store i64 %72, i64* %39, align 8, !dbg !2115
  %73 = inttoptr i64 %72 to i64*, !dbg !2116
  store i64 0, i64* %73, align 8, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2120
  %74 = load i64, i64* %39, align 8, !dbg !2121
  %75 = add i64 %74, -8, !dbg !2121
  store i64 %75, i64* %39, align 8, !dbg !2121
  %76 = inttoptr i64 %75 to i64*, !dbg !2122
  store i64 0, i64* %76, align 8, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2124
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2126
  %77 = load i64, i64* %39, align 8, !dbg !2127
  %78 = add i64 %77, -8, !dbg !2127
  store i64 %78, i64* %39, align 8, !dbg !2127
  %79 = inttoptr i64 %78 to i64*, !dbg !2128
  store i64 0, i64* %79, align 8, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2130
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2132
  %80 = load i64, i64* %39, align 8, !dbg !2133
  %81 = add i64 %80, -8, !dbg !2133
  store i64 %81, i64* %39, align 8, !dbg !2133
  %82 = inttoptr i64 %81 to i64*, !dbg !2134
  store i64 0, i64* %82, align 8, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2136
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2138
  %83 = load i64, i64* %39, align 8, !dbg !2139
  %84 = add i64 %83, -8, !dbg !2139
  store i64 %84, i64* %39, align 8, !dbg !2139
  %85 = inttoptr i64 %84 to i64*, !dbg !2140
  store i64 0, i64* %85, align 8, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !2142
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !2144
  %86 = load i64, i64* %39, align 8, !dbg !2145
  %87 = add i64 %86, -8, !dbg !2145
  store i64 %87, i64* %39, align 8, !dbg !2145
  %88 = inttoptr i64 %87 to i64*, !dbg !2146
  store i64 0, i64* %88, align 8, !dbg !2147
  %89 = bitcast %struct.nk_fiber** %1 to i8**, !dbg !2148
  store i8* %17, i8** %89, align 8, !dbg !2148
  %90 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2149, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !772, metadata !DIExpression()) #11, !dbg !2149
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !771, metadata !DIExpression()) #11, !dbg !2151
  %91 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %90, i64 0, i32 24, !dbg !2152
  %92 = bitcast %struct.nk_virtual_console** %91 to i64*, !dbg !2152
  %93 = load i64, i64* %92, align 8, !dbg !2152
  %94 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !2153
  %95 = bitcast i8* %94 to i64*, !dbg !2154
  store i64 %93, i64* %95, align 8, !dbg !2154
  %96 = getelementptr inbounds i8, i8* %17, i64 104, !dbg !2155
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()) #11, !dbg !2156
  %97 = bitcast i8* %96 to i8**, !dbg !2158
  store i8* %96, i8** %97, align 8, !dbg !2158
  %98 = getelementptr inbounds i8, i8* %17, i64 112, !dbg !2159
  %99 = bitcast i8* %98 to i8**, !dbg !2160
  store i8* %96, i8** %99, align 8, !dbg !2160
  %100 = getelementptr inbounds i8, i8* %17, i64 96, !dbg !2161
  %101 = bitcast i8* %100 to i32*, !dbg !2161
  store i32 0, i32* %101, align 8, !dbg !2162
  %102 = getelementptr inbounds i8, i8* %17, i64 64, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %102, metadata !780, metadata !DIExpression()) #11, !dbg !2164
  %103 = bitcast i8* %102 to i8**, !dbg !2166
  store i8* %102, i8** %103, align 8, !dbg !2166
  %104 = getelementptr inbounds i8, i8* %17, i64 72, !dbg !2167
  %105 = bitcast i8* %104 to i8**, !dbg !2168
  store i8* %102, i8** %105, align 8, !dbg !2168
  %106 = getelementptr inbounds i8, i8* %17, i64 80, !dbg !2169
  call void @llvm.dbg.value(metadata i8* %106, metadata !780, metadata !DIExpression()) #11, !dbg !2170
  %107 = bitcast i8* %106 to i8**, !dbg !2172
  store i8* %106, i8** %107, align 8, !dbg !2172
  %108 = getelementptr inbounds i8, i8* %17, i64 88, !dbg !2173
  %109 = bitcast i8* %108 to i8**, !dbg !2174
  store i8* %106, i8** %109, align 8, !dbg !2174
  br label %nk_fiber_create.exit, !dbg !2175

nk_fiber_create.exit:                             ; preds = %13, %29, %30
  %110 = phi i32 [ 0, %30 ], [ -22, %29 ], [ -22, %13 ], !dbg !2176
  %111 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !2177
  %112 = call i32 @nk_fiber_run(%struct.nk_fiber* %111, i8 zeroext 1) #12, !dbg !2178
  br label %113, !dbg !2179

; <label>:113:                                    ; preds = %nk_fiber_create.exit, %11
  %114 = phi i32 [ 0, %nk_fiber_create.exit ], [ -1, %11 ], !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #11, !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2181
  ret i32 %114, !dbg !2181
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1001 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2182
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2184
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2185
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2185
  ret %struct.nk_fiber_percpu_state* %4, !dbg !2186
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1094 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2187
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2190
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2191
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2191
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2192
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2192
  ret %struct.nk_fiber* %6, !dbg !2193
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1104 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2194
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2197
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2198
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2198
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !2199
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2199
  ret %struct.nk_fiber* %6, !dbg !2200
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1007 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2201
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2204
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2205
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2205
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !2206
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !2206
  ret %struct.nk_thread* %6, !dbg !2207
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1025 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2208
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2211
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2212
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2212
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !2213
  ret %struct.list_head* %5, !dbg !2214
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !658 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %1, metadata !662, metadata !DIExpression()), !dbg !2216
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !2217
  %4 = load i64, i64* %3, align 8, !dbg !2218
  %5 = add i64 %4, -8, !dbg !2218
  store i64 %5, i64* %3, align 8, !dbg !2218
  %6 = inttoptr i64 %5 to i64*, !dbg !2219
  store i64 %1, i64* %6, align 8, !dbg !2220
  ret void, !dbg !2221
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1029 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2222
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2226
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2227
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2227
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1033, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1051, metadata !DIExpression()), !dbg !2231
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !2233
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !2233
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !2234
  br i1 %8, label %20, label %9, !dbg !2235

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()), !dbg !2236
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !2236
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1035, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1034, metadata !DIExpression()), !dbg !2230
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1063, metadata !DIExpression()), !dbg !2238
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !2240
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !2240
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !2241
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1070, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1075, metadata !DIExpression()), !dbg !2244
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !2245
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !2246
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !2247
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !780, metadata !DIExpression()), !dbg !2249
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !2251
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !2251
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !2252
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !2252
  br label %20, !dbg !2253

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !2254
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1034, metadata !DIExpression()), !dbg !2230
  ret %struct.nk_fiber* %21, !dbg !2255
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2256 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2258, metadata !DIExpression()), !dbg !2269
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2270
  store i32 4, i32* %3, align 4, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !2259, metadata !DIExpression()), !dbg !2272
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !2273
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !2261, metadata !DIExpression()), !dbg !2274
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !2275
  %6 = load i32, i32* %5, align 8, !dbg !2275
  %7 = icmp sgt i32 %6, 0, !dbg !2276
  br i1 %7, label %8, label %66, !dbg !2277

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !2277

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !2262, metadata !DIExpression()), !dbg !2278
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !2279
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !2279
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !2278
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !2278
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !2278
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !2262, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !2260, metadata !DIExpression()), !dbg !2280
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1063, metadata !DIExpression()), !dbg !2282
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !2284
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !2284
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !2285
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1070, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1075, metadata !DIExpression()), !dbg !2288
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !2289
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !2290
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !2291
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !780, metadata !DIExpression()), !dbg !2293
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !2295
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !2296
  %24 = load i32, i32* %5, align 8, !dbg !2297
  %25 = add i32 %24, -1, !dbg !2297
  store i32 %25, i32* %5, align 8, !dbg !2297
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !2298
  br i1 %26, label %63, label %27, !dbg !2300

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !2301, metadata !DIExpression()) #11, !dbg !2309
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()) #11, !dbg !2312
  %28 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %28, metadata !2307, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !2317
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2318, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !2325, metadata !DIExpression()) #11, !dbg !2318
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !2324, metadata !DIExpression()) #11, !dbg !2339
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !2323, metadata !DIExpression()) #11, !dbg !2340
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !2341
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !2348
  %30 = load i64, i64* %2, align 8, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %30, metadata !2346, metadata !DIExpression()) #11, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !2351
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !2352
  %32 = load i32, i32* %31, align 8, !dbg !2352
  %33 = zext i32 %32 to i64, !dbg !2353
  %34 = urem i64 %30, %33, !dbg !2354
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2355, !srcloc !2356
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !2333, metadata !DIExpression()) #11, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !2331, metadata !DIExpression()) #11, !dbg !2357
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !2330, metadata !DIExpression()) #11, !dbg !2358
  %36 = shl nuw i64 %34, 32, !dbg !2359
  %37 = ashr exact i64 %36, 32, !dbg !2359
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !2359
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !2307, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !2317
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !2360
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !2360
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !2360
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !2360
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !2307, metadata !DIExpression()) #11, !dbg !2317
  %44 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2361
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2365
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2366
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2366
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !2308, metadata !DIExpression()) #11, !dbg !2368
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !2369
  store i32 1, i32* %49, align 4, !dbg !2370
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !2372, metadata !DIExpression()) #11, !dbg !2376
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !2375, metadata !DIExpression()) #11, !dbg !2378
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !2379
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !2380, metadata !DIExpression()) #11, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !2385, metadata !DIExpression()) #11, !dbg !2389
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !2386, metadata !DIExpression()) #11, !dbg !2390
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !2391
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !2392
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !2393
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !2394
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !2395
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !2396
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !2397
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !2398
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !2398
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !2400
  br i1 %58, label %61, label %59, !dbg !2401

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #12, !dbg !2402
  br label %61, !dbg !2404

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !2275
  br label %63, !dbg !2275

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !2275
  %65 = icmp sgt i32 %64, 0, !dbg !2276
  br i1 %65, label %11, label %66, !dbg !2277, !llvm.loop !2405

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !2407
  store i8 1, i8* %67, align 8, !dbg !2408
  %68 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2409
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !2414
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !2415
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !2415
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !2416
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1033, metadata !DIExpression()) #11, !dbg !2417
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !2418
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1051, metadata !DIExpression()) #11, !dbg !2419
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !2421
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !2421
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !2422
  br i1 %75, label %88, label %76, !dbg !2423

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !2424
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !2424
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1035, metadata !DIExpression()) #11, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1034, metadata !DIExpression()) #11, !dbg !2418
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1063, metadata !DIExpression()) #11, !dbg !2426
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !2428
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !2428
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !2429
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1070, metadata !DIExpression()) #11, !dbg !2430
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1075, metadata !DIExpression()) #11, !dbg !2432
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !2433
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !2434
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !2435
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !780, metadata !DIExpression()) #11, !dbg !2437
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !2439
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !2439
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !2440
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !2440
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1034, metadata !DIExpression()) #11, !dbg !2418
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !2259, metadata !DIExpression()), !dbg !2272
  %87 = icmp eq %struct.list_head** %77, null, !dbg !2441
  br i1 %87, label %88, label %95, !dbg !2443

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2444
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !2449
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !2450
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !2450
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !2451
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !2259, metadata !DIExpression()), !dbg !2272
  br label %95, !dbg !2452

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !2453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !2259, metadata !DIExpression()), !dbg !2272
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2454
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !2457
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !2458
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !2458
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !2459
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !2460
  %102 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2461
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !2464
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !2465
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !2465
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !2466
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !2466
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !2467
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1063, metadata !DIExpression()), !dbg !2468
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !2470
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !2470
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !2471
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1070, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1075, metadata !DIExpression()), !dbg !2474
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !2475
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !2476
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !2477
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !2478
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !780, metadata !DIExpression()), !dbg !2479
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !2481
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !2482
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !2483
  %116 = load i8*, i8** %115, align 8, !dbg !2483
  call void @kmem_free(i8* %116) #12, !dbg !2483
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !2484
  call void @kmem_free(i8* %117) #12, !dbg !2484
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #12, !dbg !2485
  ret void, !dbg !2486
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !2302 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2301, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %1, metadata !2306, metadata !DIExpression()), !dbg !2488
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2489
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !2307, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2494
  %6 = icmp eq i8 %1, 0, !dbg !2495
  br i1 %6, label %20, label %7, !dbg !2496

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2497, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !2325, metadata !DIExpression()) #11, !dbg !2497
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !2324, metadata !DIExpression()) #11, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !2323, metadata !DIExpression()) #11, !dbg !2501
  %9 = bitcast i64* %3 to i8*, !dbg !2502
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !2502
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #12, !dbg !2504
  %10 = load i64, i64* %3, align 8, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %10, metadata !2346, metadata !DIExpression()) #11, !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !2507
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !2508
  %12 = load i32, i32* %11, align 8, !dbg !2508
  %13 = zext i32 %12 to i64, !dbg !2509
  %14 = urem i64 %10, %13, !dbg !2510
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2511, !srcloc !2356
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !2333, metadata !DIExpression()) #11, !dbg !2511
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !2331, metadata !DIExpression()) #11, !dbg !2512
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !2330, metadata !DIExpression()) #11, !dbg !2513
  %16 = shl nuw i64 %14, 32, !dbg !2514
  %17 = ashr exact i64 %16, 32, !dbg !2514
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !2514
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !2307, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2494
  br label %20, !dbg !2515

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !2516
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !2516
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !2516
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !2516
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !2307, metadata !DIExpression()), !dbg !2494
  %26 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2517
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !2521
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !2522
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !2522
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2308, metadata !DIExpression()), !dbg !2524
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2525
  store i32 1, i32* %31, align 4, !dbg !2526
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !2372, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2375, metadata !DIExpression()), !dbg !2530
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !2531
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !2531
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !2380, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !2385, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2386, metadata !DIExpression()), !dbg !2535
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !2536
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2537
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2538
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2539
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !2540
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !2541
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !2542
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !2543
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !2543
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !2544
  br i1 %40, label %43, label %41, !dbg !2545

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #12, !dbg !2546
  br label %43, !dbg !2547

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !2548
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !2549 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2551, metadata !DIExpression()), !dbg !2552
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !2553
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !2553
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !2554
  %5 = load i8*, i8** %4, align 8, !dbg !2554
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !2555
  %7 = load i8**, i8*** %6, align 8, !dbg !2555
  tail call void %3(i8* %5, i8** %7) #12, !dbg !2556
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #10, !dbg !2557
  ret void, !dbg !2558
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !649 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !648, metadata !DIExpression()), !dbg !2559
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !2560
  %3 = bitcast i8** %2 to i64*, !dbg !2560
  %4 = load i64, i64* %3, align 8, !dbg !2560
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !2561
  %6 = load i64, i64* %5, align 8, !dbg !2561
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !2565
  %8 = add i64 %4, -8, !dbg !2566
  %9 = add i64 %8, %6, !dbg !2567
  store i64 %9, i64* %7, align 8, !dbg !2567
  %10 = inttoptr i64 %9 to i64*, !dbg !2568
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2572
  %11 = load i64, i64* %7, align 8, !dbg !2573
  %12 = add i64 %11, -8, !dbg !2573
  store i64 %12, i64* %7, align 8, !dbg !2573
  %13 = inttoptr i64 %12 to i64*, !dbg !2574
  store i64 0, i64* %13, align 8, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2578
  %14 = load i64, i64* %7, align 8, !dbg !2579
  %15 = add i64 %14, -8, !dbg !2579
  store i64 %15, i64* %7, align 8, !dbg !2579
  %16 = inttoptr i64 %15 to i64*, !dbg !2580
  store i64 0, i64* %16, align 8, !dbg !2581
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2584
  %17 = load i64, i64* %7, align 8, !dbg !2585
  %18 = add i64 %17, -8, !dbg !2585
  store i64 %18, i64* %7, align 8, !dbg !2585
  %19 = inttoptr i64 %18 to i64*, !dbg !2586
  store i64 0, i64* %19, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2590
  %20 = load i64, i64* %7, align 8, !dbg !2591
  %21 = add i64 %20, -8, !dbg !2591
  store i64 %21, i64* %7, align 8, !dbg !2591
  %22 = inttoptr i64 %21 to i64*, !dbg !2592
  store i64 0, i64* %22, align 8, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2596
  %23 = load i64, i64* %7, align 8, !dbg !2597
  %24 = add i64 %23, -8, !dbg !2597
  store i64 %24, i64* %7, align 8, !dbg !2597
  %25 = inttoptr i64 %24 to i64*, !dbg !2598
  store i64 0, i64* %25, align 8, !dbg !2599
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !2600
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i64 %26, metadata !662, metadata !DIExpression()), !dbg !2603
  %27 = load i64, i64* %7, align 8, !dbg !2604
  %28 = add i64 %27, -8, !dbg !2604
  store i64 %28, i64* %7, align 8, !dbg !2604
  %29 = inttoptr i64 %28 to i64*, !dbg !2605
  store i64 %26, i64* %29, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2609
  %30 = load i64, i64* %7, align 8, !dbg !2610
  %31 = add i64 %30, -8, !dbg !2610
  store i64 %31, i64* %7, align 8, !dbg !2610
  %32 = inttoptr i64 %31 to i64*, !dbg !2611
  store i64 0, i64* %32, align 8, !dbg !2612
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2615
  %33 = load i64, i64* %7, align 8, !dbg !2616
  %34 = add i64 %33, -8, !dbg !2616
  store i64 %34, i64* %7, align 8, !dbg !2616
  %35 = inttoptr i64 %34 to i64*, !dbg !2617
  store i64 0, i64* %35, align 8, !dbg !2618
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2621
  %36 = load i64, i64* %7, align 8, !dbg !2622
  %37 = add i64 %36, -8, !dbg !2622
  store i64 %37, i64* %7, align 8, !dbg !2622
  %38 = inttoptr i64 %37 to i64*, !dbg !2623
  store i64 0, i64* %38, align 8, !dbg !2624
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2627
  %39 = load i64, i64* %7, align 8, !dbg !2628
  %40 = add i64 %39, -8, !dbg !2628
  store i64 %40, i64* %7, align 8, !dbg !2628
  %41 = inttoptr i64 %40 to i64*, !dbg !2629
  store i64 0, i64* %41, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2633
  %42 = load i64, i64* %7, align 8, !dbg !2634
  %43 = add i64 %42, -8, !dbg !2634
  store i64 %43, i64* %7, align 8, !dbg !2634
  %44 = inttoptr i64 %43 to i64*, !dbg !2635
  store i64 0, i64* %44, align 8, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2639
  %45 = load i64, i64* %7, align 8, !dbg !2640
  %46 = add i64 %45, -8, !dbg !2640
  store i64 %46, i64* %7, align 8, !dbg !2640
  %47 = inttoptr i64 %46 to i64*, !dbg !2641
  store i64 0, i64* %47, align 8, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2645
  %48 = load i64, i64* %7, align 8, !dbg !2646
  %49 = add i64 %48, -8, !dbg !2646
  store i64 %49, i64* %7, align 8, !dbg !2646
  %50 = inttoptr i64 %49 to i64*, !dbg !2647
  store i64 0, i64* %50, align 8, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2651
  %51 = load i64, i64* %7, align 8, !dbg !2652
  %52 = add i64 %51, -8, !dbg !2652
  store i64 %52, i64* %7, align 8, !dbg !2652
  %53 = inttoptr i64 %52 to i64*, !dbg !2653
  store i64 0, i64* %53, align 8, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !2657
  %54 = load i64, i64* %7, align 8, !dbg !2658
  %55 = add i64 %54, -8, !dbg !2658
  store i64 %55, i64* %7, align 8, !dbg !2658
  %56 = inttoptr i64 %55 to i64*, !dbg !2659
  store i64 0, i64* %56, align 8, !dbg !2660
  ret void, !dbg !2661
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2662 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2666, metadata !DIExpression()), !dbg !2671
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2672
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2676
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2677
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2677
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2678
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2667, metadata !DIExpression()), !dbg !2679
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !2680
  %9 = load i32, i32* %8, align 4, !dbg !2680
  %10 = add i32 %9, -3, !dbg !2682
  %11 = icmp ult i32 %10, 2, !dbg !2682
  br i1 %11, label %13, label %12, !dbg !2682

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !2683
  br label %13, !dbg !2685

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2686
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !2690
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !2691
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !2691
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !2692
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !2692
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !2693
  br i1 %20, label %36, label %21, !dbg !2694

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !2695
  %23 = icmp eq i32 %22, 3, !dbg !2696
  br i1 %23, label %36, label %24, !dbg !2697

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2698
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2702
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2703
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2703
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2704
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2668, metadata !DIExpression()), !dbg !2705
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2706
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2372, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2375, metadata !DIExpression()), !dbg !2709
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2710
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2710
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !2380, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !2385, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2386, metadata !DIExpression()), !dbg !2714
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2715
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2716
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2717
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2718
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2719
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2720
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2721
  br label %36, !dbg !2722

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2723
  %38 = load i32, i32* %37, align 8, !dbg !2723
  %39 = icmp eq i32 %38, 0, !dbg !2725
  br i1 %39, label %40, label %55, !dbg !2726

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2727
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2727
  %43 = load i64, i64* %42, align 8, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2729, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2735
  %44 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2737
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2741
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2742
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2742
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2743
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2743
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2734, metadata !DIExpression()) #11, !dbg !2744
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2745
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2746
  store i64 %43, i64* %51, align 8, !dbg !2746
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2747, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !772, metadata !DIExpression()) #11, !dbg !2747
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !771, metadata !DIExpression()) #11, !dbg !2749
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2750
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2751
  store i64 %43, i64* %54, align 8, !dbg !2751
  br label %55, !dbg !2752

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2753
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2756
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2757
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2757
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2758
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2759
  store i32 1, i32* %8, align 4, !dbg !2760
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2761
  store i32 5, i32* %61, align 4, !dbg !2762
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #12, !dbg !2763
  ret i32 0, !dbg !2764
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2730 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2729, metadata !DIExpression()), !dbg !2765
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2766
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2770
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2771
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2771
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2772
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2734, metadata !DIExpression()), !dbg !2773
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2774
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2775
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2776, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !772, metadata !DIExpression()) #11, !dbg !2776
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !771, metadata !DIExpression()) #11, !dbg !2778
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2779
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2780
  ret void, !dbg !2781
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2782 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2787
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2791
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2792
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2792
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2793
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2793
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2786, metadata !DIExpression()), !dbg !2794
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #10, !dbg !2795
  ret void, !dbg !2796
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2797 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2801, metadata !DIExpression()), !dbg !2804
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2805
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2809
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2810
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2810
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2811
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2811
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2802, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 0, metadata !2803, metadata !DIExpression()), !dbg !2813
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2814
  %9 = zext i1 %8 to i8, !dbg !2816
  call void @llvm.dbg.value(metadata i8 %9, metadata !2803, metadata !DIExpression()), !dbg !2813
  ret i8 %9, !dbg !2817
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !2327 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2818, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2325, metadata !DIExpression()) #11, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2324, metadata !DIExpression()) #11, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2323, metadata !DIExpression()) #11, !dbg !2821
  %3 = bitcast i64* %1 to i8*, !dbg !2822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2822
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #12, !dbg !2824
  %4 = load i64, i64* %1, align 8, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %4, metadata !2346, metadata !DIExpression()) #11, !dbg !2826
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2827
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2828
  %6 = load i32, i32* %5, align 8, !dbg !2828
  %7 = zext i32 %6 to i64, !dbg !2829
  %8 = urem i64 %4, %7, !dbg !2830
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2831, !srcloc !2356
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !2333, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !2331, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !2330, metadata !DIExpression()), !dbg !2833
  %10 = shl nuw i64 %8, 32, !dbg !2834
  %11 = ashr exact i64 %10, 32, !dbg !2834
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2834
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2834
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2835
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2835
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2836
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2836
  ret %struct.nk_thread* %17, !dbg !2837
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2838 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2840, metadata !DIExpression()), !dbg !2859
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2860, !srcloc !2861
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2844, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2842, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2841, metadata !DIExpression()), !dbg !2863
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2864
  %4 = load i32, i32* %3, align 8, !dbg !2864
  call void @llvm.dbg.value(metadata i32 %4, metadata !2846, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()), !dbg !2866
  %5 = icmp sgt i32 %4, 0, !dbg !2867
  br i1 %5, label %6, label %38, !dbg !2868

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2869
  br label %8, !dbg !2869

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2849, metadata !DIExpression()), !dbg !2866
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2869
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2869
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2870
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2870
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2847, metadata !DIExpression()), !dbg !2872
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2873
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2851, metadata !DIExpression(DW_OP_deref)), !dbg !2873
  call void @llvm.dbg.value(metadata i8** %15, metadata !2848, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2874
  %16 = load i8*, i8** %15, align 8, !dbg !2875
  br label %17, !dbg !2876

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2875
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2877
  %20 = bitcast i8* %18 to i8**, !dbg !2877
  %21 = load i8*, i8** %20, align 8, !dbg !2877
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2877
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2877
  br i1 %22, label %27, label %23, !dbg !2876

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2875
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2848, metadata !DIExpression()), !dbg !2874
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2878
  br i1 %26, label %30, label %17, !dbg !2881, !llvm.loop !2882

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i32 undef, metadata !2849, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2866
  %29 = icmp slt i64 %28, %7, !dbg !2867
  br i1 %29, label %8, label %38, !dbg !2868, !llvm.loop !2885

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2887
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1063, metadata !DIExpression()), !dbg !2889
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2891
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2891
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2892
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2892
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1070, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1075, metadata !DIExpression()), !dbg !2895
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2896
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2897
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2898
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2899
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !780, metadata !DIExpression()), !dbg !2900
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2902
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2903
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2904
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2905 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2934, !srcloc !2935
  call void @llvm.dbg.value(metadata i32 %1, metadata !2910, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %1, metadata !2908, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %1, metadata !2907, metadata !DIExpression()), !dbg !2937
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2938
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2940
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2912, metadata !DIExpression()), !dbg !2941
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2942
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2943
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2944
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2945
  br i1 %6, label %7, label %109, !dbg !2946

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2947
  %9 = icmp eq i64 %8, 0, !dbg !2953
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %10, metadata !2958, metadata !DIExpression()) #11, !dbg !2960
  %11 = icmp eq i64 %10, 0, !dbg !2961
  br i1 %11, label %17, label %12, !dbg !2963

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2964
  %14 = inttoptr i64 %13 to i16*, !dbg !2966
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2967
  %16 = zext i16 %15 to i32, !dbg !2967
  br label %17, !dbg !2968

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2969
  %19 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %19, metadata !2974, metadata !DIExpression()) #11, !dbg !2976
  %20 = icmp eq i64 %19, 0, !dbg !2977
  br i1 %20, label %25, label %21, !dbg !2979

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2980
  %23 = inttoptr i64 %22 to i16*, !dbg !2982
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2983
  br label %25, !dbg !2984

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2985

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2913, metadata !DIExpression()), !dbg !2986
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2987, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !2987
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !2989
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2919, metadata !DIExpression()), !dbg !2986
  %28 = tail call i32 @nk_vc_is_active() #12, !dbg !2990
  %29 = icmp eq i32 %28, 0, !dbg !2990
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2991
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %31, metadata !2998, metadata !DIExpression()) #11, !dbg !3002
  %32 = icmp eq i64 %31, 0, !dbg !3003
  br i1 %32, label %38, label %33, !dbg !3005

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !3006
  %35 = inttoptr i64 %34 to i16*, !dbg !3008
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !3009
  %37 = icmp eq i16 %36, 0, !dbg !3010
  br i1 %37, label %38, label %39, !dbg !2991

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2991

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2991
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2991
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2991
  br i1 %29, label %60, label %44, !dbg !3011

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !3012

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !3012
  %47 = load i64, i64* %46, align 32, !dbg !3012
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !3012
  %49 = load i8, i8* %48, align 8, !dbg !3012
  %50 = icmp eq i8 %49, 0, !dbg !3012
  br i1 %50, label %51, label %56, !dbg !3012

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !3012
  %53 = load i8, i8* %52, align 64, !dbg !3012
  %54 = icmp eq i8 %53, 0, !dbg !3012
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !3012
  br label %56, !dbg !3012

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !3012
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3012
  br label %76, !dbg !3012

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !3013

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !3013
  %63 = load i64, i64* %62, align 32, !dbg !3013
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !3013
  %65 = load i8, i8* %64, align 8, !dbg !3013
  %66 = icmp eq i8 %65, 0, !dbg !3013
  br i1 %66, label %67, label %72, !dbg !3013

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !3013
  %69 = load i8, i8* %68, align 64, !dbg !3013
  %70 = icmp eq i8 %69, 0, !dbg !3013
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !3013
  br label %72, !dbg !3013

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !3013
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3013
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %77, metadata !3018, metadata !DIExpression()) #11, !dbg !3020
  %78 = icmp eq i64 %77, 0, !dbg !3021
  br i1 %78, label %109, label %79, !dbg !3023

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3024
  %81 = inttoptr i64 %80 to i16*, !dbg !3026
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3027
  br label %109, !dbg !3028

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2932, metadata !DIExpression()), !dbg !3029
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !3030
  %85 = icmp eq i32 %84, 0, !dbg !3030
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %86, metadata !2998, metadata !DIExpression()) #11, !dbg !3037
  %87 = icmp eq i64 %86, 0, !dbg !3038
  br i1 %87, label %93, label %88, !dbg !3039

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3040
  %90 = inttoptr i64 %89 to i16*, !dbg !3041
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3042
  %92 = icmp eq i16 %91, 0, !dbg !3043
  br i1 %92, label %93, label %94, !dbg !3044

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3044

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !3044
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3044
  br i1 %85, label %100, label %98, !dbg !3045

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3046
  br label %102, !dbg !3046

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !3048
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %103, metadata !3018, metadata !DIExpression()) #11, !dbg !3053
  %104 = icmp eq i64 %103, 0, !dbg !3054
  br i1 %104, label %109, label %105, !dbg !3055

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !3056
  %107 = inttoptr i64 %106 to i16*, !dbg !3057
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !3058
  br label %109, !dbg !3059

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !3060
  ret i32 %110, !dbg !3061
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !3062 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3094, !srcloc !3095
  call void @llvm.dbg.value(metadata i32 %1, metadata !3071, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i32 %1, metadata !3069, metadata !DIExpression()), !dbg !3096
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #12, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %2, metadata !3067, metadata !DIExpression()), !dbg !3097
  %3 = icmp eq i8* %2, null, !dbg !3098
  br i1 %3, label %4, label %106, !dbg !3099

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3100
  %6 = icmp eq i64 %5, 0, !dbg !3102
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %7, metadata !2958, metadata !DIExpression()) #11, !dbg !3106
  %8 = icmp eq i64 %7, 0, !dbg !3107
  br i1 %8, label %14, label %9, !dbg !3108

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !3109
  %11 = inttoptr i64 %10 to i16*, !dbg !3110
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !3111
  %13 = zext i16 %12 to i32, !dbg !3111
  br label %14, !dbg !3112

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !3113
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %16, metadata !2974, metadata !DIExpression()) #11, !dbg !3117
  %17 = icmp eq i64 %16, 0, !dbg !3118
  br i1 %17, label %22, label %18, !dbg !3119

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !3120
  %20 = inttoptr i64 %19 to i16*, !dbg !3121
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !3122
  br label %22, !dbg !3123

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !3124

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3073, metadata !DIExpression()), !dbg !3125
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3126, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !3126
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !3128
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !3079, metadata !DIExpression()), !dbg !3125
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !3129
  %26 = icmp eq i32 %25, 0, !dbg !3129
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3130
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %28, metadata !2998, metadata !DIExpression()) #11, !dbg !3135
  %29 = icmp eq i64 %28, 0, !dbg !3136
  br i1 %29, label %35, label %30, !dbg !3137

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !3138
  %32 = inttoptr i64 %31 to i16*, !dbg !3139
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !3140
  %34 = icmp eq i16 %33, 0, !dbg !3141
  br i1 %34, label %35, label %36, !dbg !3130

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !3130

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !3130
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3130
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !3130
  br i1 %26, label %57, label %41, !dbg !3142

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !3143

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3143
  %44 = load i64, i64* %43, align 32, !dbg !3143
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3143
  %46 = load i8, i8* %45, align 8, !dbg !3143
  %47 = icmp eq i8 %46, 0, !dbg !3143
  br i1 %47, label %48, label %53, !dbg !3143

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3143
  %50 = load i8, i8* %49, align 64, !dbg !3143
  %51 = icmp eq i8 %50, 0, !dbg !3143
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !3143
  br label %53, !dbg !3143

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !3143
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3143
  br label %73, !dbg !3143

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !3144

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3144
  %60 = load i64, i64* %59, align 32, !dbg !3144
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3144
  %62 = load i8, i8* %61, align 8, !dbg !3144
  %63 = icmp eq i8 %62, 0, !dbg !3144
  br i1 %63, label %64, label %69, !dbg !3144

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3144
  %66 = load i8, i8* %65, align 64, !dbg !3144
  %67 = icmp eq i8 %66, 0, !dbg !3144
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !3144
  br label %69, !dbg !3144

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !3144
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3144
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %74, metadata !3018, metadata !DIExpression()) #11, !dbg !3148
  %75 = icmp eq i64 %74, 0, !dbg !3149
  br i1 %75, label %114, label %76, !dbg !3150

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !3151
  %78 = inttoptr i64 %77 to i16*, !dbg !3152
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !3153
  br label %114, !dbg !3154

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3092, metadata !DIExpression()), !dbg !3155
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !3156
  %82 = icmp eq i32 %81, 0, !dbg !3156
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %83, metadata !2998, metadata !DIExpression()) #11, !dbg !3163
  %84 = icmp eq i64 %83, 0, !dbg !3164
  br i1 %84, label %90, label %85, !dbg !3165

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !3166
  %87 = inttoptr i64 %86 to i16*, !dbg !3167
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !3168
  %89 = icmp eq i16 %88, 0, !dbg !3169
  br i1 %89, label %90, label %91, !dbg !3170

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !3170

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !3170
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3170
  br i1 %82, label %97, label %95, !dbg !3171

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3172
  br label %99, !dbg !3172

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !3174
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %100, metadata !3018, metadata !DIExpression()) #11, !dbg !3179
  %101 = icmp eq i64 %100, 0, !dbg !3180
  br i1 %101, label %114, label %102, !dbg !3181

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !3182
  %104 = inttoptr i64 %103 to i16*, !dbg !3183
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !3184
  br label %114, !dbg !3185

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !3066, metadata !DIExpression()), !dbg !3187
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #12, !dbg !3188
  %109 = bitcast i8* %2 to i32*, !dbg !3189
  tail call void @spinlock_init(i32* %109) #12, !dbg !3190
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %110, metadata !780, metadata !DIExpression()), !dbg !3192
  %111 = bitcast i8* %110 to i8**, !dbg !3194
  store i8* %110, i8** %111, align 8, !dbg !3194
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !3195
  %113 = bitcast i8* %112 to i8**, !dbg !3196
  store i8* %110, i8** %113, align 8, !dbg !3196
  br label %115, !dbg !3197

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #12, !dbg !3198
  br label %115, !dbg !3199

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !3200
  ret %struct.nk_fiber_percpu_state* %116, !dbg !3201
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !3202 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !3245
  %2 = zext i32 %1 to i64, !dbg !3246
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !3246
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !3246
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !3204, metadata !DIExpression()), !dbg !3247
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3248
  %6 = icmp eq i64 %5, 0, !dbg !3250
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %7, metadata !2958, metadata !DIExpression()) #11, !dbg !3254
  %8 = icmp eq i64 %7, 0, !dbg !3255
  br i1 %8, label %14, label %9, !dbg !3256

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !3257
  %11 = inttoptr i64 %10 to i16*, !dbg !3258
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !3259
  %13 = zext i16 %12 to i32, !dbg !3259
  br label %14, !dbg !3260

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !3261
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %16, metadata !2974, metadata !DIExpression()) #11, !dbg !3265
  %17 = icmp eq i64 %16, 0, !dbg !3266
  br i1 %17, label %22, label %18, !dbg !3267

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !3268
  %20 = inttoptr i64 %19 to i16*, !dbg !3269
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !3270
  br label %22, !dbg !3271

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !3272

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3205, metadata !DIExpression()), !dbg !3273
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3274, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !3274
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !3276
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !3209, metadata !DIExpression()), !dbg !3273
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !3277
  %26 = icmp eq i32 %25, 0, !dbg !3277
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3278
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %28, metadata !2998, metadata !DIExpression()) #11, !dbg !3283
  %29 = icmp eq i64 %28, 0, !dbg !3284
  br i1 %29, label %35, label %30, !dbg !3285

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !3286
  %32 = inttoptr i64 %31 to i16*, !dbg !3287
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !3288
  %34 = icmp eq i16 %33, 0, !dbg !3289
  br i1 %34, label %35, label %36, !dbg !3278

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !3278

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !3278
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3278
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !3278
  br i1 %26, label %57, label %41, !dbg !3290

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !3291

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3291
  %44 = load i64, i64* %43, align 32, !dbg !3291
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3291
  %46 = load i8, i8* %45, align 8, !dbg !3291
  %47 = icmp eq i8 %46, 0, !dbg !3291
  br i1 %47, label %48, label %53, !dbg !3291

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3291
  %50 = load i8, i8* %49, align 64, !dbg !3291
  %51 = icmp eq i8 %50, 0, !dbg !3291
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !3291
  br label %53, !dbg !3291

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !3291
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #12, !dbg !3291
  br label %73, !dbg !3291

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !3292

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !3292
  %60 = load i64, i64* %59, align 32, !dbg !3292
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !3292
  %62 = load i8, i8* %61, align 8, !dbg !3292
  %63 = icmp eq i8 %62, 0, !dbg !3292
  br i1 %63, label %64, label %69, !dbg !3292

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !3292
  %66 = load i8, i8* %65, align 64, !dbg !3292
  %67 = icmp eq i8 %66, 0, !dbg !3292
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !3292
  br label %69, !dbg !3292

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !3292
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #12, !dbg !3292
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %74, metadata !3018, metadata !DIExpression()) #11, !dbg !3296
  %75 = icmp eq i64 %74, 0, !dbg !3297
  br i1 %75, label %106, label %76, !dbg !3298

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !3299
  %78 = inttoptr i64 %77 to i16*, !dbg !3300
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !3301
  br label %106, !dbg !3302

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !3222, metadata !DIExpression()), !dbg !3303
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !3304
  %82 = icmp eq i32 %81, 0, !dbg !3304
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %83, metadata !2998, metadata !DIExpression()) #11, !dbg !3311
  %84 = icmp eq i64 %83, 0, !dbg !3312
  br i1 %84, label %90, label %85, !dbg !3313

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !3314
  %87 = inttoptr i64 %86 to i16*, !dbg !3315
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !3316
  %89 = icmp eq i16 %88, 0, !dbg !3317
  br i1 %89, label %90, label %91, !dbg !3318

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !3318

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !3318
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3318
  br i1 %82, label %97, label %95, !dbg !3319

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !3320
  br label %99, !dbg !3320

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !3322
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %100, metadata !3018, metadata !DIExpression()) #11, !dbg !3327
  %101 = icmp eq i64 %100, 0, !dbg !3328
  br i1 %101, label %106, label %102, !dbg !3329

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !3330
  %104 = inttoptr i64 %103 to i16*, !dbg !3331
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !3332
  br label %106, !dbg !3333

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !3334
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !3335
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !3336
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !3337
  br i1 %109, label %110, label %212, !dbg !3338

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3339
  %112 = icmp eq i64 %111, 0, !dbg !3341
  %113 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %113, metadata !2958, metadata !DIExpression()) #11, !dbg !3345
  %114 = icmp eq i64 %113, 0, !dbg !3346
  br i1 %114, label %120, label %115, !dbg !3347

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !3348
  %117 = inttoptr i64 %116 to i16*, !dbg !3349
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !3350
  %119 = zext i16 %118 to i32, !dbg !3350
  br label %120, !dbg !3351

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !3352
  %122 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %122, metadata !2974, metadata !DIExpression()) #11, !dbg !3356
  %123 = icmp eq i64 %122, 0, !dbg !3357
  br i1 %123, label %128, label %124, !dbg !3358

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !3359
  %126 = inttoptr i64 %125 to i16*, !dbg !3360
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !3361
  br label %128, !dbg !3362

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !3363

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !3224, metadata !DIExpression()), !dbg !3364
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3365, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !772, metadata !DIExpression()) #11, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !771, metadata !DIExpression()) #11, !dbg !3367
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !3230, metadata !DIExpression()), !dbg !3364
  %131 = tail call i32 @nk_vc_is_active() #12, !dbg !3368
  %132 = icmp eq i32 %131, 0, !dbg !3368
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3369
  %134 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %134, metadata !2998, metadata !DIExpression()) #11, !dbg !3374
  %135 = icmp eq i64 %134, 0, !dbg !3375
  br i1 %135, label %141, label %136, !dbg !3376

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !3377
  %138 = inttoptr i64 %137 to i16*, !dbg !3378
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !3379
  %140 = icmp eq i16 %139, 0, !dbg !3380
  br i1 %140, label %141, label %142, !dbg !3369

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !3369

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !3369
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3369
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !3369
  br i1 %132, label %163, label %147, !dbg !3381

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !3382

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !3382
  %150 = load i64, i64* %149, align 32, !dbg !3382
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !3382
  %152 = load i8, i8* %151, align 8, !dbg !3382
  %153 = icmp eq i8 %152, 0, !dbg !3382
  br i1 %153, label %154, label %159, !dbg !3382

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !3382
  %156 = load i8, i8* %155, align 64, !dbg !3382
  %157 = icmp eq i8 %156, 0, !dbg !3382
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !3382
  br label %159, !dbg !3382

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !3382
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3382
  br label %179, !dbg !3382

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !3383

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !3383
  %166 = load i64, i64* %165, align 32, !dbg !3383
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !3383
  %168 = load i8, i8* %167, align 8, !dbg !3383
  %169 = icmp eq i8 %168, 0, !dbg !3383
  br i1 %169, label %170, label %175, !dbg !3383

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !3383
  %172 = load i8, i8* %171, align 64, !dbg !3383
  %173 = icmp eq i8 %172, 0, !dbg !3383
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !3383
  br label %175, !dbg !3383

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !3383
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3383
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %180, metadata !3018, metadata !DIExpression()) #11, !dbg !3387
  %181 = icmp eq i64 %180, 0, !dbg !3388
  br i1 %181, label %212, label %182, !dbg !3389

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !3390
  %184 = inttoptr i64 %183 to i16*, !dbg !3391
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !3392
  br label %212, !dbg !3393

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !3243, metadata !DIExpression()), !dbg !3394
  %187 = tail call i32 @nk_vc_is_active() #12, !dbg !3395
  %188 = icmp eq i32 %187, 0, !dbg !3395
  %189 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %189, metadata !2998, metadata !DIExpression()) #11, !dbg !3402
  %190 = icmp eq i64 %189, 0, !dbg !3403
  br i1 %190, label %196, label %191, !dbg !3404

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !3405
  %193 = inttoptr i64 %192 to i16*, !dbg !3406
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !3407
  %195 = icmp eq i16 %194, 0, !dbg !3408
  br i1 %195, label %196, label %197, !dbg !3409

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !3409

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !3409
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3409
  br i1 %188, label %203, label %201, !dbg !3410

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3411
  br label %205, !dbg !3411

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !3413
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %206, metadata !3018, metadata !DIExpression()) #11, !dbg !3418
  %207 = icmp eq i64 %206, 0, !dbg !3419
  br i1 %207, label %212, label %208, !dbg !3420

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !3421
  %210 = inttoptr i64 %209 to i16*, !dbg !3422
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !3423
  br label %212, !dbg !3424

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !3425
  ret i32 %213, !dbg !3426
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !3427 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !3429, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8** undef, metadata !3430, metadata !DIExpression()), !dbg !3544
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3545, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !772, metadata !DIExpression()) #11, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !771, metadata !DIExpression()) #11, !dbg !3547
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !3548
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !3549
  %8 = icmp eq i32 %7, 0, !dbg !3549
  br i1 %8, label %111, label %9, !dbg !3550

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3551
  %11 = icmp eq i64 %10, 0, !dbg !3553
  %12 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %12, metadata !2958, metadata !DIExpression()) #11, !dbg !3557
  %13 = icmp eq i64 %12, 0, !dbg !3558
  br i1 %13, label %19, label %14, !dbg !3559

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !3560
  %16 = inttoptr i64 %15 to i16*, !dbg !3561
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !3562
  %18 = zext i16 %17 to i32, !dbg !3562
  br label %19, !dbg !3563

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !3564
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %21, metadata !2974, metadata !DIExpression()) #11, !dbg !3568
  %22 = icmp eq i64 %21, 0, !dbg !3569
  br i1 %22, label %27, label %23, !dbg !3570

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !3571
  %25 = inttoptr i64 %24 to i16*, !dbg !3572
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !3573
  br label %27, !dbg !3574

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !3575

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3431, metadata !DIExpression()), !dbg !3576
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3577, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !772, metadata !DIExpression()) #11, !dbg !3577
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !771, metadata !DIExpression()) #11, !dbg !3579
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !3437, metadata !DIExpression()), !dbg !3576
  %30 = tail call i32 @nk_vc_is_active() #12, !dbg !3580
  %31 = icmp eq i32 %30, 0, !dbg !3580
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3581
  %33 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %33, metadata !2998, metadata !DIExpression()) #11, !dbg !3586
  %34 = icmp eq i64 %33, 0, !dbg !3587
  br i1 %34, label %40, label %35, !dbg !3588

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !3589
  %37 = inttoptr i64 %36 to i16*, !dbg !3590
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !3591
  %39 = icmp eq i16 %38, 0, !dbg !3592
  br i1 %39, label %40, label %41, !dbg !3581

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !3581

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !3581
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3581
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !3581
  br i1 %31, label %62, label %46, !dbg !3593

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !3594

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !3594
  %49 = load i64, i64* %48, align 32, !dbg !3594
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !3594
  %51 = load i8, i8* %50, align 8, !dbg !3594
  %52 = icmp eq i8 %51, 0, !dbg !3594
  br i1 %52, label %53, label %58, !dbg !3594

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !3594
  %55 = load i8, i8* %54, align 64, !dbg !3594
  %56 = icmp eq i8 %55, 0, !dbg !3594
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !3594
  br label %58, !dbg !3594

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !3594
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3594
  br label %78, !dbg !3594

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !3595

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !3595
  %65 = load i64, i64* %64, align 32, !dbg !3595
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !3595
  %67 = load i8, i8* %66, align 8, !dbg !3595
  %68 = icmp eq i8 %67, 0, !dbg !3595
  br i1 %68, label %69, label %74, !dbg !3595

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !3595
  %71 = load i8, i8* %70, align 64, !dbg !3595
  %72 = icmp eq i8 %71, 0, !dbg !3595
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !3595
  br label %74, !dbg !3595

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !3595
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3595
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %79, metadata !3018, metadata !DIExpression()) #11, !dbg !3599
  %80 = icmp eq i64 %79, 0, !dbg !3600
  br i1 %80, label %449, label %81, !dbg !3601

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !3602
  %83 = inttoptr i64 %82 to i16*, !dbg !3603
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !3604
  br label %449, !dbg !3605

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3450, metadata !DIExpression()), !dbg !3606
  %86 = tail call i32 @nk_vc_is_active() #12, !dbg !3607
  %87 = icmp eq i32 %86, 0, !dbg !3607
  %88 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %88, metadata !2998, metadata !DIExpression()) #11, !dbg !3614
  %89 = icmp eq i64 %88, 0, !dbg !3615
  br i1 %89, label %95, label %90, !dbg !3616

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !3617
  %92 = inttoptr i64 %91 to i16*, !dbg !3618
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !3619
  %94 = icmp eq i16 %93, 0, !dbg !3620
  br i1 %94, label %95, label %96, !dbg !3621

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !3621

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !3621
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3621
  br i1 %87, label %102, label %100, !dbg !3622

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3623
  br label %104, !dbg !3623

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !3625
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3627
  call void @llvm.dbg.value(metadata i64 %105, metadata !3018, metadata !DIExpression()) #11, !dbg !3630
  %106 = icmp eq i64 %105, 0, !dbg !3631
  br i1 %106, label %449, label %107, !dbg !3632

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3633
  %109 = inttoptr i64 %108 to i16*, !dbg !3634
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3635
  br label %449, !dbg !3636

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !3637
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3637
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !3638
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !3638
  store i64 100000000, i64* %113, align 8, !dbg !3638
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !3452, metadata !DIExpression(DW_OP_deref)), !dbg !3638
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #12, !dbg !3639
  %115 = icmp eq i32 %114, 0, !dbg !3639
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3640
  br i1 %115, label %219, label %117, !dbg !3641

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !3642
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %119, metadata !2958, metadata !DIExpression()) #11, !dbg !3646
  %120 = icmp eq i64 %119, 0, !dbg !3647
  br i1 %120, label %126, label %121, !dbg !3648

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !3649
  %123 = inttoptr i64 %122 to i16*, !dbg !3650
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3651
  %125 = zext i16 %124 to i32, !dbg !3651
  br label %126, !dbg !3652

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !3653
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %128, metadata !2974, metadata !DIExpression()) #11, !dbg !3657
  %129 = icmp eq i64 %128, 0, !dbg !3658
  br i1 %129, label %134, label %130, !dbg !3659

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3660
  %132 = inttoptr i64 %131 to i16*, !dbg !3661
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3662
  br label %134, !dbg !3663

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !3664

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3478, metadata !DIExpression()), !dbg !3665
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3666, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !3666
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !3668
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3484, metadata !DIExpression()), !dbg !3665
  %137 = call i32 @nk_vc_is_active() #12, !dbg !3669
  %138 = icmp eq i32 %137, 0, !dbg !3669
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3670
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %140, metadata !2998, metadata !DIExpression()) #11, !dbg !3675
  %141 = icmp eq i64 %140, 0, !dbg !3676
  br i1 %141, label %147, label %142, !dbg !3677

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3678
  %144 = inttoptr i64 %143 to i16*, !dbg !3679
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3680
  %146 = icmp eq i16 %145, 0, !dbg !3681
  br i1 %146, label %147, label %148, !dbg !3670

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !3670

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3670
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3670
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3670
  br i1 %138, label %169, label %153, !dbg !3682

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3683

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3683
  %156 = load i64, i64* %155, align 32, !dbg !3683
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3683
  %158 = load i8, i8* %157, align 8, !dbg !3683
  %159 = icmp eq i8 %158, 0, !dbg !3683
  br i1 %159, label %160, label %165, !dbg !3683

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3683
  %162 = load i8, i8* %161, align 64, !dbg !3683
  %163 = icmp eq i8 %162, 0, !dbg !3683
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3683
  br label %165, !dbg !3683

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3683
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3683
  br label %185, !dbg !3683

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3684

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3684
  %172 = load i64, i64* %171, align 32, !dbg !3684
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3684
  %174 = load i8, i8* %173, align 8, !dbg !3684
  %175 = icmp eq i8 %174, 0, !dbg !3684
  br i1 %175, label %176, label %181, !dbg !3684

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3684
  %178 = load i8, i8* %177, align 64, !dbg !3684
  %179 = icmp eq i8 %178, 0, !dbg !3684
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3684
  br label %181, !dbg !3684

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3684
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3684
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %186, metadata !3018, metadata !DIExpression()) #11, !dbg !3688
  %187 = icmp eq i64 %186, 0, !dbg !3689
  br i1 %187, label %218, label %188, !dbg !3690

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3691
  %190 = inttoptr i64 %189 to i16*, !dbg !3692
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3693
  br label %218, !dbg !3694

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3497, metadata !DIExpression()), !dbg !3695
  %193 = call i32 @nk_vc_is_active() #12, !dbg !3696
  %194 = icmp eq i32 %193, 0, !dbg !3696
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %195, metadata !2998, metadata !DIExpression()) #11, !dbg !3703
  %196 = icmp eq i64 %195, 0, !dbg !3704
  br i1 %196, label %202, label %197, !dbg !3705

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3706
  %199 = inttoptr i64 %198 to i16*, !dbg !3707
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3708
  %201 = icmp eq i16 %200, 0, !dbg !3709
  br i1 %201, label %202, label %203, !dbg !3710

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3710

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3710
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3710
  br i1 %194, label %209, label %207, !dbg !3711

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3712
  br label %211, !dbg !3712

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3714
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %212, metadata !3018, metadata !DIExpression()) #11, !dbg !3719
  %213 = icmp eq i64 %212, 0, !dbg !3720
  br i1 %213, label %218, label %214, !dbg !3721

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3722
  %216 = inttoptr i64 %215 to i16*, !dbg !3723
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3724
  br label %218, !dbg !3725

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #13, !dbg !3726
  unreachable, !dbg !3726

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3727
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3730
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3730
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !3499, metadata !DIExpression()), !dbg !3731
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3732
  br i1 %223, label %224, label %326, !dbg !3733

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3734
  %226 = icmp eq i64 %225, 0, !dbg !3736
  %227 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %227, metadata !2958, metadata !DIExpression()) #11, !dbg !3740
  %228 = icmp eq i64 %227, 0, !dbg !3741
  br i1 %228, label %234, label %229, !dbg !3742

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3743
  %231 = inttoptr i64 %230 to i16*, !dbg !3744
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3745
  %233 = zext i16 %232 to i32, !dbg !3745
  br label %234, !dbg !3746

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3747
  %236 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %236, metadata !2974, metadata !DIExpression()) #11, !dbg !3751
  %237 = icmp eq i64 %236, 0, !dbg !3752
  br i1 %237, label %242, label %238, !dbg !3753

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3754
  %240 = inttoptr i64 %239 to i16*, !dbg !3755
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3756
  br label %242, !dbg !3757

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3758

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3500, metadata !DIExpression()), !dbg !3759
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3760, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !772, metadata !DIExpression()) #11, !dbg !3760
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !771, metadata !DIExpression()) #11, !dbg !3762
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !3506, metadata !DIExpression()), !dbg !3759
  %245 = call i32 @nk_vc_is_active() #12, !dbg !3763
  %246 = icmp eq i32 %245, 0, !dbg !3763
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3764
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %248, metadata !2998, metadata !DIExpression()) #11, !dbg !3769
  %249 = icmp eq i64 %248, 0, !dbg !3770
  br i1 %249, label %255, label %250, !dbg !3771

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3772
  %252 = inttoptr i64 %251 to i16*, !dbg !3773
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3774
  %254 = icmp eq i16 %253, 0, !dbg !3775
  br i1 %254, label %255, label %256, !dbg !3764

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3764

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3764
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3764
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3764
  br i1 %246, label %277, label %261, !dbg !3776

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3777

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3777
  %264 = load i64, i64* %263, align 32, !dbg !3777
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3777
  %266 = load i8, i8* %265, align 8, !dbg !3777
  %267 = icmp eq i8 %266, 0, !dbg !3777
  br i1 %267, label %268, label %273, !dbg !3777

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3777
  %270 = load i8, i8* %269, align 64, !dbg !3777
  %271 = icmp eq i8 %270, 0, !dbg !3777
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !3777
  br label %273, !dbg !3777

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !3777
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3777
  br label %293, !dbg !3777

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3778

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3778
  %280 = load i64, i64* %279, align 32, !dbg !3778
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3778
  %282 = load i8, i8* %281, align 8, !dbg !3778
  %283 = icmp eq i8 %282, 0, !dbg !3778
  br i1 %283, label %284, label %289, !dbg !3778

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3778
  %286 = load i8, i8* %285, align 64, !dbg !3778
  %287 = icmp eq i8 %286, 0, !dbg !3778
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !3778
  br label %289, !dbg !3778

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !3778
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3778
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %294, metadata !3018, metadata !DIExpression()) #11, !dbg !3782
  %295 = icmp eq i64 %294, 0, !dbg !3783
  br i1 %295, label %326, label %296, !dbg !3784

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3785
  %298 = inttoptr i64 %297 to i16*, !dbg !3786
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3787
  br label %326, !dbg !3788

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3519, metadata !DIExpression()), !dbg !3789
  %301 = call i32 @nk_vc_is_active() #12, !dbg !3790
  %302 = icmp eq i32 %301, 0, !dbg !3790
  %303 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3793
  call void @llvm.dbg.value(metadata i64 %303, metadata !2998, metadata !DIExpression()) #11, !dbg !3797
  %304 = icmp eq i64 %303, 0, !dbg !3798
  br i1 %304, label %310, label %305, !dbg !3799

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3800
  %307 = inttoptr i64 %306 to i16*, !dbg !3801
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3802
  %309 = icmp eq i16 %308, 0, !dbg !3803
  br i1 %309, label %310, label %311, !dbg !3804

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3804

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3804
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3804
  br i1 %302, label %317, label %315, !dbg !3805

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3806
  br label %319, !dbg !3806

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3808
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3810
  call void @llvm.dbg.value(metadata i64 %320, metadata !3018, metadata !DIExpression()) #11, !dbg !3813
  %321 = icmp eq i64 %320, 0, !dbg !3814
  br i1 %321, label %326, label %322, !dbg !3815

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3816
  %324 = inttoptr i64 %323 to i16*, !dbg !3817
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3818
  br label %326, !dbg !3819

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3820, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !772, metadata !DIExpression()) #11, !dbg !3820
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !771, metadata !DIExpression()) #11, !dbg !3822
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3823
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3824
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3825
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3825
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3521, metadata !DIExpression(DW_OP_deref)), !dbg !3826
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !3827
  %331 = icmp slt i32 %330, 0, !dbg !3828
  br i1 %331, label %332, label %434, !dbg !3829

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3830
  %334 = icmp eq i64 %333, 0, !dbg !3832
  %335 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %335, metadata !2958, metadata !DIExpression()) #11, !dbg !3836
  %336 = icmp eq i64 %335, 0, !dbg !3837
  br i1 %336, label %342, label %337, !dbg !3838

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3839
  %339 = inttoptr i64 %338 to i16*, !dbg !3840
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3841
  %341 = zext i16 %340 to i32, !dbg !3841
  br label %342, !dbg !3842

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3843
  %344 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %344, metadata !2974, metadata !DIExpression()) #11, !dbg !3847
  %345 = icmp eq i64 %344, 0, !dbg !3848
  br i1 %345, label %350, label %346, !dbg !3849

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3850
  %348 = inttoptr i64 %347 to i16*, !dbg !3851
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3852
  br label %350, !dbg !3853

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3854

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !3522, metadata !DIExpression()), !dbg !3855
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3856, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !772, metadata !DIExpression()) #11, !dbg !3856
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !771, metadata !DIExpression()) #11, !dbg !3858
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !3528, metadata !DIExpression()), !dbg !3855
  %353 = call i32 @nk_vc_is_active() #12, !dbg !3859
  %354 = icmp eq i32 %353, 0, !dbg !3859
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3860
  %356 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3861
  call void @llvm.dbg.value(metadata i64 %356, metadata !2998, metadata !DIExpression()) #11, !dbg !3865
  %357 = icmp eq i64 %356, 0, !dbg !3866
  br i1 %357, label %363, label %358, !dbg !3867

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3868
  %360 = inttoptr i64 %359 to i16*, !dbg !3869
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3870
  %362 = icmp eq i16 %361, 0, !dbg !3871
  br i1 %362, label %363, label %364, !dbg !3860

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3860

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3860
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3860
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3860
  br i1 %354, label %385, label %369, !dbg !3872

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3873

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3873
  %372 = load i64, i64* %371, align 32, !dbg !3873
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3873
  %374 = load i8, i8* %373, align 8, !dbg !3873
  %375 = icmp eq i8 %374, 0, !dbg !3873
  br i1 %375, label %376, label %381, !dbg !3873

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3873
  %378 = load i8, i8* %377, align 64, !dbg !3873
  %379 = icmp eq i8 %378, 0, !dbg !3873
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !3873
  br label %381, !dbg !3873

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !3873
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3873
  br label %401, !dbg !3873

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3874

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3874
  %388 = load i64, i64* %387, align 32, !dbg !3874
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3874
  %390 = load i8, i8* %389, align 8, !dbg !3874
  %391 = icmp eq i8 %390, 0, !dbg !3874
  br i1 %391, label %392, label %397, !dbg !3874

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3874
  %394 = load i8, i8* %393, align 64, !dbg !3874
  %395 = icmp eq i8 %394, 0, !dbg !3874
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !3874
  br label %397, !dbg !3874

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !3874
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3874
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %402, metadata !3018, metadata !DIExpression()) #11, !dbg !3878
  %403 = icmp eq i64 %402, 0, !dbg !3879
  br i1 %403, label %434, label %404, !dbg !3880

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3881
  %406 = inttoptr i64 %405 to i16*, !dbg !3882
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3883
  br label %434, !dbg !3884

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !3541, metadata !DIExpression()), !dbg !3885
  %409 = call i32 @nk_vc_is_active() #12, !dbg !3886
  %410 = icmp eq i32 %409, 0, !dbg !3886
  %411 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %411, metadata !2998, metadata !DIExpression()) #11, !dbg !3893
  %412 = icmp eq i64 %411, 0, !dbg !3894
  br i1 %412, label %418, label %413, !dbg !3895

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3896
  %415 = inttoptr i64 %414 to i16*, !dbg !3897
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3898
  %417 = icmp eq i16 %416, 0, !dbg !3899
  br i1 %417, label %418, label %419, !dbg !3900

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3900

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3900
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3900
  br i1 %410, label %425, label %423, !dbg !3901

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3902
  br label %427, !dbg !3902

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3904
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %428, metadata !3018, metadata !DIExpression()) #11, !dbg !3909
  %429 = icmp eq i64 %428, 0, !dbg !3910
  br i1 %429, label %434, label %430, !dbg !3911

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3912
  %432 = inttoptr i64 %431 to i16*, !dbg !3913
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3914
  br label %434, !dbg !3915

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3916
  %436 = load i64, i64* %435, align 8, !dbg !3916
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3521, metadata !DIExpression(DW_OP_deref)), !dbg !3826
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3917
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3918
  store i64 %436, i64* %438, align 8, !dbg !3918
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3521, metadata !DIExpression(DW_OP_deref)), !dbg !3826
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3919
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3920
  store i64 %436, i64* %440, align 8, !dbg !3920
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3921
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3521, metadata !DIExpression()), !dbg !3826
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3922
  store i32 1, i32* %442, align 8, !dbg !3923
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3521, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2551, metadata !DIExpression()) #11, !dbg !3924
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3926
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3926
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3927
  %446 = load i8*, i8** %445, align 8, !dbg !3927
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3928
  %448 = load i8**, i8*** %447, align 8, !dbg !3928
  call void %444(i8* %446, i8** %448) #12, !dbg !3929
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #12, !dbg !3930
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3931
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3931
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3931
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3932 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3934, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8** %1, metadata !3935, metadata !DIExpression()), !dbg !3937
  br label %3, !dbg !3938

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3939
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3945
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3946
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3946
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !3947
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !3947
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3948, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !3948
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !3950
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !3951
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !3952

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3953
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !3958
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !3959
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !3959
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !3960
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1033, metadata !DIExpression()) #11, !dbg !3961
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !3962
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1051, metadata !DIExpression()) #11, !dbg !3963
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !3965
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !3965
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !3966
  br i1 %20, label %33, label %21, !dbg !3967

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !3968
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !3968
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !3968
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1035, metadata !DIExpression()) #11, !dbg !3968
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1034, metadata !DIExpression()) #11, !dbg !3962
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1063, metadata !DIExpression()) #11, !dbg !3970
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !3972
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !3972
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1070, metadata !DIExpression()) #11, !dbg !3974
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1075, metadata !DIExpression()) #11, !dbg !3976
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !3977
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !3978
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !3979
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !3980
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !3981
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !3983
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !3983
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !3984
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !3984
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1034, metadata !DIExpression()) #11, !dbg !3962
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1012, metadata !DIExpression()) #11, !dbg !3985
  %32 = icmp eq %struct.list_head** %22, null, !dbg !3986
  br i1 %32, label %33, label %54, !dbg !3987

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3988
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !3992
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !3993
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !3993
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !3994
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !3994
  %40 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3995
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !3999
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !4000
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !4000
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !4001
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !4001
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !4002
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !4003

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4004
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !4008
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !4009
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !4009
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !4010
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !4010
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1012, metadata !DIExpression()) #11, !dbg !3985
  br label %54, !dbg !4011

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !4012
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1012, metadata !DIExpression()) #11, !dbg !3985
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !4013
  br label %nk_fiber_yield.exit, !dbg !4014

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !4012
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4015
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4020
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4021
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4021
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !4022
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !4023, metadata !DIExpression()), !dbg !4027
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !4029
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !4029
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !4026, metadata !DIExpression()), !dbg !4030
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !4031
  br i1 %65, label %66, label %70, !dbg !4032

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !4033
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !4033
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !4034
  br i1 %69, label %71, label %70, !dbg !4035

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !4036, !llvm.loop !4037

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #12, !dbg !4039
  br label %70, !dbg !4041
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !602 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !601, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i8* %1, metadata !606, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i8** %2, metadata !607, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %3, metadata !608, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !609, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()), !dbg !4047
  %6 = icmp eq i64 %3, 0, !dbg !4048
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !4048
  call void @llvm.dbg.value(metadata i64 %7, metadata !611, metadata !DIExpression()), !dbg !4049
  %8 = tail call i8* @kmem_malloc(i64 152) #12, !dbg !4050
  call void @llvm.dbg.value(metadata i8* %8, metadata !612, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i8* %8, metadata !610, metadata !DIExpression()), !dbg !4047
  %9 = icmp eq i8* %8, null, !dbg !4051
  br i1 %9, label %104, label %10, !dbg !4052

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #12, !dbg !4053
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !4054
  %13 = bitcast i8* %12 to i32*, !dbg !4054
  store i32 0, i32* %13, align 4, !dbg !4055
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !4056
  %15 = bitcast i8* %14 to i64*, !dbg !4056
  store i64 %7, i64* %15, align 8, !dbg !4057
  %16 = tail call i8* @kmem_malloc(i64 %7) #12, !dbg !4058
  call void @llvm.dbg.value(metadata i8* %16, metadata !614, metadata !DIExpression()), !dbg !4058
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !4059
  %18 = bitcast i8* %17 to i8**, !dbg !4059
  store i8* %16, i8** %18, align 8, !dbg !4060
  %19 = icmp eq i8* %16, null, !dbg !4061
  br i1 %19, label %20, label %21, !dbg !4062

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #12, !dbg !4063
  br label %104, !dbg !4064

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !4062
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !4065
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !4065
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !4066
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !4067
  %26 = bitcast i8* %25 to i8**, !dbg !4067
  store i8* %1, i8** %26, align 8, !dbg !4068
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !4069
  %28 = bitcast i8* %27 to i8***, !dbg !4069
  store i8** %2, i8*** %28, align 8, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %8, metadata !648, metadata !DIExpression()), !dbg !4071
  %29 = load i64, i64* %15, align 8, !dbg !4073
  %30 = bitcast i8* %8 to i64*, !dbg !4074
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !4077
  %31 = add i64 %22, -8, !dbg !4078
  %32 = add i64 %31, %29, !dbg !4079
  store i64 %32, i64* %30, align 8, !dbg !4079
  %33 = inttoptr i64 %32 to i64*, !dbg !4080
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4084
  %34 = load i64, i64* %30, align 8, !dbg !4085
  %35 = add i64 %34, -8, !dbg !4085
  store i64 %35, i64* %30, align 8, !dbg !4085
  %36 = inttoptr i64 %35 to i64*, !dbg !4086
  store i64 0, i64* %36, align 8, !dbg !4087
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4090
  %37 = load i64, i64* %30, align 8, !dbg !4091
  %38 = add i64 %37, -8, !dbg !4091
  store i64 %38, i64* %30, align 8, !dbg !4091
  %39 = inttoptr i64 %38 to i64*, !dbg !4092
  store i64 0, i64* %39, align 8, !dbg !4093
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4096
  %40 = load i64, i64* %30, align 8, !dbg !4097
  %41 = add i64 %40, -8, !dbg !4097
  store i64 %41, i64* %30, align 8, !dbg !4097
  %42 = inttoptr i64 %41 to i64*, !dbg !4098
  store i64 0, i64* %42, align 8, !dbg !4099
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4102
  %43 = load i64, i64* %30, align 8, !dbg !4103
  %44 = add i64 %43, -8, !dbg !4103
  store i64 %44, i64* %30, align 8, !dbg !4103
  %45 = inttoptr i64 %44 to i64*, !dbg !4104
  store i64 0, i64* %45, align 8, !dbg !4105
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4108
  %46 = load i64, i64* %30, align 8, !dbg !4109
  %47 = add i64 %46, -8, !dbg !4109
  store i64 %47, i64* %30, align 8, !dbg !4109
  %48 = inttoptr i64 %47 to i64*, !dbg !4110
  store i64 0, i64* %48, align 8, !dbg !4111
  %49 = ptrtoint i8* %8 to i64, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %49, metadata !662, metadata !DIExpression()), !dbg !4115
  %50 = load i64, i64* %30, align 8, !dbg !4116
  %51 = add i64 %50, -8, !dbg !4116
  store i64 %51, i64* %30, align 8, !dbg !4116
  %52 = inttoptr i64 %51 to i64*, !dbg !4117
  store i64 %49, i64* %52, align 8, !dbg !4118
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4121
  %53 = load i64, i64* %30, align 8, !dbg !4122
  %54 = add i64 %53, -8, !dbg !4122
  store i64 %54, i64* %30, align 8, !dbg !4122
  %55 = inttoptr i64 %54 to i64*, !dbg !4123
  store i64 0, i64* %55, align 8, !dbg !4124
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4127
  %56 = load i64, i64* %30, align 8, !dbg !4128
  %57 = add i64 %56, -8, !dbg !4128
  store i64 %57, i64* %30, align 8, !dbg !4128
  %58 = inttoptr i64 %57 to i64*, !dbg !4129
  store i64 0, i64* %58, align 8, !dbg !4130
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4133
  %59 = load i64, i64* %30, align 8, !dbg !4134
  %60 = add i64 %59, -8, !dbg !4134
  store i64 %60, i64* %30, align 8, !dbg !4134
  %61 = inttoptr i64 %60 to i64*, !dbg !4135
  store i64 0, i64* %61, align 8, !dbg !4136
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4139
  %62 = load i64, i64* %30, align 8, !dbg !4140
  %63 = add i64 %62, -8, !dbg !4140
  store i64 %63, i64* %30, align 8, !dbg !4140
  %64 = inttoptr i64 %63 to i64*, !dbg !4141
  store i64 0, i64* %64, align 8, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4145
  %65 = load i64, i64* %30, align 8, !dbg !4146
  %66 = add i64 %65, -8, !dbg !4146
  store i64 %66, i64* %30, align 8, !dbg !4146
  %67 = inttoptr i64 %66 to i64*, !dbg !4147
  store i64 0, i64* %67, align 8, !dbg !4148
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4151
  %68 = load i64, i64* %30, align 8, !dbg !4152
  %69 = add i64 %68, -8, !dbg !4152
  store i64 %69, i64* %30, align 8, !dbg !4152
  %70 = inttoptr i64 %69 to i64*, !dbg !4153
  store i64 0, i64* %70, align 8, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4157
  %71 = load i64, i64* %30, align 8, !dbg !4158
  %72 = add i64 %71, -8, !dbg !4158
  store i64 %72, i64* %30, align 8, !dbg !4158
  %73 = inttoptr i64 %72 to i64*, !dbg !4159
  store i64 0, i64* %73, align 8, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4163
  %74 = load i64, i64* %30, align 8, !dbg !4164
  %75 = add i64 %74, -8, !dbg !4164
  store i64 %75, i64* %30, align 8, !dbg !4164
  %76 = inttoptr i64 %75 to i64*, !dbg !4165
  store i64 0, i64* %76, align 8, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !4169
  %77 = load i64, i64* %30, align 8, !dbg !4170
  %78 = add i64 %77, -8, !dbg !4170
  store i64 %78, i64* %30, align 8, !dbg !4170
  %79 = inttoptr i64 %78 to i64*, !dbg !4171
  store i64 0, i64* %79, align 8, !dbg !4172
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !4173
  br i1 %80, label %83, label %81, !dbg !4174

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !4175
  store i8* %8, i8** %82, align 8, !dbg !4175
  br label %83, !dbg !4176

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4177, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !772, metadata !DIExpression()) #11, !dbg !4177
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !771, metadata !DIExpression()) #11, !dbg !4179
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !4180
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !4180
  %87 = load i64, i64* %86, align 8, !dbg !4180
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !4181
  %89 = bitcast i8* %88 to i64*, !dbg !4182
  store i64 %87, i64* %89, align 8, !dbg !4182
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !4183
  call void @llvm.dbg.value(metadata i8* %90, metadata !780, metadata !DIExpression()), !dbg !4184
  %91 = bitcast i8* %90 to i8**, !dbg !4186
  store i8* %90, i8** %91, align 8, !dbg !4186
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !4187
  %93 = bitcast i8* %92 to i8**, !dbg !4188
  store i8* %90, i8** %93, align 8, !dbg !4188
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !4189
  %95 = bitcast i8* %94 to i32*, !dbg !4189
  store i32 0, i32* %95, align 8, !dbg !4190
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()), !dbg !4192
  %97 = bitcast i8* %96 to i8**, !dbg !4194
  store i8* %96, i8** %97, align 8, !dbg !4194
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !4195
  %99 = bitcast i8* %98 to i8**, !dbg !4196
  store i8* %96, i8** %99, align 8, !dbg !4196
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !4197
  call void @llvm.dbg.value(metadata i8* %100, metadata !780, metadata !DIExpression()), !dbg !4198
  %101 = bitcast i8* %100 to i8**, !dbg !4200
  store i8* %100, i8** %101, align 8, !dbg !4200
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !4201
  %103 = bitcast i8* %102 to i8**, !dbg !4202
  store i8* %100, i8** %103, align 8, !dbg !4202
  br label %104, !dbg !4203

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !4204
  ret i32 %105, !dbg !4205
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !1010 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4206
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !4210
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !4211
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !4211
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !4212
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !4212
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4213, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !772, metadata !DIExpression()) #11, !dbg !4213
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !771, metadata !DIExpression()) #11, !dbg !4215
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !4216
  br i1 %8, label %9, label %54, !dbg !4217

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4218
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !4223
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4224
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4224
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4225
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1033, metadata !DIExpression()) #11, !dbg !4226
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !4227
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1051, metadata !DIExpression()) #11, !dbg !4228
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !4230
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !4230
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !4231
  br i1 %17, label %30, label %18, !dbg !4232

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !4233
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !4233
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !4233
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1035, metadata !DIExpression()) #11, !dbg !4233
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1034, metadata !DIExpression()) #11, !dbg !4227
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !4234
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1063, metadata !DIExpression()) #11, !dbg !4235
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !4237
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !4237
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !4238
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1070, metadata !DIExpression()) #11, !dbg !4239
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1075, metadata !DIExpression()) #11, !dbg !4241
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !4242
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !4243
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !4244
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !4245
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !780, metadata !DIExpression()) #11, !dbg !4246
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !4248
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !4248
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !4249
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1034, metadata !DIExpression()) #11, !dbg !4227
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1012, metadata !DIExpression()), !dbg !4250
  %29 = icmp eq %struct.list_head** %19, null, !dbg !4251
  br i1 %29, label %30, label %51, !dbg !4252

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4253
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4257
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4258
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4258
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !4259
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !4259
  %37 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4260
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !4264
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !4265
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !4265
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !4266
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !4266
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !4267
  br i1 %43, label %54, label %44, !dbg !4268

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4269
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !4273
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !4274
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !4274
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !4275
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !4275
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !1012, metadata !DIExpression()), !dbg !4250
  br label %51, !dbg !4276

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !4277
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !1012, metadata !DIExpression()), !dbg !4250
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #10, !dbg !4278
  br label %54, !dbg !4279

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !4277
  ret i32 %55, !dbg !4280
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !4281 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4324
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4326
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !4283, metadata !DIExpression()), !dbg !4327
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4328
  %5 = icmp eq i64 %4, 0, !dbg !4330
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4331
  call void @llvm.dbg.value(metadata i64 %6, metadata !2958, metadata !DIExpression()) #11, !dbg !4334
  %7 = icmp eq i64 %6, 0, !dbg !4335
  br i1 %7, label %13, label %8, !dbg !4336

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !4337
  %10 = inttoptr i64 %9 to i16*, !dbg !4338
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !4339
  %12 = zext i16 %11 to i32, !dbg !4339
  br label %13, !dbg !4340

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !4341
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %15, metadata !2974, metadata !DIExpression()) #11, !dbg !4345
  %16 = icmp eq i64 %15, 0, !dbg !4346
  br i1 %16, label %21, label %17, !dbg !4347

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !4348
  %19 = inttoptr i64 %18 to i16*, !dbg !4349
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !4350
  br label %21, !dbg !4351

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !4352

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !4284, metadata !DIExpression()), !dbg !4353
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4354, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !772, metadata !DIExpression()) #11, !dbg !4354
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !771, metadata !DIExpression()) #11, !dbg !4356
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !4288, metadata !DIExpression()), !dbg !4353
  %24 = tail call i32 @nk_vc_is_active() #12, !dbg !4357
  %25 = icmp eq i32 %24, 0, !dbg !4357
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4358
  %27 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %27, metadata !2998, metadata !DIExpression()) #11, !dbg !4363
  %28 = icmp eq i64 %27, 0, !dbg !4364
  br i1 %28, label %34, label %29, !dbg !4365

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !4366
  %31 = inttoptr i64 %30 to i16*, !dbg !4367
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !4368
  %33 = icmp eq i16 %32, 0, !dbg !4369
  br i1 %33, label %34, label %35, !dbg !4358

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !4358

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !4358
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4358
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !4358
  br i1 %25, label %58, label %40, !dbg !4370

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !4371

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !4371
  %43 = load i64, i64* %42, align 32, !dbg !4371
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !4371
  %45 = load i8, i8* %44, align 8, !dbg !4371
  %46 = icmp eq i8 %45, 0, !dbg !4371
  br i1 %46, label %47, label %52, !dbg !4371

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !4371
  %49 = load i8, i8* %48, align 64, !dbg !4371
  %50 = icmp eq i8 %49, 0, !dbg !4371
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !4371
  br label %52, !dbg !4371

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !4371
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !4371
  %56 = load i32, i32* %55, align 8, !dbg !4371
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #12, !dbg !4371
  br label %76, !dbg !4371

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !4372

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !4372
  %61 = load i64, i64* %60, align 32, !dbg !4372
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !4372
  %63 = load i8, i8* %62, align 8, !dbg !4372
  %64 = icmp eq i8 %63, 0, !dbg !4372
  br i1 %64, label %65, label %70, !dbg !4372

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !4372
  %67 = load i8, i8* %66, align 64, !dbg !4372
  %68 = icmp eq i8 %67, 0, !dbg !4372
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !4372
  br label %70, !dbg !4372

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !4372
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !4372
  %74 = load i32, i32* %73, align 8, !dbg !4372
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #12, !dbg !4372
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %77, metadata !3018, metadata !DIExpression()) #11, !dbg !4376
  %78 = icmp eq i64 %77, 0, !dbg !4377
  br i1 %78, label %111, label %79, !dbg !4378

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !4379
  %81 = inttoptr i64 %80 to i16*, !dbg !4380
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !4381
  br label %111, !dbg !4382

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !4301, metadata !DIExpression()), !dbg !4383
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !4384
  %85 = icmp eq i32 %84, 0, !dbg !4384
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4387
  call void @llvm.dbg.value(metadata i64 %86, metadata !2998, metadata !DIExpression()) #11, !dbg !4391
  %87 = icmp eq i64 %86, 0, !dbg !4392
  br i1 %87, label %93, label %88, !dbg !4393

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !4394
  %90 = inttoptr i64 %89 to i16*, !dbg !4395
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !4396
  %92 = icmp eq i16 %91, 0, !dbg !4397
  br i1 %92, label %93, label %94, !dbg !4398

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !4398

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !4398
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4398
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !4398
  %99 = load i32, i32* %98, align 8, !dbg !4398
  br i1 %85, label %102, label %100, !dbg !4399

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !4400
  br label %104, !dbg !4400

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !4402
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4404
  call void @llvm.dbg.value(metadata i64 %105, metadata !3018, metadata !DIExpression()) #11, !dbg !4407
  %106 = icmp eq i64 %105, 0, !dbg !4408
  br i1 %106, label %111, label %107, !dbg !4409

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !4410
  %109 = inttoptr i64 %108 to i16*, !dbg !4411
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !4412
  br label %111, !dbg !4413

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !4414
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4414
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4445, !srcloc !4446
  call void @llvm.dbg.value(metadata i32 %113, metadata !4422, metadata !DIExpression()) #11, !dbg !4445
  call void @llvm.dbg.value(metadata i32 %113, metadata !4419, metadata !DIExpression()) #11, !dbg !4447
  call void @llvm.dbg.value(metadata i8** %1, metadata !4417, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4448
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #12, !dbg !4449
  %115 = icmp eq i32 %114, 0, !dbg !4449
  br i1 %115, label %321, label %116, !dbg !4450

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4451
  %118 = icmp eq i64 %117, 0, !dbg !4453
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %119, metadata !2958, metadata !DIExpression()) #11, !dbg !4457
  %120 = icmp eq i64 %119, 0, !dbg !4458
  br i1 %120, label %126, label %121, !dbg !4459

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !4460
  %123 = inttoptr i64 %122 to i16*, !dbg !4461
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !4462
  %125 = zext i16 %124 to i32, !dbg !4462
  br label %126, !dbg !4463

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !4464
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4465
  call void @llvm.dbg.value(metadata i64 %128, metadata !2974, metadata !DIExpression()) #11, !dbg !4468
  %129 = icmp eq i64 %128, 0, !dbg !4469
  br i1 %129, label %134, label %130, !dbg !4470

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !4471
  %132 = inttoptr i64 %131 to i16*, !dbg !4472
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !4473
  br label %134, !dbg !4474

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !4475

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !4424, metadata !DIExpression()) #11, !dbg !4476
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4477, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !4477
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !4479
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !4429, metadata !DIExpression()) #11, !dbg !4476
  %137 = call i32 @nk_vc_is_active() #12, !dbg !4480
  %138 = icmp eq i32 %137, 0, !dbg !4480
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4481
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4482
  call void @llvm.dbg.value(metadata i64 %140, metadata !2998, metadata !DIExpression()) #11, !dbg !4486
  %141 = icmp eq i64 %140, 0, !dbg !4487
  br i1 %141, label %147, label %142, !dbg !4488

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !4489
  %144 = inttoptr i64 %143 to i16*, !dbg !4490
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !4491
  %146 = icmp eq i16 %145, 0, !dbg !4492
  br i1 %146, label %147, label %148, !dbg !4481

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !4481

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !4481
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4481
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !4481
  br i1 %138, label %169, label %153, !dbg !4493

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !4494

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4494
  %156 = load i64, i64* %155, align 32, !dbg !4494
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4494
  %158 = load i8, i8* %157, align 8, !dbg !4494
  %159 = icmp eq i8 %158, 0, !dbg !4494
  br i1 %159, label %160, label %165, !dbg !4494

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4494
  %162 = load i8, i8* %161, align 64, !dbg !4494
  %163 = icmp eq i8 %162, 0, !dbg !4494
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !4494
  br label %165, !dbg !4494

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !4494
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4494
  br label %185, !dbg !4494

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !4495

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4495
  %172 = load i64, i64* %171, align 32, !dbg !4495
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4495
  %174 = load i8, i8* %173, align 8, !dbg !4495
  %175 = icmp eq i8 %174, 0, !dbg !4495
  br i1 %175, label %176, label %181, !dbg !4495

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4495
  %178 = load i8, i8* %177, align 64, !dbg !4495
  %179 = icmp eq i8 %178, 0, !dbg !4495
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !4495
  br label %181, !dbg !4495

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !4495
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4495
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4496
  call void @llvm.dbg.value(metadata i64 %186, metadata !3018, metadata !DIExpression()) #11, !dbg !4499
  %187 = icmp eq i64 %186, 0, !dbg !4500
  br i1 %187, label %218, label %188, !dbg !4501

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !4502
  %190 = inttoptr i64 %189 to i16*, !dbg !4503
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !4504
  br label %218, !dbg !4505

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !4442, metadata !DIExpression()) #11, !dbg !4506
  %193 = call i32 @nk_vc_is_active() #12, !dbg !4507
  %194 = icmp eq i32 %193, 0, !dbg !4507
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %195, metadata !2998, metadata !DIExpression()) #11, !dbg !4514
  %196 = icmp eq i64 %195, 0, !dbg !4515
  br i1 %196, label %202, label %197, !dbg !4516

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !4517
  %199 = inttoptr i64 %198 to i16*, !dbg !4518
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !4519
  %201 = icmp eq i16 %200, 0, !dbg !4520
  br i1 %201, label %202, label %203, !dbg !4521

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !4521

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !4521
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4521
  br i1 %194, label %209, label %207, !dbg !4522

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4523
  br label %211, !dbg !4523

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !4525
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %212, metadata !3018, metadata !DIExpression()) #11, !dbg !4530
  %213 = icmp eq i64 %212, 0, !dbg !4531
  br i1 %213, label %218, label %214, !dbg !4532

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !4533
  %216 = inttoptr i64 %215 to i16*, !dbg !4534
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !4535
  br label %218, !dbg !4536

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4537
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4538
  %220 = icmp eq i64 %219, 0, !dbg !4540
  %221 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %221, metadata !2958, metadata !DIExpression()) #11, !dbg !4544
  %222 = icmp eq i64 %221, 0, !dbg !4545
  br i1 %222, label %228, label %223, !dbg !4546

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !4547
  %225 = inttoptr i64 %224 to i16*, !dbg !4548
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !4549
  %227 = zext i16 %226 to i32, !dbg !4549
  br label %228, !dbg !4550

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !4551
  %230 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %230, metadata !2974, metadata !DIExpression()) #11, !dbg !4555
  %231 = icmp eq i64 %230, 0, !dbg !4556
  br i1 %231, label %236, label %232, !dbg !4557

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !4558
  %234 = inttoptr i64 %233 to i16*, !dbg !4559
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !4560
  br label %236, !dbg !4561

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !4562

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !4303, metadata !DIExpression()), !dbg !4563
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4564, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !772, metadata !DIExpression()) #11, !dbg !4564
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !771, metadata !DIExpression()) #11, !dbg !4566
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !4309, metadata !DIExpression()), !dbg !4563
  %239 = call i32 @nk_vc_is_active() #12, !dbg !4567
  %240 = icmp eq i32 %239, 0, !dbg !4567
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !4568
  %242 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4569
  call void @llvm.dbg.value(metadata i64 %242, metadata !2998, metadata !DIExpression()) #11, !dbg !4573
  %243 = icmp eq i64 %242, 0, !dbg !4574
  br i1 %243, label %249, label %244, !dbg !4575

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !4576
  %246 = inttoptr i64 %245 to i16*, !dbg !4577
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !4578
  %248 = icmp eq i16 %247, 0, !dbg !4579
  br i1 %248, label %249, label %250, !dbg !4568

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !4568

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !4568
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4568
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !4568
  br i1 %240, label %271, label %255, !dbg !4580

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !4581

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !4581
  %258 = load i64, i64* %257, align 32, !dbg !4581
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !4581
  %260 = load i8, i8* %259, align 8, !dbg !4581
  %261 = icmp eq i8 %260, 0, !dbg !4581
  br i1 %261, label %262, label %267, !dbg !4581

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !4581
  %264 = load i8, i8* %263, align 64, !dbg !4581
  %265 = icmp eq i8 %264, 0, !dbg !4581
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !4581
  br label %267, !dbg !4581

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !4581
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4581
  br label %287, !dbg !4581

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !4582

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !4582
  %274 = load i64, i64* %273, align 32, !dbg !4582
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !4582
  %276 = load i8, i8* %275, align 8, !dbg !4582
  %277 = icmp eq i8 %276, 0, !dbg !4582
  br i1 %277, label %278, label %283, !dbg !4582

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !4582
  %280 = load i8, i8* %279, align 64, !dbg !4582
  %281 = icmp eq i8 %280, 0, !dbg !4582
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !4582
  br label %283, !dbg !4582

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !4582
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4582
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4583
  call void @llvm.dbg.value(metadata i64 %288, metadata !3018, metadata !DIExpression()) #11, !dbg !4586
  %289 = icmp eq i64 %288, 0, !dbg !4587
  br i1 %289, label %320, label %290, !dbg !4588

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !4589
  %292 = inttoptr i64 %291 to i16*, !dbg !4590
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !4591
  br label %320, !dbg !4592

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !4322, metadata !DIExpression()), !dbg !4593
  %295 = call i32 @nk_vc_is_active() #12, !dbg !4594
  %296 = icmp eq i32 %295, 0, !dbg !4594
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4597
  call void @llvm.dbg.value(metadata i64 %297, metadata !2998, metadata !DIExpression()) #11, !dbg !4601
  %298 = icmp eq i64 %297, 0, !dbg !4602
  br i1 %298, label %304, label %299, !dbg !4603

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !4604
  %301 = inttoptr i64 %300 to i16*, !dbg !4605
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !4606
  %303 = icmp eq i16 %302, 0, !dbg !4607
  br i1 %303, label %304, label %305, !dbg !4608

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !4608

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !4608
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !4608
  br i1 %296, label %311, label %309, !dbg !4609

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4610
  br label %313, !dbg !4610

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !4612
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4614
  call void @llvm.dbg.value(metadata i64 %314, metadata !3018, metadata !DIExpression()) #11, !dbg !4617
  %315 = icmp eq i64 %314, 0, !dbg !4618
  br i1 %315, label %320, label %316, !dbg !4619

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !4620
  %318 = inttoptr i64 %317 to i16*, !dbg !4621
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !4622
  br label %320, !dbg !4623

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #13, !dbg !4624
  unreachable, !dbg !4624

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !4537
  ret void, !dbg !4625
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !584 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !583, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i8** %2, metadata !590, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %3, metadata !591, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i8 %4, metadata !592, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !593, metadata !DIExpression()), !dbg !4631
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #10, !dbg !4632
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !4633
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #10, !dbg !4634
  ret i32 0, !dbg !4635
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !992 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !4636
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4637
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4642
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4643
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4643
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !4644
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !4644
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4645, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !772, metadata !DIExpression()) #11, !dbg !4645
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !771, metadata !DIExpression()) #11, !dbg !4647
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !4648
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !4649

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4650
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !4655
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !4656
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !4656
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !4657
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1033, metadata !DIExpression()) #11, !dbg !4658
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !4659
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1051, metadata !DIExpression()) #11, !dbg !4660
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !4662
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !4662
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !4663
  br i1 %18, label %31, label %19, !dbg !4664

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !4665
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !4665
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !4665
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1035, metadata !DIExpression()) #11, !dbg !4665
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1034, metadata !DIExpression()) #11, !dbg !4659
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !4666
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1063, metadata !DIExpression()) #11, !dbg !4667
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !4669
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !4669
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !4670
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1070, metadata !DIExpression()) #11, !dbg !4671
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1075, metadata !DIExpression()) #11, !dbg !4673
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !4674
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !4675
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !4676
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !4677
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !780, metadata !DIExpression()) #11, !dbg !4678
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !4680
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !4680
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !4681
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !4681
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1034, metadata !DIExpression()) #11, !dbg !4659
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1012, metadata !DIExpression()) #11, !dbg !4682
  %30 = icmp eq %struct.list_head** %20, null, !dbg !4683
  br i1 %30, label %31, label %52, !dbg !4684

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4685
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !4689
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !4690
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !4690
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !4691
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !4691
  %38 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4692
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !4696
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !4697
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !4697
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !4698
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !4698
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !4699
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !4700

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4701
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !4705
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !4706
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !4706
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !4707
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !4707
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !1012, metadata !DIExpression()) #11, !dbg !4682
  br label %52, !dbg !4708

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !4709
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !1012, metadata !DIExpression()) #11, !dbg !4682
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #12, !dbg !4710
  br label %nk_fiber_yield.exit, !dbg !4711

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !4709
  ret i32 %55, !dbg !4712
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4713 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4715, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2840, metadata !DIExpression()) #11, !dbg !4720
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !4722, !srcloc !2861
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2844, metadata !DIExpression()) #11, !dbg !4722
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2842, metadata !DIExpression()) #11, !dbg !4723
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2841, metadata !DIExpression()) #11, !dbg !4724
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !4725
  %4 = load i32, i32* %3, align 8, !dbg !4725
  call void @llvm.dbg.value(metadata i32 %4, metadata !2846, metadata !DIExpression()) #11, !dbg !4726
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()) #11, !dbg !4727
  %5 = icmp sgt i32 %4, 0, !dbg !4728
  br i1 %5, label %6, label %30, !dbg !4729

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !4730
  br label %8, !dbg !4730

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2849, metadata !DIExpression()) #11, !dbg !4727
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !4730
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !4730
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4731
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4731
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4732
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2847, metadata !DIExpression()) #11, !dbg !4733
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !4734
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2851, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4734
  call void @llvm.dbg.value(metadata i8** %15, metadata !2848, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !4735
  %16 = load i8*, i8** %15, align 8, !dbg !4736
  br label %17, !dbg !4737

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !4736
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !4738
  %20 = bitcast i8* %18 to i8**, !dbg !4738
  %21 = load i8*, i8** %20, align 8, !dbg !4738
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #11, !dbg !4738
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !4738
  br i1 %22, label %27, label %23, !dbg !4737

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !4736
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !4736
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2848, metadata !DIExpression()) #11, !dbg !4735
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !4739
  br i1 %26, label %75, label %17, !dbg !4740, !llvm.loop !2882

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !4741
  call void @llvm.dbg.value(metadata i32 undef, metadata !2849, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !4727
  %29 = icmp slt i64 %28, %7, !dbg !4728
  br i1 %29, label %8, label %30, !dbg !4729, !llvm.loop !2885

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4742
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4747
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4748
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4748
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4749
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1033, metadata !DIExpression()) #11, !dbg !4750
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !4751
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1051, metadata !DIExpression()) #11, !dbg !4752
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4754
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4754
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4755
  br i1 %38, label %51, label %39, !dbg !4756

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !4757
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4757
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4757
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1035, metadata !DIExpression()) #11, !dbg !4757
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1034, metadata !DIExpression()) #11, !dbg !4751
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4758
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1063, metadata !DIExpression()) #11, !dbg !4759
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4761
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4761
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4762
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1070, metadata !DIExpression()) #11, !dbg !4763
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1075, metadata !DIExpression()) #11, !dbg !4765
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4766
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4767
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4768
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4769
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !780, metadata !DIExpression()) #11, !dbg !4770
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4772
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4772
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4773
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4773
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1034, metadata !DIExpression()) #11, !dbg !4751
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !4716, metadata !DIExpression()), !dbg !4774
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4775
  br i1 %50, label %51, label %72, !dbg !4777

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4778
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4784
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4785
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4785
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4786
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4786
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4787
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4791
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4792
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4792
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4793
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4793
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4794
  br i1 %64, label %84, label %65, !dbg !4795

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4796
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4801
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4802
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4802
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4803
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4803
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !4716, metadata !DIExpression()), !dbg !4774
  br label %72, !dbg !4804

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4805
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !4716, metadata !DIExpression()), !dbg !4774
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #10, !dbg !4806
  br label %84, !dbg !4807

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4808
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1063, metadata !DIExpression()) #11, !dbg !4809
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4811
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4811
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4812
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4812
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1070, metadata !DIExpression()) #11, !dbg !4813
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1075, metadata !DIExpression()) #11, !dbg !4815
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4816
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4817
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4818
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4819
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !780, metadata !DIExpression()) #11, !dbg !4820
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4822
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4823
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4824
  br label %84, !dbg !4825

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4826
  ret i32 %85, !dbg !4827
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4828 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4835, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i8* %1, metadata !4836, metadata !DIExpression()), !dbg !4838
  %3 = tail call zeroext i8 %0(i8* %1) #12, !dbg !4839
  %4 = icmp eq i8 %3, 0, !dbg !4839
  br i1 %4, label %60, label %5, !dbg !4841

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4842
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !4848
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !4849
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !4849
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !4850
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !4850
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4851, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !4851
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !4853
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !4854
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !4855

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4856
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !4861
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !4862
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !4862
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !4863
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1033, metadata !DIExpression()) #11, !dbg !4864
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !4865
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1051, metadata !DIExpression()) #11, !dbg !4866
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !4868
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !4868
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !4869
  br i1 %22, label %35, label %23, !dbg !4870

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !4871
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !4871
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !4871
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1035, metadata !DIExpression()) #11, !dbg !4871
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1034, metadata !DIExpression()) #11, !dbg !4865
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !4872
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1063, metadata !DIExpression()) #11, !dbg !4873
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !4875
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !4875
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !4876
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1070, metadata !DIExpression()) #11, !dbg !4877
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1075, metadata !DIExpression()) #11, !dbg !4879
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !4880
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !4881
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !4882
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !4883
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !4884
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !4886
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !4886
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !4887
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !4887
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1034, metadata !DIExpression()) #11, !dbg !4865
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1012, metadata !DIExpression()) #11, !dbg !4888
  %34 = icmp eq %struct.list_head** %24, null, !dbg !4889
  br i1 %34, label %35, label %56, !dbg !4890

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4891
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !4895
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !4896
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !4896
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !4897
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !4897
  %42 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4898
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !4902
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !4903
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !4903
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !4904
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !4904
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !4905
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !4906

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4907
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !4911
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !4912
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !4912
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !4913
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !4913
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !1012, metadata !DIExpression()) #11, !dbg !4888
  br label %56, !dbg !4914

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !4915
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !1012, metadata !DIExpression()) #11, !dbg !4888
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !4916
  br label %nk_fiber_yield.exit, !dbg !4917

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !4915
  br label %60, !dbg !4918

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !4919
  ret i32 %61, !dbg !4920
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4921 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4925, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4926, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.value(metadata i8* %2, metadata !4927, metadata !DIExpression()), !dbg !4930
  %4 = tail call zeroext i8 %1(i8* %2) #12, !dbg !4931
  %5 = icmp eq i8 %4, 0, !dbg !4931
  br i1 %5, label %8, label %6, !dbg !4933

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4934
  br label %8, !dbg !4936

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4937
  ret i32 %9, !dbg !4938
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4939 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4958
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4962
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4963
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4963
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4964
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4964
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4941, metadata !DIExpression()), !dbg !4965
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4966, !srcloc !4967
  call void @llvm.dbg.value(metadata i64 %8, metadata !4948, metadata !DIExpression()), !dbg !4968
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4969
  call void @llvm.dbg.value(metadata i8* %9, metadata !4949, metadata !DIExpression()), !dbg !4970
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4971
  call void @llvm.dbg.value(metadata i8* %10, metadata !4950, metadata !DIExpression()), !dbg !4972
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4973
  call void @llvm.dbg.value(metadata i8* %11, metadata !4951, metadata !DIExpression()), !dbg !4974
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4975
  call void @llvm.dbg.value(metadata i8* %12, metadata !4952, metadata !DIExpression()), !dbg !4976
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4977
  %14 = load i8*, i8** %13, align 8, !dbg !4977
  %15 = icmp ugt i8* %11, %14, !dbg !4979
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4980
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4981
  %19 = icmp ult i8* %11, %18, !dbg !4982
  %20 = and i1 %15, %19, !dbg !4983
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4983
  call void @llvm.dbg.value(metadata i8* %21, metadata !4951, metadata !DIExpression()), !dbg !4974
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4984
  call void @llvm.dbg.value(metadata i8* %22, metadata !4953, metadata !DIExpression()), !dbg !4985
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4986
  %24 = ptrtoint i8* %23 to i64, !dbg !4987
  %25 = ptrtoint i8* %12 to i64, !dbg !4987
  %26 = sub i64 %24, %25, !dbg !4987
  call void @llvm.dbg.value(metadata i64 %26, metadata !4942, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4988
  %27 = ptrtoint i8* %10 to i64, !dbg !4989
  call void @llvm.dbg.value(metadata i64 undef, metadata !4944, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i64 72, metadata !4945, metadata !DIExpression()), !dbg !4991
  %28 = bitcast i8* %22 to i64*, !dbg !4992
  %29 = load i64, i64* %28, align 8, !dbg !4992
  %30 = sub i64 %29, %25, !dbg !4993
  call void @llvm.dbg.value(metadata i64 %30, metadata !4946, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.value(metadata i64 %17, metadata !4943, metadata !DIExpression()), !dbg !4995
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4996
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4996
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4954, metadata !DIExpression(DW_OP_deref)), !dbg !4997
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #10, !dbg !4998
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4999
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4954, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !657, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !662, metadata !DIExpression()), !dbg !5002
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !5003
  %35 = load i64, i64* %34, align 8, !dbg !5004
  %36 = add i64 %35, -8, !dbg !5004
  store i64 %36, i64* %34, align 8, !dbg !5004
  %37 = inttoptr i64 %36 to i64*, !dbg !5005
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !5006
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5007
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4954, metadata !DIExpression()), !dbg !4997
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !5008
  %40 = load i8*, i8** %39, align 8, !dbg !5008
  call void @llvm.dbg.value(metadata i8* %40, metadata !4947, metadata !DIExpression()), !dbg !5009
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !5010
  %42 = sub i64 -16, %26, !dbg !5011
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !5011
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #12, !dbg !5012
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !5013
  %46 = ptrtoint i8* %45 to i64, !dbg !5014
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5015
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4954, metadata !DIExpression()), !dbg !4997
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !5016
  store i64 %46, i64* %48, align 8, !dbg !5017
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5018
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4954, metadata !DIExpression()), !dbg !4997
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !5019
  %51 = load i64, i64* %50, align 8, !dbg !5019
  %52 = add i64 %51, 64, !dbg !5020
  %53 = inttoptr i64 %52 to i8**, !dbg !5021
  call void @llvm.dbg.value(metadata i8** %53, metadata !4955, metadata !DIExpression()), !dbg !5022
  %54 = add i64 %30, %51, !dbg !5023
  %55 = inttoptr i64 %54 to i8*, !dbg !5024
  store i8* %55, i8** %53, align 8, !dbg !5025
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5026
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4954, metadata !DIExpression()), !dbg !4997
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !5027
  %58 = load i64, i64* %57, align 8, !dbg !5027
  %59 = sub i64 8, %25, !dbg !4989
  %60 = add i64 %59, %27, !dbg !5028
  %61 = add i64 %60, %58, !dbg !5029
  %62 = inttoptr i64 %61 to i8**, !dbg !5030
  call void @llvm.dbg.value(metadata i8** %62, metadata !4956, metadata !DIExpression()), !dbg !5031
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !5032
  call void @llvm.dbg.value(metadata i8** %63, metadata !4957, metadata !DIExpression()), !dbg !5033
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !5034
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !5034
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5035
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4954, metadata !DIExpression()), !dbg !4997
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !5036
  %67 = load i64, i64* %66, align 8, !dbg !5036
  %68 = add i64 %67, 112, !dbg !5037
  %69 = inttoptr i64 %68 to i64*, !dbg !5038
  store i64 0, i64* %69, align 8, !dbg !5039
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5040
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4954, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !2301, metadata !DIExpression()) #11, !dbg !5041
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()) #11, !dbg !5043
  %71 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5044
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !5048
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !2307, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !5049
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !5050
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !5050
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !5050
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !5050
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !2307, metadata !DIExpression()) #11, !dbg !5049
  %77 = call i64 @msr_read(i32 -1073741567) #12, !dbg !5051
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !5055
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !5056
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !5056
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !5057
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !2308, metadata !DIExpression()) #11, !dbg !5058
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !5059
  store i32 1, i32* %82, align 4, !dbg !5060
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !5061
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !2372, metadata !DIExpression()) #11, !dbg !5062
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !2375, metadata !DIExpression()) #11, !dbg !5064
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !5065
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !5065
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !2380, metadata !DIExpression()) #11, !dbg !5066
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !2385, metadata !DIExpression()) #11, !dbg !5068
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !2386, metadata !DIExpression()) #11, !dbg !5069
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !5070
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !5071
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !5072
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !5073
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !5074
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !5075
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !5076
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !5077
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !5077
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !5078
  br i1 %91, label %94, label %92, !dbg !5079

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #12, !dbg !5080
  br label %94, !dbg !5081

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !5082
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4954, metadata !DIExpression()), !dbg !4997
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #11, !dbg !5083
  ret %struct.nk_fiber* %95, !dbg !5084
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !5085 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !5087, metadata !DIExpression()), !dbg !5090
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !5091
  br i1 %2, label %75, label %3, !dbg !5093

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5094
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !5098
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !5099
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !5099
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !5100
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !5100
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !5088, metadata !DIExpression()), !dbg !5101
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !5102
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !5089, metadata !DIExpression()), !dbg !5103
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !5104
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !2372, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !2375, metadata !DIExpression()), !dbg !5107
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !5108
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !5108
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !2380, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !2385, metadata !DIExpression()), !dbg !5111
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !2386, metadata !DIExpression()), !dbg !5112
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !5113
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !5114
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !5115
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !5116
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !5117
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !5118
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !5119
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !5120
  %18 = load i32, i32* %17, align 8, !dbg !5121
  %19 = add i32 %18, 1, !dbg !5121
  store i32 %19, i32* %17, align 8, !dbg !5121
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !5122
  store i32 3, i32* %20, align 4, !dbg !5123
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5124
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !5129
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !5130
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !5130
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !5131
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !5131
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !5132, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !5132
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !5134
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !5135
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !5136

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5137
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !5142
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !5143
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !5143
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !5144
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1033, metadata !DIExpression()) #11, !dbg !5145
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1034, metadata !DIExpression()) #11, !dbg !5146
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1051, metadata !DIExpression()) #11, !dbg !5147
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !5149
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !5149
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !5150
  br i1 %37, label %50, label %38, !dbg !5151

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1035, metadata !DIExpression()) #11, !dbg !5152
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !5152
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !5152
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1035, metadata !DIExpression()) #11, !dbg !5152
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1034, metadata !DIExpression()) #11, !dbg !5146
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !5153
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1063, metadata !DIExpression()) #11, !dbg !5154
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !5156
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !5156
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !5157
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !1070, metadata !DIExpression()) #11, !dbg !5158
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1075, metadata !DIExpression()) #11, !dbg !5160
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !5161
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !5162
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !5163
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !5164
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !780, metadata !DIExpression()) #11, !dbg !5165
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !5167
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !5167
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !5168
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !5168
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1034, metadata !DIExpression()) #11, !dbg !5146
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1012, metadata !DIExpression()) #11, !dbg !5169
  %49 = icmp eq %struct.list_head** %39, null, !dbg !5170
  br i1 %49, label %50, label %71, !dbg !5171

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5172
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !5176
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !5177
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !5177
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !5178
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !5178
  %57 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5179
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !5183
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !5184
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !5184
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !5185
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !5185
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !5186
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !5187

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !5188
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !5192
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !5193
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !5193
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !5194
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !5194
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1012, metadata !DIExpression()) #11, !dbg !5169
  br label %71, !dbg !5195

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !5196
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !1012, metadata !DIExpression()) #11, !dbg !5169
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #12, !dbg !5197
  br label %nk_fiber_yield.exit, !dbg !5198

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !5196
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !5199
  ret i32 %76, !dbg !5200
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
!991 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !994)
!992 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 730, type: !507, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!993 = !{}
!994 = distinct !DILocation(line: 60, column: 19, scope: !981)
!995 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1000)
!996 = distinct !DISubprogram(name: "get_cpu", scope: !997, file: !997, line: 127, type: !998, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!997 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!998 = !DISubroutineType(types: !999)
!999 = !{!270}
!1000 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1006)
!1001 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !1002, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!1006 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1008)
!1007 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !768, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!1008 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1013)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !124, line: 704, column: 7)
!1010 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 702, type: !507, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1011)
!1011 = !{!1012}
!1012 = !DILocalVariable(name: "f_to", scope: !1010, file: !124, line: 708, type: !240)
!1013 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !994)
!1014 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1000)
!1015 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1006)
!1016 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1008)
!1017 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1013)
!1019 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1018)
!1020 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1013)
!1021 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1013)
!1022 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1028)
!1025 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !1026, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!150}
!1028 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1045)
!1029 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !1030, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!240}
!1032 = !{!1033, !1034, !1035, !1039}
!1033 = !DILocalVariable(name: "fiber_sched_queue", scope: !1029, file: !124, line: 122, type: !150)
!1034 = !DILocalVariable(name: "fiber_to_schedule", scope: !1029, file: !124, line: 125, type: !240)
!1035 = !DILocalVariable(name: "first", scope: !1036, file: !124, line: 128, type: !240)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !124, line: 128, column: 25)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !124, line: 126, column: 40)
!1038 = distinct !DILexicalBlock(scope: !1029, file: !124, line: 126, column: 7)
!1039 = !DILocalVariable(name: "__mptr", scope: !1040, file: !124, line: 128, type: !1043)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !124, line: 128, column: 25)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !124, line: 128, column: 25)
!1042 = distinct !DILexicalBlock(scope: !1036, file: !124, line: 128, column: 25)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1045 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1013)
!1046 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1023)
!1047 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1024)
!1048 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1028)
!1049 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1045)
!1050 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1045)
!1051 = !DILocalVariable(name: "head", arg: 1, scope: !1052, file: !53, line: 184, type: !1043)
!1052 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1053, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!48, !1043}
!1055 = !{!1051}
!1056 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1045)
!1058 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1057)
!1059 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1057)
!1060 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1045)
!1061 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1045)
!1062 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1045)
!1063 = !DILocalVariable(name: "entry", arg: 1, scope: !1064, file: !53, line: 151, type: !150)
!1064 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !782, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1065)
!1065 = !{!1063}
!1066 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1045)
!1068 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1067)
!1069 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1067)
!1070 = !DILocalVariable(name: "prev", arg: 1, scope: !1071, file: !53, line: 128, type: !150)
!1071 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1072, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !150, !150}
!1074 = !{!1070, !1075}
!1075 = !DILocalVariable(name: "next", arg: 2, scope: !1071, file: !53, line: 128, type: !150)
!1076 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1067)
!1078 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1077)
!1079 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1077)
!1080 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1077)
!1081 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1077)
!1082 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1077)
!1083 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1067)
!1085 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1084)
!1086 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1084)
!1087 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1013)
!1088 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1013)
!1089 = distinct !DILexicalBlock(scope: !1010, file: !124, line: 718, column: 7)
!1090 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1013)
!1091 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1095)
!1094 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !1030, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!1095 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1013)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !124, line: 719, column: 9)
!1097 = distinct !DILexicalBlock(scope: !1089, file: !124, line: 718, column: 21)
!1098 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1092)
!1099 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1093)
!1100 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1095)
!1101 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1105)
!1104 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !1030, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!1105 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1013)
!1106 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1102)
!1107 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1103)
!1108 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1105)
!1109 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1013)
!1110 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1013)
!1111 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1013)
!1115 = distinct !DILexicalBlock(scope: !1096, file: !124, line: 722, column: 12)
!1116 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1112)
!1117 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1113)
!1118 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1114)
!1119 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1013)
!1120 = !DILocation(line: 0, scope: !1010, inlinedAt: !1013)
!1121 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1013)
!1122 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1013)
!1123 = !DILocation(line: 60, column: 19, scope: !981)
!1124 = !DILocation(line: 60, column: 3, scope: !981)
!1125 = !DILocation(line: 61, column: 16, scope: !981)
!1126 = !DILocation(line: 62, column: 13, scope: !981)
!1127 = !DILocation(line: 62, column: 11, scope: !981)
!1128 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 62, column: 3, scope: !981)
!1130 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1129)
!1135 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1131)
!1136 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1132)
!1137 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1133)
!1138 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1134)
!1140 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1139)
!1141 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1134)
!1142 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1134)
!1143 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1134)
!1148 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1144)
!1149 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1145)
!1150 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1146)
!1151 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1147)
!1152 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1147)
!1153 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1147)
!1155 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1154)
!1156 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1154)
!1157 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1147)
!1158 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1147)
!1159 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1147)
!1160 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1147)
!1162 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1161)
!1163 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1161)
!1164 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1161)
!1166 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1165)
!1167 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1165)
!1168 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1165)
!1169 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1165)
!1170 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1165)
!1171 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1161)
!1173 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1172)
!1174 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1172)
!1175 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1134)
!1176 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1134)
!1177 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1134)
!1178 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1134)
!1182 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1179)
!1183 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1180)
!1184 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1181)
!1185 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1134)
!1189 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1186)
!1190 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1187)
!1191 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1188)
!1192 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1134)
!1193 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1134)
!1194 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1134)
!1198 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1195)
!1199 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1196)
!1200 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1197)
!1201 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1134)
!1202 = !DILocation(line: 0, scope: !1010, inlinedAt: !1134)
!1203 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1134)
!1204 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1134)
!1205 = !DILocation(line: 62, column: 3, scope: !981)
!1206 = !DILocation(line: 63, column: 52, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !981, file: !3, line: 62, column: 18)
!1208 = !DILocation(line: 63, column: 5, scope: !1207)
!1209 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 62, column: 9, scope: !981)
!1211 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1210)
!1216 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1212)
!1217 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1213)
!1218 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1214)
!1219 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1215)
!1221 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1220)
!1222 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1215)
!1223 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1215)
!1224 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1215)
!1229 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1225)
!1230 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1226)
!1231 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1227)
!1232 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1228)
!1233 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1228)
!1234 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1228)
!1236 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1235)
!1237 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1235)
!1238 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1228)
!1239 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1228)
!1240 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1228)
!1241 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1228)
!1243 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1242)
!1244 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1242)
!1245 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1242)
!1247 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1246)
!1248 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1246)
!1249 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1246)
!1250 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1246)
!1251 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1246)
!1252 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1242)
!1254 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1253)
!1255 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1253)
!1256 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1215)
!1257 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1215)
!1258 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1215)
!1259 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1215)
!1263 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1260)
!1264 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1261)
!1265 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1262)
!1266 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1215)
!1270 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1267)
!1271 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1268)
!1272 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1269)
!1273 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1215)
!1274 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1215)
!1275 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1215)
!1279 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1276)
!1280 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1277)
!1281 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1278)
!1282 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1215)
!1283 = !DILocation(line: 0, scope: !1010, inlinedAt: !1215)
!1284 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1215)
!1285 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1215)
!1286 = !DILocation(line: 62, column: 9, scope: !981)
!1287 = distinct !{!1287, !1205, !1288}
!1288 = !DILocation(line: 65, column: 3, scope: !981)
!1289 = !DILocation(line: 0, scope: !981)
!1290 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 66, column: 3, scope: !981)
!1292 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1291)
!1297 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1293)
!1298 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1294)
!1299 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1295)
!1300 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1296)
!1302 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1301)
!1303 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1296)
!1304 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1296)
!1305 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1296)
!1310 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1306)
!1311 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1307)
!1312 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1308)
!1313 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1309)
!1314 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1309)
!1315 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1309)
!1317 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1316)
!1318 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1316)
!1319 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1309)
!1320 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1309)
!1321 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1309)
!1322 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1309)
!1324 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1323)
!1325 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1323)
!1326 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1323)
!1328 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1327)
!1329 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1327)
!1330 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1327)
!1331 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1327)
!1332 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1327)
!1333 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1323)
!1335 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1334)
!1336 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1334)
!1337 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1296)
!1338 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1296)
!1339 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1296)
!1340 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1296)
!1344 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1341)
!1345 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1342)
!1346 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1343)
!1347 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1296)
!1351 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1348)
!1352 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1349)
!1353 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1350)
!1354 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1296)
!1355 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1296)
!1356 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1296)
!1360 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1357)
!1361 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1358)
!1362 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1359)
!1363 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1296)
!1364 = !DILocation(line: 0, scope: !1010, inlinedAt: !1296)
!1365 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1296)
!1366 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1296)
!1367 = !DILocation(line: 66, column: 3, scope: !981)
!1368 = !DILocation(line: 67, column: 3, scope: !981)
!1369 = !DILocation(line: 68, column: 1, scope: !981)
!1370 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1371 = !{!1372, !1373, !1374, !1375}
!1372 = !DILocalVariable(name: "i", arg: 1, scope: !1370, file: !3, line: 70, type: !31)
!1373 = !DILocalVariable(name: "o", arg: 2, scope: !1370, file: !3, line: 70, type: !75)
!1374 = !DILocalVariable(name: "end", scope: !1370, file: !3, line: 72, type: !24)
!1375 = !DILocalVariable(name: "a", scope: !1370, file: !3, line: 74, type: !7)
!1376 = !DILocation(line: 70, column: 29, scope: !1370)
!1377 = !DILocation(line: 70, column: 39, scope: !1370)
!1378 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 72, column: 19, scope: !1370)
!1380 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1379)
!1385 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1381)
!1386 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1382)
!1387 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1383)
!1388 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1384)
!1390 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1389)
!1391 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1384)
!1392 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1384)
!1393 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1384)
!1398 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1394)
!1399 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1395)
!1400 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1396)
!1401 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1397)
!1402 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1397)
!1403 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1397)
!1405 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1404)
!1406 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1404)
!1407 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1397)
!1408 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1397)
!1409 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1397)
!1410 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1397)
!1412 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1411)
!1413 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1411)
!1414 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1411)
!1416 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1415)
!1417 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1415)
!1418 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1415)
!1419 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1415)
!1420 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1415)
!1421 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1411)
!1423 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1422)
!1424 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1422)
!1425 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1384)
!1426 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1384)
!1427 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1384)
!1428 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1384)
!1432 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1429)
!1433 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1430)
!1434 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1431)
!1435 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1384)
!1439 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1436)
!1440 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1437)
!1441 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1438)
!1442 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1384)
!1443 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1384)
!1444 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1384)
!1448 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1445)
!1449 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1446)
!1450 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1447)
!1451 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1384)
!1452 = !DILocation(line: 0, scope: !1010, inlinedAt: !1384)
!1453 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1384)
!1454 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1384)
!1455 = !DILocation(line: 72, column: 19, scope: !1370)
!1456 = !DILocation(line: 72, column: 13, scope: !1370)
!1457 = !DILocation(line: 73, column: 19, scope: !1370)
!1458 = !DILocation(line: 73, column: 3, scope: !1370)
!1459 = !DILocation(line: 74, column: 16, scope: !1370)
!1460 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 75, column: 3, scope: !1370)
!1462 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1461)
!1467 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1463)
!1468 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1464)
!1469 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1465)
!1470 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1466)
!1472 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1471)
!1473 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1466)
!1474 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1466)
!1475 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1466)
!1480 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1476)
!1481 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1477)
!1482 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1478)
!1483 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1479)
!1484 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1479)
!1485 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1479)
!1487 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1486)
!1488 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1486)
!1489 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1479)
!1490 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1479)
!1491 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1479)
!1492 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1479)
!1494 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1493)
!1495 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1493)
!1496 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1493)
!1498 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1497)
!1499 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1497)
!1500 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1497)
!1501 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1497)
!1502 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1497)
!1503 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1493)
!1505 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1504)
!1506 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1504)
!1507 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1466)
!1508 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1466)
!1509 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1466)
!1510 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1466)
!1514 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1511)
!1515 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1512)
!1516 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1513)
!1517 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1466)
!1521 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1518)
!1522 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1519)
!1523 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1520)
!1524 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1466)
!1525 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1466)
!1526 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1466)
!1530 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1527)
!1531 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1528)
!1532 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1529)
!1533 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1466)
!1534 = !DILocation(line: 0, scope: !1010, inlinedAt: !1466)
!1535 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1466)
!1536 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1466)
!1537 = !DILocation(line: 75, column: 3, scope: !1370)
!1538 = !DILocation(line: 76, column: 13, scope: !1370)
!1539 = !DILocation(line: 76, column: 11, scope: !1370)
!1540 = !DILocation(line: 76, column: 3, scope: !1370)
!1541 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 74, column: 16, scope: !1370)
!1543 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1542)
!1548 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1544)
!1549 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1545)
!1550 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1546)
!1551 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1547)
!1553 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1552)
!1554 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1547)
!1555 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1547)
!1556 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1547)
!1561 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1557)
!1562 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1558)
!1563 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1559)
!1564 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1560)
!1565 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1560)
!1566 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1560)
!1568 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1567)
!1569 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1567)
!1570 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1560)
!1571 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1560)
!1572 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1560)
!1573 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1560)
!1575 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1574)
!1576 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1574)
!1577 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1574)
!1579 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1578)
!1580 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1578)
!1581 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1578)
!1582 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1578)
!1583 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1578)
!1584 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1574)
!1586 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1585)
!1587 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1585)
!1588 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1547)
!1589 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1547)
!1590 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1547)
!1591 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1547)
!1595 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1592)
!1596 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1593)
!1597 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1594)
!1598 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1547)
!1602 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1599)
!1603 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1600)
!1604 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1601)
!1605 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1547)
!1606 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1547)
!1607 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1547)
!1611 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1608)
!1612 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1609)
!1613 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1610)
!1614 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1547)
!1615 = !DILocation(line: 0, scope: !1010, inlinedAt: !1547)
!1616 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1547)
!1617 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1547)
!1618 = !DILocation(line: 77, column: 52, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 76, column: 18)
!1620 = !DILocation(line: 77, column: 5, scope: !1619)
!1621 = !DILocation(line: 76, column: 9, scope: !1370)
!1622 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 76, column: 13, scope: !1370)
!1624 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1623)
!1629 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1625)
!1630 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1626)
!1631 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1627)
!1632 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1628)
!1634 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1633)
!1635 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1628)
!1636 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1628)
!1637 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1628)
!1642 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1638)
!1643 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1639)
!1644 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1640)
!1645 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1641)
!1646 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1641)
!1647 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1641)
!1649 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1648)
!1650 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1648)
!1651 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1641)
!1652 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1641)
!1653 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1641)
!1654 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1641)
!1656 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1655)
!1657 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1655)
!1658 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1655)
!1660 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1659)
!1661 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1659)
!1662 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1659)
!1663 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1659)
!1664 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1659)
!1665 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1655)
!1667 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1666)
!1668 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1666)
!1669 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1628)
!1670 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1628)
!1671 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1628)
!1672 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1628)
!1676 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1673)
!1677 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1674)
!1678 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1675)
!1679 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1628)
!1683 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1680)
!1684 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1681)
!1685 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1682)
!1686 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1628)
!1687 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1628)
!1688 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1628)
!1692 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1689)
!1693 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1690)
!1694 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1691)
!1695 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1628)
!1696 = !DILocation(line: 0, scope: !1010, inlinedAt: !1628)
!1697 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1628)
!1698 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1628)
!1699 = distinct !{!1699, !1540, !1700}
!1700 = !DILocation(line: 79, column: 3, scope: !1370)
!1701 = !DILocation(line: 0, scope: !1370)
!1702 = !DILocation(line: 80, column: 3, scope: !1370)
!1703 = !DILocation(line: 732, column: 3, scope: !992, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 81, column: 3, scope: !1370)
!1705 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 733, column: 10, scope: !992, inlinedAt: !1704)
!1710 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1706)
!1711 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1707)
!1712 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !1708)
!1713 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !1709)
!1715 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1714)
!1716 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !1709)
!1717 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !1709)
!1718 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !1709)
!1723 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1719)
!1724 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1720)
!1725 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !1721)
!1726 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !1722)
!1727 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !1722)
!1728 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !1722)
!1730 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !1729)
!1731 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !1729)
!1732 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !1722)
!1733 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !1722)
!1734 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !1722)
!1735 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !1722)
!1737 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !1736)
!1738 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !1736)
!1739 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !1736)
!1741 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !1740)
!1742 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !1740)
!1743 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !1740)
!1744 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !1740)
!1745 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !1740)
!1746 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !1736)
!1748 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1747)
!1749 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1747)
!1750 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !1709)
!1751 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !1709)
!1752 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !1709)
!1753 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !1709)
!1757 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1754)
!1758 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1755)
!1759 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !1756)
!1760 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !1709)
!1764 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1761)
!1765 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1762)
!1766 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1763)
!1767 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !1709)
!1768 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !1709)
!1769 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !1709)
!1773 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !1770)
!1774 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !1771)
!1775 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !1772)
!1776 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !1709)
!1777 = !DILocation(line: 0, scope: !1010, inlinedAt: !1709)
!1778 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !1709)
!1779 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !1709)
!1780 = !DILocation(line: 81, column: 3, scope: !1370)
!1781 = !DILocation(line: 82, column: 1, scope: !1370)
!1782 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1783 = !{!1784, !1785}
!1784 = !DILocalVariable(name: "buf", arg: 1, scope: !1782, file: !3, line: 127, type: !113)
!1785 = !DILocalVariable(name: "priv", arg: 2, scope: !1782, file: !3, line: 127, type: !31)
!1786 = !DILocation(line: 127, column: 23, scope: !1782)
!1787 = !DILocation(line: 127, column: 35, scope: !1782)
!1788 = !DILocation(line: 88, column: 3, scope: !1789, inlinedAt: !1796)
!1789 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1790 = !{!1791, !1792, !1793, !1794}
!1791 = !DILocalVariable(name: "simple", scope: !1789, file: !3, line: 88, type: !511)
!1792 = !DILocalVariable(name: "t", scope: !1789, file: !3, line: 90, type: !25)
!1793 = !DILocalVariable(name: "f_input", scope: !1789, file: !3, line: 92, type: !24)
!1794 = !DILocalVariable(name: "p", scope: !1795, file: !3, line: 92, type: !31)
!1795 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 92, column: 23)
!1796 = distinct !DILocation(line: 129, column: 3, scope: !1782)
!1797 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 89, column: 8, scope: !1789, inlinedAt: !1796)
!1799 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1798)
!1800 = !DILocation(line: 89, column: 26, scope: !1789, inlinedAt: !1796)
!1801 = !DILocation(line: 89, column: 6, scope: !1789, inlinedAt: !1796)
!1802 = !DILocation(line: 90, column: 3, scope: !1789, inlinedAt: !1796)
!1803 = !DILocation(line: 91, column: 3, scope: !1789, inlinedAt: !1796)
!1804 = !DILocation(line: 92, column: 23, scope: !1795, inlinedAt: !1796)
!1805 = !DILocation(line: 93, column: 8, scope: !1806, inlinedAt: !1796)
!1806 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 93, column: 7)
!1807 = !DILocation(line: 93, column: 7, scope: !1789, inlinedAt: !1796)
!1808 = !DILocation(line: 94, column: 5, scope: !1809, inlinedAt: !1796)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 93, column: 17)
!1810 = !DILocation(line: 95, column: 5, scope: !1809, inlinedAt: !1796)
!1811 = !DILocation(line: 92, column: 23, scope: !1789, inlinedAt: !1796)
!1812 = !DILocation(line: 92, column: 13, scope: !1789, inlinedAt: !1796)
!1813 = !DILocation(line: 97, column: 14, scope: !1789, inlinedAt: !1796)
!1814 = !DILocation(line: 90, column: 12, scope: !1789, inlinedAt: !1796)
!1815 = !DILocation(line: 97, column: 16, scope: !1789, inlinedAt: !1796)
!1816 = !DILocation(line: 97, column: 12, scope: !1789, inlinedAt: !1796)
!1817 = !DILocation(line: 88, column: 15, scope: !1789, inlinedAt: !1796)
!1818 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 98, column: 3, scope: !1789, inlinedAt: !1796)
!1820 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1819)
!1821 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1819)
!1822 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1819)
!1823 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1819)
!1824 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1819)
!1825 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1819)
!1827 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1826)
!1828 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1826)
!1829 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1826)
!1830 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1826)
!1831 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1826)
!1832 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1826)
!1833 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1826)
!1834 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1826)
!1835 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1826)
!1836 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1826)
!1837 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1826)
!1838 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1826)
!1839 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1826)
!1840 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1826)
!1841 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1826)
!1842 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1826)
!1843 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1826)
!1844 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1826)
!1845 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1826)
!1846 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1826)
!1847 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1826)
!1848 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1826)
!1849 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1826)
!1850 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1826)
!1851 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1826)
!1852 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1826)
!1853 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1826)
!1854 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1826)
!1856 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1855)
!1857 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1855)
!1858 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1855)
!1860 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1859)
!1861 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1855)
!1862 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1859)
!1863 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1859)
!1864 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1859)
!1865 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1855)
!1867 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1866)
!1868 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1866)
!1869 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1866)
!1870 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1866)
!1871 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1855)
!1873 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1872)
!1874 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1872)
!1875 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1872)
!1876 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1872)
!1877 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1855)
!1879 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1878)
!1880 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1878)
!1881 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1878)
!1882 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1878)
!1883 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1855)
!1885 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1884)
!1886 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1884)
!1887 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1884)
!1888 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1884)
!1889 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1855)
!1891 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1890)
!1892 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1890)
!1893 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1890)
!1894 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1890)
!1895 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1855)
!1896 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1855)
!1898 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1897)
!1899 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1897)
!1900 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1897)
!1901 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1897)
!1902 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1855)
!1904 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1903)
!1905 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1903)
!1906 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1903)
!1907 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1903)
!1908 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1855)
!1910 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1909)
!1911 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1909)
!1912 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1909)
!1913 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1909)
!1914 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1855)
!1916 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1915)
!1917 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1915)
!1918 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1915)
!1919 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1915)
!1920 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1855)
!1922 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1921)
!1923 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1921)
!1924 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1921)
!1925 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1921)
!1926 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1855)
!1928 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1927)
!1929 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1927)
!1930 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1927)
!1931 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1927)
!1932 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1855)
!1934 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1933)
!1935 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1933)
!1936 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1933)
!1937 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1933)
!1938 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1855)
!1940 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1939)
!1941 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1939)
!1942 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1939)
!1943 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1939)
!1944 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1855)
!1946 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1945)
!1947 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1945)
!1948 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1945)
!1949 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1945)
!1950 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1855)
!1952 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1951)
!1953 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1951)
!1954 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1951)
!1955 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1951)
!1956 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1826)
!1957 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1826)
!1959 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1958)
!1960 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1826)
!1961 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1826)
!1962 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1826)
!1963 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1826)
!1964 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1826)
!1966 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1965)
!1967 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1965)
!1968 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1965)
!1969 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1826)
!1970 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1826)
!1971 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1826)
!1972 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1826)
!1974 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1973)
!1975 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1973)
!1976 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1973)
!1977 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1826)
!1978 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1826)
!1980 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1979)
!1981 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1979)
!1982 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1979)
!1983 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1826)
!1984 = !DILocation(line: 0, scope: !602, inlinedAt: !1826)
!1985 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1819)
!1986 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1819)
!1987 = !DILocation(line: 99, column: 3, scope: !1789, inlinedAt: !1796)
!1988 = !DILocation(line: 100, column: 1, scope: !1789, inlinedAt: !1796)
!1989 = !DILocation(line: 130, column: 3, scope: !1782)
!1990 = !DILocation(line: 88, column: 3, scope: !1789)
!1991 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 89, column: 8, scope: !1789)
!1993 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1992)
!1994 = !DILocation(line: 89, column: 26, scope: !1789)
!1995 = !DILocation(line: 89, column: 6, scope: !1789)
!1996 = !DILocation(line: 90, column: 3, scope: !1789)
!1997 = !DILocation(line: 91, column: 3, scope: !1789)
!1998 = !DILocation(line: 92, column: 23, scope: !1795)
!1999 = !DILocation(line: 93, column: 8, scope: !1806)
!2000 = !DILocation(line: 93, column: 7, scope: !1789)
!2001 = !DILocation(line: 94, column: 5, scope: !1809)
!2002 = !DILocation(line: 95, column: 5, scope: !1809)
!2003 = !DILocation(line: 92, column: 23, scope: !1789)
!2004 = !DILocation(line: 92, column: 13, scope: !1789)
!2005 = !DILocation(line: 97, column: 14, scope: !1789)
!2006 = !DILocation(line: 90, column: 12, scope: !1789)
!2007 = !DILocation(line: 97, column: 16, scope: !1789)
!2008 = !DILocation(line: 97, column: 12, scope: !1789)
!2009 = !DILocation(line: 88, column: 15, scope: !1789)
!2010 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 98, column: 3, scope: !1789)
!2012 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !2011)
!2013 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !2011)
!2014 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !2011)
!2015 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !2011)
!2016 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !2011)
!2017 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !2011)
!2019 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !2018)
!2020 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !2018)
!2021 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !2018)
!2022 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !2018)
!2023 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !2018)
!2024 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !2018)
!2025 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !2018)
!2026 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !2018)
!2027 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !2018)
!2028 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !2018)
!2029 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !2018)
!2030 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !2018)
!2031 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !2018)
!2032 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !2018)
!2033 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !2018)
!2034 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !2018)
!2035 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !2018)
!2036 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !2018)
!2037 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !2018)
!2038 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !2018)
!2039 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !2018)
!2040 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !2018)
!2041 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !2018)
!2042 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !2018)
!2043 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !2018)
!2044 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !2018)
!2045 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !2018)
!2046 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !2018)
!2048 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !2047)
!2049 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !2047)
!2050 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !2047)
!2052 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2051)
!2053 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !2047)
!2054 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2051)
!2055 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2051)
!2056 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2051)
!2057 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !2047)
!2059 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2058)
!2060 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2058)
!2061 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2058)
!2062 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2058)
!2063 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !2047)
!2065 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2064)
!2066 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2064)
!2067 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2064)
!2068 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2064)
!2069 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !2047)
!2071 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2070)
!2072 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2070)
!2073 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2070)
!2074 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2070)
!2075 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !2047)
!2077 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2076)
!2078 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2076)
!2079 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2076)
!2080 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2076)
!2081 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !2047)
!2083 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2082)
!2084 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2082)
!2085 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2082)
!2086 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2082)
!2087 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !2047)
!2088 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !2047)
!2090 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2089)
!2091 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2089)
!2092 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2089)
!2093 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2089)
!2094 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !2047)
!2096 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2095)
!2097 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2095)
!2098 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2095)
!2099 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2095)
!2100 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !2047)
!2102 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2101)
!2103 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2101)
!2104 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2101)
!2105 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2101)
!2106 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !2047)
!2108 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2107)
!2109 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2107)
!2110 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2107)
!2111 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2107)
!2112 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !2047)
!2114 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2113)
!2115 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2113)
!2116 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2113)
!2117 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2113)
!2118 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !2047)
!2120 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2119)
!2121 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2119)
!2122 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2119)
!2123 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2119)
!2124 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !2047)
!2126 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2125)
!2127 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2125)
!2128 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2125)
!2129 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2125)
!2130 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !2047)
!2132 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2131)
!2133 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2131)
!2134 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2131)
!2135 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2131)
!2136 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !2047)
!2138 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2137)
!2139 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2137)
!2140 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2137)
!2141 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2137)
!2142 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !2047)
!2144 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2143)
!2145 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2143)
!2146 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2143)
!2147 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2143)
!2148 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !2018)
!2149 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !2018)
!2151 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2150)
!2152 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !2018)
!2153 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !2018)
!2154 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !2018)
!2155 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !2018)
!2156 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !2018)
!2158 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2157)
!2159 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2157)
!2160 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2157)
!2161 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !2018)
!2162 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !2018)
!2163 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !2018)
!2164 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !2018)
!2166 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2165)
!2167 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2165)
!2168 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2165)
!2169 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !2018)
!2170 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !2018)
!2172 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2171)
!2173 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2171)
!2174 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2171)
!2175 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !2018)
!2176 = !DILocation(line: 0, scope: !602, inlinedAt: !2018)
!2177 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !2011)
!2178 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !2011)
!2179 = !DILocation(line: 99, column: 3, scope: !1789)
!2180 = !DILocation(line: 0, scope: !1789)
!2181 = !DILocation(line: 100, column: 1, scope: !1789)
!2182 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 78, column: 10, scope: !1001)
!2184 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2183)
!2185 = !DILocation(line: 78, column: 21, scope: !1001)
!2186 = !DILocation(line: 78, column: 3, scope: !1001)
!2187 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 85, column: 10, scope: !1094)
!2190 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2188)
!2191 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2189)
!2192 = !DILocation(line: 85, column: 30, scope: !1094)
!2193 = !DILocation(line: 85, column: 3, scope: !1094)
!2194 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 92, column: 10, scope: !1104)
!2197 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2195)
!2198 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2196)
!2199 = !DILocation(line: 92, column: 30, scope: !1104)
!2200 = !DILocation(line: 92, column: 3, scope: !1104)
!2201 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 98, column: 10, scope: !1007)
!2204 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2202)
!2205 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2203)
!2206 = !DILocation(line: 98, column: 30, scope: !1007)
!2207 = !DILocation(line: 98, column: 3, scope: !1007)
!2208 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 105, column: 12, scope: !1025)
!2211 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2209)
!2212 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2210)
!2213 = !DILocation(line: 105, column: 32, scope: !1025)
!2214 = !DILocation(line: 105, column: 3, scope: !1025)
!2215 = !DILocation(line: 113, column: 31, scope: !658)
!2216 = !DILocation(line: 113, column: 43, scope: !658)
!2217 = !DILocation(line: 115, column: 8, scope: !658)
!2218 = !DILocation(line: 115, column: 12, scope: !658)
!2219 = !DILocation(line: 116, column: 6, scope: !658)
!2220 = !DILocation(line: 116, column: 26, scope: !658)
!2221 = !DILocation(line: 117, column: 1, scope: !658)
!2222 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 122, column: 41, scope: !1029)
!2226 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2223)
!2227 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2224)
!2228 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !2225)
!2229 = !DILocation(line: 122, column: 21, scope: !1029)
!2230 = !DILocation(line: 125, column: 15, scope: !1029)
!2231 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 126, column: 9, scope: !1038)
!2233 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !2232)
!2234 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !2232)
!2235 = !DILocation(line: 126, column: 7, scope: !1029)
!2236 = !DILocation(line: 128, column: 25, scope: !1036)
!2237 = !DILocation(line: 131, column: 40, scope: !1037)
!2238 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 131, column: 5, scope: !1037)
!2240 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !2239)
!2241 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !2239)
!2242 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !2239)
!2244 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !2243)
!2245 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !2243)
!2246 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !2243)
!2247 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !2243)
!2248 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !2243)
!2249 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !2239)
!2251 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2250)
!2252 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2250)
!2253 = !DILocation(line: 132, column: 3, scope: !1037)
!2254 = !DILocation(line: 0, scope: !1029)
!2255 = !DILocation(line: 139, column: 3, scope: !1029)
!2256 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !650, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2265}
!2258 = !DILocalVariable(name: "f", arg: 1, scope: !2256, file: !124, line: 144, type: !240)
!2259 = !DILocalVariable(name: "next", scope: !2256, file: !124, line: 149, type: !240)
!2260 = !DILocalVariable(name: "temp", scope: !2256, file: !124, line: 155, type: !240)
!2261 = !DILocalVariable(name: "waitq", scope: !2256, file: !124, line: 156, type: !150)
!2262 = !DILocalVariable(name: "first", scope: !2263, file: !124, line: 163, type: !240)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !124, line: 163, column: 12)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !124, line: 160, column: 25)
!2265 = !DILocalVariable(name: "__mptr", scope: !2266, file: !124, line: 163, type: !1043)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !124, line: 163, column: 12)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !124, line: 163, column: 12)
!2268 = distinct !DILexicalBlock(scope: !2263, file: !124, line: 163, column: 12)
!2269 = !DILocation(line: 144, column: 33, scope: !2256)
!2270 = !DILocation(line: 147, column: 6, scope: !2256)
!2271 = !DILocation(line: 147, column: 15, scope: !2256)
!2272 = !DILocation(line: 149, column: 15, scope: !2256)
!2273 = !DILocation(line: 156, column: 34, scope: !2256)
!2274 = !DILocation(line: 156, column: 21, scope: !2256)
!2275 = !DILocation(line: 160, column: 12, scope: !2256)
!2276 = !DILocation(line: 160, column: 21, scope: !2256)
!2277 = !DILocation(line: 160, column: 3, scope: !2256)
!2278 = !DILocation(line: 163, column: 12, scope: !2263)
!2279 = !DILocation(line: 163, column: 12, scope: !2268)
!2280 = !DILocation(line: 155, column: 15, scope: !2256)
!2281 = !DILocation(line: 164, column: 27, scope: !2264)
!2282 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 164, column: 5, scope: !2264)
!2284 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !2283)
!2285 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !2283)
!2286 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !2283)
!2288 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !2287)
!2289 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !2287)
!2290 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !2287)
!2291 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !2287)
!2292 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !2287)
!2293 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !2283)
!2295 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2294)
!2296 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2294)
!2297 = !DILocation(line: 165, column: 16, scope: !2264)
!2298 = !DILocation(line: 168, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2264, file: !124, line: 168, column: 9)
!2300 = !DILocation(line: 168, column: 9, scope: !2264)
!2301 = !DILocalVariable(name: "f", arg: 1, scope: !2302, file: !124, line: 663, type: !240)
!2302 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !2303, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!48, !240, !29}
!2305 = !{!2301, !2306, !2307, !2308}
!2306 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !2302, file: !124, line: 663, type: !29)
!2307 = !DILocalVariable(name: "curr_thread", scope: !2302, file: !124, line: 666, type: !285)
!2308 = !DILocalVariable(name: "fiber_sched_queue", scope: !2302, file: !124, line: 674, type: !150)
!2309 = !DILocation(line: 663, column: 30, scope: !2302, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 171, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2299, file: !124, line: 168, column: 14)
!2312 = !DILocation(line: 663, column: 41, scope: !2302, inlinedAt: !2310)
!2313 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 666, column: 30, scope: !2302, inlinedAt: !2310)
!2317 = !DILocation(line: 666, column: 16, scope: !2302, inlinedAt: !2310)
!2318 = !DILocation(line: 366, column: 29, scope: !2319, inlinedAt: !2326)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !124, line: 366, column: 29)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !124, line: 366, column: 29)
!2321 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "sys", scope: !2321, file: !124, line: 366, type: !264)
!2324 = !DILocalVariable(name: "__r", scope: !2320, file: !124, line: 366, type: !264)
!2325 = !DILocalVariable(name: "__r", scope: !2319, file: !124, line: 366, type: !264)
!2326 = distinct !DILocation(line: 373, column: 20, scope: !2327, inlinedAt: !2335)
!2327 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !768, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2328)
!2328 = !{!2329, !2330, !2331, !2333}
!2329 = !DILocalVariable(name: "random_cpu", scope: !2327, file: !124, line: 373, type: !48)
!2330 = !DILocalVariable(name: "sys", scope: !2327, file: !124, line: 374, type: !264)
!2331 = !DILocalVariable(name: "__r", scope: !2332, file: !124, line: 374, type: !264)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !124, line: 374, column: 27)
!2333 = !DILocalVariable(name: "__r", scope: !2334, file: !124, line: 374, type: !264)
!2334 = distinct !DILexicalBlock(scope: !2332, file: !124, line: 374, column: 27)
!2335 = distinct !DILocation(line: 670, column: 19, scope: !2336, inlinedAt: !2310)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !124, line: 669, column: 23)
!2337 = distinct !DILexicalBlock(scope: !2302, file: !124, line: 669, column: 7)
!2338 = !{i32 -2147185111}
!2339 = !DILocation(line: 366, column: 29, scope: !2320, inlinedAt: !2326)
!2340 = !DILocation(line: 366, column: 23, scope: !2321, inlinedAt: !2326)
!2341 = !DILocation(line: 358, column: 5, scope: !2342, inlinedAt: !2347)
!2342 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !2343, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!25}
!2345 = !{!2346}
!2346 = !DILocalVariable(name: "t", scope: !2342, file: !124, line: 358, type: !25)
!2347 = distinct !DILocation(line: 367, column: 18, scope: !2321, inlinedAt: !2326)
!2348 = !DILocation(line: 359, column: 5, scope: !2342, inlinedAt: !2347)
!2349 = !DILocation(line: 360, column: 12, scope: !2342, inlinedAt: !2347)
!2350 = !DILocation(line: 358, column: 14, scope: !2342, inlinedAt: !2347)
!2351 = !DILocation(line: 361, column: 1, scope: !2342, inlinedAt: !2347)
!2352 = !DILocation(line: 367, column: 39, scope: !2321, inlinedAt: !2326)
!2353 = !DILocation(line: 367, column: 34, scope: !2321, inlinedAt: !2326)
!2354 = !DILocation(line: 367, column: 32, scope: !2321, inlinedAt: !2326)
!2355 = !DILocation(line: 374, column: 27, scope: !2334, inlinedAt: !2335)
!2356 = !{i32 -2147182110}
!2357 = !DILocation(line: 374, column: 27, scope: !2332, inlinedAt: !2335)
!2358 = !DILocation(line: 374, column: 21, scope: !2327, inlinedAt: !2335)
!2359 = !DILocation(line: 375, column: 10, scope: !2327, inlinedAt: !2335)
!2360 = !DILocation(line: 0, scope: !2302, inlinedAt: !2310)
!2361 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 674, column: 41, scope: !2302, inlinedAt: !2310)
!2365 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2362)
!2366 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2363)
!2367 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !2364)
!2368 = !DILocation(line: 674, column: 21, scope: !2302, inlinedAt: !2310)
!2369 = !DILocation(line: 678, column: 6, scope: !2302, inlinedAt: !2310)
!2370 = !DILocation(line: 678, column: 15, scope: !2302, inlinedAt: !2310)
!2371 = !DILocation(line: 679, column: 22, scope: !2302, inlinedAt: !2310)
!2372 = !DILocalVariable(name: "nelm", arg: 1, scope: !2373, file: !53, line: 116, type: !150)
!2373 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1072, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2374)
!2374 = !{!2372, !2375}
!2375 = !DILocalVariable(name: "head", arg: 2, scope: !2373, file: !53, line: 116, type: !150)
!2376 = !DILocation(line: 116, column: 52, scope: !2373, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 679, column: 3, scope: !2302, inlinedAt: !2310)
!2378 = !DILocation(line: 116, column: 76, scope: !2373, inlinedAt: !2377)
!2379 = !DILocation(line: 118, column: 25, scope: !2373, inlinedAt: !2377)
!2380 = !DILocalVariable(name: "nelm", arg: 1, scope: !2381, file: !53, line: 85, type: !150)
!2381 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !2382, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !150, !150, !150}
!2384 = !{!2380, !2385, !2386}
!2385 = !DILocalVariable(name: "prev", arg: 2, scope: !2381, file: !53, line: 86, type: !150)
!2386 = !DILocalVariable(name: "next", arg: 3, scope: !2381, file: !53, line: 87, type: !150)
!2387 = !DILocation(line: 85, column: 49, scope: !2381, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 118, column: 2, scope: !2373, inlinedAt: !2377)
!2389 = !DILocation(line: 86, column: 28, scope: !2381, inlinedAt: !2388)
!2390 = !DILocation(line: 87, column: 28, scope: !2381, inlinedAt: !2388)
!2391 = !DILocation(line: 89, column: 13, scope: !2381, inlinedAt: !2388)
!2392 = !DILocation(line: 90, column: 8, scope: !2381, inlinedAt: !2388)
!2393 = !DILocation(line: 90, column: 13, scope: !2381, inlinedAt: !2388)
!2394 = !DILocation(line: 91, column: 8, scope: !2381, inlinedAt: !2388)
!2395 = !DILocation(line: 91, column: 13, scope: !2381, inlinedAt: !2388)
!2396 = !DILocation(line: 92, column: 8, scope: !2381, inlinedAt: !2388)
!2397 = !DILocation(line: 92, column: 13, scope: !2381, inlinedAt: !2388)
!2398 = !DILocation(line: 683, column: 20, scope: !2399, inlinedAt: !2310)
!2399 = distinct !DILexicalBlock(scope: !2302, file: !124, line: 683, column: 7)
!2400 = !DILocation(line: 683, column: 7, scope: !2399, inlinedAt: !2310)
!2401 = !DILocation(line: 683, column: 7, scope: !2302, inlinedAt: !2310)
!2402 = !DILocation(line: 687, column: 5, scope: !2403, inlinedAt: !2310)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !124, line: 683, column: 26)
!2404 = !DILocation(line: 688, column: 3, scope: !2403, inlinedAt: !2310)
!2405 = distinct !{!2405, !2277, !2406}
!2406 = !DILocation(line: 173, column: 3, scope: !2256)
!2407 = !DILocation(line: 175, column: 6, scope: !2256)
!2408 = !DILocation(line: 175, column: 14, scope: !2256)
!2409 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 179, column: 10, scope: !2256)
!2414 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2410)
!2415 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2411)
!2416 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !2412)
!2417 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !2413)
!2418 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !2413)
!2419 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !2413)
!2421 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !2420)
!2422 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !2420)
!2423 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !2413)
!2424 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !2413)
!2425 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !2413)
!2426 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !2413)
!2428 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !2427)
!2429 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !2427)
!2430 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !2427)
!2432 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !2431)
!2433 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !2431)
!2434 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !2431)
!2435 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !2431)
!2436 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !2431)
!2437 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !2427)
!2439 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2438)
!2440 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2438)
!2441 = !DILocation(line: 180, column: 8, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2256, file: !124, line: 180, column: 7)
!2443 = !DILocation(line: 180, column: 7, scope: !2256)
!2444 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 181, column: 12, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !124, line: 180, column: 16)
!2449 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2445)
!2450 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2446)
!2451 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !2447)
!2452 = !DILocation(line: 182, column: 3, scope: !2448)
!2453 = !DILocation(line: 0, scope: !2256)
!2454 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 183, column: 3, scope: !2256)
!2457 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2455)
!2458 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2456)
!2459 = !DILocation(line: 183, column: 23, scope: !2256)
!2460 = !DILocation(line: 183, column: 34, scope: !2256)
!2461 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 186, column: 19, scope: !2256)
!2464 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2462)
!2465 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2463)
!2466 = !DILocation(line: 186, column: 39, scope: !2256)
!2467 = !DILocation(line: 186, column: 51, scope: !2256)
!2468 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 186, column: 3, scope: !2256)
!2470 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !2469)
!2471 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !2469)
!2472 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !2469)
!2474 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !2473)
!2475 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !2473)
!2476 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !2473)
!2477 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !2473)
!2478 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !2473)
!2479 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !2469)
!2481 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2480)
!2482 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2480)
!2483 = !DILocation(line: 189, column: 3, scope: !2256)
!2484 = !DILocation(line: 190, column: 3, scope: !2256)
!2485 = !DILocation(line: 193, column: 3, scope: !2256)
!2486 = !DILocation(line: 196, column: 1, scope: !2256)
!2487 = !DILocation(line: 663, column: 30, scope: !2302)
!2488 = !DILocation(line: 663, column: 41, scope: !2302)
!2489 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 666, column: 30, scope: !2302)
!2493 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2490)
!2494 = !DILocation(line: 666, column: 16, scope: !2302)
!2495 = !DILocation(line: 669, column: 7, scope: !2337)
!2496 = !DILocation(line: 669, column: 7, scope: !2302)
!2497 = !DILocation(line: 366, column: 29, scope: !2319, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 373, column: 20, scope: !2327, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 670, column: 19, scope: !2336)
!2500 = !DILocation(line: 366, column: 29, scope: !2320, inlinedAt: !2498)
!2501 = !DILocation(line: 366, column: 23, scope: !2321, inlinedAt: !2498)
!2502 = !DILocation(line: 358, column: 5, scope: !2342, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 367, column: 18, scope: !2321, inlinedAt: !2498)
!2504 = !DILocation(line: 359, column: 5, scope: !2342, inlinedAt: !2503)
!2505 = !DILocation(line: 360, column: 12, scope: !2342, inlinedAt: !2503)
!2506 = !DILocation(line: 358, column: 14, scope: !2342, inlinedAt: !2503)
!2507 = !DILocation(line: 361, column: 1, scope: !2342, inlinedAt: !2503)
!2508 = !DILocation(line: 367, column: 39, scope: !2321, inlinedAt: !2498)
!2509 = !DILocation(line: 367, column: 34, scope: !2321, inlinedAt: !2498)
!2510 = !DILocation(line: 367, column: 32, scope: !2321, inlinedAt: !2498)
!2511 = !DILocation(line: 374, column: 27, scope: !2334, inlinedAt: !2499)
!2512 = !DILocation(line: 374, column: 27, scope: !2332, inlinedAt: !2499)
!2513 = !DILocation(line: 374, column: 21, scope: !2327, inlinedAt: !2499)
!2514 = !DILocation(line: 375, column: 10, scope: !2327, inlinedAt: !2499)
!2515 = !DILocation(line: 671, column: 3, scope: !2336)
!2516 = !DILocation(line: 0, scope: !2302)
!2517 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 674, column: 41, scope: !2302)
!2521 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2518)
!2522 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2519)
!2523 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !2520)
!2524 = !DILocation(line: 674, column: 21, scope: !2302)
!2525 = !DILocation(line: 678, column: 6, scope: !2302)
!2526 = !DILocation(line: 678, column: 15, scope: !2302)
!2527 = !DILocation(line: 679, column: 22, scope: !2302)
!2528 = !DILocation(line: 116, column: 52, scope: !2373, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 679, column: 3, scope: !2302)
!2530 = !DILocation(line: 116, column: 76, scope: !2373, inlinedAt: !2529)
!2531 = !DILocation(line: 118, column: 25, scope: !2373, inlinedAt: !2529)
!2532 = !DILocation(line: 85, column: 49, scope: !2381, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 118, column: 2, scope: !2373, inlinedAt: !2529)
!2534 = !DILocation(line: 86, column: 28, scope: !2381, inlinedAt: !2533)
!2535 = !DILocation(line: 87, column: 28, scope: !2381, inlinedAt: !2533)
!2536 = !DILocation(line: 89, column: 13, scope: !2381, inlinedAt: !2533)
!2537 = !DILocation(line: 90, column: 8, scope: !2381, inlinedAt: !2533)
!2538 = !DILocation(line: 90, column: 13, scope: !2381, inlinedAt: !2533)
!2539 = !DILocation(line: 91, column: 8, scope: !2381, inlinedAt: !2533)
!2540 = !DILocation(line: 91, column: 13, scope: !2381, inlinedAt: !2533)
!2541 = !DILocation(line: 92, column: 8, scope: !2381, inlinedAt: !2533)
!2542 = !DILocation(line: 92, column: 13, scope: !2381, inlinedAt: !2533)
!2543 = !DILocation(line: 683, column: 20, scope: !2399)
!2544 = !DILocation(line: 683, column: 7, scope: !2399)
!2545 = !DILocation(line: 683, column: 7, scope: !2302)
!2546 = !DILocation(line: 687, column: 5, scope: !2403)
!2547 = !DILocation(line: 688, column: 3, scope: !2403)
!2548 = !DILocation(line: 690, column: 3, scope: !2302)
!2549 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !650, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2550)
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "f_to", arg: 1, scope: !2549, file: !124, line: 198, type: !240)
!2552 = !DILocation(line: 198, column: 33, scope: !2549)
!2553 = !DILocation(line: 202, column: 9, scope: !2549)
!2554 = !DILocation(line: 202, column: 19, scope: !2549)
!2555 = !DILocation(line: 202, column: 32, scope: !2549)
!2556 = !DILocation(line: 202, column: 3, scope: !2549)
!2557 = !DILocation(line: 208, column: 3, scope: !2549)
!2558 = !DILocation(line: 210, column: 3, scope: !2549)
!2559 = !DILocation(line: 274, column: 33, scope: !649)
!2560 = !DILocation(line: 276, column: 26, scope: !649)
!2561 = !DILocation(line: 276, column: 37, scope: !649)
!2562 = !DILocation(line: 276, column: 6, scope: !649)
!2563 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 277, column: 3, scope: !649)
!2565 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2564)
!2566 = !DILocation(line: 276, column: 32, scope: !649)
!2567 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2564)
!2568 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2564)
!2569 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2564)
!2570 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 278, column: 3, scope: !649)
!2572 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2571)
!2573 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2571)
!2574 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2571)
!2575 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2571)
!2576 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 279, column: 3, scope: !649)
!2578 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2577)
!2579 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2577)
!2580 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2577)
!2581 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2577)
!2582 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 280, column: 3, scope: !649)
!2584 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2583)
!2585 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2583)
!2586 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2583)
!2587 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2583)
!2588 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 281, column: 3, scope: !649)
!2590 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2589)
!2591 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2589)
!2592 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2589)
!2593 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2589)
!2594 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 282, column: 3, scope: !649)
!2596 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2595)
!2597 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2595)
!2598 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2595)
!2599 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2595)
!2600 = !DILocation(line: 283, column: 18, scope: !649)
!2601 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 283, column: 3, scope: !649)
!2603 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2602)
!2604 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2602)
!2605 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2602)
!2606 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2602)
!2607 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 284, column: 3, scope: !649)
!2609 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2608)
!2610 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2608)
!2611 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2608)
!2612 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2608)
!2613 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 285, column: 3, scope: !649)
!2615 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2614)
!2616 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2614)
!2617 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2614)
!2618 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2614)
!2619 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 286, column: 3, scope: !649)
!2621 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2620)
!2622 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2620)
!2623 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2620)
!2624 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2620)
!2625 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 287, column: 3, scope: !649)
!2627 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2626)
!2628 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2626)
!2629 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2626)
!2630 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2626)
!2631 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 288, column: 3, scope: !649)
!2633 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2632)
!2634 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2632)
!2635 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2632)
!2636 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2632)
!2637 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 289, column: 3, scope: !649)
!2639 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2638)
!2640 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2638)
!2641 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2638)
!2642 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2638)
!2643 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 290, column: 3, scope: !649)
!2645 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2644)
!2646 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2644)
!2647 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2644)
!2648 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2644)
!2649 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 291, column: 3, scope: !649)
!2651 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2650)
!2652 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2650)
!2653 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2650)
!2654 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2650)
!2655 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 292, column: 3, scope: !649)
!2657 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !2656)
!2658 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !2656)
!2659 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !2656)
!2660 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !2656)
!2661 = !DILocation(line: 294, column: 3, scope: !649)
!2662 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !2663, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!48, !240}
!2665 = !{!2666, !2667, !2668}
!2666 = !DILocalVariable(name: "f_to", arg: 1, scope: !2662, file: !124, line: 299, type: !240)
!2667 = !DILocalVariable(name: "f_from", scope: !2662, file: !124, line: 302, type: !240)
!2668 = !DILocalVariable(name: "fiber_sched_queue", scope: !2669, file: !124, line: 312, type: !150)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !124, line: 310, column: 63)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !124, line: 310, column: 7)
!2671 = !DILocation(line: 299, column: 36, scope: !2662)
!2672 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 302, column: 24, scope: !2662)
!2676 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2673)
!2677 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2674)
!2678 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !2675)
!2679 = !DILocation(line: 302, column: 15, scope: !2662)
!2680 = !DILocation(line: 305, column: 15, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2662, file: !124, line: 305, column: 7)
!2682 = !DILocation(line: 305, column: 32, scope: !2681)
!2683 = !DILocation(line: 306, column: 22, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2681, file: !124, line: 305, column: 61)
!2685 = !DILocation(line: 307, column: 3, scope: !2684)
!2686 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 310, column: 17, scope: !2670)
!2690 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2687)
!2691 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2688)
!2692 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !2689)
!2693 = !DILocation(line: 310, column: 14, scope: !2670)
!2694 = !DILocation(line: 310, column: 34, scope: !2670)
!2695 = !DILocation(line: 310, column: 45, scope: !2670)
!2696 = !DILocation(line: 310, column: 54, scope: !2670)
!2697 = !DILocation(line: 310, column: 7, scope: !2662)
!2698 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 312, column: 43, scope: !2669)
!2702 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2699)
!2703 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2700)
!2704 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !2701)
!2705 = !DILocation(line: 312, column: 23, scope: !2669)
!2706 = !DILocation(line: 318, column: 29, scope: !2669)
!2707 = !DILocation(line: 116, column: 52, scope: !2373, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 318, column: 5, scope: !2669)
!2709 = !DILocation(line: 116, column: 76, scope: !2373, inlinedAt: !2708)
!2710 = !DILocation(line: 118, column: 25, scope: !2373, inlinedAt: !2708)
!2711 = !DILocation(line: 85, column: 49, scope: !2381, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 118, column: 2, scope: !2373, inlinedAt: !2708)
!2713 = !DILocation(line: 86, column: 28, scope: !2381, inlinedAt: !2712)
!2714 = !DILocation(line: 87, column: 28, scope: !2381, inlinedAt: !2712)
!2715 = !DILocation(line: 89, column: 13, scope: !2381, inlinedAt: !2712)
!2716 = !DILocation(line: 90, column: 8, scope: !2381, inlinedAt: !2712)
!2717 = !DILocation(line: 90, column: 13, scope: !2381, inlinedAt: !2712)
!2718 = !DILocation(line: 91, column: 8, scope: !2381, inlinedAt: !2712)
!2719 = !DILocation(line: 91, column: 13, scope: !2381, inlinedAt: !2712)
!2720 = !DILocation(line: 92, column: 8, scope: !2381, inlinedAt: !2712)
!2721 = !DILocation(line: 92, column: 13, scope: !2381, inlinedAt: !2712)
!2722 = !DILocation(line: 319, column: 3, scope: !2669)
!2723 = !DILocation(line: 323, column: 16, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2662, file: !124, line: 323, column: 7)
!2725 = !DILocation(line: 323, column: 8, scope: !2724)
!2726 = !DILocation(line: 323, column: 7, scope: !2662)
!2727 = !DILocation(line: 324, column: 29, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !124, line: 323, column: 24)
!2729 = !DILocalVariable(name: "vc", arg: 1, scope: !2730, file: !124, line: 906, type: !88)
!2730 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 906, type: !2731, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !88}
!2733 = !{!2729, !2734}
!2734 = !DILocalVariable(name: "curr_fiber", scope: !2730, file: !124, line: 909, type: !240)
!2735 = !DILocation(line: 906, column: 49, scope: !2730, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 324, column: 5, scope: !2728)
!2737 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 909, column: 28, scope: !2730, inlinedAt: !2736)
!2741 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2738)
!2742 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2739)
!2743 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !2740)
!2744 = !DILocation(line: 909, column: 15, scope: !2730, inlinedAt: !2736)
!2745 = !DILocation(line: 912, column: 15, scope: !2730, inlinedAt: !2736)
!2746 = !DILocation(line: 912, column: 18, scope: !2730, inlinedAt: !2736)
!2747 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 913, column: 3, scope: !2730, inlinedAt: !2736)
!2749 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2748)
!2750 = !DILocation(line: 913, column: 21, scope: !2730, inlinedAt: !2736)
!2751 = !DILocation(line: 913, column: 24, scope: !2730, inlinedAt: !2736)
!2752 = !DILocation(line: 325, column: 3, scope: !2728)
!2753 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 328, column: 3, scope: !2662)
!2756 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2754)
!2757 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2755)
!2758 = !DILocation(line: 328, column: 23, scope: !2662)
!2759 = !DILocation(line: 328, column: 34, scope: !2662)
!2760 = !DILocation(line: 329, column: 20, scope: !2662)
!2761 = !DILocation(line: 330, column: 9, scope: !2662)
!2762 = !DILocation(line: 330, column: 18, scope: !2662)
!2763 = !DILocation(line: 331, column: 3, scope: !2662)
!2764 = !DILocation(line: 333, column: 3, scope: !2662)
!2765 = !DILocation(line: 906, column: 49, scope: !2730)
!2766 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 909, column: 28, scope: !2730)
!2770 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2767)
!2771 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2768)
!2772 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !2769)
!2773 = !DILocation(line: 909, column: 15, scope: !2730)
!2774 = !DILocation(line: 912, column: 15, scope: !2730)
!2775 = !DILocation(line: 912, column: 18, scope: !2730)
!2776 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 913, column: 3, scope: !2730)
!2778 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2777)
!2779 = !DILocation(line: 913, column: 21, scope: !2730)
!2780 = !DILocation(line: 913, column: 24, scope: !2730)
!2781 = !DILocation(line: 914, column: 1, scope: !2730)
!2782 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !2783, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null}
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "curr", scope: !2782, file: !124, line: 338, type: !240)
!2787 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 338, column: 22, scope: !2782)
!2791 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2788)
!2792 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2789)
!2793 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !2790)
!2794 = !DILocation(line: 338, column: 15, scope: !2782)
!2795 = !DILocation(line: 340, column: 3, scope: !2782)
!2796 = !DILocation(line: 341, column: 1, scope: !2782)
!2797 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !2798, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!29, !240}
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "f", arg: 1, scope: !2797, file: !124, line: 343, type: !240)
!2802 = !DILocalVariable(name: "idle_fiber", scope: !2797, file: !124, line: 345, type: !240)
!2803 = !DILocalVariable(name: "result", scope: !2797, file: !124, line: 348, type: !29)
!2804 = !DILocation(line: 343, column: 36, scope: !2797)
!2805 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 345, column: 28, scope: !2797)
!2809 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2806)
!2810 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !2807)
!2811 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !2808)
!2812 = !DILocation(line: 345, column: 15, scope: !2797)
!2813 = !DILocation(line: 348, column: 11, scope: !2797)
!2814 = !DILocation(line: 349, column: 18, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2797, file: !124, line: 349, column: 7)
!2816 = !DILocation(line: 349, column: 7, scope: !2797)
!2817 = !DILocation(line: 353, column: 3, scope: !2797)
!2818 = !DILocation(line: 366, column: 29, scope: !2319, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 373, column: 20, scope: !2327)
!2820 = !DILocation(line: 366, column: 29, scope: !2320, inlinedAt: !2819)
!2821 = !DILocation(line: 366, column: 23, scope: !2321, inlinedAt: !2819)
!2822 = !DILocation(line: 358, column: 5, scope: !2342, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 367, column: 18, scope: !2321, inlinedAt: !2819)
!2824 = !DILocation(line: 359, column: 5, scope: !2342, inlinedAt: !2823)
!2825 = !DILocation(line: 360, column: 12, scope: !2342, inlinedAt: !2823)
!2826 = !DILocation(line: 358, column: 14, scope: !2342, inlinedAt: !2823)
!2827 = !DILocation(line: 361, column: 1, scope: !2342, inlinedAt: !2823)
!2828 = !DILocation(line: 367, column: 39, scope: !2321, inlinedAt: !2819)
!2829 = !DILocation(line: 367, column: 34, scope: !2321, inlinedAt: !2819)
!2830 = !DILocation(line: 367, column: 32, scope: !2321, inlinedAt: !2819)
!2831 = !DILocation(line: 374, column: 27, scope: !2334)
!2832 = !DILocation(line: 374, column: 27, scope: !2332)
!2833 = !DILocation(line: 374, column: 21, scope: !2327)
!2834 = !DILocation(line: 375, column: 10, scope: !2327)
!2835 = !DILocation(line: 375, column: 33, scope: !2327)
!2836 = !DILocation(line: 375, column: 42, scope: !2327)
!2837 = !DILocation(line: 375, column: 3, scope: !2327)
!2838 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !2663, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2839)
!2839 = !{!2840, !2841, !2842, !2844, !2846, !2847, !2848, !2849, !2851, !2856}
!2840 = !DILocalVariable(name: "to_del", arg: 1, scope: !2838, file: !124, line: 383, type: !240)
!2841 = !DILocalVariable(name: "sys", scope: !2838, file: !124, line: 386, type: !264)
!2842 = !DILocalVariable(name: "__r", scope: !2843, file: !124, line: 386, type: !264)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !124, line: 386, column: 26)
!2844 = !DILocalVariable(name: "__r", scope: !2845, file: !124, line: 386, type: !264)
!2845 = distinct !DILexicalBlock(scope: !2843, file: !124, line: 386, column: 26)
!2846 = !DILocalVariable(name: "cpu_iter", scope: !2838, file: !124, line: 387, type: !48)
!2847 = !DILocalVariable(name: "temp", scope: !2838, file: !124, line: 390, type: !150)
!2848 = !DILocalVariable(name: "test", scope: !2838, file: !124, line: 391, type: !240)
!2849 = !DILocalVariable(name: "iter", scope: !2850, file: !124, line: 392, type: !48)
!2850 = distinct !DILexicalBlock(scope: !2838, file: !124, line: 392, column: 3)
!2851 = !DILocalVariable(name: "__mptr", scope: !2852, file: !124, line: 395, type: !1043)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !124, line: 395, column: 5)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !124, line: 395, column: 5)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !124, line: 392, column: 46)
!2855 = distinct !DILexicalBlock(scope: !2850, file: !124, line: 392, column: 3)
!2856 = !DILocalVariable(name: "__mptr", scope: !2857, file: !124, line: 395, type: !1043)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !124, line: 395, column: 5)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !124, line: 395, column: 5)
!2859 = !DILocation(line: 383, column: 42, scope: !2838)
!2860 = !DILocation(line: 386, column: 26, scope: !2845)
!2861 = !{i32 -2147179109}
!2862 = !DILocation(line: 386, column: 26, scope: !2843)
!2863 = !DILocation(line: 386, column: 20, scope: !2838)
!2864 = !DILocation(line: 387, column: 23, scope: !2838)
!2865 = !DILocation(line: 387, column: 7, scope: !2838)
!2866 = !DILocation(line: 392, column: 12, scope: !2850)
!2867 = !DILocation(line: 392, column: 27, scope: !2855)
!2868 = !DILocation(line: 392, column: 3, scope: !2850)
!2869 = !DILocation(line: 394, column: 14, scope: !2854)
!2870 = !DILocation(line: 394, column: 31, scope: !2854)
!2871 = !DILocation(line: 394, column: 40, scope: !2854)
!2872 = !DILocation(line: 390, column: 21, scope: !2838)
!2873 = !DILocation(line: 395, column: 5, scope: !2852)
!2874 = !DILocation(line: 391, column: 15, scope: !2838)
!2875 = !DILocation(line: 0, scope: !2853)
!2876 = !DILocation(line: 395, column: 5, scope: !2853)
!2877 = !DILocation(line: 395, column: 5, scope: !2858)
!2878 = !DILocation(line: 400, column: 16, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !124, line: 400, column: 11)
!2880 = distinct !DILexicalBlock(scope: !2858, file: !124, line: 395, column: 48)
!2881 = !DILocation(line: 400, column: 11, scope: !2880)
!2882 = distinct !{!2882, !2876, !2883}
!2883 = !DILocation(line: 404, column: 5, scope: !2853)
!2884 = !DILocation(line: 392, column: 43, scope: !2855)
!2885 = distinct !{!2885, !2868, !2886}
!2886 = !DILocation(line: 405, column: 3, scope: !2850)
!2887 = !DILocation(line: 401, column: 33, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2879, file: !124, line: 400, column: 26)
!2889 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 401, column: 9, scope: !2888)
!2891 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !2890)
!2892 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !2890)
!2893 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !2890)
!2895 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !2894)
!2896 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !2894)
!2897 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !2894)
!2898 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !2894)
!2899 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !2894)
!2900 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !2890)
!2902 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2901)
!2903 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2901)
!2904 = !DILocation(line: 408, column: 1, scope: !2838)
!2905 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2906)
!2906 = !{!2907, !2908, !2910, !2912, !2913, !2919, !2920, !2925, !2927, !2930, !2932}
!2907 = !DILocalVariable(name: "id", scope: !2905, file: !124, line: 437, type: !291)
!2908 = !DILocalVariable(name: "__r", scope: !2909, file: !124, line: 437, type: !291)
!2909 = distinct !DILexicalBlock(scope: !2905, file: !124, line: 437, column: 19)
!2910 = !DILocalVariable(name: "__r", scope: !2911, file: !124, line: 437, type: !291)
!2911 = distinct !DILexicalBlock(scope: !2909, file: !124, line: 437, column: 19)
!2912 = !DILocalVariable(name: "my_cpu", scope: !2905, file: !124, line: 438, type: !270)
!2913 = !DILocalVariable(name: "_p", scope: !2914, file: !124, line: 444, type: !48)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !124, line: 444, column: 2)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !124, line: 444, column: 2)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !124, line: 444, column: 2)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !124, line: 443, column: 29)
!2918 = distinct !DILexicalBlock(scope: !2905, file: !124, line: 443, column: 9)
!2919 = !DILocalVariable(name: "_t", scope: !2914, file: !124, line: 444, type: !160)
!2920 = !DILocalVariable(name: "__r", scope: !2921, file: !124, line: 444, type: !291)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !124, line: 444, column: 2)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !124, line: 444, column: 2)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !124, line: 444, column: 2)
!2924 = distinct !DILexicalBlock(scope: !2914, file: !124, line: 444, column: 2)
!2925 = !DILocalVariable(name: "__r", scope: !2926, file: !124, line: 444, type: !291)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !124, line: 444, column: 2)
!2927 = !DILocalVariable(name: "__r", scope: !2928, file: !124, line: 444, type: !291)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !124, line: 444, column: 2)
!2929 = distinct !DILexicalBlock(scope: !2923, file: !124, line: 444, column: 2)
!2930 = !DILocalVariable(name: "__r", scope: !2931, file: !124, line: 444, type: !291)
!2931 = distinct !DILexicalBlock(scope: !2928, file: !124, line: 444, column: 2)
!2932 = !DILocalVariable(name: "_p", scope: !2933, file: !124, line: 444, type: !48)
!2933 = distinct !DILexicalBlock(scope: !2915, file: !124, line: 444, column: 2)
!2934 = !DILocation(line: 437, column: 19, scope: !2911)
!2935 = !{i32 -2147162346}
!2936 = !DILocation(line: 437, column: 19, scope: !2909)
!2937 = !DILocation(line: 437, column: 14, scope: !2905)
!2938 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 438, column: 27, scope: !2905)
!2940 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !2939)
!2941 = !DILocation(line: 438, column: 18, scope: !2905)
!2942 = !DILocation(line: 442, column: 23, scope: !2905)
!2943 = !DILocation(line: 442, column: 13, scope: !2905)
!2944 = !DILocation(line: 442, column: 21, scope: !2905)
!2945 = !DILocation(line: 443, column: 10, scope: !2918)
!2946 = !DILocation(line: 443, column: 9, scope: !2905)
!2947 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !2952)
!2948 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2949, file: !2949, line: 39, type: !2950, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!2949 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!31}
!2952 = distinct !DILocation(line: 444, column: 2, scope: !2915)
!2953 = !DILocation(line: 444, column: 2, scope: !2915)
!2954 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !2959)
!2956 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2949, file: !2949, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2957)
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "base", scope: !2956, file: !2949, line: 84, type: !31)
!2959 = distinct !DILocation(line: 0, scope: !2915)
!2960 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !2959)
!2961 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !2959)
!2962 = distinct !DILexicalBlock(scope: !2956, file: !2949, line: 85, column: 9)
!2963 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !2959)
!2964 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !2959)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !2949, line: 85, column: 15)
!2966 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !2959)
!2967 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !2959)
!2968 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !2959)
!2969 = !DILocation(line: 0, scope: !2962, inlinedAt: !2959)
!2970 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !2975)
!2972 = distinct !DISubprogram(name: "preempt_disable", scope: !2949, file: !2949, line: 46, type: !2783, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2973)
!2973 = !{!2974}
!2974 = !DILocalVariable(name: "base", scope: !2972, file: !2949, line: 48, type: !31)
!2975 = distinct !DILocation(line: 0, scope: !2915)
!2976 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !2975)
!2977 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !2975)
!2978 = distinct !DILexicalBlock(scope: !2972, file: !2949, line: 49, column: 9)
!2979 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !2975)
!2980 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !2975)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !2949, line: 49, column: 15)
!2982 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !2975)
!2983 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !2975)
!2984 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !2975)
!2985 = !DILocation(line: 444, column: 2, scope: !2916)
!2986 = !DILocation(line: 444, column: 2, scope: !2914)
!2987 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 444, column: 2, scope: !2914)
!2989 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2988)
!2990 = !DILocation(line: 444, column: 2, scope: !2923)
!2991 = !DILocation(line: 0, scope: !2923)
!2992 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !2999)
!2994 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2949, file: !2949, line: 94, type: !2995, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!39}
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "base", scope: !2994, file: !2949, line: 96, type: !31)
!2999 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3001)
!3000 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2949, file: !2949, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !993)
!3001 = distinct !DILocation(line: 0, scope: !2923)
!3002 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !2999)
!3003 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !2999)
!3004 = distinct !DILexicalBlock(scope: !2994, file: !2949, line: 97, column: 9)
!3005 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !2999)
!3006 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !2999)
!3007 = distinct !DILexicalBlock(scope: !3004, file: !2949, line: 97, column: 15)
!3008 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !2999)
!3009 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !2999)
!3010 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !2999)
!3011 = !DILocation(line: 444, column: 2, scope: !2924)
!3012 = !DILocation(line: 444, column: 2, scope: !2922)
!3013 = !DILocation(line: 444, column: 2, scope: !2929)
!3014 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3019)
!3016 = distinct !DISubprogram(name: "preempt_enable", scope: !2949, file: !2949, line: 57, type: !2783, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3017)
!3017 = !{!3018}
!3018 = !DILocalVariable(name: "base", scope: !3016, file: !2949, line: 59, type: !31)
!3019 = distinct !DILocation(line: 444, column: 2, scope: !2914)
!3020 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3019)
!3021 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3019)
!3022 = distinct !DILexicalBlock(scope: !3016, file: !2949, line: 60, column: 9)
!3023 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3019)
!3024 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3019)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !2949, line: 60, column: 15)
!3026 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3019)
!3027 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3019)
!3028 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3019)
!3029 = !DILocation(line: 444, column: 2, scope: !2933)
!3030 = !DILocation(line: 444, column: 2, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !124, line: 444, column: 2)
!3032 = distinct !DILexicalBlock(scope: !2933, file: !124, line: 444, column: 2)
!3033 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 0, scope: !3031)
!3037 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3035)
!3038 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3035)
!3039 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3035)
!3040 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3035)
!3041 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3035)
!3042 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3035)
!3043 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3035)
!3044 = !DILocation(line: 0, scope: !3031)
!3045 = !DILocation(line: 444, column: 2, scope: !3032)
!3046 = !DILocation(line: 444, column: 2, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3031, file: !124, line: 444, column: 2)
!3048 = !DILocation(line: 444, column: 2, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3031, file: !124, line: 444, column: 2)
!3050 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 444, column: 2, scope: !2933)
!3053 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3052)
!3054 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3052)
!3055 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3052)
!3056 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3052)
!3057 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3052)
!3058 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3052)
!3059 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3052)
!3060 = !DILocation(line: 0, scope: !2905)
!3061 = !DILocation(line: 449, column: 1, scope: !2905)
!3062 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !3063, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!280}
!3065 = !{!3066, !3067, !3069, !3071, !3073, !3079, !3080, !3085, !3087, !3090, !3092}
!3066 = !DILocalVariable(name: "state", scope: !3062, file: !124, line: 412, type: !280)
!3067 = !DILocalVariable(name: "p", scope: !3068, file: !124, line: 412, type: !31)
!3068 = distinct !DILexicalBlock(scope: !3062, file: !124, line: 412, column: 74)
!3069 = !DILocalVariable(name: "__r", scope: !3070, file: !124, line: 412, type: !291)
!3070 = distinct !DILexicalBlock(scope: !3068, file: !124, line: 412, column: 74)
!3071 = !DILocalVariable(name: "__r", scope: !3072, file: !124, line: 412, type: !291)
!3072 = distinct !DILexicalBlock(scope: !3070, file: !124, line: 412, column: 74)
!3073 = !DILocalVariable(name: "_p", scope: !3074, file: !124, line: 415, type: !48)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !124, line: 415, column: 9)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !124, line: 415, column: 9)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !124, line: 415, column: 9)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !124, line: 414, column: 17)
!3078 = distinct !DILexicalBlock(scope: !3062, file: !124, line: 414, column: 9)
!3079 = !DILocalVariable(name: "_t", scope: !3074, file: !124, line: 415, type: !160)
!3080 = !DILocalVariable(name: "__r", scope: !3081, file: !124, line: 415, type: !291)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !124, line: 415, column: 9)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !124, line: 415, column: 9)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !124, line: 415, column: 9)
!3084 = distinct !DILexicalBlock(scope: !3074, file: !124, line: 415, column: 9)
!3085 = !DILocalVariable(name: "__r", scope: !3086, file: !124, line: 415, type: !291)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !124, line: 415, column: 9)
!3087 = !DILocalVariable(name: "__r", scope: !3088, file: !124, line: 415, type: !291)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !124, line: 415, column: 9)
!3089 = distinct !DILexicalBlock(scope: !3083, file: !124, line: 415, column: 9)
!3090 = !DILocalVariable(name: "__r", scope: !3091, file: !124, line: 415, type: !291)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !124, line: 415, column: 9)
!3092 = !DILocalVariable(name: "_p", scope: !3093, file: !124, line: 415, type: !48)
!3093 = distinct !DILexicalBlock(scope: !3075, file: !124, line: 415, column: 9)
!3094 = !DILocation(line: 412, column: 74, scope: !3072)
!3095 = !{i32 -2147173855}
!3096 = !DILocation(line: 412, column: 74, scope: !3070)
!3097 = !DILocation(line: 412, column: 74, scope: !3068)
!3098 = !DILocation(line: 414, column: 10, scope: !3078)
!3099 = !DILocation(line: 414, column: 9, scope: !3062)
!3100 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 415, column: 9, scope: !3075)
!3102 = !DILocation(line: 415, column: 9, scope: !3075)
!3103 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 0, scope: !3075)
!3106 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !3105)
!3107 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !3105)
!3108 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !3105)
!3109 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !3105)
!3110 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !3105)
!3111 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !3105)
!3112 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !3105)
!3113 = !DILocation(line: 0, scope: !2962, inlinedAt: !3105)
!3114 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 0, scope: !3075)
!3117 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !3116)
!3118 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !3116)
!3119 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !3116)
!3120 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !3116)
!3121 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !3116)
!3122 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !3116)
!3123 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !3116)
!3124 = !DILocation(line: 415, column: 9, scope: !3076)
!3125 = !DILocation(line: 415, column: 9, scope: !3074)
!3126 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 415, column: 9, scope: !3074)
!3128 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3127)
!3129 = !DILocation(line: 415, column: 9, scope: !3083)
!3130 = !DILocation(line: 0, scope: !3083)
!3131 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 0, scope: !3083)
!3135 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3133)
!3136 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3133)
!3137 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3133)
!3138 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3133)
!3139 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3133)
!3140 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3133)
!3141 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3133)
!3142 = !DILocation(line: 415, column: 9, scope: !3084)
!3143 = !DILocation(line: 415, column: 9, scope: !3082)
!3144 = !DILocation(line: 415, column: 9, scope: !3089)
!3145 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 415, column: 9, scope: !3074)
!3148 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3147)
!3149 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3147)
!3150 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3147)
!3151 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3147)
!3152 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3147)
!3153 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3147)
!3154 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3147)
!3155 = !DILocation(line: 415, column: 9, scope: !3093)
!3156 = !DILocation(line: 415, column: 9, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !124, line: 415, column: 9)
!3158 = distinct !DILexicalBlock(scope: !3093, file: !124, line: 415, column: 9)
!3159 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 0, scope: !3157)
!3163 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3161)
!3164 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3161)
!3165 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3161)
!3166 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3161)
!3167 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3161)
!3168 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3161)
!3169 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3161)
!3170 = !DILocation(line: 0, scope: !3157)
!3171 = !DILocation(line: 415, column: 9, scope: !3158)
!3172 = !DILocation(line: 415, column: 9, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3157, file: !124, line: 415, column: 9)
!3174 = !DILocation(line: 415, column: 9, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3157, file: !124, line: 415, column: 9)
!3176 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 415, column: 9, scope: !3093)
!3179 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3178)
!3180 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3178)
!3181 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3178)
!3182 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3178)
!3183 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3178)
!3184 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3178)
!3185 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3178)
!3186 = !DILocation(line: 412, column: 43, scope: !3062)
!3187 = !DILocation(line: 412, column: 35, scope: !3062)
!3188 = !DILocation(line: 419, column: 2, scope: !3062)
!3189 = !DILocation(line: 421, column: 27, scope: !3062)
!3190 = !DILocation(line: 421, column: 5, scope: !3062)
!3191 = !DILocation(line: 424, column: 29, scope: !3062)
!3192 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 424, column: 5, scope: !3062)
!3194 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3193)
!3195 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3193)
!3196 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3193)
!3197 = !DILocation(line: 426, column: 5, scope: !3062)
!3198 = !DILocation(line: 429, column: 5, scope: !3062)
!3199 = !DILocation(line: 431, column: 5, scope: !3062)
!3200 = !DILocation(line: 0, scope: !3062)
!3201 = !DILocation(line: 432, column: 1, scope: !3062)
!3202 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3203)
!3203 = !{!3204, !3205, !3209, !3210, !3215, !3217, !3220, !3222, !3224, !3230, !3231, !3236, !3238, !3241, !3243}
!3204 = !DILocalVariable(name: "my_cpu", scope: !3202, file: !124, line: 454, type: !270)
!3205 = !DILocalVariable(name: "_p", scope: !3206, file: !124, line: 456, type: !48)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !124, line: 456, column: 5)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !124, line: 456, column: 5)
!3208 = distinct !DILexicalBlock(scope: !3202, file: !124, line: 456, column: 5)
!3209 = !DILocalVariable(name: "_t", scope: !3206, file: !124, line: 456, type: !160)
!3210 = !DILocalVariable(name: "__r", scope: !3211, file: !124, line: 456, type: !291)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !124, line: 456, column: 5)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !124, line: 456, column: 5)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !124, line: 456, column: 5)
!3214 = distinct !DILexicalBlock(scope: !3206, file: !124, line: 456, column: 5)
!3215 = !DILocalVariable(name: "__r", scope: !3216, file: !124, line: 456, type: !291)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !124, line: 456, column: 5)
!3217 = !DILocalVariable(name: "__r", scope: !3218, file: !124, line: 456, type: !291)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !124, line: 456, column: 5)
!3219 = distinct !DILexicalBlock(scope: !3213, file: !124, line: 456, column: 5)
!3220 = !DILocalVariable(name: "__r", scope: !3221, file: !124, line: 456, type: !291)
!3221 = distinct !DILexicalBlock(scope: !3218, file: !124, line: 456, column: 5)
!3222 = !DILocalVariable(name: "_p", scope: !3223, file: !124, line: 456, type: !48)
!3223 = distinct !DILexicalBlock(scope: !3207, file: !124, line: 456, column: 5)
!3224 = !DILocalVariable(name: "_p", scope: !3225, file: !124, line: 464, type: !48)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !124, line: 464, column: 2)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !124, line: 464, column: 2)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !124, line: 464, column: 2)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !124, line: 463, column: 29)
!3229 = distinct !DILexicalBlock(scope: !3202, file: !124, line: 463, column: 9)
!3230 = !DILocalVariable(name: "_t", scope: !3225, file: !124, line: 464, type: !160)
!3231 = !DILocalVariable(name: "__r", scope: !3232, file: !124, line: 464, type: !291)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !124, line: 464, column: 2)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !124, line: 464, column: 2)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !124, line: 464, column: 2)
!3235 = distinct !DILexicalBlock(scope: !3225, file: !124, line: 464, column: 2)
!3236 = !DILocalVariable(name: "__r", scope: !3237, file: !124, line: 464, type: !291)
!3237 = distinct !DILexicalBlock(scope: !3232, file: !124, line: 464, column: 2)
!3238 = !DILocalVariable(name: "__r", scope: !3239, file: !124, line: 464, type: !291)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !124, line: 464, column: 2)
!3240 = distinct !DILexicalBlock(scope: !3234, file: !124, line: 464, column: 2)
!3241 = !DILocalVariable(name: "__r", scope: !3242, file: !124, line: 464, type: !291)
!3242 = distinct !DILexicalBlock(scope: !3239, file: !124, line: 464, column: 2)
!3243 = !DILocalVariable(name: "_p", scope: !3244, file: !124, line: 464, type: !48)
!3244 = distinct !DILexicalBlock(scope: !3226, file: !124, line: 464, column: 2)
!3245 = !DILocation(line: 454, column: 88, scope: !3202)
!3246 = !DILocation(line: 454, column: 27, scope: !3202)
!3247 = !DILocation(line: 454, column: 18, scope: !3202)
!3248 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 456, column: 5, scope: !3207)
!3250 = !DILocation(line: 456, column: 5, scope: !3207)
!3251 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 0, scope: !3207)
!3254 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !3253)
!3255 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !3253)
!3256 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !3253)
!3257 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !3253)
!3258 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !3253)
!3259 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !3253)
!3260 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !3253)
!3261 = !DILocation(line: 0, scope: !2962, inlinedAt: !3253)
!3262 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 0, scope: !3207)
!3265 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !3264)
!3266 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !3264)
!3267 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !3264)
!3268 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !3264)
!3269 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !3264)
!3270 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !3264)
!3271 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !3264)
!3272 = !DILocation(line: 456, column: 5, scope: !3208)
!3273 = !DILocation(line: 456, column: 5, scope: !3206)
!3274 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 456, column: 5, scope: !3206)
!3276 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3275)
!3277 = !DILocation(line: 456, column: 5, scope: !3213)
!3278 = !DILocation(line: 0, scope: !3213)
!3279 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 0, scope: !3213)
!3283 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3281)
!3284 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3281)
!3285 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3281)
!3286 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3281)
!3287 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3281)
!3288 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3281)
!3289 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3281)
!3290 = !DILocation(line: 456, column: 5, scope: !3214)
!3291 = !DILocation(line: 456, column: 5, scope: !3212)
!3292 = !DILocation(line: 456, column: 5, scope: !3219)
!3293 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 456, column: 5, scope: !3206)
!3296 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3295)
!3297 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3295)
!3298 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3295)
!3299 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3295)
!3300 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3295)
!3301 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3295)
!3302 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3295)
!3303 = !DILocation(line: 456, column: 5, scope: !3223)
!3304 = !DILocation(line: 456, column: 5, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !124, line: 456, column: 5)
!3306 = distinct !DILexicalBlock(scope: !3223, file: !124, line: 456, column: 5)
!3307 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 0, scope: !3305)
!3311 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3309)
!3312 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3309)
!3313 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3309)
!3314 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3309)
!3315 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3309)
!3316 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3309)
!3317 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3309)
!3318 = !DILocation(line: 0, scope: !3305)
!3319 = !DILocation(line: 456, column: 5, scope: !3306)
!3320 = !DILocation(line: 456, column: 5, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3305, file: !124, line: 456, column: 5)
!3322 = !DILocation(line: 456, column: 5, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3305, file: !124, line: 456, column: 5)
!3324 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 456, column: 5, scope: !3223)
!3327 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3326)
!3328 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3326)
!3329 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3326)
!3330 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3326)
!3331 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3326)
!3332 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3326)
!3333 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3326)
!3334 = !DILocation(line: 462, column: 23, scope: !3202)
!3335 = !DILocation(line: 462, column: 13, scope: !3202)
!3336 = !DILocation(line: 462, column: 21, scope: !3202)
!3337 = !DILocation(line: 463, column: 10, scope: !3229)
!3338 = !DILocation(line: 463, column: 9, scope: !3202)
!3339 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 464, column: 2, scope: !3226)
!3341 = !DILocation(line: 464, column: 2, scope: !3226)
!3342 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 0, scope: !3226)
!3345 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !3344)
!3346 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !3344)
!3347 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !3344)
!3348 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !3344)
!3349 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !3344)
!3350 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !3344)
!3351 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !3344)
!3352 = !DILocation(line: 0, scope: !2962, inlinedAt: !3344)
!3353 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 0, scope: !3226)
!3356 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !3355)
!3357 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !3355)
!3358 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !3355)
!3359 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !3355)
!3360 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !3355)
!3361 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !3355)
!3362 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !3355)
!3363 = !DILocation(line: 464, column: 2, scope: !3227)
!3364 = !DILocation(line: 464, column: 2, scope: !3225)
!3365 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 464, column: 2, scope: !3225)
!3367 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3366)
!3368 = !DILocation(line: 464, column: 2, scope: !3234)
!3369 = !DILocation(line: 0, scope: !3234)
!3370 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 0, scope: !3234)
!3374 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3372)
!3375 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3372)
!3376 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3372)
!3377 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3372)
!3378 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3372)
!3379 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3372)
!3380 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3372)
!3381 = !DILocation(line: 464, column: 2, scope: !3235)
!3382 = !DILocation(line: 464, column: 2, scope: !3233)
!3383 = !DILocation(line: 464, column: 2, scope: !3240)
!3384 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 464, column: 2, scope: !3225)
!3387 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3386)
!3388 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3386)
!3389 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3386)
!3390 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3386)
!3391 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3386)
!3392 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3386)
!3393 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3386)
!3394 = !DILocation(line: 464, column: 2, scope: !3244)
!3395 = !DILocation(line: 464, column: 2, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !124, line: 464, column: 2)
!3397 = distinct !DILexicalBlock(scope: !3244, file: !124, line: 464, column: 2)
!3398 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 0, scope: !3396)
!3402 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3400)
!3403 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3400)
!3404 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3400)
!3405 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3400)
!3406 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3400)
!3407 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3400)
!3408 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3400)
!3409 = !DILocation(line: 0, scope: !3396)
!3410 = !DILocation(line: 464, column: 2, scope: !3397)
!3411 = !DILocation(line: 464, column: 2, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3396, file: !124, line: 464, column: 2)
!3413 = !DILocation(line: 464, column: 2, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3396, file: !124, line: 464, column: 2)
!3415 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 464, column: 2, scope: !3244)
!3418 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3417)
!3419 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3417)
!3420 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3417)
!3421 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3417)
!3422 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3417)
!3423 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3417)
!3424 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3417)
!3425 = !DILocation(line: 0, scope: !3202)
!3426 = !DILocation(line: 469, column: 1, scope: !3202)
!3427 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3428)
!3428 = !{!3429, !3430, !3431, !3437, !3438, !3443, !3445, !3448, !3450, !3452, !3478, !3484, !3485, !3490, !3492, !3495, !3497, !3499, !3500, !3506, !3507, !3512, !3514, !3517, !3519, !3521, !3522, !3528, !3529, !3534, !3536, !3539, !3541}
!3429 = !DILocalVariable(name: "in", arg: 1, scope: !3427, file: !124, line: 511, type: !31)
!3430 = !DILocalVariable(name: "out", arg: 2, scope: !3427, file: !124, line: 511, type: !75)
!3431 = !DILocalVariable(name: "_p", scope: !3432, file: !124, line: 515, type: !48)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !124, line: 515, column: 5)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !124, line: 515, column: 5)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !124, line: 515, column: 5)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !124, line: 514, column: 51)
!3436 = distinct !DILexicalBlock(scope: !3427, file: !124, line: 514, column: 7)
!3437 = !DILocalVariable(name: "_t", scope: !3432, file: !124, line: 515, type: !160)
!3438 = !DILocalVariable(name: "__r", scope: !3439, file: !124, line: 515, type: !291)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !124, line: 515, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !124, line: 515, column: 5)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !124, line: 515, column: 5)
!3442 = distinct !DILexicalBlock(scope: !3432, file: !124, line: 515, column: 5)
!3443 = !DILocalVariable(name: "__r", scope: !3444, file: !124, line: 515, type: !291)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !124, line: 515, column: 5)
!3445 = !DILocalVariable(name: "__r", scope: !3446, file: !124, line: 515, type: !291)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !124, line: 515, column: 5)
!3447 = distinct !DILexicalBlock(scope: !3441, file: !124, line: 515, column: 5)
!3448 = !DILocalVariable(name: "__r", scope: !3449, file: !124, line: 515, type: !291)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !124, line: 515, column: 5)
!3450 = !DILocalVariable(name: "_p", scope: !3451, file: !124, line: 515, type: !48)
!3451 = distinct !DILexicalBlock(scope: !3433, file: !124, line: 515, column: 5)
!3452 = !DILocalVariable(name: "c", scope: !3427, file: !124, line: 520, type: !3453)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !3454)
!3454 = !{!3455, !3457, !3458}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3453, file: !86, line: 68, baseType: !3456, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !3453, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !86, line: 80, baseType: !3459, size: 256, offset: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3453, file: !86, line: 80, size: 256, elements: !3460)
!3460 = !{!3461, !3467, !3474}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3459, file: !86, line: 81, baseType: !3462, size: 192)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3462, file: !86, line: 50, baseType: !25, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3462, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3462, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !3459, file: !86, line: 82, baseType: !3468, size: 256)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3468, file: !86, line: 56, baseType: !25, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3468, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3468, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !3468, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !3459, file: !86, line: 83, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !3476)
!3476 = !{!3477}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3475, file: !86, line: 63, baseType: !25, size: 64)
!3478 = !DILocalVariable(name: "_p", scope: !3479, file: !124, line: 525, type: !48)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !124, line: 525, column: 5)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !124, line: 525, column: 5)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !124, line: 525, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !124, line: 524, column: 47)
!3483 = distinct !DILexicalBlock(scope: !3427, file: !124, line: 524, column: 7)
!3484 = !DILocalVariable(name: "_t", scope: !3479, file: !124, line: 525, type: !160)
!3485 = !DILocalVariable(name: "__r", scope: !3486, file: !124, line: 525, type: !291)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !124, line: 525, column: 5)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !124, line: 525, column: 5)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !124, line: 525, column: 5)
!3489 = distinct !DILexicalBlock(scope: !3479, file: !124, line: 525, column: 5)
!3490 = !DILocalVariable(name: "__r", scope: !3491, file: !124, line: 525, type: !291)
!3491 = distinct !DILexicalBlock(scope: !3486, file: !124, line: 525, column: 5)
!3492 = !DILocalVariable(name: "__r", scope: !3493, file: !124, line: 525, type: !291)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !124, line: 525, column: 5)
!3494 = distinct !DILexicalBlock(scope: !3488, file: !124, line: 525, column: 5)
!3495 = !DILocalVariable(name: "__r", scope: !3496, file: !124, line: 525, type: !291)
!3496 = distinct !DILexicalBlock(scope: !3493, file: !124, line: 525, column: 5)
!3497 = !DILocalVariable(name: "_p", scope: !3498, file: !124, line: 525, type: !48)
!3498 = distinct !DILexicalBlock(scope: !3480, file: !124, line: 525, column: 5)
!3499 = !DILocalVariable(name: "state", scope: !3427, file: !124, line: 534, type: !1004)
!3500 = !DILocalVariable(name: "_p", scope: !3501, file: !124, line: 536, type: !48)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !124, line: 536, column: 5)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !124, line: 536, column: 5)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !124, line: 536, column: 5)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !124, line: 535, column: 17)
!3505 = distinct !DILexicalBlock(scope: !3427, file: !124, line: 535, column: 7)
!3506 = !DILocalVariable(name: "_t", scope: !3501, file: !124, line: 536, type: !160)
!3507 = !DILocalVariable(name: "__r", scope: !3508, file: !124, line: 536, type: !291)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !124, line: 536, column: 5)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !124, line: 536, column: 5)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !124, line: 536, column: 5)
!3511 = distinct !DILexicalBlock(scope: !3501, file: !124, line: 536, column: 5)
!3512 = !DILocalVariable(name: "__r", scope: !3513, file: !124, line: 536, type: !291)
!3513 = distinct !DILexicalBlock(scope: !3508, file: !124, line: 536, column: 5)
!3514 = !DILocalVariable(name: "__r", scope: !3515, file: !124, line: 536, type: !291)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !124, line: 536, column: 5)
!3516 = distinct !DILexicalBlock(scope: !3510, file: !124, line: 536, column: 5)
!3517 = !DILocalVariable(name: "__r", scope: !3518, file: !124, line: 536, type: !291)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !124, line: 536, column: 5)
!3519 = !DILocalVariable(name: "_p", scope: !3520, file: !124, line: 536, type: !48)
!3520 = distinct !DILexicalBlock(scope: !3502, file: !124, line: 536, column: 5)
!3521 = !DILocalVariable(name: "idle_fiber_ptr", scope: !3427, file: !124, line: 541, type: !240)
!3522 = !DILocalVariable(name: "_p", scope: !3523, file: !124, line: 543, type: !48)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !124, line: 543, column: 5)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !124, line: 543, column: 5)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !124, line: 543, column: 5)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !124, line: 542, column: 71)
!3527 = distinct !DILexicalBlock(scope: !3427, file: !124, line: 542, column: 7)
!3528 = !DILocalVariable(name: "_t", scope: !3523, file: !124, line: 543, type: !160)
!3529 = !DILocalVariable(name: "__r", scope: !3530, file: !124, line: 543, type: !291)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !124, line: 543, column: 5)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !124, line: 543, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !124, line: 543, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3523, file: !124, line: 543, column: 5)
!3534 = !DILocalVariable(name: "__r", scope: !3535, file: !124, line: 543, type: !291)
!3535 = distinct !DILexicalBlock(scope: !3530, file: !124, line: 543, column: 5)
!3536 = !DILocalVariable(name: "__r", scope: !3537, file: !124, line: 543, type: !291)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !124, line: 543, column: 5)
!3538 = distinct !DILexicalBlock(scope: !3532, file: !124, line: 543, column: 5)
!3539 = !DILocalVariable(name: "__r", scope: !3540, file: !124, line: 543, type: !291)
!3540 = distinct !DILexicalBlock(scope: !3537, file: !124, line: 543, column: 5)
!3541 = !DILocalVariable(name: "_p", scope: !3542, file: !124, line: 543, type: !48)
!3542 = distinct !DILexicalBlock(scope: !3524, file: !124, line: 543, column: 5)
!3543 = !DILocation(line: 511, column: 27, scope: !3427)
!3544 = !DILocation(line: 511, column: 38, scope: !3427)
!3545 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 514, column: 22, scope: !3436)
!3547 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3546)
!3548 = !DILocation(line: 514, column: 22, scope: !3436)
!3549 = !DILocation(line: 514, column: 7, scope: !3436)
!3550 = !DILocation(line: 514, column: 7, scope: !3427)
!3551 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 515, column: 5, scope: !3433)
!3553 = !DILocation(line: 515, column: 5, scope: !3433)
!3554 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 0, scope: !3433)
!3557 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !3556)
!3558 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !3556)
!3559 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !3556)
!3560 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !3556)
!3561 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !3556)
!3562 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !3556)
!3563 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !3556)
!3564 = !DILocation(line: 0, scope: !2962, inlinedAt: !3556)
!3565 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 0, scope: !3433)
!3568 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !3567)
!3569 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !3567)
!3570 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !3567)
!3571 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !3567)
!3572 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !3567)
!3573 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !3567)
!3574 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !3567)
!3575 = !DILocation(line: 515, column: 5, scope: !3434)
!3576 = !DILocation(line: 515, column: 5, scope: !3432)
!3577 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 515, column: 5, scope: !3432)
!3579 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3578)
!3580 = !DILocation(line: 515, column: 5, scope: !3441)
!3581 = !DILocation(line: 0, scope: !3441)
!3582 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 0, scope: !3441)
!3586 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3584)
!3587 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3584)
!3588 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3584)
!3589 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3584)
!3590 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3584)
!3591 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3584)
!3592 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3584)
!3593 = !DILocation(line: 515, column: 5, scope: !3442)
!3594 = !DILocation(line: 515, column: 5, scope: !3440)
!3595 = !DILocation(line: 515, column: 5, scope: !3447)
!3596 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 515, column: 5, scope: !3432)
!3599 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3598)
!3600 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3598)
!3601 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3598)
!3602 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3598)
!3603 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3598)
!3604 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3598)
!3605 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3598)
!3606 = !DILocation(line: 515, column: 5, scope: !3451)
!3607 = !DILocation(line: 515, column: 5, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !124, line: 515, column: 5)
!3609 = distinct !DILexicalBlock(scope: !3451, file: !124, line: 515, column: 5)
!3610 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 0, scope: !3608)
!3614 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3612)
!3615 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3612)
!3616 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3612)
!3617 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3612)
!3618 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3612)
!3619 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3612)
!3620 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3612)
!3621 = !DILocation(line: 0, scope: !3608)
!3622 = !DILocation(line: 515, column: 5, scope: !3609)
!3623 = !DILocation(line: 515, column: 5, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3608, file: !124, line: 515, column: 5)
!3625 = !DILocation(line: 515, column: 5, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3608, file: !124, line: 515, column: 5)
!3627 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 515, column: 5, scope: !3451)
!3630 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3629)
!3631 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3629)
!3632 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3629)
!3633 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3629)
!3634 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3629)
!3635 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3629)
!3636 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3629)
!3637 = !DILocation(line: 520, column: 3, scope: !3427)
!3638 = !DILocation(line: 520, column: 31, scope: !3427)
!3639 = !DILocation(line: 524, column: 7, scope: !3483)
!3640 = !DILocation(line: 0, scope: !3427)
!3641 = !DILocation(line: 524, column: 7, scope: !3427)
!3642 = !DILocation(line: 525, column: 5, scope: !3480)
!3643 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 0, scope: !3480)
!3646 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !3645)
!3647 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !3645)
!3648 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !3645)
!3649 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !3645)
!3650 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !3645)
!3651 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !3645)
!3652 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !3645)
!3653 = !DILocation(line: 0, scope: !2962, inlinedAt: !3645)
!3654 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 0, scope: !3480)
!3657 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !3656)
!3658 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !3656)
!3659 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !3656)
!3660 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !3656)
!3661 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !3656)
!3662 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !3656)
!3663 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !3656)
!3664 = !DILocation(line: 525, column: 5, scope: !3481)
!3665 = !DILocation(line: 525, column: 5, scope: !3479)
!3666 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 525, column: 5, scope: !3479)
!3668 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3667)
!3669 = !DILocation(line: 525, column: 5, scope: !3488)
!3670 = !DILocation(line: 0, scope: !3488)
!3671 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 0, scope: !3488)
!3675 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3673)
!3676 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3673)
!3677 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3673)
!3678 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3673)
!3679 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3673)
!3680 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3673)
!3681 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3673)
!3682 = !DILocation(line: 525, column: 5, scope: !3489)
!3683 = !DILocation(line: 525, column: 5, scope: !3487)
!3684 = !DILocation(line: 525, column: 5, scope: !3494)
!3685 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 525, column: 5, scope: !3479)
!3688 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3687)
!3689 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3687)
!3690 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3687)
!3691 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3687)
!3692 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3687)
!3693 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3687)
!3694 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3687)
!3695 = !DILocation(line: 525, column: 5, scope: !3498)
!3696 = !DILocation(line: 525, column: 5, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !124, line: 525, column: 5)
!3698 = distinct !DILexicalBlock(scope: !3498, file: !124, line: 525, column: 5)
!3699 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 0, scope: !3697)
!3703 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3701)
!3704 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3701)
!3705 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3701)
!3706 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3701)
!3707 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3701)
!3708 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3701)
!3709 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3701)
!3710 = !DILocation(line: 0, scope: !3697)
!3711 = !DILocation(line: 525, column: 5, scope: !3698)
!3712 = !DILocation(line: 525, column: 5, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3697, file: !124, line: 525, column: 5)
!3714 = !DILocation(line: 525, column: 5, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3697, file: !124, line: 525, column: 5)
!3716 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 525, column: 5, scope: !3498)
!3719 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3718)
!3720 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3718)
!3721 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3718)
!3722 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3718)
!3723 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3718)
!3724 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3718)
!3725 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3718)
!3726 = !DILocation(line: 526, column: 5, scope: !3482)
!3727 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 534, column: 24, scope: !3427)
!3730 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !3729)
!3731 = !DILocation(line: 534, column: 16, scope: !3427)
!3732 = !DILocation(line: 535, column: 8, scope: !3505)
!3733 = !DILocation(line: 535, column: 7, scope: !3427)
!3734 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 536, column: 5, scope: !3502)
!3736 = !DILocation(line: 536, column: 5, scope: !3502)
!3737 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 0, scope: !3502)
!3740 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !3739)
!3741 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !3739)
!3742 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !3739)
!3743 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !3739)
!3744 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !3739)
!3745 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !3739)
!3746 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !3739)
!3747 = !DILocation(line: 0, scope: !2962, inlinedAt: !3739)
!3748 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 0, scope: !3502)
!3751 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !3750)
!3752 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !3750)
!3753 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !3750)
!3754 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !3750)
!3755 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !3750)
!3756 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !3750)
!3757 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !3750)
!3758 = !DILocation(line: 536, column: 5, scope: !3503)
!3759 = !DILocation(line: 536, column: 5, scope: !3501)
!3760 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 536, column: 5, scope: !3501)
!3762 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3761)
!3763 = !DILocation(line: 536, column: 5, scope: !3510)
!3764 = !DILocation(line: 0, scope: !3510)
!3765 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 0, scope: !3510)
!3769 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3767)
!3770 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3767)
!3771 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3767)
!3772 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3767)
!3773 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3767)
!3774 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3767)
!3775 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3767)
!3776 = !DILocation(line: 536, column: 5, scope: !3511)
!3777 = !DILocation(line: 536, column: 5, scope: !3509)
!3778 = !DILocation(line: 536, column: 5, scope: !3516)
!3779 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 536, column: 5, scope: !3501)
!3782 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3781)
!3783 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3781)
!3784 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3781)
!3785 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3781)
!3786 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3781)
!3787 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3781)
!3788 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3781)
!3789 = !DILocation(line: 536, column: 5, scope: !3520)
!3790 = !DILocation(line: 536, column: 5, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !124, line: 536, column: 5)
!3792 = distinct !DILexicalBlock(scope: !3520, file: !124, line: 536, column: 5)
!3793 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 0, scope: !3791)
!3797 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3795)
!3798 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3795)
!3799 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3795)
!3800 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3795)
!3801 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3795)
!3802 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3795)
!3803 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3795)
!3804 = !DILocation(line: 0, scope: !3791)
!3805 = !DILocation(line: 536, column: 5, scope: !3792)
!3806 = !DILocation(line: 536, column: 5, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3791, file: !124, line: 536, column: 5)
!3808 = !DILocation(line: 536, column: 5, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3791, file: !124, line: 536, column: 5)
!3810 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 536, column: 5, scope: !3520)
!3813 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3812)
!3814 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3812)
!3815 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3812)
!3816 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3812)
!3817 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3812)
!3818 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3812)
!3819 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3812)
!3820 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 538, column: 25, scope: !3427)
!3822 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3821)
!3823 = !DILocation(line: 538, column: 10, scope: !3427)
!3824 = !DILocation(line: 538, column: 23, scope: !3427)
!3825 = !DILocation(line: 541, column: 3, scope: !3427)
!3826 = !DILocation(line: 541, column: 15, scope: !3427)
!3827 = !DILocation(line: 542, column: 7, scope: !3527)
!3828 = !DILocation(line: 542, column: 66, scope: !3527)
!3829 = !DILocation(line: 542, column: 7, scope: !3427)
!3830 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 543, column: 5, scope: !3524)
!3832 = !DILocation(line: 543, column: 5, scope: !3524)
!3833 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 0, scope: !3524)
!3836 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !3835)
!3837 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !3835)
!3838 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !3835)
!3839 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !3835)
!3840 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !3835)
!3841 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !3835)
!3842 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !3835)
!3843 = !DILocation(line: 0, scope: !2962, inlinedAt: !3835)
!3844 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 0, scope: !3524)
!3847 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !3846)
!3848 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !3846)
!3849 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !3846)
!3850 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !3846)
!3851 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !3846)
!3852 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !3846)
!3853 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !3846)
!3854 = !DILocation(line: 543, column: 5, scope: !3525)
!3855 = !DILocation(line: 543, column: 5, scope: !3523)
!3856 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 543, column: 5, scope: !3523)
!3858 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3857)
!3859 = !DILocation(line: 543, column: 5, scope: !3532)
!3860 = !DILocation(line: 0, scope: !3532)
!3861 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 0, scope: !3532)
!3865 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3863)
!3866 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3863)
!3867 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3863)
!3868 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3863)
!3869 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3863)
!3870 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3863)
!3871 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3863)
!3872 = !DILocation(line: 543, column: 5, scope: !3533)
!3873 = !DILocation(line: 543, column: 5, scope: !3531)
!3874 = !DILocation(line: 543, column: 5, scope: !3538)
!3875 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 543, column: 5, scope: !3523)
!3878 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3877)
!3879 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3877)
!3880 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3877)
!3881 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3877)
!3882 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3877)
!3883 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3877)
!3884 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3877)
!3885 = !DILocation(line: 543, column: 5, scope: !3542)
!3886 = !DILocation(line: 543, column: 5, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !124, line: 543, column: 5)
!3888 = distinct !DILexicalBlock(scope: !3542, file: !124, line: 543, column: 5)
!3889 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 0, scope: !3887)
!3893 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !3891)
!3894 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !3891)
!3895 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !3891)
!3896 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !3891)
!3897 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !3891)
!3898 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !3891)
!3899 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !3891)
!3900 = !DILocation(line: 0, scope: !3887)
!3901 = !DILocation(line: 543, column: 5, scope: !3888)
!3902 = !DILocation(line: 543, column: 5, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3887, file: !124, line: 543, column: 5)
!3904 = !DILocation(line: 543, column: 5, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3887, file: !124, line: 543, column: 5)
!3906 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 543, column: 5, scope: !3542)
!3909 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !3908)
!3910 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !3908)
!3911 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !3908)
!3912 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !3908)
!3913 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !3908)
!3914 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !3908)
!3915 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !3908)
!3916 = !DILocation(line: 547, column: 23, scope: !3427)
!3917 = !DILocation(line: 547, column: 10, scope: !3427)
!3918 = !DILocation(line: 547, column: 21, scope: !3427)
!3919 = !DILocation(line: 548, column: 10, scope: !3427)
!3920 = !DILocation(line: 548, column: 21, scope: !3427)
!3921 = !DILocation(line: 551, column: 3, scope: !3427)
!3922 = !DILocation(line: 551, column: 19, scope: !3427)
!3923 = !DILocation(line: 551, column: 27, scope: !3427)
!3924 = !DILocation(line: 198, column: 33, scope: !2549, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 554, column: 3, scope: !3427)
!3926 = !DILocation(line: 202, column: 9, scope: !2549, inlinedAt: !3925)
!3927 = !DILocation(line: 202, column: 19, scope: !2549, inlinedAt: !3925)
!3928 = !DILocation(line: 202, column: 32, scope: !2549, inlinedAt: !3925)
!3929 = !DILocation(line: 202, column: 3, scope: !2549, inlinedAt: !3925)
!3930 = !DILocation(line: 208, column: 3, scope: !2549, inlinedAt: !3925)
!3931 = !DILocation(line: 557, column: 1, scope: !3427)
!3932 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3933)
!3933 = !{!3934, !3935}
!3934 = !DILocalVariable(name: "in", arg: 1, scope: !3932, file: !124, line: 479, type: !31)
!3935 = !DILocalVariable(name: "out", arg: 2, scope: !3932, file: !124, line: 479, type: !75)
!3936 = !DILocation(line: 479, column: 35, scope: !3932)
!3937 = !DILocation(line: 479, column: 46, scope: !3932)
!3938 = !DILocation(line: 481, column: 3, scope: !3932)
!3939 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 489, column: 5, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3932, file: !124, line: 481, column: 13)
!3945 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !3940)
!3946 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !3941)
!3947 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !3942)
!3948 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !3943)
!3950 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3949)
!3951 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !3943)
!3952 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !3943)
!3953 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !3943)
!3958 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !3954)
!3959 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !3955)
!3960 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !3956)
!3961 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !3957)
!3962 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !3957)
!3963 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !3957)
!3965 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !3964)
!3966 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !3964)
!3967 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !3957)
!3968 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !3957)
!3969 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !3957)
!3970 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !3957)
!3972 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !3971)
!3973 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !3971)
!3974 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !3971)
!3976 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !3975)
!3977 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !3975)
!3978 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !3975)
!3979 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !3975)
!3980 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !3975)
!3981 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !3971)
!3983 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3982)
!3984 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3982)
!3985 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !3943)
!3986 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !3943)
!3987 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !3943)
!3988 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !3943)
!3992 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !3989)
!3993 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !3990)
!3994 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !3991)
!3995 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !3943)
!3999 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !3996)
!4000 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !3997)
!4001 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !3998)
!4002 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !3943)
!4003 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !3943)
!4004 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !3943)
!4008 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4005)
!4009 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4006)
!4010 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4007)
!4011 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !3943)
!4012 = !DILocation(line: 0, scope: !1010, inlinedAt: !3943)
!4013 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !3943)
!4014 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !3943)
!4015 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 490, column: 28, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3944, file: !124, line: 490, column: 9)
!4020 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4016)
!4021 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4017)
!4022 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !4018)
!4023 = !DILocalVariable(name: "head", arg: 1, scope: !4024, file: !53, line: 201, type: !1043)
!4024 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1053, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4025)
!4025 = !{!4023, !4026}
!4026 = !DILocalVariable(name: "next", scope: !4024, file: !53, line: 203, type: !150)
!4027 = !DILocation(line: 201, column: 62, scope: !4024, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 490, column: 9, scope: !4019)
!4029 = !DILocation(line: 203, column: 33, scope: !4024, inlinedAt: !4028)
!4030 = !DILocation(line: 203, column: 20, scope: !4024, inlinedAt: !4028)
!4031 = !DILocation(line: 204, column: 15, scope: !4024, inlinedAt: !4028)
!4032 = !DILocation(line: 204, column: 24, scope: !4024, inlinedAt: !4028)
!4033 = !DILocation(line: 204, column: 42, scope: !4024, inlinedAt: !4028)
!4034 = !DILocation(line: 204, column: 33, scope: !4024, inlinedAt: !4028)
!4035 = !DILocation(line: 490, column: 9, scope: !3944)
!4036 = !DILocation(line: 489, column: 5, scope: !3944)
!4037 = distinct !{!4037, !3938, !4038}
!4038 = !DILocation(line: 508, column: 3, scope: !3932)
!4039 = !DILocation(line: 492, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4019, file: !124, line: 490, column: 47)
!4041 = !DILocation(line: 494, column: 5, scope: !4040)
!4042 = !DILocation(line: 602, column: 36, scope: !602)
!4043 = !DILocation(line: 602, column: 47, scope: !602)
!4044 = !DILocation(line: 602, column: 61, scope: !602)
!4045 = !DILocation(line: 602, column: 85, scope: !602)
!4046 = !DILocation(line: 602, column: 110, scope: !602)
!4047 = !DILocation(line: 605, column: 15, scope: !602)
!4048 = !DILocation(line: 608, column: 41, scope: !602)
!4049 = !DILocation(line: 608, column: 19, scope: !602)
!4050 = !DILocation(line: 611, column: 11, scope: !613)
!4051 = !DILocation(line: 614, column: 8, scope: !626)
!4052 = !DILocation(line: 614, column: 7, scope: !602)
!4053 = !DILocation(line: 620, column: 3, scope: !602)
!4054 = !DILocation(line: 623, column: 10, scope: !602)
!4055 = !DILocation(line: 623, column: 19, scope: !602)
!4056 = !DILocation(line: 625, column: 10, scope: !602)
!4057 = !DILocation(line: 625, column: 21, scope: !602)
!4058 = !DILocation(line: 628, column: 26, scope: !615)
!4059 = !DILocation(line: 628, column: 10, scope: !602)
!4060 = !DILocation(line: 628, column: 16, scope: !602)
!4061 = !DILocation(line: 631, column: 8, scope: !637)
!4062 = !DILocation(line: 631, column: 7, scope: !602)
!4063 = !DILocation(line: 634, column: 5, scope: !640)
!4064 = !DILocation(line: 635, column: 5, scope: !640)
!4065 = !DILocation(line: 639, column: 10, scope: !602)
!4066 = !DILocation(line: 639, column: 14, scope: !602)
!4067 = !DILocation(line: 640, column: 10, scope: !602)
!4068 = !DILocation(line: 640, column: 16, scope: !602)
!4069 = !DILocation(line: 641, column: 10, scope: !602)
!4070 = !DILocation(line: 641, column: 17, scope: !602)
!4071 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 644, column: 3, scope: !602)
!4073 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !4072)
!4074 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !4072)
!4075 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !4072)
!4077 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4076)
!4078 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !4072)
!4079 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4076)
!4080 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4076)
!4081 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4076)
!4082 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !4072)
!4084 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4083)
!4085 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4083)
!4086 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4083)
!4087 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4083)
!4088 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !4072)
!4090 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4089)
!4091 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4089)
!4092 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4089)
!4093 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4089)
!4094 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !4072)
!4096 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4095)
!4097 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4095)
!4098 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4095)
!4099 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4095)
!4100 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !4072)
!4102 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4101)
!4103 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4101)
!4104 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4101)
!4105 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4101)
!4106 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !4072)
!4108 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4107)
!4109 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4107)
!4110 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4107)
!4111 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4107)
!4112 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !4072)
!4113 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !4072)
!4115 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4114)
!4116 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4114)
!4117 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4114)
!4118 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4114)
!4119 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !4072)
!4121 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4120)
!4122 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4120)
!4123 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4120)
!4124 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4120)
!4125 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !4072)
!4127 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4126)
!4128 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4126)
!4129 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4126)
!4130 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4126)
!4131 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !4072)
!4133 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4132)
!4134 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4132)
!4135 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4132)
!4136 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4132)
!4137 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !4072)
!4139 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4138)
!4140 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4138)
!4141 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4138)
!4142 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4138)
!4143 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !4072)
!4145 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4144)
!4146 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4144)
!4147 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4144)
!4148 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4144)
!4149 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !4072)
!4151 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4150)
!4152 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4150)
!4153 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4150)
!4154 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4150)
!4155 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !4072)
!4157 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4156)
!4158 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4156)
!4159 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4156)
!4160 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4156)
!4161 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !4072)
!4163 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4162)
!4164 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4162)
!4165 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4162)
!4166 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4162)
!4167 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !4072)
!4169 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4168)
!4170 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4168)
!4171 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4168)
!4172 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4168)
!4173 = !DILocation(line: 647, column: 7, scope: !763)
!4174 = !DILocation(line: 647, column: 7, scope: !602)
!4175 = !DILocation(line: 648, column: 19, scope: !762)
!4176 = !DILocation(line: 649, column: 3, scope: !762)
!4177 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 650, column: 15, scope: !602)
!4179 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4178)
!4180 = !DILocation(line: 650, column: 33, scope: !602)
!4181 = !DILocation(line: 650, column: 10, scope: !602)
!4182 = !DILocation(line: 650, column: 13, scope: !602)
!4183 = !DILocation(line: 653, column: 27, scope: !602)
!4184 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 653, column: 3, scope: !602)
!4186 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4185)
!4187 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !4185)
!4188 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4185)
!4189 = !DILocation(line: 656, column: 10, scope: !602)
!4190 = !DILocation(line: 656, column: 19, scope: !602)
!4191 = !DILocation(line: 657, column: 27, scope: !602)
!4192 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 657, column: 3, scope: !602)
!4194 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4193)
!4195 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !4193)
!4196 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4193)
!4197 = !DILocation(line: 658, column: 27, scope: !602)
!4198 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 658, column: 3, scope: !602)
!4200 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4199)
!4201 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !4199)
!4202 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4199)
!4203 = !DILocation(line: 660, column: 3, scope: !602)
!4204 = !DILocation(line: 0, scope: !602)
!4205 = !DILocation(line: 661, column: 1, scope: !602)
!4206 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 704, column: 7, scope: !1009)
!4210 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4207)
!4211 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4208)
!4212 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !4209)
!4213 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 704, column: 30, scope: !1009)
!4215 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4214)
!4216 = !DILocation(line: 704, column: 27, scope: !1009)
!4217 = !DILocation(line: 704, column: 7, scope: !1010)
!4218 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 708, column: 22, scope: !1010)
!4223 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4219)
!4224 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4220)
!4225 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !4221)
!4226 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !4222)
!4227 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !4222)
!4228 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !4222)
!4230 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !4229)
!4231 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !4229)
!4232 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !4222)
!4233 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !4222)
!4234 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !4222)
!4235 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !4222)
!4237 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !4236)
!4238 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !4236)
!4239 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !4236)
!4241 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !4240)
!4242 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !4240)
!4243 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !4240)
!4244 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !4240)
!4245 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !4240)
!4246 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !4236)
!4248 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4247)
!4249 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4247)
!4250 = !DILocation(line: 708, column: 15, scope: !1010)
!4251 = !DILocation(line: 718, column: 12, scope: !1089)
!4252 = !DILocation(line: 718, column: 7, scope: !1010)
!4253 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 719, column: 9, scope: !1096)
!4257 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4254)
!4258 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4255)
!4259 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !4256)
!4260 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 719, column: 31, scope: !1096)
!4264 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4261)
!4265 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4262)
!4266 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4263)
!4267 = !DILocation(line: 719, column: 28, scope: !1096)
!4268 = !DILocation(line: 719, column: 9, scope: !1097)
!4269 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 723, column: 16, scope: !1115)
!4273 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4270)
!4274 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4271)
!4275 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4272)
!4276 = !DILocation(line: 725, column: 3, scope: !1097)
!4277 = !DILocation(line: 0, scope: !1010)
!4278 = !DILocation(line: 727, column: 10, scope: !1010)
!4279 = !DILocation(line: 727, column: 3, scope: !1010)
!4280 = !DILocation(line: 728, column: 1, scope: !1010)
!4281 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !2783, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4282)
!4282 = !{!4283, !4284, !4288, !4289, !4294, !4296, !4299, !4301, !4303, !4309, !4310, !4315, !4317, !4320, !4322}
!4283 = !DILocalVariable(name: "my_cpu", scope: !4281, file: !124, line: 572, type: !270)
!4284 = !DILocalVariable(name: "_p", scope: !4285, file: !124, line: 573, type: !48)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !124, line: 573, column: 5)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !124, line: 573, column: 5)
!4287 = distinct !DILexicalBlock(scope: !4281, file: !124, line: 573, column: 5)
!4288 = !DILocalVariable(name: "_t", scope: !4285, file: !124, line: 573, type: !160)
!4289 = !DILocalVariable(name: "__r", scope: !4290, file: !124, line: 573, type: !291)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !124, line: 573, column: 5)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !124, line: 573, column: 5)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !124, line: 573, column: 5)
!4293 = distinct !DILexicalBlock(scope: !4285, file: !124, line: 573, column: 5)
!4294 = !DILocalVariable(name: "__r", scope: !4295, file: !124, line: 573, type: !291)
!4295 = distinct !DILexicalBlock(scope: !4290, file: !124, line: 573, column: 5)
!4296 = !DILocalVariable(name: "__r", scope: !4297, file: !124, line: 573, type: !291)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !124, line: 573, column: 5)
!4298 = distinct !DILexicalBlock(scope: !4292, file: !124, line: 573, column: 5)
!4299 = !DILocalVariable(name: "__r", scope: !4300, file: !124, line: 573, type: !291)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !124, line: 573, column: 5)
!4301 = !DILocalVariable(name: "_p", scope: !4302, file: !124, line: 573, type: !48)
!4302 = distinct !DILexicalBlock(scope: !4286, file: !124, line: 573, column: 5)
!4303 = !DILocalVariable(name: "_p", scope: !4304, file: !124, line: 575, type: !48)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !124, line: 575, column: 2)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !124, line: 575, column: 2)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !124, line: 575, column: 2)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !124, line: 574, column: 45)
!4308 = distinct !DILexicalBlock(scope: !4281, file: !124, line: 574, column: 9)
!4309 = !DILocalVariable(name: "_t", scope: !4304, file: !124, line: 575, type: !160)
!4310 = !DILocalVariable(name: "__r", scope: !4311, file: !124, line: 575, type: !291)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !124, line: 575, column: 2)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !124, line: 575, column: 2)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !124, line: 575, column: 2)
!4314 = distinct !DILexicalBlock(scope: !4304, file: !124, line: 575, column: 2)
!4315 = !DILocalVariable(name: "__r", scope: !4316, file: !124, line: 575, type: !291)
!4316 = distinct !DILexicalBlock(scope: !4311, file: !124, line: 575, column: 2)
!4317 = !DILocalVariable(name: "__r", scope: !4318, file: !124, line: 575, type: !291)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !124, line: 575, column: 2)
!4319 = distinct !DILexicalBlock(scope: !4313, file: !124, line: 575, column: 2)
!4320 = !DILocalVariable(name: "__r", scope: !4321, file: !124, line: 575, type: !291)
!4321 = distinct !DILexicalBlock(scope: !4318, file: !124, line: 575, column: 2)
!4322 = !DILocalVariable(name: "_p", scope: !4323, file: !124, line: 575, type: !48)
!4323 = distinct !DILexicalBlock(scope: !4305, file: !124, line: 575, column: 2)
!4324 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 572, column: 26, scope: !4281)
!4326 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4325)
!4327 = !DILocation(line: 572, column: 17, scope: !4281)
!4328 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 573, column: 5, scope: !4286)
!4330 = !DILocation(line: 573, column: 5, scope: !4286)
!4331 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 0, scope: !4286)
!4334 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !4333)
!4335 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !4333)
!4336 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !4333)
!4337 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !4333)
!4338 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !4333)
!4339 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !4333)
!4340 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !4333)
!4341 = !DILocation(line: 0, scope: !2962, inlinedAt: !4333)
!4342 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 0, scope: !4286)
!4345 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !4344)
!4346 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !4344)
!4347 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !4344)
!4348 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !4344)
!4349 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !4344)
!4350 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !4344)
!4351 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !4344)
!4352 = !DILocation(line: 573, column: 5, scope: !4287)
!4353 = !DILocation(line: 573, column: 5, scope: !4285)
!4354 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 573, column: 5, scope: !4285)
!4356 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4355)
!4357 = !DILocation(line: 573, column: 5, scope: !4292)
!4358 = !DILocation(line: 0, scope: !4292)
!4359 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 0, scope: !4292)
!4363 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !4361)
!4364 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !4361)
!4365 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !4361)
!4366 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !4361)
!4367 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !4361)
!4368 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !4361)
!4369 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !4361)
!4370 = !DILocation(line: 573, column: 5, scope: !4293)
!4371 = !DILocation(line: 573, column: 5, scope: !4291)
!4372 = !DILocation(line: 573, column: 5, scope: !4298)
!4373 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 573, column: 5, scope: !4285)
!4376 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !4375)
!4377 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !4375)
!4378 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !4375)
!4379 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !4375)
!4380 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !4375)
!4381 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !4375)
!4382 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !4375)
!4383 = !DILocation(line: 573, column: 5, scope: !4302)
!4384 = !DILocation(line: 573, column: 5, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !124, line: 573, column: 5)
!4386 = distinct !DILexicalBlock(scope: !4302, file: !124, line: 573, column: 5)
!4387 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 0, scope: !4385)
!4391 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !4389)
!4392 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !4389)
!4393 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !4389)
!4394 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !4389)
!4395 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !4389)
!4396 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !4389)
!4397 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !4389)
!4398 = !DILocation(line: 0, scope: !4385)
!4399 = !DILocation(line: 573, column: 5, scope: !4386)
!4400 = !DILocation(line: 573, column: 5, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4385, file: !124, line: 573, column: 5)
!4402 = !DILocation(line: 573, column: 5, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4385, file: !124, line: 573, column: 5)
!4404 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 573, column: 5, scope: !4302)
!4407 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !4406)
!4408 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !4406)
!4409 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !4406)
!4410 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !4406)
!4411 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !4406)
!4412 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !4406)
!4413 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !4406)
!4414 = !DILocation(line: 561, column: 3, scope: !4415, inlinedAt: !4444)
!4415 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4416)
!4416 = !{!4417, !4419, !4422, !4424, !4429, !4430, !4435, !4437, !4440, !4442}
!4417 = !DILocalVariable(name: "tid", scope: !4415, file: !124, line: 561, type: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!4419 = !DILocalVariable(name: "__r", scope: !4420, file: !124, line: 562, type: !291)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !124, line: 562, column: 79)
!4421 = distinct !DILexicalBlock(scope: !4415, file: !124, line: 562, column: 7)
!4422 = !DILocalVariable(name: "__r", scope: !4423, file: !124, line: 562, type: !291)
!4423 = distinct !DILexicalBlock(scope: !4420, file: !124, line: 562, column: 79)
!4424 = !DILocalVariable(name: "_p", scope: !4425, file: !124, line: 563, type: !48)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !124, line: 563, column: 7)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !124, line: 563, column: 7)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !124, line: 563, column: 7)
!4428 = distinct !DILexicalBlock(scope: !4421, file: !124, line: 562, column: 93)
!4429 = !DILocalVariable(name: "_t", scope: !4425, file: !124, line: 563, type: !160)
!4430 = !DILocalVariable(name: "__r", scope: !4431, file: !124, line: 563, type: !291)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !124, line: 563, column: 7)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !124, line: 563, column: 7)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !124, line: 563, column: 7)
!4434 = distinct !DILexicalBlock(scope: !4425, file: !124, line: 563, column: 7)
!4435 = !DILocalVariable(name: "__r", scope: !4436, file: !124, line: 563, type: !291)
!4436 = distinct !DILexicalBlock(scope: !4431, file: !124, line: 563, column: 7)
!4437 = !DILocalVariable(name: "__r", scope: !4438, file: !124, line: 563, type: !291)
!4438 = distinct !DILexicalBlock(scope: !4439, file: !124, line: 563, column: 7)
!4439 = distinct !DILexicalBlock(scope: !4433, file: !124, line: 563, column: 7)
!4440 = !DILocalVariable(name: "__r", scope: !4441, file: !124, line: 563, type: !291)
!4441 = distinct !DILexicalBlock(scope: !4438, file: !124, line: 563, column: 7)
!4442 = !DILocalVariable(name: "_p", scope: !4443, file: !124, line: 563, type: !48)
!4443 = distinct !DILexicalBlock(scope: !4426, file: !124, line: 563, column: 7)
!4444 = distinct !DILocation(line: 574, column: 9, scope: !4308)
!4445 = !DILocation(line: 562, column: 79, scope: !4423, inlinedAt: !4444)
!4446 = !{i32 -2147099479}
!4447 = !DILocation(line: 562, column: 79, scope: !4420, inlinedAt: !4444)
!4448 = !DILocation(line: 561, column: 18, scope: !4415, inlinedAt: !4444)
!4449 = !DILocation(line: 562, column: 7, scope: !4421, inlinedAt: !4444)
!4450 = !DILocation(line: 562, column: 7, scope: !4415, inlinedAt: !4444)
!4451 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 563, column: 7, scope: !4426, inlinedAt: !4444)
!4453 = !DILocation(line: 563, column: 7, scope: !4426, inlinedAt: !4444)
!4454 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 0, scope: !4426, inlinedAt: !4444)
!4457 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !4456)
!4458 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !4456)
!4459 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !4456)
!4460 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !4456)
!4461 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !4456)
!4462 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !4456)
!4463 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !4456)
!4464 = !DILocation(line: 0, scope: !2962, inlinedAt: !4456)
!4465 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 0, scope: !4426, inlinedAt: !4444)
!4468 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !4467)
!4469 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !4467)
!4470 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !4467)
!4471 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !4467)
!4472 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !4467)
!4473 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !4467)
!4474 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !4467)
!4475 = !DILocation(line: 563, column: 7, scope: !4427, inlinedAt: !4444)
!4476 = !DILocation(line: 563, column: 7, scope: !4425, inlinedAt: !4444)
!4477 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 563, column: 7, scope: !4425, inlinedAt: !4444)
!4479 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4478)
!4480 = !DILocation(line: 563, column: 7, scope: !4433, inlinedAt: !4444)
!4481 = !DILocation(line: 0, scope: !4433, inlinedAt: !4444)
!4482 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 0, scope: !4433, inlinedAt: !4444)
!4486 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !4484)
!4487 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !4484)
!4488 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !4484)
!4489 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !4484)
!4490 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !4484)
!4491 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !4484)
!4492 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !4484)
!4493 = !DILocation(line: 563, column: 7, scope: !4434, inlinedAt: !4444)
!4494 = !DILocation(line: 563, column: 7, scope: !4432, inlinedAt: !4444)
!4495 = !DILocation(line: 563, column: 7, scope: !4439, inlinedAt: !4444)
!4496 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 563, column: 7, scope: !4425, inlinedAt: !4444)
!4499 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !4498)
!4500 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !4498)
!4501 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !4498)
!4502 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !4498)
!4503 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !4498)
!4504 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !4498)
!4505 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !4498)
!4506 = !DILocation(line: 563, column: 7, scope: !4443, inlinedAt: !4444)
!4507 = !DILocation(line: 563, column: 7, scope: !4508, inlinedAt: !4444)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !124, line: 563, column: 7)
!4509 = distinct !DILexicalBlock(scope: !4443, file: !124, line: 563, column: 7)
!4510 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 0, scope: !4508, inlinedAt: !4444)
!4514 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !4512)
!4515 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !4512)
!4516 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !4512)
!4517 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !4512)
!4518 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !4512)
!4519 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !4512)
!4520 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !4512)
!4521 = !DILocation(line: 0, scope: !4508, inlinedAt: !4444)
!4522 = !DILocation(line: 563, column: 7, scope: !4509, inlinedAt: !4444)
!4523 = !DILocation(line: 563, column: 7, scope: !4524, inlinedAt: !4444)
!4524 = distinct !DILexicalBlock(scope: !4508, file: !124, line: 563, column: 7)
!4525 = !DILocation(line: 563, column: 7, scope: !4526, inlinedAt: !4444)
!4526 = distinct !DILexicalBlock(scope: !4508, file: !124, line: 563, column: 7)
!4527 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 563, column: 7, scope: !4443, inlinedAt: !4444)
!4530 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !4529)
!4531 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !4529)
!4532 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !4529)
!4533 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !4529)
!4534 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !4529)
!4535 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !4529)
!4536 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !4529)
!4537 = !DILocation(line: 568, column: 1, scope: !4415, inlinedAt: !4444)
!4538 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 575, column: 2, scope: !4305)
!4540 = !DILocation(line: 575, column: 2, scope: !4305)
!4541 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 84, column: 18, scope: !2956, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 0, scope: !4305)
!4544 = !DILocation(line: 84, column: 11, scope: !2956, inlinedAt: !4543)
!4545 = !DILocation(line: 85, column: 9, scope: !2962, inlinedAt: !4543)
!4546 = !DILocation(line: 85, column: 9, scope: !2956, inlinedAt: !4543)
!4547 = !DILocation(line: 87, column: 57, scope: !2965, inlinedAt: !4543)
!4548 = !DILocation(line: 87, column: 30, scope: !2965, inlinedAt: !4543)
!4549 = !DILocation(line: 87, column: 9, scope: !2965, inlinedAt: !4543)
!4550 = !DILocation(line: 87, column: 2, scope: !2965, inlinedAt: !4543)
!4551 = !DILocation(line: 0, scope: !2962, inlinedAt: !4543)
!4552 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 48, column: 18, scope: !2972, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 0, scope: !4305)
!4555 = !DILocation(line: 48, column: 11, scope: !2972, inlinedAt: !4554)
!4556 = !DILocation(line: 49, column: 9, scope: !2978, inlinedAt: !4554)
!4557 = !DILocation(line: 49, column: 9, scope: !2972, inlinedAt: !4554)
!4558 = !DILocation(line: 51, column: 50, scope: !2981, inlinedAt: !4554)
!4559 = !DILocation(line: 51, column: 23, scope: !2981, inlinedAt: !4554)
!4560 = !DILocation(line: 51, column: 2, scope: !2981, inlinedAt: !4554)
!4561 = !DILocation(line: 52, column: 5, scope: !2981, inlinedAt: !4554)
!4562 = !DILocation(line: 575, column: 2, scope: !4306)
!4563 = !DILocation(line: 575, column: 2, scope: !4304)
!4564 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 575, column: 2, scope: !4304)
!4566 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4565)
!4567 = !DILocation(line: 575, column: 2, scope: !4313)
!4568 = !DILocation(line: 0, scope: !4313)
!4569 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 0, scope: !4313)
!4573 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !4571)
!4574 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !4571)
!4575 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !4571)
!4576 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !4571)
!4577 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !4571)
!4578 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !4571)
!4579 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !4571)
!4580 = !DILocation(line: 575, column: 2, scope: !4314)
!4581 = !DILocation(line: 575, column: 2, scope: !4312)
!4582 = !DILocation(line: 575, column: 2, scope: !4319)
!4583 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 575, column: 2, scope: !4304)
!4586 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !4585)
!4587 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !4585)
!4588 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !4585)
!4589 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !4585)
!4590 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !4585)
!4591 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !4585)
!4592 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !4585)
!4593 = !DILocation(line: 575, column: 2, scope: !4323)
!4594 = !DILocation(line: 575, column: 2, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4596, file: !124, line: 575, column: 2)
!4596 = distinct !DILexicalBlock(scope: !4323, file: !124, line: 575, column: 2)
!4597 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 96, column: 18, scope: !2994, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 107, column: 12, scope: !3000, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 0, scope: !4595)
!4601 = !DILocation(line: 96, column: 11, scope: !2994, inlinedAt: !4599)
!4602 = !DILocation(line: 97, column: 9, scope: !3004, inlinedAt: !4599)
!4603 = !DILocation(line: 97, column: 9, scope: !2994, inlinedAt: !4599)
!4604 = !DILocation(line: 98, column: 57, scope: !3007, inlinedAt: !4599)
!4605 = !DILocation(line: 98, column: 30, scope: !3007, inlinedAt: !4599)
!4606 = !DILocation(line: 98, column: 9, scope: !3007, inlinedAt: !4599)
!4607 = !DILocation(line: 98, column: 2, scope: !3007, inlinedAt: !4599)
!4608 = !DILocation(line: 0, scope: !4595)
!4609 = !DILocation(line: 575, column: 2, scope: !4596)
!4610 = !DILocation(line: 575, column: 2, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4595, file: !124, line: 575, column: 2)
!4612 = !DILocation(line: 575, column: 2, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4595, file: !124, line: 575, column: 2)
!4614 = !DILocation(line: 43, column: 21, scope: !2948, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 59, column: 18, scope: !3016, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 575, column: 2, scope: !4323)
!4617 = !DILocation(line: 59, column: 11, scope: !3016, inlinedAt: !4616)
!4618 = !DILocation(line: 60, column: 9, scope: !3022, inlinedAt: !4616)
!4619 = !DILocation(line: 60, column: 9, scope: !3016, inlinedAt: !4616)
!4620 = !DILocation(line: 62, column: 50, scope: !3025, inlinedAt: !4616)
!4621 = !DILocation(line: 62, column: 23, scope: !3025, inlinedAt: !4616)
!4622 = !DILocation(line: 62, column: 2, scope: !3025, inlinedAt: !4616)
!4623 = !DILocation(line: 63, column: 5, scope: !3025, inlinedAt: !4616)
!4624 = !DILocation(line: 576, column: 2, scope: !4307)
!4625 = !DILocation(line: 579, column: 1, scope: !4281)
!4626 = !DILocation(line: 693, column: 35, scope: !584)
!4627 = !DILocation(line: 693, column: 46, scope: !584)
!4628 = !DILocation(line: 693, column: 60, scope: !584)
!4629 = !DILocation(line: 693, column: 84, scope: !584)
!4630 = !DILocation(line: 693, column: 104, scope: !584)
!4631 = !DILocation(line: 693, column: 134, scope: !584)
!4632 = !DILocation(line: 695, column: 3, scope: !584)
!4633 = !DILocation(line: 696, column: 16, scope: !584)
!4634 = !DILocation(line: 696, column: 3, scope: !584)
!4635 = !DILocation(line: 698, column: 3, scope: !584)
!4636 = !DILocation(line: 732, column: 3, scope: !992)
!4637 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !4640)
!4640 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 733, column: 10, scope: !992)
!4642 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4638)
!4643 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4639)
!4644 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !4640)
!4645 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !4641)
!4647 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4646)
!4648 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !4641)
!4649 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !4641)
!4650 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !4641)
!4655 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4651)
!4656 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4652)
!4657 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !4653)
!4658 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !4654)
!4659 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !4654)
!4660 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !4654)
!4662 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !4661)
!4663 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !4661)
!4664 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !4654)
!4665 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !4654)
!4666 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !4654)
!4667 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !4654)
!4669 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !4668)
!4670 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !4668)
!4671 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !4668)
!4673 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !4672)
!4674 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !4672)
!4675 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !4672)
!4676 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !4672)
!4677 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !4672)
!4678 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !4668)
!4680 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4679)
!4681 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4679)
!4682 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !4641)
!4683 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !4641)
!4684 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !4641)
!4685 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !4641)
!4689 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4686)
!4690 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4687)
!4691 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !4688)
!4692 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !4641)
!4696 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4693)
!4697 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4694)
!4698 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4695)
!4699 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !4641)
!4700 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !4641)
!4701 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !4641)
!4705 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4702)
!4706 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4703)
!4707 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4704)
!4708 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !4641)
!4709 = !DILocation(line: 0, scope: !1010, inlinedAt: !4641)
!4710 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !4641)
!4711 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !4641)
!4712 = !DILocation(line: 733, column: 3, scope: !992)
!4713 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 736, type: !2663, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4714)
!4714 = !{!4715, !4716}
!4715 = !DILocalVariable(name: "f_to", arg: 1, scope: !4713, file: !124, line: 736, type: !240)
!4716 = !DILocalVariable(name: "new_to", scope: !4717, file: !124, line: 744, type: !240)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !124, line: 740, column: 38)
!4718 = distinct !DILexicalBlock(scope: !4713, file: !124, line: 740, column: 7)
!4719 = !DILocation(line: 736, column: 35, scope: !4713)
!4720 = !DILocation(line: 383, column: 42, scope: !2838, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 740, column: 7, scope: !4718)
!4722 = !DILocation(line: 386, column: 26, scope: !2845, inlinedAt: !4721)
!4723 = !DILocation(line: 386, column: 26, scope: !2843, inlinedAt: !4721)
!4724 = !DILocation(line: 386, column: 20, scope: !2838, inlinedAt: !4721)
!4725 = !DILocation(line: 387, column: 23, scope: !2838, inlinedAt: !4721)
!4726 = !DILocation(line: 387, column: 7, scope: !2838, inlinedAt: !4721)
!4727 = !DILocation(line: 392, column: 12, scope: !2850, inlinedAt: !4721)
!4728 = !DILocation(line: 392, column: 27, scope: !2855, inlinedAt: !4721)
!4729 = !DILocation(line: 392, column: 3, scope: !2850, inlinedAt: !4721)
!4730 = !DILocation(line: 394, column: 14, scope: !2854, inlinedAt: !4721)
!4731 = !DILocation(line: 394, column: 31, scope: !2854, inlinedAt: !4721)
!4732 = !DILocation(line: 394, column: 40, scope: !2854, inlinedAt: !4721)
!4733 = !DILocation(line: 390, column: 21, scope: !2838, inlinedAt: !4721)
!4734 = !DILocation(line: 395, column: 5, scope: !2852, inlinedAt: !4721)
!4735 = !DILocation(line: 391, column: 15, scope: !2838, inlinedAt: !4721)
!4736 = !DILocation(line: 0, scope: !2853, inlinedAt: !4721)
!4737 = !DILocation(line: 395, column: 5, scope: !2853, inlinedAt: !4721)
!4738 = !DILocation(line: 395, column: 5, scope: !2858, inlinedAt: !4721)
!4739 = !DILocation(line: 400, column: 16, scope: !2879, inlinedAt: !4721)
!4740 = !DILocation(line: 400, column: 11, scope: !2880, inlinedAt: !4721)
!4741 = !DILocation(line: 392, column: 43, scope: !2855, inlinedAt: !4721)
!4742 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 744, column: 26, scope: !4717)
!4747 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4743)
!4748 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4744)
!4749 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !4745)
!4750 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !4746)
!4751 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !4746)
!4752 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !4746)
!4754 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !4753)
!4755 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !4753)
!4756 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !4746)
!4757 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !4746)
!4758 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !4746)
!4759 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !4746)
!4761 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !4760)
!4762 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !4760)
!4763 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !4764)
!4764 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !4760)
!4765 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !4764)
!4766 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !4764)
!4767 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !4764)
!4768 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !4764)
!4769 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !4764)
!4770 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !4760)
!4772 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4771)
!4773 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4771)
!4774 = !DILocation(line: 744, column: 17, scope: !4717)
!4775 = !DILocation(line: 746, column: 16, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4717, file: !124, line: 746, column: 9)
!4777 = !DILocation(line: 746, column: 9, scope: !4717)
!4778 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 747, column: 11, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !124, line: 747, column: 11)
!4783 = distinct !DILexicalBlock(scope: !4776, file: !124, line: 746, column: 25)
!4784 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4779)
!4785 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4780)
!4786 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !4781)
!4787 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 747, column: 33, scope: !4782)
!4791 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4788)
!4792 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4789)
!4793 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4790)
!4794 = !DILocation(line: 747, column: 30, scope: !4782)
!4795 = !DILocation(line: 747, column: 11, scope: !4783)
!4796 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 751, column: 20, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4782, file: !124, line: 750, column: 14)
!4801 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4797)
!4802 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4798)
!4803 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4799)
!4804 = !DILocation(line: 753, column: 5, scope: !4783)
!4805 = !DILocation(line: 0, scope: !4717)
!4806 = !DILocation(line: 756, column: 5, scope: !4717)
!4807 = !DILocation(line: 758, column: 5, scope: !4717)
!4808 = !DILocation(line: 401, column: 33, scope: !2888, inlinedAt: !4721)
!4809 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 401, column: 9, scope: !2888, inlinedAt: !4721)
!4811 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !4810)
!4812 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !4810)
!4813 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !4810)
!4815 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !4814)
!4816 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !4814)
!4817 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !4814)
!4818 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !4814)
!4819 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !4814)
!4820 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !4810)
!4822 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4821)
!4823 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4821)
!4824 = !DILocation(line: 762, column: 3, scope: !4713)
!4825 = !DILocation(line: 765, column: 3, scope: !4713)
!4826 = !DILocation(line: 0, scope: !4713)
!4827 = !DILocation(line: 766, column: 1, scope: !4713)
!4828 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 768, type: !4829, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4834)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!48, !4831, !31}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!29, !31}
!4834 = !{!4835, !4836}
!4835 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4828, file: !124, line: 768, type: !4831)
!4836 = !DILocalVariable(name: "state", arg: 2, scope: !4828, file: !124, line: 768, type: !31)
!4837 = !DILocation(line: 768, column: 42, scope: !4828)
!4838 = !DILocation(line: 768, column: 77, scope: !4828)
!4839 = !DILocation(line: 770, column: 7, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4828, file: !124, line: 770, column: 7)
!4841 = !DILocation(line: 770, column: 7, scope: !4828)
!4842 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !4845)
!4845 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !4846)
!4846 = distinct !DILocation(line: 771, column: 12, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4840, file: !124, line: 770, column: 28)
!4848 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4843)
!4849 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4844)
!4850 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !4845)
!4851 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !4846)
!4853 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4852)
!4854 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !4846)
!4855 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !4846)
!4856 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !4846)
!4861 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4857)
!4862 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4858)
!4863 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !4859)
!4864 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !4860)
!4865 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !4860)
!4866 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !4860)
!4868 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !4867)
!4869 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !4867)
!4870 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !4860)
!4871 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !4860)
!4872 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !4860)
!4873 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !4860)
!4875 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !4874)
!4876 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !4874)
!4877 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !4874)
!4879 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !4878)
!4880 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !4878)
!4881 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !4878)
!4882 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !4878)
!4883 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !4878)
!4884 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !4874)
!4886 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4885)
!4887 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4885)
!4888 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !4846)
!4889 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !4846)
!4890 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !4846)
!4891 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !4846)
!4895 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4892)
!4896 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4893)
!4897 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !4894)
!4898 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !4846)
!4902 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4899)
!4903 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4900)
!4904 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4901)
!4905 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !4846)
!4906 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !4846)
!4907 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4909)
!4909 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !4910)
!4910 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !4846)
!4911 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4908)
!4912 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4909)
!4913 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !4910)
!4914 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !4846)
!4915 = !DILocation(line: 0, scope: !1010, inlinedAt: !4846)
!4916 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !4846)
!4917 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !4846)
!4918 = !DILocation(line: 771, column: 5, scope: !4847)
!4919 = !DILocation(line: 0, scope: !4828)
!4920 = !DILocation(line: 774, column: 1, scope: !4828)
!4921 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 776, type: !4922, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4924)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!48, !240, !4831, !31}
!4924 = !{!4925, !4926, !4927}
!4925 = !DILocalVariable(name: "fib", arg: 1, scope: !4921, file: !124, line: 776, type: !240)
!4926 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4921, file: !124, line: 776, type: !4831)
!4927 = !DILocalVariable(name: "state", arg: 3, scope: !4921, file: !124, line: 776, type: !31)
!4928 = !DILocation(line: 776, column: 47, scope: !4921)
!4929 = !DILocation(line: 776, column: 62, scope: !4921)
!4930 = !DILocation(line: 776, column: 97, scope: !4921)
!4931 = !DILocation(line: 778, column: 7, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4921, file: !124, line: 778, column: 7)
!4933 = !DILocation(line: 778, column: 7, scope: !4921)
!4934 = !DILocation(line: 779, column: 12, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4932, file: !124, line: 778, column: 28)
!4936 = !DILocation(line: 779, column: 5, scope: !4935)
!4937 = !DILocation(line: 0, scope: !4921)
!4938 = !DILocation(line: 782, column: 1, scope: !4921)
!4939 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 784, type: !1030, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4940)
!4940 = !{!4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957}
!4941 = !DILocalVariable(name: "curr", scope: !4939, file: !124, line: 787, type: !240)
!4942 = !DILocalVariable(name: "size", scope: !4939, file: !124, line: 790, type: !25)
!4943 = !DILocalVariable(name: "alloc_size", scope: !4939, file: !124, line: 790, type: !25)
!4944 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4939, file: !124, line: 791, type: !25)
!4945 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4939, file: !124, line: 792, type: !25)
!4946 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4939, file: !124, line: 793, type: !25)
!4947 = !DILocalVariable(name: "child_stack", scope: !4939, file: !124, line: 794, type: !31)
!4948 = !DILocalVariable(name: "rsp", scope: !4939, file: !124, line: 795, type: !25)
!4949 = !DILocalVariable(name: "rbp0", scope: !4939, file: !124, line: 800, type: !31)
!4950 = !DILocalVariable(name: "rbp1", scope: !4939, file: !124, line: 801, type: !31)
!4951 = !DILocalVariable(name: "rbp_tos", scope: !4939, file: !124, line: 802, type: !31)
!4952 = !DILocalVariable(name: "ret0_addr", scope: !4939, file: !124, line: 803, type: !31)
!4953 = !DILocalVariable(name: "rbp_stash_addr", scope: !4939, file: !124, line: 815, type: !31)
!4954 = !DILocalVariable(name: "new", scope: !4939, file: !124, line: 831, type: !240)
!4955 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4939, file: !124, line: 847, type: !75)
!4956 = !DILocalVariable(name: "rbp2_ptr", scope: !4939, file: !124, line: 851, type: !75)
!4957 = !DILocalVariable(name: "ret2_ptr", scope: !4939, file: !124, line: 852, type: !75)
!4958 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 787, column: 22, scope: !4939)
!4962 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !4959)
!4963 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !4960)
!4964 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !4961)
!4965 = !DILocation(line: 787, column: 15, scope: !4939)
!4966 = !DILocation(line: 798, column: 3, scope: !4939)
!4967 = !{i32 23631}
!4968 = !DILocation(line: 795, column: 16, scope: !4939)
!4969 = !DILocation(line: 800, column: 21, scope: !4939)
!4970 = !DILocation(line: 800, column: 9, scope: !4939)
!4971 = !DILocation(line: 801, column: 21, scope: !4939)
!4972 = !DILocation(line: 801, column: 9, scope: !4939)
!4973 = !DILocation(line: 802, column: 21, scope: !4939)
!4974 = !DILocation(line: 802, column: 9, scope: !4939)
!4975 = !DILocation(line: 803, column: 26, scope: !4939)
!4976 = !DILocation(line: 803, column: 9, scope: !4939)
!4977 = !DILocation(line: 805, column: 44, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4939, file: !124, line: 805, column: 7)
!4979 = !DILocation(line: 805, column: 25, scope: !4978)
!4980 = !DILocation(line: 0, scope: !4939)
!4981 = !DILocation(line: 806, column: 46, scope: !4978)
!4982 = !DILocation(line: 806, column: 20, scope: !4978)
!4983 = !DILocation(line: 805, column: 50, scope: !4978)
!4984 = !DILocation(line: 815, column: 36, scope: !4939)
!4985 = !DILocation(line: 815, column: 9, scope: !4939)
!4986 = !DILocation(line: 821, column: 19, scope: !4939)
!4987 = !DILocation(line: 821, column: 24, scope: !4939)
!4988 = !DILocation(line: 790, column: 12, scope: !4939)
!4989 = !DILocation(line: 822, column: 37, scope: !4939)
!4990 = !DILocation(line: 791, column: 16, scope: !4939)
!4991 = !DILocation(line: 792, column: 16, scope: !4939)
!4992 = !DILocation(line: 825, column: 32, scope: !4939)
!4993 = !DILocation(line: 825, column: 57, scope: !4939)
!4994 = !DILocation(line: 793, column: 16, scope: !4939)
!4995 = !DILocation(line: 790, column: 18, scope: !4939)
!4996 = !DILocation(line: 831, column: 3, scope: !4939)
!4997 = !DILocation(line: 831, column: 15, scope: !4939)
!4998 = !DILocation(line: 832, column: 3, scope: !4939)
!4999 = !DILocation(line: 835, column: 15, scope: !4939)
!5000 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !5001)
!5001 = distinct !DILocation(line: 835, column: 3, scope: !4939)
!5002 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !5001)
!5003 = !DILocation(line: 115, column: 8, scope: !658, inlinedAt: !5001)
!5004 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !5001)
!5005 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !5001)
!5006 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !5001)
!5007 = !DILocation(line: 837, column: 17, scope: !4939)
!5008 = !DILocation(line: 837, column: 22, scope: !4939)
!5009 = !DILocation(line: 794, column: 17, scope: !4939)
!5010 = !DILocation(line: 839, column: 22, scope: !4939)
!5011 = !DILocation(line: 839, column: 35, scope: !4939)
!5012 = !DILocation(line: 839, column: 3, scope: !4939)
!5013 = !DILocation(line: 840, column: 57, scope: !4939)
!5014 = !DILocation(line: 840, column: 14, scope: !4939)
!5015 = !DILocation(line: 840, column: 3, scope: !4939)
!5016 = !DILocation(line: 840, column: 8, scope: !4939)
!5017 = !DILocation(line: 840, column: 12, scope: !4939)
!5018 = !DILocation(line: 847, column: 35, scope: !4939)
!5019 = !DILocation(line: 847, column: 40, scope: !4939)
!5020 = !DILocation(line: 847, column: 78, scope: !4939)
!5021 = !DILocation(line: 847, column: 26, scope: !4939)
!5022 = !DILocation(line: 847, column: 10, scope: !4939)
!5023 = !DILocation(line: 848, column: 37, scope: !4939)
!5024 = !DILocation(line: 848, column: 20, scope: !4939)
!5025 = !DILocation(line: 848, column: 18, scope: !4939)
!5026 = !DILocation(line: 851, column: 30, scope: !4939)
!5027 = !DILocation(line: 851, column: 35, scope: !4939)
!5028 = !DILocation(line: 851, column: 39, scope: !4939)
!5029 = !DILocation(line: 851, column: 68, scope: !4939)
!5030 = !DILocation(line: 851, column: 21, scope: !4939)
!5031 = !DILocation(line: 851, column: 10, scope: !4939)
!5032 = !DILocation(line: 852, column: 29, scope: !4939)
!5033 = !DILocation(line: 852, column: 10, scope: !4939)
!5034 = !DILocation(line: 861, column: 13, scope: !4939)
!5035 = !DILocation(line: 868, column: 16, scope: !4939)
!5036 = !DILocation(line: 868, column: 21, scope: !4939)
!5037 = !DILocation(line: 868, column: 24, scope: !4939)
!5038 = !DILocation(line: 868, column: 4, scope: !4939)
!5039 = !DILocation(line: 868, column: 41, scope: !4939)
!5040 = !DILocation(line: 871, column: 16, scope: !4939)
!5041 = !DILocation(line: 663, column: 30, scope: !2302, inlinedAt: !5042)
!5042 = distinct !DILocation(line: 871, column: 3, scope: !4939)
!5043 = !DILocation(line: 663, column: 41, scope: !2302, inlinedAt: !5042)
!5044 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 666, column: 30, scope: !2302, inlinedAt: !5042)
!5048 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5045)
!5049 = !DILocation(line: 666, column: 16, scope: !2302, inlinedAt: !5042)
!5050 = !DILocation(line: 0, scope: !2302, inlinedAt: !5042)
!5051 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 674, column: 41, scope: !2302, inlinedAt: !5042)
!5055 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5052)
!5056 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !5053)
!5057 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !5054)
!5058 = !DILocation(line: 674, column: 21, scope: !2302, inlinedAt: !5042)
!5059 = !DILocation(line: 678, column: 6, scope: !2302, inlinedAt: !5042)
!5060 = !DILocation(line: 678, column: 15, scope: !2302, inlinedAt: !5042)
!5061 = !DILocation(line: 679, column: 22, scope: !2302, inlinedAt: !5042)
!5062 = !DILocation(line: 116, column: 52, scope: !2373, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 679, column: 3, scope: !2302, inlinedAt: !5042)
!5064 = !DILocation(line: 116, column: 76, scope: !2373, inlinedAt: !5063)
!5065 = !DILocation(line: 118, column: 25, scope: !2373, inlinedAt: !5063)
!5066 = !DILocation(line: 85, column: 49, scope: !2381, inlinedAt: !5067)
!5067 = distinct !DILocation(line: 118, column: 2, scope: !2373, inlinedAt: !5063)
!5068 = !DILocation(line: 86, column: 28, scope: !2381, inlinedAt: !5067)
!5069 = !DILocation(line: 87, column: 28, scope: !2381, inlinedAt: !5067)
!5070 = !DILocation(line: 89, column: 13, scope: !2381, inlinedAt: !5067)
!5071 = !DILocation(line: 90, column: 8, scope: !2381, inlinedAt: !5067)
!5072 = !DILocation(line: 90, column: 13, scope: !2381, inlinedAt: !5067)
!5073 = !DILocation(line: 91, column: 8, scope: !2381, inlinedAt: !5067)
!5074 = !DILocation(line: 91, column: 13, scope: !2381, inlinedAt: !5067)
!5075 = !DILocation(line: 92, column: 8, scope: !2381, inlinedAt: !5067)
!5076 = !DILocation(line: 92, column: 13, scope: !2381, inlinedAt: !5067)
!5077 = !DILocation(line: 683, column: 20, scope: !2399, inlinedAt: !5042)
!5078 = !DILocation(line: 683, column: 7, scope: !2399, inlinedAt: !5042)
!5079 = !DILocation(line: 683, column: 7, scope: !2302, inlinedAt: !5042)
!5080 = !DILocation(line: 687, column: 5, scope: !2403, inlinedAt: !5042)
!5081 = !DILocation(line: 688, column: 3, scope: !2403, inlinedAt: !5042)
!5082 = !DILocation(line: 873, column: 10, scope: !4939)
!5083 = !DILocation(line: 874, column: 1, scope: !4939)
!5084 = !DILocation(line: 873, column: 3, scope: !4939)
!5085 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 877, type: !2663, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !5086)
!5086 = !{!5087, !5088, !5089}
!5087 = !DILocalVariable(name: "wait_on", arg: 1, scope: !5085, file: !124, line: 877, type: !240)
!5088 = !DILocalVariable(name: "curr_fiber", scope: !5085, file: !124, line: 887, type: !240)
!5089 = !DILocalVariable(name: "wait_q", scope: !5085, file: !124, line: 896, type: !150)
!5090 = !DILocation(line: 877, column: 31, scope: !5085)
!5091 = !DILocation(line: 883, column: 8, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5085, file: !124, line: 883, column: 7)
!5093 = !DILocation(line: 883, column: 7, scope: !5085)
!5094 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5095)
!5095 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 887, column: 28, scope: !5085)
!5098 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5095)
!5099 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !5096)
!5100 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !5097)
!5101 = !DILocation(line: 887, column: 15, scope: !5085)
!5102 = !DILocation(line: 896, column: 41, scope: !5085)
!5103 = !DILocation(line: 896, column: 21, scope: !5085)
!5104 = !DILocation(line: 897, column: 31, scope: !5085)
!5105 = !DILocation(line: 116, column: 52, scope: !2373, inlinedAt: !5106)
!5106 = distinct !DILocation(line: 897, column: 3, scope: !5085)
!5107 = !DILocation(line: 116, column: 76, scope: !2373, inlinedAt: !5106)
!5108 = !DILocation(line: 118, column: 25, scope: !2373, inlinedAt: !5106)
!5109 = !DILocation(line: 85, column: 49, scope: !2381, inlinedAt: !5110)
!5110 = distinct !DILocation(line: 118, column: 2, scope: !2373, inlinedAt: !5106)
!5111 = !DILocation(line: 86, column: 28, scope: !2381, inlinedAt: !5110)
!5112 = !DILocation(line: 87, column: 28, scope: !2381, inlinedAt: !5110)
!5113 = !DILocation(line: 89, column: 13, scope: !2381, inlinedAt: !5110)
!5114 = !DILocation(line: 90, column: 8, scope: !2381, inlinedAt: !5110)
!5115 = !DILocation(line: 90, column: 13, scope: !2381, inlinedAt: !5110)
!5116 = !DILocation(line: 91, column: 8, scope: !2381, inlinedAt: !5110)
!5117 = !DILocation(line: 91, column: 13, scope: !2381, inlinedAt: !5110)
!5118 = !DILocation(line: 92, column: 8, scope: !2381, inlinedAt: !5110)
!5119 = !DILocation(line: 92, column: 13, scope: !2381, inlinedAt: !5110)
!5120 = !DILocation(line: 898, column: 12, scope: !5085)
!5121 = !DILocation(line: 898, column: 20, scope: !5085)
!5122 = !DILocation(line: 899, column: 15, scope: !5085)
!5123 = !DILocation(line: 899, column: 24, scope: !5085)
!5124 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5125)
!5125 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5126)
!5126 = distinct !DILocation(line: 98, column: 10, scope: !1007, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 704, column: 7, scope: !1009, inlinedAt: !5128)
!5128 = distinct !DILocation(line: 903, column: 10, scope: !5085)
!5129 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5125)
!5130 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !5126)
!5131 = !DILocation(line: 98, column: 30, scope: !1007, inlinedAt: !5127)
!5132 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !5133)
!5133 = distinct !DILocation(line: 704, column: 30, scope: !1009, inlinedAt: !5128)
!5134 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !5133)
!5135 = !DILocation(line: 704, column: 27, scope: !1009, inlinedAt: !5128)
!5136 = !DILocation(line: 704, column: 7, scope: !1010, inlinedAt: !5128)
!5137 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5138)
!5138 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 105, column: 12, scope: !1025, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 122, column: 41, scope: !1029, inlinedAt: !5141)
!5141 = distinct !DILocation(line: 708, column: 22, scope: !1010, inlinedAt: !5128)
!5142 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5138)
!5143 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !5139)
!5144 = !DILocation(line: 105, column: 32, scope: !1025, inlinedAt: !5140)
!5145 = !DILocation(line: 122, column: 21, scope: !1029, inlinedAt: !5141)
!5146 = !DILocation(line: 125, column: 15, scope: !1029, inlinedAt: !5141)
!5147 = !DILocation(line: 184, column: 54, scope: !1052, inlinedAt: !5148)
!5148 = distinct !DILocation(line: 126, column: 9, scope: !1038, inlinedAt: !5141)
!5149 = !DILocation(line: 186, column: 15, scope: !1052, inlinedAt: !5148)
!5150 = !DILocation(line: 186, column: 20, scope: !1052, inlinedAt: !5148)
!5151 = !DILocation(line: 126, column: 7, scope: !1029, inlinedAt: !5141)
!5152 = !DILocation(line: 128, column: 25, scope: !1036, inlinedAt: !5141)
!5153 = !DILocation(line: 131, column: 40, scope: !1037, inlinedAt: !5141)
!5154 = !DILocation(line: 151, column: 52, scope: !1064, inlinedAt: !5155)
!5155 = distinct !DILocation(line: 131, column: 5, scope: !1037, inlinedAt: !5141)
!5156 = !DILocation(line: 153, column: 20, scope: !1064, inlinedAt: !5155)
!5157 = !DILocation(line: 153, column: 33, scope: !1064, inlinedAt: !5155)
!5158 = !DILocation(line: 128, column: 50, scope: !1071, inlinedAt: !5159)
!5159 = distinct !DILocation(line: 153, column: 2, scope: !1064, inlinedAt: !5155)
!5160 = !DILocation(line: 128, column: 75, scope: !1071, inlinedAt: !5159)
!5161 = !DILocation(line: 130, column: 8, scope: !1071, inlinedAt: !5159)
!5162 = !DILocation(line: 130, column: 13, scope: !1071, inlinedAt: !5159)
!5163 = !DILocation(line: 131, column: 8, scope: !1071, inlinedAt: !5159)
!5164 = !DILocation(line: 131, column: 13, scope: !1071, inlinedAt: !5159)
!5165 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !5166)
!5166 = distinct !DILocation(line: 154, column: 2, scope: !1064, inlinedAt: !5155)
!5167 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !5166)
!5168 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !5166)
!5169 = !DILocation(line: 708, column: 15, scope: !1010, inlinedAt: !5128)
!5170 = !DILocation(line: 718, column: 12, scope: !1089, inlinedAt: !5128)
!5171 = !DILocation(line: 718, column: 7, scope: !1010, inlinedAt: !5128)
!5172 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5173)
!5173 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5174)
!5174 = distinct !DILocation(line: 85, column: 10, scope: !1094, inlinedAt: !5175)
!5175 = distinct !DILocation(line: 719, column: 9, scope: !1096, inlinedAt: !5128)
!5176 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5173)
!5177 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !5174)
!5178 = !DILocation(line: 85, column: 30, scope: !1094, inlinedAt: !5175)
!5179 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5180)
!5180 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5181)
!5181 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !5182)
!5182 = distinct !DILocation(line: 719, column: 31, scope: !1096, inlinedAt: !5128)
!5183 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5180)
!5184 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !5181)
!5185 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !5182)
!5186 = !DILocation(line: 719, column: 28, scope: !1096, inlinedAt: !5128)
!5187 = !DILocation(line: 719, column: 9, scope: !1097, inlinedAt: !5128)
!5188 = !DILocation(line: 129, column: 25, scope: !996, inlinedAt: !5189)
!5189 = distinct !DILocation(line: 78, column: 10, scope: !1001, inlinedAt: !5190)
!5190 = distinct !DILocation(line: 92, column: 10, scope: !1104, inlinedAt: !5191)
!5191 = distinct !DILocation(line: 723, column: 16, scope: !1115, inlinedAt: !5128)
!5192 = !DILocation(line: 129, column: 12, scope: !996, inlinedAt: !5189)
!5193 = !DILocation(line: 78, column: 21, scope: !1001, inlinedAt: !5190)
!5194 = !DILocation(line: 92, column: 30, scope: !1104, inlinedAt: !5191)
!5195 = !DILocation(line: 725, column: 3, scope: !1097, inlinedAt: !5128)
!5196 = !DILocation(line: 0, scope: !1010, inlinedAt: !5128)
!5197 = !DILocation(line: 727, column: 10, scope: !1010, inlinedAt: !5128)
!5198 = !DILocation(line: 727, column: 3, scope: !1010, inlinedAt: !5128)
!5199 = !DILocation(line: 0, scope: !5085)
!5200 = !DILocation(line: 904, column: 1, scope: !5085)
