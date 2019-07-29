; ModuleID = 'src/test/fibers.bc'
source_filename = "src/test/fibers.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_virtual_console = type opaque
%struct.shell_cmd_impl = type { i8*, i8*, i32 (i8*, i8*)* }
%struct.nk_fiber = type { i64, i8*, i16, i64, i64, i32, i32, %struct.nk_virtual_console*, i32, %struct.list_head, %struct.list_head, i32, %struct.list_head, void (i8*, i8**)*, i8*, i8**, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.nk_thread = type { i64, i8*, i16, i16, i64, i64, i32, %struct.nk_thread*, %struct.list_head, %struct.list_head, i64, %struct.nk_wait_queue*, i32, %struct.nk_timer*, i32, i32, i32, i32, i8, i8**, i8*, i8*, void (i8*, i8**)*, %struct.nk_sched_thread_state*, %struct.nk_virtual_console*, [32 x i8], [256 x i8*], [32 x i8], [4096 x i8] }
%struct.nk_wait_queue = type opaque
%struct.nk_timer = type opaque
%struct.nk_sched_thread_state = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Curr: %d\0A\00", align 1
@vc = dso_local local_unnamed_addr global %struct.nk_virtual_console* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"Fiber inner a = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Fiber inner is finished, a = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Fiber outer a = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Fiber outer is finished, a = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Fiber 4 a = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Fiber 4 is finished, a = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Fiber 3 a = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Fiber 3 is finished, a = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Fiber 1 a = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Fiber 1 is finished, a = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Fiber 2 a = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Fiber 2 is finished, a = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Fiber even, counter = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Fiber even is finished\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Fiber odd, counter = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Fiber odd is finished\0A\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"Fiber_first() : a = %d and yielding to fiber_second = %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"Fiber_second() : a = %d and yielding to fiber_third = %p\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"fiber_third() : a = %d and yielding to fiber_fourth = %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"fiber 3 is finished, a = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"fiber_fourth() : a = %d and yielding to fiber_first = %p\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"fiber 4 is finished, a = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"fiber_fork() : This is the %dth iteration of fiber %p\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"fiber_fork_join() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"fiber %p is finished, a = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"fiber_routine2() : Fiber created\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"fiber_routine1() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"fiber_routine1() : fiber is finished, a = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"fiber_routine3() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"fiber_routine3() : fiber is finished, a = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"First Timer is finished, a = %d, cycle count = %d, cycles per iteration = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Second Timer is finished, a = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"test_nested_fibers() : virtual console %p\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"test_fibers() : virtual console %p\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"test_yield_to() : virtual console %p\0A\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"test_fiber_join() : virtual console %p\0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"test_fiber_fork() : virtual console %p\0A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"test_fiber_fork_join() : virtual console %p\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"test_fiber_routine() : virtual console %p\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"test_fiber_routine_2() : virtual console %p\0A\00", align 1
@fibers_impl = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers }, align 8, !dbg !161
@_nk_cmd_fibers_impl = internal global %struct.shell_cmd_impl* @fibers_impl, section ".shell_cmds", align 8, !dbg !130
@fibers_impl2 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers2 }, align 8, !dbg !163
@_nk_cmd_fibers_impl2 = internal global %struct.shell_cmd_impl* @fibers_impl2, section ".shell_cmds", align 8, !dbg !143
@fibers_impl3 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers3 }, align 8, !dbg !165
@_nk_cmd_fibers_impl3 = internal global %struct.shell_cmd_impl* @fibers_impl3, section ".shell_cmds", align 8, !dbg !145
@fibers_impl4 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers4 }, align 8, !dbg !167
@_nk_cmd_fibers_impl4 = internal global %struct.shell_cmd_impl* @fibers_impl4, section ".shell_cmds", align 8, !dbg !147
@fibers_impl5 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers5 }, align 8, !dbg !169
@_nk_cmd_fibers_impl5 = internal global %struct.shell_cmd_impl* @fibers_impl5, section ".shell_cmds", align 8, !dbg !149
@fibers_impl6 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers6 }, align 8, !dbg !171
@_nk_cmd_fibers_impl6 = internal global %struct.shell_cmd_impl* @fibers_impl6, section ".shell_cmds", align 8, !dbg !151
@fibers_impl7 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers7 }, align 8, !dbg !173
@_nk_cmd_fibers_impl7 = internal global %struct.shell_cmd_impl* @fibers_impl7, section ".shell_cmds", align 8, !dbg !153
@fibers_impl8 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers8 }, align 8, !dbg !175
@_nk_cmd_fibers_impl8 = internal global %struct.shell_cmd_impl* @fibers_impl8, section ".shell_cmds", align 8, !dbg !155
@fibers_impl9 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers9 }, align 8, !dbg !177
@_nk_cmd_fibers_impl9 = internal global %struct.shell_cmd_impl* @fibers_impl9, section ".shell_cmds", align 8, !dbg !157
@fibers_impl10 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers10 }, align 8, !dbg !179
@_nk_cmd_fibers_impl10 = internal global %struct.shell_cmd_impl* @fibers_impl10, section ".shell_cmds", align 8, !dbg !159
@.str.41 = private unnamed_addr constant [10 x i8] c"fibertest\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"fibertest2\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"fibertest3\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"fibertest4\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"fibertest5\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"fibertest6\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"fibertest7\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"fibertest8\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"fibertest9\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"fibertime1\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl10 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl2 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl3 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl4 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl5 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl6 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl7 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl8 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl9 to i8*)], section "llvm.metadata"

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 !dbg !186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !195
  %2 = icmp sgt i32 %0, 0, !dbg !196
  br i1 %2, label %3, label %8, !dbg !199

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !191, metadata !DIExpression()), !dbg !195
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #4, !dbg !200
  %6 = add nuw nsw i32 %4, 1, !dbg !202
  call void @llvm.dbg.value(metadata i32 %4, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 %6, metadata !191, metadata !DIExpression()), !dbg !195
  %7 = icmp eq i32 %6, %0, !dbg !196
  br i1 %7, label %8, label %3, !dbg !199, !llvm.loop !203

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %9, metadata !192, metadata !DIExpression()), !dbg !194
  ret i32 %9, !dbg !206
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !207 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !209, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i8** undef, metadata !210, metadata !DIExpression()), !dbg !213
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !214
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 0, metadata !211, metadata !DIExpression()), !dbg !216
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #4, !dbg !217
  %5 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 1, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 1, metadata !211, metadata !DIExpression()), !dbg !216
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #4, !dbg !217
  %7 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 2, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 2, metadata !211, metadata !DIExpression()), !dbg !216
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #4, !dbg !217
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 3, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 3, metadata !211, metadata !DIExpression()), !dbg !216
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #4, !dbg !217
  %11 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 4, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 4, metadata !211, metadata !DIExpression()), !dbg !216
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #4, !dbg !217
  %13 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 5, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 5, metadata !211, metadata !DIExpression()), !dbg !216
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #4, !dbg !217
  %15 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 6, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 6, metadata !211, metadata !DIExpression()), !dbg !216
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #4, !dbg !217
  %17 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 7, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 7, metadata !211, metadata !DIExpression()), !dbg !216
  %18 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #4, !dbg !217
  %19 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 8, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 8, metadata !211, metadata !DIExpression()), !dbg !216
  %20 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #4, !dbg !217
  %21 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 9, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 9, metadata !211, metadata !DIExpression()), !dbg !216
  %22 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #4, !dbg !217
  %23 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 10, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 10, metadata !211, metadata !DIExpression()), !dbg !216
  %24 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !220
  ret void, !dbg !221
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield(...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !222 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !224, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i8** undef, metadata !225, metadata !DIExpression()), !dbg !230
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !231
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !232
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !233
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !233
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !235
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !227, metadata !DIExpression(DW_OP_deref)), !dbg !236
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !237
  %8 = call i32 (...) @nk_fiber_yield() #4, !dbg !238
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !239
  call void @llvm.dbg.value(metadata i32 1, metadata !226, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32 1, metadata !226, metadata !DIExpression()), !dbg !233
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !235
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !227, metadata !DIExpression(DW_OP_deref)), !dbg !236
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !237
  %11 = call i32 (...) @nk_fiber_yield() #4, !dbg !238
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !239
  call void @llvm.dbg.value(metadata i32 2, metadata !226, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32 2, metadata !226, metadata !DIExpression()), !dbg !233
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !235
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !227, metadata !DIExpression(DW_OP_deref)), !dbg !236
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !237
  %14 = call i32 (...) @nk_fiber_yield() #4, !dbg !238
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !239
  call void @llvm.dbg.value(metadata i32 3, metadata !226, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32 3, metadata !226, metadata !DIExpression()), !dbg !233
  %15 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !240
  ret void, !dbg !241
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !242 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !244, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8** undef, metadata !245, metadata !DIExpression()), !dbg !248
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !249
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !251
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #4, !dbg !252
  %5 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 1, metadata !246, metadata !DIExpression()), !dbg !251
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #4, !dbg !252
  %7 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 2, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 2, metadata !246, metadata !DIExpression()), !dbg !251
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #4, !dbg !252
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 3, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 3, metadata !246, metadata !DIExpression()), !dbg !251
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #4, !dbg !252
  %11 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 4, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 4, metadata !246, metadata !DIExpression()), !dbg !251
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #4, !dbg !252
  %13 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 5, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 5, metadata !246, metadata !DIExpression()), !dbg !251
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #4, !dbg !252
  %15 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 6, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 6, metadata !246, metadata !DIExpression()), !dbg !251
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #4, !dbg !252
  %17 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 7, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 7, metadata !246, metadata !DIExpression()), !dbg !251
  %18 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #4, !dbg !252
  %19 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 8, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 8, metadata !246, metadata !DIExpression()), !dbg !251
  %20 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #4, !dbg !252
  %21 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 9, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 9, metadata !246, metadata !DIExpression()), !dbg !251
  %22 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #4, !dbg !252
  %23 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 10, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 10, metadata !246, metadata !DIExpression()), !dbg !251
  %24 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !257 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !259, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8** undef, metadata !260, metadata !DIExpression()), !dbg !265
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !266
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !267
  call void @llvm.dbg.value(metadata i32 0, metadata !261, metadata !DIExpression()), !dbg !268
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !261, metadata !DIExpression()), !dbg !268
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !269
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !270
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !262, metadata !DIExpression(DW_OP_deref)), !dbg !271
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !272
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !273
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !262, metadata !DIExpression()), !dbg !271
  %9 = call i32 @nk_fiber_join(%struct.nk_fiber* %8) #4, !dbg !274
  %10 = call i32 (...) @nk_fiber_yield() #4, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !276
  call void @llvm.dbg.value(metadata i32 1, metadata !261, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 1, metadata !261, metadata !DIExpression()), !dbg !268
  %11 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !269
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !270
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !262, metadata !DIExpression(DW_OP_deref)), !dbg !271
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !272
  %13 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !273
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !262, metadata !DIExpression()), !dbg !271
  %14 = call i32 @nk_fiber_join(%struct.nk_fiber* %13) #4, !dbg !274
  %15 = call i32 (...) @nk_fiber_yield() #4, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !276
  call void @llvm.dbg.value(metadata i32 2, metadata !261, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 2, metadata !261, metadata !DIExpression()), !dbg !268
  %16 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !269
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !270
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !262, metadata !DIExpression(DW_OP_deref)), !dbg !271
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !272
  %18 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !273
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %18, metadata !262, metadata !DIExpression()), !dbg !271
  %19 = call i32 @nk_fiber_join(%struct.nk_fiber* %18) #4, !dbg !274
  %20 = call i32 (...) @nk_fiber_yield() #4, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !276
  call void @llvm.dbg.value(metadata i32 3, metadata !261, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 3, metadata !261, metadata !DIExpression()), !dbg !268
  %21 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !277
  ret void, !dbg !278
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !279 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i8** undef, metadata !282, metadata !DIExpression()), !dbg !285
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !286
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !287
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !288
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #4, !dbg !289
  %5 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()), !dbg !288
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #4, !dbg !289
  %7 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 2, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 2, metadata !283, metadata !DIExpression()), !dbg !288
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #4, !dbg !289
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 3, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 3, metadata !283, metadata !DIExpression()), !dbg !288
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #4, !dbg !289
  %11 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 4, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 4, metadata !283, metadata !DIExpression()), !dbg !288
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #4, !dbg !289
  %13 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 5, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 5, metadata !283, metadata !DIExpression()), !dbg !288
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #4, !dbg !289
  %15 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 6, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 6, metadata !283, metadata !DIExpression()), !dbg !288
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #4, !dbg !289
  %17 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 7, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 7, metadata !283, metadata !DIExpression()), !dbg !288
  %18 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #4, !dbg !289
  %19 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 8, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 8, metadata !283, metadata !DIExpression()), !dbg !288
  %20 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #4, !dbg !289
  %21 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 9, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 9, metadata !283, metadata !DIExpression()), !dbg !288
  %22 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #4, !dbg !289
  %23 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.dbg.value(metadata i32 10, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 10, metadata !283, metadata !DIExpression()), !dbg !288
  %24 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #4, !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !294 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !296, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8** undef, metadata !297, metadata !DIExpression()), !dbg !301
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !302
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !303
  call void @llvm.dbg.value(metadata i32 0, metadata !298, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 0, metadata !298, metadata !DIExpression()), !dbg !304
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #4, !dbg !305
  %6 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !307
  call void @llvm.dbg.value(metadata i32 1, metadata !298, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 1, metadata !298, metadata !DIExpression()), !dbg !304
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #4, !dbg !305
  %8 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !307
  call void @llvm.dbg.value(metadata i32 2, metadata !298, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i32 2, metadata !298, metadata !DIExpression()), !dbg !304
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #4, !dbg !308
  %10 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !309
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !309
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !299, metadata !DIExpression(DW_OP_deref)), !dbg !310
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !312
  ret void, !dbg !312
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !313 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !315, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i8** undef, metadata !316, metadata !DIExpression()), !dbg !320
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !321
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !322
  call void @llvm.dbg.value(metadata i32 0, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !317, metadata !DIExpression()), !dbg !323
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #4, !dbg !324
  %6 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !326
  call void @llvm.dbg.value(metadata i32 1, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 1, metadata !317, metadata !DIExpression()), !dbg !323
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #4, !dbg !324
  %8 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !326
  call void @llvm.dbg.value(metadata i32 2, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 2, metadata !317, metadata !DIExpression()), !dbg !323
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #4, !dbg !324
  %10 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !326
  call void @llvm.dbg.value(metadata i32 3, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 3, metadata !317, metadata !DIExpression()), !dbg !323
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #4, !dbg !324
  %12 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !326
  call void @llvm.dbg.value(metadata i32 4, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 4, metadata !317, metadata !DIExpression()), !dbg !323
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #4, !dbg !324
  %14 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !326
  call void @llvm.dbg.value(metadata i32 5, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 5, metadata !317, metadata !DIExpression()), !dbg !323
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !327
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !328
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !328
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !318, metadata !DIExpression(DW_OP_deref)), !dbg !329
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !330
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !331
  ret void, !dbg !331
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !332 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !334, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i8** undef, metadata !335, metadata !DIExpression()), !dbg !339
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !340
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 0, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 0, metadata !336, metadata !DIExpression()), !dbg !342
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #4, !dbg !343
  %6 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 1, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 1, metadata !336, metadata !DIExpression()), !dbg !342
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #4, !dbg !343
  %8 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 2, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 2, metadata !336, metadata !DIExpression()), !dbg !342
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #4, !dbg !343
  %10 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 3, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 3, metadata !336, metadata !DIExpression()), !dbg !342
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #4, !dbg !343
  %12 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 4, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 4, metadata !336, metadata !DIExpression()), !dbg !342
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #4, !dbg !343
  %14 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 5, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 5, metadata !336, metadata !DIExpression()), !dbg !342
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #4, !dbg !343
  %16 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 6, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 6, metadata !336, metadata !DIExpression()), !dbg !342
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #4, !dbg !343
  %18 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 7, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 7, metadata !336, metadata !DIExpression()), !dbg !342
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #4, !dbg !343
  %20 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 8, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 8, metadata !336, metadata !DIExpression()), !dbg !342
  %21 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #4, !dbg !343
  %22 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 9, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 9, metadata !336, metadata !DIExpression()), !dbg !342
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #4, !dbg !343
  %24 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !345
  call void @llvm.dbg.value(metadata i32 10, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 10, metadata !336, metadata !DIExpression()), !dbg !342
  %25 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #4, !dbg !346
  %26 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !347
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #5, !dbg !347
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !337, metadata !DIExpression(DW_OP_deref)), !dbg !348
  %27 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !349
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #5, !dbg !350
  ret void, !dbg !350
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !351 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !353, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i8** undef, metadata !354, metadata !DIExpression()), !dbg !358
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !359
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !360
  call void @llvm.dbg.value(metadata i32 0, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 0, metadata !355, metadata !DIExpression()), !dbg !361
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #4, !dbg !362
  %5 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !367
  call void @llvm.dbg.value(metadata i32 1, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 1, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 2, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 2, metadata !355, metadata !DIExpression()), !dbg !361
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #4, !dbg !362
  %7 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !367
  call void @llvm.dbg.value(metadata i32 3, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 3, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 4, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 4, metadata !355, metadata !DIExpression()), !dbg !361
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #4, !dbg !362
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !367
  call void @llvm.dbg.value(metadata i32 5, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 5, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 6, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 6, metadata !355, metadata !DIExpression()), !dbg !361
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #4, !dbg !362
  %11 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !367
  call void @llvm.dbg.value(metadata i32 7, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 7, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 8, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 8, metadata !355, metadata !DIExpression()), !dbg !361
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #4, !dbg !362
  %13 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !367
  call void @llvm.dbg.value(metadata i32 9, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 9, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 10, metadata !355, metadata !DIExpression()), !dbg !361
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !370 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !372, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8** undef, metadata !373, metadata !DIExpression()), !dbg !377
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !378
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !379
  call void @llvm.dbg.value(metadata i32 0, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 0, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 1, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 1, metadata !374, metadata !DIExpression()), !dbg !380
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #4, !dbg !381
  %5 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !386
  call void @llvm.dbg.value(metadata i32 2, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 2, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 3, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 3, metadata !374, metadata !DIExpression()), !dbg !380
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #4, !dbg !381
  %7 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !386
  call void @llvm.dbg.value(metadata i32 4, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 4, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 5, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 5, metadata !374, metadata !DIExpression()), !dbg !380
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #4, !dbg !381
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !386
  call void @llvm.dbg.value(metadata i32 6, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 6, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 7, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 7, metadata !374, metadata !DIExpression()), !dbg !380
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #4, !dbg !381
  %11 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !386
  call void @llvm.dbg.value(metadata i32 8, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 8, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 9, metadata !374, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 9, metadata !374, metadata !DIExpression()), !dbg !380
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #4, !dbg !381
  %13 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !386
  call void @llvm.dbg.value(metadata i32 10, metadata !374, metadata !DIExpression()), !dbg !380
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !389 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !391, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8** undef, metadata !392, metadata !DIExpression()), !dbg !396
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !397
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !398
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !399
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !400
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !394, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !399
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !402
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !404
  call void @llvm.dbg.value(metadata i32 1, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i32 1, metadata !393, metadata !DIExpression()), !dbg !399
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !402
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !404
  call void @llvm.dbg.value(metadata i32 2, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i32 2, metadata !393, metadata !DIExpression()), !dbg !399
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !402
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !404
  call void @llvm.dbg.value(metadata i32 3, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i32 3, metadata !393, metadata !DIExpression()), !dbg !399
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !402
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !404
  call void @llvm.dbg.value(metadata i32 4, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i32 4, metadata !393, metadata !DIExpression()), !dbg !399
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !402
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !404
  call void @llvm.dbg.value(metadata i32 5, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i32 5, metadata !393, metadata !DIExpression()), !dbg !399
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !409, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i8** undef, metadata !410, metadata !DIExpression()), !dbg !414
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !415
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !416
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()), !dbg !417
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !418
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !412, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()), !dbg !417
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !420
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !422
  call void @llvm.dbg.value(metadata i32 1, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 1, metadata !411, metadata !DIExpression()), !dbg !417
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !420
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !422
  call void @llvm.dbg.value(metadata i32 2, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 2, metadata !411, metadata !DIExpression()), !dbg !417
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !420
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !422
  call void @llvm.dbg.value(metadata i32 3, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 3, metadata !411, metadata !DIExpression()), !dbg !417
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !420
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !422
  call void @llvm.dbg.value(metadata i32 4, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 4, metadata !411, metadata !DIExpression()), !dbg !417
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !420
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !422
  call void @llvm.dbg.value(metadata i32 5, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 5, metadata !411, metadata !DIExpression()), !dbg !417
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #4, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !427, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i8** undef, metadata !428, metadata !DIExpression()), !dbg !432
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !433
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !434
  call void @llvm.dbg.value(metadata i32 0, metadata !429, metadata !DIExpression()), !dbg !435
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !436
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !430, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 0, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 0, metadata !429, metadata !DIExpression()), !dbg !435
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !438
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !440
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !435
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !438
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !440
  call void @llvm.dbg.value(metadata i32 2, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 2, metadata !429, metadata !DIExpression()), !dbg !435
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !438
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !440
  call void @llvm.dbg.value(metadata i32 3, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 3, metadata !429, metadata !DIExpression()), !dbg !435
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !438
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !440
  call void @llvm.dbg.value(metadata i32 4, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 4, metadata !429, metadata !DIExpression()), !dbg !435
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !438
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !440
  call void @llvm.dbg.value(metadata i32 5, metadata !429, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 5, metadata !429, metadata !DIExpression()), !dbg !435
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #4, !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i8** undef, metadata !446, metadata !DIExpression()), !dbg !450
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !451
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !452
  call void @llvm.dbg.value(metadata i32 0, metadata !447, metadata !DIExpression()), !dbg !453
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !454
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !448, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 0, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 0, metadata !447, metadata !DIExpression()), !dbg !453
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !456
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !458
  call void @llvm.dbg.value(metadata i32 1, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 1, metadata !447, metadata !DIExpression()), !dbg !453
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !456
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !458
  call void @llvm.dbg.value(metadata i32 2, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 2, metadata !447, metadata !DIExpression()), !dbg !453
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !456
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !458
  call void @llvm.dbg.value(metadata i32 3, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 3, metadata !447, metadata !DIExpression()), !dbg !453
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !456
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !458
  call void @llvm.dbg.value(metadata i32 4, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 4, metadata !447, metadata !DIExpression()), !dbg !453
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !456
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !458
  call void @llvm.dbg.value(metadata i32 5, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 5, metadata !447, metadata !DIExpression()), !dbg !453
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !461 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !463, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i8** undef, metadata !464, metadata !DIExpression()), !dbg !468
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !469
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !470
  call void @llvm.dbg.value(metadata i32 0, metadata !465, metadata !DIExpression()), !dbg !471
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !472
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !466, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32 0, metadata !465, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 0, metadata !465, metadata !DIExpression()), !dbg !471
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #4, !dbg !474
  %6 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !476
  call void @llvm.dbg.value(metadata i32 1, metadata !465, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 1, metadata !465, metadata !DIExpression()), !dbg !471
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #4, !dbg !474
  %8 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !476
  call void @llvm.dbg.value(metadata i32 2, metadata !465, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 2, metadata !465, metadata !DIExpression()), !dbg !471
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #4, !dbg !474
  %10 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !476
  call void @llvm.dbg.value(metadata i32 3, metadata !465, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 3, metadata !465, metadata !DIExpression()), !dbg !471
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #4, !dbg !474
  %12 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !476
  call void @llvm.dbg.value(metadata i32 4, metadata !465, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 4, metadata !465, metadata !DIExpression()), !dbg !471
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #4, !dbg !474
  %14 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !476
  call void @llvm.dbg.value(metadata i32 5, metadata !465, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 5, metadata !465, metadata !DIExpression()), !dbg !471
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !479 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !481, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i8** undef, metadata !482, metadata !DIExpression()), !dbg !487
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !488
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !489
  call void @llvm.dbg.value(metadata i32 0, metadata !483, metadata !DIExpression()), !dbg !490
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !491
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !484, metadata !DIExpression()), !dbg !492
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !493
  br i1 %5, label %8, label %6, !dbg !495

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #4, !dbg !496
  br label %8, !dbg !498

; <label>:8:                                      ; preds = %2, %6
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !485, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 0, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 0, metadata !483, metadata !DIExpression()), !dbg !490
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !500
  %10 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !502
  call void @llvm.dbg.value(metadata i32 1, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 1, metadata !483, metadata !DIExpression()), !dbg !490
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !500
  %12 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !502
  call void @llvm.dbg.value(metadata i32 2, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 2, metadata !483, metadata !DIExpression()), !dbg !490
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !500
  %14 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !502
  call void @llvm.dbg.value(metadata i32 3, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 3, metadata !483, metadata !DIExpression()), !dbg !490
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !500
  %16 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !502
  call void @llvm.dbg.value(metadata i32 4, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 4, metadata !483, metadata !DIExpression()), !dbg !490
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !500
  %18 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !502
  call void @llvm.dbg.value(metadata i32 5, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 5, metadata !483, metadata !DIExpression()), !dbg !490
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #4, !dbg !503
  ret void, !dbg !504
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !505 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !507, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i8** undef, metadata !508, metadata !DIExpression()), !dbg !510
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !511
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !512
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !515 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !517, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i8** undef, metadata !518, metadata !DIExpression()), !dbg !527
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !528
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !529
  call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !530
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !531
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %5, metadata !520, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !521, metadata !DIExpression()), !dbg !533
  %6 = icmp eq %struct.nk_fiber* %5, null, !dbg !534
  br i1 %6, label %11, label %7, !dbg !535

; <label>:7:                                      ; preds = %26, %22, %18, %11, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !519, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 %8, metadata !519, metadata !DIExpression()), !dbg !530
  %9 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !536
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !536
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !523, metadata !DIExpression(DW_OP_deref)), !dbg !537
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #4, !dbg !538
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !539
  br label %15

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !540
  call void @llvm.dbg.value(metadata i32 1, metadata !519, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 1, metadata !519, metadata !DIExpression()), !dbg !530
  %13 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !531
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !520, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !521, metadata !DIExpression()), !dbg !533
  %14 = icmp eq %struct.nk_fiber* %13, null, !dbg !534
  br i1 %14, label %18, label %7, !dbg !535

; <label>:15:                                     ; preds = %30, %7
  %16 = phi i32 [ %8, %7 ], [ 5, %30 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !519, metadata !DIExpression()), !dbg !530
  %17 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %16) #4, !dbg !541
  ret void, !dbg !542

; <label>:18:                                     ; preds = %11
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !540
  call void @llvm.dbg.value(metadata i32 2, metadata !519, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 2, metadata !519, metadata !DIExpression()), !dbg !530
  %20 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !531
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !520, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !521, metadata !DIExpression()), !dbg !533
  %21 = icmp eq %struct.nk_fiber* %20, null, !dbg !534
  br i1 %21, label %22, label %7, !dbg !535

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !540
  call void @llvm.dbg.value(metadata i32 3, metadata !519, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 3, metadata !519, metadata !DIExpression()), !dbg !530
  %24 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !531
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !520, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !521, metadata !DIExpression()), !dbg !533
  %25 = icmp eq %struct.nk_fiber* %24, null, !dbg !534
  br i1 %25, label %26, label %7, !dbg !535

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !540
  call void @llvm.dbg.value(metadata i32 4, metadata !519, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 4, metadata !519, metadata !DIExpression()), !dbg !530
  %28 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !531
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %28, metadata !520, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !521, metadata !DIExpression()), !dbg !533
  %29 = icmp eq %struct.nk_fiber* %28, null, !dbg !534
  br i1 %29, label %30, label %7, !dbg !535

; <label>:30:                                     ; preds = %26
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !540
  call void @llvm.dbg.value(metadata i32 5, metadata !519, metadata !DIExpression()), !dbg !530
  br label %15, !dbg !541
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !543 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !545, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i8** undef, metadata !546, metadata !DIExpression()), !dbg !552
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !553
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !554
  call void @llvm.dbg.value(metadata i32 0, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 0, metadata !547, metadata !DIExpression()), !dbg !555
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !549, metadata !DIExpression()), !dbg !558
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !559
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()), !dbg !555
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !549, metadata !DIExpression()), !dbg !558
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !559
  call void @llvm.dbg.value(metadata i32 2, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 2, metadata !547, metadata !DIExpression()), !dbg !555
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !549, metadata !DIExpression()), !dbg !558
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !559
  call void @llvm.dbg.value(metadata i32 3, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 3, metadata !547, metadata !DIExpression()), !dbg !555
  %10 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %10, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !549, metadata !DIExpression()), !dbg !558
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !559
  call void @llvm.dbg.value(metadata i32 4, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 4, metadata !547, metadata !DIExpression()), !dbg !555
  %12 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !549, metadata !DIExpression()), !dbg !558
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !559
  call void @llvm.dbg.value(metadata i32 5, metadata !547, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 5, metadata !547, metadata !DIExpression()), !dbg !555
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #4, !dbg !560
  ret void, !dbg !561
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !562 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !564, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i8** undef, metadata !565, metadata !DIExpression()), !dbg !570
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !571
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !572
  call void @llvm.dbg.value(metadata i32 0, metadata !566, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i64 0, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !568, metadata !DIExpression()), !dbg !575
  br label %4, !dbg !576

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %19, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 %6, metadata !566, metadata !DIExpression()), !dbg !573
  %7 = icmp eq i32 %6, 2, !dbg !577
  br i1 %7, label %8, label %16, !dbg !580

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !581, !srcloc !591
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !581
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !581
  call void @llvm.dbg.value(metadata i32 %10, metadata !587, metadata !DIExpression()) #5, !dbg !592
  call void @llvm.dbg.value(metadata i32 %11, metadata !588, metadata !DIExpression()) #5, !dbg !593
  %12 = zext i32 %10 to i64, !dbg !594
  %13 = zext i32 %11 to i64, !dbg !595
  %14 = shl nuw i64 %13, 32, !dbg !596
  %15 = or i64 %14, %12, !dbg !597
  call void @llvm.dbg.value(metadata i64 %15, metadata !567, metadata !DIExpression()), !dbg !574
  br label %16, !dbg !598

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !599
  %18 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !600
  %19 = add nuw nsw i32 %6, 1, !dbg !601
  call void @llvm.dbg.value(metadata i64 %17, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 %19, metadata !566, metadata !DIExpression()), !dbg !573
  %20 = icmp eq i32 %19, 100000, !dbg !602
  br i1 %20, label %21, label %4, !dbg !576, !llvm.loop !603

; <label>:21:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 %17, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 %17, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 %17, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 %17, metadata !567, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 100000, metadata !566, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i64 %17, metadata !567, metadata !DIExpression()), !dbg !574
  %22 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !605, !srcloc !591
  %23 = extractvalue { i32, i32 } %22, 0, !dbg !605
  %24 = extractvalue { i32, i32 } %22, 1, !dbg !605
  call void @llvm.dbg.value(metadata i32 %23, metadata !587, metadata !DIExpression()) #5, !dbg !607
  call void @llvm.dbg.value(metadata i32 %24, metadata !588, metadata !DIExpression()) #5, !dbg !608
  %25 = zext i32 %23 to i64, !dbg !609
  %26 = zext i32 %24 to i64, !dbg !610
  %27 = shl nuw i64 %26, 32, !dbg !611
  %28 = or i64 %27, %25, !dbg !612
  call void @llvm.dbg.value(metadata i64 %28, metadata !568, metadata !DIExpression()), !dbg !575
  %29 = sub i64 %28, %17, !dbg !613
  %30 = udiv i64 %29, 100000, !dbg !614
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %29, i64 %30) #4, !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !617 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !619, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8** undef, metadata !620, metadata !DIExpression()), !dbg !623
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !624
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !625
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !626
  br label %4, !dbg !627

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !621, metadata !DIExpression()), !dbg !626
  %6 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !628
  %7 = add nuw nsw i32 %5, 1, !dbg !630
  call void @llvm.dbg.value(metadata i32 %7, metadata !621, metadata !DIExpression()), !dbg !626
  %8 = icmp eq i32 %7, 100000, !dbg !631
  br i1 %8, label %9, label %4, !dbg !627, !llvm.loop !632

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 100000, metadata !621, metadata !DIExpression()), !dbg !626
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #4, !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !636 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !642
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !643
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !643
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !644, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !644
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !655
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !656
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !656
  %8 = load i64, i64* %7, align 8, !dbg !656
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !657
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !640, metadata !DIExpression(DW_OP_deref)), !dbg !658
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !659
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !641, metadata !DIExpression(DW_OP_deref)), !dbg !660
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !661
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !662
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !662
  ret i32 0, !dbg !663
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !664 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !667
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !668, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !652, metadata !DIExpression()) #5, !dbg !668
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !651, metadata !DIExpression()) #5, !dbg !670
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !671
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !671
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !672
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !673
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !666, metadata !DIExpression(DW_OP_deref)), !dbg !674
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !675
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !676
  ret i32 0, !dbg !677
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !678 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !683
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !683
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !684
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !684
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !685
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !685
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !686, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !652, metadata !DIExpression()) #5, !dbg !686
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !651, metadata !DIExpression()) #5, !dbg !688
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !689
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !689
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !690
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #4, !dbg !691
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !680, metadata !DIExpression(DW_OP_deref)), !dbg !692
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !693
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !681, metadata !DIExpression(DW_OP_deref)), !dbg !694
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !695
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !682, metadata !DIExpression(DW_OP_deref)), !dbg !696
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !697
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !698
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !698
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !698
  ret i32 0, !dbg !699
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !700 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !706
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !706
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !707
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !707
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !708
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !708
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !709
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !709
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !710, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !652, metadata !DIExpression()) #5, !dbg !710
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !651, metadata !DIExpression()) #5, !dbg !712
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !713
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !713
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !714
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !715
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !705, metadata !DIExpression(DW_OP_deref)), !dbg !716
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #4, !dbg !717
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !702, metadata !DIExpression(DW_OP_deref)), !dbg !718
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #4, !dbg !719
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !704, metadata !DIExpression(DW_OP_deref)), !dbg !720
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #4, !dbg !721
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !703, metadata !DIExpression(DW_OP_deref)), !dbg !722
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #4, !dbg !723
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !724
  %18 = load i64, i64* %17, align 8, !dbg !724
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !703, metadata !DIExpression(DW_OP_deref)), !dbg !722
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !725
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !702, metadata !DIExpression()), !dbg !718
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !726
  %21 = bitcast i8** %20 to i64*, !dbg !727
  store i64 %18, i64* %21, align 8, !dbg !727
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !728
  %23 = load i64, i64* %22, align 8, !dbg !728
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !704, metadata !DIExpression(DW_OP_deref)), !dbg !720
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !729
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !703, metadata !DIExpression()), !dbg !722
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !730
  %26 = bitcast i8** %25 to i64*, !dbg !731
  store i64 %23, i64* %26, align 8, !dbg !731
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !732
  %28 = load i64, i64* %27, align 8, !dbg !732
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !705, metadata !DIExpression(DW_OP_deref)), !dbg !716
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !733
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !704, metadata !DIExpression()), !dbg !720
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !734
  %31 = bitcast i8** %30 to i64*, !dbg !735
  store i64 %28, i64* %31, align 8, !dbg !735
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !736
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !702, metadata !DIExpression(DW_OP_deref)), !dbg !718
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !737
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !705, metadata !DIExpression()), !dbg !716
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !738
  %35 = bitcast i8** %34 to i64*, !dbg !739
  store i64 %32, i64* %35, align 8, !dbg !739
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !705, metadata !DIExpression()), !dbg !716
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #4, !dbg !740
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !741
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !702, metadata !DIExpression()), !dbg !718
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #4, !dbg !742
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !743
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !704, metadata !DIExpression()), !dbg !720
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #4, !dbg !744
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !745
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !703, metadata !DIExpression()), !dbg !722
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #4, !dbg !746
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !747
  ret i32 0, !dbg !748
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !749 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !752
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !752
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !753, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !652, metadata !DIExpression()) #5, !dbg !753
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !651, metadata !DIExpression()) #5, !dbg !755
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !756
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !756
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !757
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !758
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !751, metadata !DIExpression(DW_OP_deref)), !dbg !759
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !760
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !761
  ret i32 0, !dbg !762
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !763 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !766
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !767, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !652, metadata !DIExpression()) #5, !dbg !767
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !651, metadata !DIExpression()) #5, !dbg !769
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !770
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !770
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !771
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !772
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !765, metadata !DIExpression(DW_OP_deref)), !dbg !773
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !774
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !775
  ret i32 0, !dbg !776
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !777 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !780
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !781, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !652, metadata !DIExpression()) #5, !dbg !781
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !651, metadata !DIExpression()) #5, !dbg !783
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !784
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !784
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !785
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !786
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !779, metadata !DIExpression(DW_OP_deref)), !dbg !787
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !789
  ret i32 0, !dbg !790
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !791 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !794
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !795, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !652, metadata !DIExpression()) #5, !dbg !795
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !651, metadata !DIExpression()) #5, !dbg !797
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !798
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !798
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !799
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !800
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !793, metadata !DIExpression(DW_OP_deref)), !dbg !801
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !802
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !803
  ret i32 0, !dbg !804
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !805 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !808
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !808
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !809, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !652, metadata !DIExpression()) #5, !dbg !809
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !651, metadata !DIExpression()) #5, !dbg !811
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !812
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !812
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !813
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !814
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !807, metadata !DIExpression(DW_OP_deref)), !dbg !815
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !816
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !817
  ret i32 0, !dbg !818
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !819 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !823
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !824
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !825, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !825
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !827
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !828
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !828
  %8 = load i64, i64* %7, align 8, !dbg !828
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !829
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !821, metadata !DIExpression(DW_OP_deref)), !dbg !830
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !831
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !822, metadata !DIExpression(DW_OP_deref)), !dbg !832
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !833
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !834
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !834
  ret i32 0, !dbg !835
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !836 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !838, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8* %1, metadata !839, metadata !DIExpression()), !dbg !841
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !842
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !842
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !844
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !845
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !846, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !652, metadata !DIExpression()) #5, !dbg !846
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !651, metadata !DIExpression()) #5, !dbg !848
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !849
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !849
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !850
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !851
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !680, metadata !DIExpression(DW_OP_deref)) #5, !dbg !852
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !853
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !681, metadata !DIExpression(DW_OP_deref)) #5, !dbg !854
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !855
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !682, metadata !DIExpression(DW_OP_deref)) #5, !dbg !856
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #4, !dbg !857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !858
  ret i32 0, !dbg !859
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !860 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !862, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i8* %1, metadata !863, metadata !DIExpression()), !dbg !865
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !866
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !866
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !868, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !868
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !870
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !871
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !871
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !872
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !873
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !666, metadata !DIExpression(DW_OP_deref)) #5, !dbg !874
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !875
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !876
  ret i32 0, !dbg !877
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !878 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !880, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %1, metadata !881, metadata !DIExpression()), !dbg !883
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !884
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !884
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !886
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !886
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !887, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !652, metadata !DIExpression()) #5, !dbg !887
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !651, metadata !DIExpression()) #5, !dbg !889
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !890
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !890
  %10 = load i64, i64* %9, align 8, !dbg !890
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !891
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !640, metadata !DIExpression(DW_OP_deref)) #5, !dbg !892
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !893
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !641, metadata !DIExpression(DW_OP_deref)) #5, !dbg !894
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !895
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !896
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !896
  ret i32 0, !dbg !897
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !898 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !900, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %1, metadata !901, metadata !DIExpression()), !dbg !903
  %3 = tail call i32 @test_yield_to() #6, !dbg !904
  ret i32 0, !dbg !905
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !906 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !908, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8* %1, metadata !909, metadata !DIExpression()), !dbg !911
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !912
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !914, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !914
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !916
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !917
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !917
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !918
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !919
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !751, metadata !DIExpression(DW_OP_deref)) #5, !dbg !920
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !922
  ret i32 0, !dbg !923
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !924 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8* %1, metadata !927, metadata !DIExpression()), !dbg !929
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !930
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !930
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !932, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !932
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !934
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !935
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !935
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !936
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !937
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !765, metadata !DIExpression(DW_OP_deref)) #5, !dbg !938
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !940
  ret i32 0, !dbg !941
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !942 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !944, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %1, metadata !945, metadata !DIExpression()), !dbg !947
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !948
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !950, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !950
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !952
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !953
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !953
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !954
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !955
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !779, metadata !DIExpression(DW_OP_deref)) #5, !dbg !956
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !957
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !958
  ret i32 0, !dbg !959
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !960 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !962, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i8* %1, metadata !963, metadata !DIExpression()), !dbg !965
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !966
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !968, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !968
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !970
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !971
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !971
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !972
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !973
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !793, metadata !DIExpression(DW_OP_deref)) #5, !dbg !974
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !975
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !976
  ret i32 0, !dbg !977
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !978 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()), !dbg !983
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !984
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !986, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !652, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !651, metadata !DIExpression()) #5, !dbg !988
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !989
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !989
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !990
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !991
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !807, metadata !DIExpression(DW_OP_deref)) #5, !dbg !992
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !993
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !994
  ret i32 0, !dbg !995
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !996 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !998, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8* %1, metadata !999, metadata !DIExpression()), !dbg !1001
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1002
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1002
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1004
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1005, !srcloc !654
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !652, metadata !DIExpression()) #5, !dbg !1005
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !651, metadata !DIExpression()) #5, !dbg !1007
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1008
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1008
  %10 = load i64, i64* %9, align 8, !dbg !1008
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !821, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1010
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !822, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1012
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !1013
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1014
  ret i32 0, !dbg !1015
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!181, !182, !183, !184}
!llvm.ident = !{!185}

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
!181 = !{i32 2, !"Dwarf Version", i32 4}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{i32 1, !"Code Model", i32 4}
!185 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!186 = distinct !DISubprogram(name: "souradip", scope: !3, file: !3, line: 45, type: !187, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!50, !50}
!189 = !{!190, !191, !192}
!190 = !DILocalVariable(name: "a", arg: 1, scope: !186, file: !3, line: 45, type: !50)
!191 = !DILocalVariable(name: "i", scope: !186, file: !3, line: 47, type: !50)
!192 = !DILocalVariable(name: "b", scope: !186, file: !3, line: 47, type: !50)
!193 = !DILocation(line: 45, column: 18, scope: !186)
!194 = !DILocation(line: 47, column: 10, scope: !186)
!195 = !DILocation(line: 47, column: 7, scope: !186)
!196 = !DILocation(line: 49, column: 16, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 49, column: 3)
!198 = distinct !DILexicalBlock(scope: !186, file: !3, line: 49, column: 3)
!199 = !DILocation(line: 49, column: 3, scope: !198)
!200 = !DILocation(line: 51, column: 5, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 50, column: 3)
!202 = !DILocation(line: 49, column: 22, scope: !197)
!203 = distinct !{!203, !199, !204}
!204 = !DILocation(line: 53, column: 3, scope: !198)
!205 = !DILocation(line: 0, scope: !186)
!206 = !DILocation(line: 55, column: 3, scope: !186)
!207 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 68, type: !64, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!208 = !{!209, !210, !211}
!209 = !DILocalVariable(name: "i", arg: 1, scope: !207, file: !3, line: 68, type: !33)
!210 = !DILocalVariable(name: "o", arg: 2, scope: !207, file: !3, line: 68, type: !66)
!211 = !DILocalVariable(name: "a", scope: !207, file: !3, line: 71, type: !50)
!212 = !DILocation(line: 68, column: 24, scope: !207)
!213 = !DILocation(line: 68, column: 34, scope: !207)
!214 = !DILocation(line: 70, column: 19, scope: !207)
!215 = !DILocation(line: 70, column: 3, scope: !207)
!216 = !DILocation(line: 71, column: 7, scope: !207)
!217 = !DILocation(line: 73, column: 5, scope: !218)
!218 = distinct !DILexicalBlock(scope: !207, file: !3, line: 72, column: 16)
!219 = !DILocation(line: 74, column: 5, scope: !218)
!220 = !DILocation(line: 76, column: 3, scope: !207)
!221 = !DILocation(line: 77, column: 1, scope: !207)
!222 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DILocalVariable(name: "i", arg: 1, scope: !222, file: !3, line: 79, type: !33)
!225 = !DILocalVariable(name: "o", arg: 2, scope: !222, file: !3, line: 79, type: !66)
!226 = !DILocalVariable(name: "a", scope: !222, file: !3, line: 82, type: !50)
!227 = !DILocalVariable(name: "f_inner", scope: !228, file: !3, line: 85, type: !24)
!228 = distinct !DILexicalBlock(scope: !222, file: !3, line: 83, column: 15)
!229 = !DILocation(line: 79, column: 24, scope: !222)
!230 = !DILocation(line: 79, column: 34, scope: !222)
!231 = !DILocation(line: 81, column: 19, scope: !222)
!232 = !DILocation(line: 81, column: 3, scope: !222)
!233 = !DILocation(line: 82, column: 7, scope: !222)
!234 = !DILocation(line: 84, column: 5, scope: !228)
!235 = !DILocation(line: 85, column: 5, scope: !228)
!236 = !DILocation(line: 85, column: 17, scope: !228)
!237 = !DILocation(line: 86, column: 5, scope: !228)
!238 = !DILocation(line: 87, column: 5, scope: !228)
!239 = !DILocation(line: 88, column: 3, scope: !222)
!240 = !DILocation(line: 89, column: 3, scope: !222)
!241 = !DILocation(line: 90, column: 1, scope: !222)
!242 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!243 = !{!244, !245, !246}
!244 = !DILocalVariable(name: "i", arg: 1, scope: !242, file: !3, line: 92, type: !33)
!245 = !DILocalVariable(name: "o", arg: 2, scope: !242, file: !3, line: 92, type: !66)
!246 = !DILocalVariable(name: "a", scope: !242, file: !3, line: 95, type: !50)
!247 = !DILocation(line: 92, column: 29, scope: !242)
!248 = !DILocation(line: 92, column: 39, scope: !242)
!249 = !DILocation(line: 94, column: 19, scope: !242)
!250 = !DILocation(line: 94, column: 3, scope: !242)
!251 = !DILocation(line: 95, column: 7, scope: !242)
!252 = !DILocation(line: 97, column: 5, scope: !253)
!253 = distinct !DILexicalBlock(scope: !242, file: !3, line: 96, column: 16)
!254 = !DILocation(line: 98, column: 5, scope: !253)
!255 = !DILocation(line: 100, column: 3, scope: !242)
!256 = !DILocation(line: 101, column: 1, scope: !242)
!257 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!258 = !{!259, !260, !261, !262}
!259 = !DILocalVariable(name: "i", arg: 1, scope: !257, file: !3, line: 103, type: !33)
!260 = !DILocalVariable(name: "o", arg: 2, scope: !257, file: !3, line: 103, type: !66)
!261 = !DILocalVariable(name: "a", scope: !257, file: !3, line: 106, type: !50)
!262 = !DILocalVariable(name: "f_inner_join", scope: !263, file: !3, line: 109, type: !24)
!263 = distinct !DILexicalBlock(scope: !257, file: !3, line: 107, column: 15)
!264 = !DILocation(line: 103, column: 29, scope: !257)
!265 = !DILocation(line: 103, column: 39, scope: !257)
!266 = !DILocation(line: 105, column: 19, scope: !257)
!267 = !DILocation(line: 105, column: 3, scope: !257)
!268 = !DILocation(line: 106, column: 7, scope: !257)
!269 = !DILocation(line: 108, column: 5, scope: !263)
!270 = !DILocation(line: 109, column: 5, scope: !263)
!271 = !DILocation(line: 109, column: 17, scope: !263)
!272 = !DILocation(line: 110, column: 5, scope: !263)
!273 = !DILocation(line: 111, column: 19, scope: !263)
!274 = !DILocation(line: 111, column: 5, scope: !263)
!275 = !DILocation(line: 112, column: 5, scope: !263)
!276 = !DILocation(line: 113, column: 3, scope: !257)
!277 = !DILocation(line: 114, column: 3, scope: !257)
!278 = !DILocation(line: 115, column: 1, scope: !257)
!279 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !280)
!280 = !{!281, !282, !283}
!281 = !DILocalVariable(name: "i", arg: 1, scope: !279, file: !3, line: 119, type: !33)
!282 = !DILocalVariable(name: "o", arg: 2, scope: !279, file: !3, line: 119, type: !66)
!283 = !DILocalVariable(name: "a", scope: !279, file: !3, line: 122, type: !50)
!284 = !DILocation(line: 119, column: 19, scope: !279)
!285 = !DILocation(line: 119, column: 29, scope: !279)
!286 = !DILocation(line: 121, column: 19, scope: !279)
!287 = !DILocation(line: 121, column: 3, scope: !279)
!288 = !DILocation(line: 122, column: 7, scope: !279)
!289 = !DILocation(line: 124, column: 5, scope: !290)
!290 = distinct !DILexicalBlock(scope: !279, file: !3, line: 123, column: 16)
!291 = !DILocation(line: 125, column: 5, scope: !290)
!292 = !DILocation(line: 127, column: 3, scope: !279)
!293 = !DILocation(line: 128, column: 1, scope: !279)
!294 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !295)
!295 = !{!296, !297, !298, !299}
!296 = !DILocalVariable(name: "i", arg: 1, scope: !294, file: !3, line: 131, type: !33)
!297 = !DILocalVariable(name: "o", arg: 2, scope: !294, file: !3, line: 131, type: !66)
!298 = !DILocalVariable(name: "a", scope: !294, file: !3, line: 134, type: !50)
!299 = !DILocalVariable(name: "f4", scope: !294, file: !3, line: 140, type: !24)
!300 = !DILocation(line: 131, column: 19, scope: !294)
!301 = !DILocation(line: 131, column: 29, scope: !294)
!302 = !DILocation(line: 133, column: 19, scope: !294)
!303 = !DILocation(line: 133, column: 3, scope: !294)
!304 = !DILocation(line: 134, column: 7, scope: !294)
!305 = !DILocation(line: 136, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !294, file: !3, line: 135, column: 15)
!307 = !DILocation(line: 137, column: 5, scope: !306)
!308 = !DILocation(line: 139, column: 3, scope: !294)
!309 = !DILocation(line: 140, column: 3, scope: !294)
!310 = !DILocation(line: 140, column: 15, scope: !294)
!311 = !DILocation(line: 141, column: 3, scope: !294)
!312 = !DILocation(line: 142, column: 1, scope: !294)
!313 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!314 = !{!315, !316, !317, !318}
!315 = !DILocalVariable(name: "i", arg: 1, scope: !313, file: !3, line: 144, type: !33)
!316 = !DILocalVariable(name: "o", arg: 2, scope: !313, file: !3, line: 144, type: !66)
!317 = !DILocalVariable(name: "a", scope: !313, file: !3, line: 147, type: !50)
!318 = !DILocalVariable(name: "f3", scope: !313, file: !3, line: 154, type: !24)
!319 = !DILocation(line: 144, column: 19, scope: !313)
!320 = !DILocation(line: 144, column: 29, scope: !313)
!321 = !DILocation(line: 146, column: 19, scope: !313)
!322 = !DILocation(line: 146, column: 3, scope: !313)
!323 = !DILocation(line: 147, column: 7, scope: !313)
!324 = !DILocation(line: 149, column: 5, scope: !325)
!325 = distinct !DILexicalBlock(scope: !313, file: !3, line: 148, column: 15)
!326 = !DILocation(line: 151, column: 5, scope: !325)
!327 = !DILocation(line: 153, column: 3, scope: !313)
!328 = !DILocation(line: 154, column: 3, scope: !313)
!329 = !DILocation(line: 154, column: 15, scope: !313)
!330 = !DILocation(line: 155, column: 3, scope: !313)
!331 = !DILocation(line: 156, column: 1, scope: !313)
!332 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334, !335, !336, !337}
!334 = !DILocalVariable(name: "i", arg: 1, scope: !332, file: !3, line: 159, type: !33)
!335 = !DILocalVariable(name: "o", arg: 2, scope: !332, file: !3, line: 159, type: !66)
!336 = !DILocalVariable(name: "a", scope: !332, file: !3, line: 162, type: !50)
!337 = !DILocalVariable(name: "f4", scope: !332, file: !3, line: 168, type: !24)
!338 = !DILocation(line: 159, column: 19, scope: !332)
!339 = !DILocation(line: 159, column: 29, scope: !332)
!340 = !DILocation(line: 161, column: 19, scope: !332)
!341 = !DILocation(line: 161, column: 3, scope: !332)
!342 = !DILocation(line: 162, column: 7, scope: !332)
!343 = !DILocation(line: 164, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !332, file: !3, line: 163, column: 16)
!345 = !DILocation(line: 165, column: 5, scope: !344)
!346 = !DILocation(line: 167, column: 3, scope: !332)
!347 = !DILocation(line: 168, column: 3, scope: !332)
!348 = !DILocation(line: 168, column: 15, scope: !332)
!349 = !DILocation(line: 169, column: 3, scope: !332)
!350 = !DILocation(line: 170, column: 1, scope: !332)
!351 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !352)
!352 = !{!353, !354, !355}
!353 = !DILocalVariable(name: "i", arg: 1, scope: !351, file: !3, line: 172, type: !33)
!354 = !DILocalVariable(name: "o", arg: 2, scope: !351, file: !3, line: 172, type: !66)
!355 = !DILocalVariable(name: "i", scope: !356, file: !3, line: 174, type: !50)
!356 = distinct !DILexicalBlock(scope: !351, file: !3, line: 174, column: 3)
!357 = !DILocation(line: 172, column: 23, scope: !351)
!358 = !DILocation(line: 172, column: 33, scope: !351)
!359 = !DILocation(line: 173, column: 19, scope: !351)
!360 = !DILocation(line: 173, column: 3, scope: !351)
!361 = !DILocation(line: 174, column: 12, scope: !356)
!362 = !DILocation(line: 176, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 175, column: 22)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 175, column: 9)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 174, column: 31)
!366 = distinct !DILexicalBlock(scope: !356, file: !3, line: 174, column: 3)
!367 = !DILocation(line: 177, column: 7, scope: !363)
!368 = !DILocation(line: 180, column: 3, scope: !351)
!369 = !DILocation(line: 182, column: 3, scope: !351)
!370 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!371 = !{!372, !373, !374}
!372 = !DILocalVariable(name: "i", arg: 1, scope: !370, file: !3, line: 185, type: !33)
!373 = !DILocalVariable(name: "o", arg: 2, scope: !370, file: !3, line: 185, type: !66)
!374 = !DILocalVariable(name: "i", scope: !375, file: !3, line: 187, type: !50)
!375 = distinct !DILexicalBlock(scope: !370, file: !3, line: 187, column: 3)
!376 = !DILocation(line: 185, column: 22, scope: !370)
!377 = !DILocation(line: 185, column: 32, scope: !370)
!378 = !DILocation(line: 186, column: 19, scope: !370)
!379 = !DILocation(line: 186, column: 3, scope: !370)
!380 = !DILocation(line: 187, column: 12, scope: !375)
!381 = !DILocation(line: 189, column: 7, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 188, column: 22)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 188, column: 9)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 187, column: 31)
!385 = distinct !DILexicalBlock(scope: !375, file: !3, line: 187, column: 3)
!386 = !DILocation(line: 190, column: 7, scope: !382)
!387 = !DILocation(line: 193, column: 3, scope: !370)
!388 = !DILocation(line: 195, column: 3, scope: !370)
!389 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!390 = !{!391, !392, !393, !394}
!391 = !DILocalVariable(name: "i", arg: 1, scope: !389, file: !3, line: 198, type: !33)
!392 = !DILocalVariable(name: "o", arg: 2, scope: !389, file: !3, line: 198, type: !66)
!393 = !DILocalVariable(name: "a", scope: !389, file: !3, line: 201, type: !50)
!394 = !DILocalVariable(name: "f_to", scope: !389, file: !3, line: 202, type: !24)
!395 = !DILocation(line: 198, column: 24, scope: !389)
!396 = !DILocation(line: 198, column: 34, scope: !389)
!397 = !DILocation(line: 200, column: 19, scope: !389)
!398 = !DILocation(line: 200, column: 3, scope: !389)
!399 = !DILocation(line: 201, column: 7, scope: !389)
!400 = !DILocation(line: 202, column: 22, scope: !389)
!401 = !DILocation(line: 202, column: 15, scope: !389)
!402 = !DILocation(line: 204, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !389, file: !3, line: 203, column: 15)
!404 = !DILocation(line: 205, column: 5, scope: !403)
!405 = !DILocation(line: 207, column: 3, scope: !389)
!406 = !DILocation(line: 208, column: 1, scope: !389)
!407 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !408)
!408 = !{!409, !410, !411, !412}
!409 = !DILocalVariable(name: "i", arg: 1, scope: !407, file: !3, line: 211, type: !33)
!410 = !DILocalVariable(name: "o", arg: 2, scope: !407, file: !3, line: 211, type: !66)
!411 = !DILocalVariable(name: "a", scope: !407, file: !3, line: 214, type: !50)
!412 = !DILocalVariable(name: "f_to", scope: !407, file: !3, line: 215, type: !24)
!413 = !DILocation(line: 211, column: 25, scope: !407)
!414 = !DILocation(line: 211, column: 35, scope: !407)
!415 = !DILocation(line: 213, column: 19, scope: !407)
!416 = !DILocation(line: 213, column: 3, scope: !407)
!417 = !DILocation(line: 214, column: 7, scope: !407)
!418 = !DILocation(line: 215, column: 22, scope: !407)
!419 = !DILocation(line: 215, column: 15, scope: !407)
!420 = !DILocation(line: 217, column: 5, scope: !421)
!421 = distinct !DILexicalBlock(scope: !407, file: !3, line: 216, column: 15)
!422 = !DILocation(line: 218, column: 5, scope: !421)
!423 = !DILocation(line: 220, column: 3, scope: !407)
!424 = !DILocation(line: 221, column: 1, scope: !407)
!425 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!426 = !{!427, !428, !429, !430}
!427 = !DILocalVariable(name: "i", arg: 1, scope: !425, file: !3, line: 223, type: !33)
!428 = !DILocalVariable(name: "o", arg: 2, scope: !425, file: !3, line: 223, type: !66)
!429 = !DILocalVariable(name: "a", scope: !425, file: !3, line: 226, type: !50)
!430 = !DILocalVariable(name: "f_to", scope: !425, file: !3, line: 228, type: !24)
!431 = !DILocation(line: 223, column: 24, scope: !425)
!432 = !DILocation(line: 223, column: 34, scope: !425)
!433 = !DILocation(line: 225, column: 19, scope: !425)
!434 = !DILocation(line: 225, column: 3, scope: !425)
!435 = !DILocation(line: 226, column: 7, scope: !425)
!436 = !DILocation(line: 228, column: 22, scope: !425)
!437 = !DILocation(line: 228, column: 15, scope: !425)
!438 = !DILocation(line: 230, column: 5, scope: !439)
!439 = distinct !DILexicalBlock(scope: !425, file: !3, line: 229, column: 15)
!440 = !DILocation(line: 231, column: 5, scope: !439)
!441 = !DILocation(line: 233, column: 3, scope: !425)
!442 = !DILocation(line: 234, column: 1, scope: !425)
!443 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DILocalVariable(name: "i", arg: 1, scope: !443, file: !3, line: 236, type: !33)
!446 = !DILocalVariable(name: "o", arg: 2, scope: !443, file: !3, line: 236, type: !66)
!447 = !DILocalVariable(name: "a", scope: !443, file: !3, line: 239, type: !50)
!448 = !DILocalVariable(name: "f_to", scope: !443, file: !3, line: 241, type: !24)
!449 = !DILocation(line: 236, column: 25, scope: !443)
!450 = !DILocation(line: 236, column: 35, scope: !443)
!451 = !DILocation(line: 238, column: 19, scope: !443)
!452 = !DILocation(line: 238, column: 3, scope: !443)
!453 = !DILocation(line: 239, column: 7, scope: !443)
!454 = !DILocation(line: 241, column: 22, scope: !443)
!455 = !DILocation(line: 241, column: 15, scope: !443)
!456 = !DILocation(line: 243, column: 5, scope: !457)
!457 = distinct !DILexicalBlock(scope: !443, file: !3, line: 242, column: 15)
!458 = !DILocation(line: 244, column: 5, scope: !457)
!459 = !DILocation(line: 246, column: 3, scope: !443)
!460 = !DILocation(line: 247, column: 1, scope: !443)
!461 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(name: "i", arg: 1, scope: !461, file: !3, line: 249, type: !33)
!464 = !DILocalVariable(name: "o", arg: 2, scope: !461, file: !3, line: 249, type: !66)
!465 = !DILocalVariable(name: "a", scope: !461, file: !3, line: 252, type: !50)
!466 = !DILocalVariable(name: "f_new", scope: !461, file: !3, line: 253, type: !24)
!467 = !DILocation(line: 249, column: 23, scope: !461)
!468 = !DILocation(line: 249, column: 33, scope: !461)
!469 = !DILocation(line: 251, column: 19, scope: !461)
!470 = !DILocation(line: 251, column: 3, scope: !461)
!471 = !DILocation(line: 252, column: 7, scope: !461)
!472 = !DILocation(line: 254, column: 11, scope: !461)
!473 = !DILocation(line: 253, column: 15, scope: !461)
!474 = !DILocation(line: 257, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !461, file: !3, line: 255, column: 15)
!476 = !DILocation(line: 258, column: 5, scope: !475)
!477 = !DILocation(line: 260, column: 3, scope: !461)
!478 = !DILocation(line: 261, column: 1, scope: !461)
!479 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!480 = !{!481, !482, !483, !484, !485}
!481 = !DILocalVariable(name: "i", arg: 1, scope: !479, file: !3, line: 263, type: !33)
!482 = !DILocalVariable(name: "o", arg: 2, scope: !479, file: !3, line: 263, type: !66)
!483 = !DILocalVariable(name: "a", scope: !479, file: !3, line: 266, type: !50)
!484 = !DILocalVariable(name: "f_new", scope: !479, file: !3, line: 267, type: !24)
!485 = !DILocalVariable(name: "f_curr", scope: !479, file: !3, line: 274, type: !24)
!486 = !DILocation(line: 263, column: 28, scope: !479)
!487 = !DILocation(line: 263, column: 38, scope: !479)
!488 = !DILocation(line: 265, column: 19, scope: !479)
!489 = !DILocation(line: 265, column: 3, scope: !479)
!490 = !DILocation(line: 266, column: 7, scope: !479)
!491 = !DILocation(line: 268, column: 11, scope: !479)
!492 = !DILocation(line: 267, column: 15, scope: !479)
!493 = !DILocation(line: 269, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !479, file: !3, line: 269, column: 6)
!495 = !DILocation(line: 269, column: 6, scope: !479)
!496 = !DILocation(line: 270, column: 5, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !3, line: 269, column: 12)
!498 = !DILocation(line: 271, column: 3, scope: !497)
!499 = !DILocation(line: 274, column: 15, scope: !479)
!500 = !DILocation(line: 276, column: 5, scope: !501)
!501 = distinct !DILexicalBlock(scope: !479, file: !3, line: 275, column: 15)
!502 = !DILocation(line: 277, column: 5, scope: !501)
!503 = !DILocation(line: 279, column: 3, scope: !479)
!504 = !DILocation(line: 280, column: 1, scope: !479)
!505 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !506)
!506 = !{!507, !508}
!507 = !DILocalVariable(name: "i", arg: 1, scope: !505, file: !3, line: 282, type: !33)
!508 = !DILocalVariable(name: "o", arg: 2, scope: !505, file: !3, line: 282, type: !66)
!509 = !DILocation(line: 282, column: 27, scope: !505)
!510 = !DILocation(line: 282, column: 37, scope: !505)
!511 = !DILocation(line: 284, column: 19, scope: !505)
!512 = !DILocation(line: 284, column: 3, scope: !505)
!513 = !DILocation(line: 286, column: 3, scope: !505)
!514 = !DILocation(line: 287, column: 1, scope: !505)
!515 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!516 = !{!517, !518, !519, !520, !521, !523}
!517 = !DILocalVariable(name: "i", arg: 1, scope: !515, file: !3, line: 290, type: !33)
!518 = !DILocalVariable(name: "o", arg: 2, scope: !515, file: !3, line: 290, type: !66)
!519 = !DILocalVariable(name: "a", scope: !515, file: !3, line: 293, type: !50)
!520 = !DILocalVariable(name: "f_new", scope: !515, file: !3, line: 294, type: !24)
!521 = !DILocalVariable(name: "curr", scope: !522, file: !3, line: 298, type: !24)
!522 = distinct !DILexicalBlock(scope: !515, file: !3, line: 295, column: 15)
!523 = !DILocalVariable(name: "new", scope: !524, file: !3, line: 300, type: !24)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 299, column: 14)
!525 = distinct !DILexicalBlock(scope: !522, file: !3, line: 299, column: 8)
!526 = !DILocation(line: 290, column: 27, scope: !515)
!527 = !DILocation(line: 290, column: 37, scope: !515)
!528 = !DILocation(line: 292, column: 19, scope: !515)
!529 = !DILocation(line: 292, column: 3, scope: !515)
!530 = !DILocation(line: 293, column: 7, scope: !515)
!531 = !DILocation(line: 296, column: 13, scope: !522)
!532 = !DILocation(line: 294, column: 15, scope: !515)
!533 = !DILocation(line: 298, column: 17, scope: !522)
!534 = !DILocation(line: 299, column: 8, scope: !525)
!535 = !DILocation(line: 299, column: 8, scope: !522)
!536 = !DILocation(line: 300, column: 7, scope: !524)
!537 = !DILocation(line: 300, column: 19, scope: !524)
!538 = !DILocation(line: 301, column: 7, scope: !524)
!539 = !DILocation(line: 303, column: 5, scope: !525)
!540 = !DILocation(line: 304, column: 5, scope: !522)
!541 = !DILocation(line: 307, column: 3, scope: !515)
!542 = !DILocation(line: 308, column: 1, scope: !515)
!543 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !544)
!544 = !{!545, !546, !547, !548, !549}
!545 = !DILocalVariable(name: "i", arg: 1, scope: !543, file: !3, line: 310, type: !33)
!546 = !DILocalVariable(name: "o", arg: 2, scope: !543, file: !3, line: 310, type: !66)
!547 = !DILocalVariable(name: "a", scope: !543, file: !3, line: 313, type: !50)
!548 = !DILocalVariable(name: "f_new", scope: !543, file: !3, line: 314, type: !24)
!549 = !DILocalVariable(name: "curr", scope: !550, file: !3, line: 318, type: !24)
!550 = distinct !DILexicalBlock(scope: !543, file: !3, line: 315, column: 15)
!551 = !DILocation(line: 310, column: 27, scope: !543)
!552 = !DILocation(line: 310, column: 37, scope: !543)
!553 = !DILocation(line: 312, column: 19, scope: !543)
!554 = !DILocation(line: 312, column: 3, scope: !543)
!555 = !DILocation(line: 313, column: 7, scope: !543)
!556 = !DILocation(line: 316, column: 13, scope: !550)
!557 = !DILocation(line: 314, column: 15, scope: !543)
!558 = !DILocation(line: 318, column: 17, scope: !550)
!559 = !DILocation(line: 319, column: 5, scope: !550)
!560 = !DILocation(line: 322, column: 3, scope: !543)
!561 = !DILocation(line: 323, column: 1, scope: !543)
!562 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!563 = !{!564, !565, !566, !567, !568}
!564 = !DILocalVariable(name: "i", arg: 1, scope: !562, file: !3, line: 326, type: !33)
!565 = !DILocalVariable(name: "o", arg: 2, scope: !562, file: !3, line: 326, type: !66)
!566 = !DILocalVariable(name: "a", scope: !562, file: !3, line: 329, type: !50)
!567 = !DILocalVariable(name: "start", scope: !562, file: !3, line: 330, type: !29)
!568 = !DILocalVariable(name: "end", scope: !562, file: !3, line: 331, type: !29)
!569 = !DILocation(line: 326, column: 24, scope: !562)
!570 = !DILocation(line: 326, column: 34, scope: !562)
!571 = !DILocation(line: 328, column: 19, scope: !562)
!572 = !DILocation(line: 328, column: 3, scope: !562)
!573 = !DILocation(line: 329, column: 7, scope: !562)
!574 = !DILocation(line: 330, column: 12, scope: !562)
!575 = !DILocation(line: 331, column: 12, scope: !562)
!576 = !DILocation(line: 332, column: 3, scope: !562)
!577 = !DILocation(line: 333, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 333, column: 9)
!579 = distinct !DILexicalBlock(scope: !562, file: !3, line: 332, column: 15)
!580 = !DILocation(line: 333, column: 9, scope: !579)
!581 = !DILocation(line: 268, column: 5, scope: !582, inlinedAt: !589)
!582 = distinct !DISubprogram(name: "rdtsc", scope: !583, file: !583, line: 265, type: !584, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!583 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!584 = !DISubroutineType(types: !585)
!585 = !{!29}
!586 = !{!587, !588}
!587 = !DILocalVariable(name: "lo", scope: !582, file: !583, line: 267, type: !43)
!588 = !DILocalVariable(name: "hi", scope: !582, file: !583, line: 267, type: !43)
!589 = distinct !DILocation(line: 334, column: 17, scope: !590)
!590 = distinct !DILexicalBlock(scope: !578, file: !3, line: 333, column: 17)
!591 = !{i32 97027}
!592 = !DILocation(line: 267, column: 14, scope: !582, inlinedAt: !589)
!593 = !DILocation(line: 267, column: 18, scope: !582, inlinedAt: !589)
!594 = !DILocation(line: 269, column: 12, scope: !582, inlinedAt: !589)
!595 = !DILocation(line: 269, column: 18, scope: !582, inlinedAt: !589)
!596 = !DILocation(line: 269, column: 33, scope: !582, inlinedAt: !589)
!597 = !DILocation(line: 269, column: 15, scope: !582, inlinedAt: !589)
!598 = !DILocation(line: 335, column: 5, scope: !590)
!599 = !DILocation(line: 0, scope: !562)
!600 = !DILocation(line: 336, column: 5, scope: !579)
!601 = !DILocation(line: 337, column: 6, scope: !579)
!602 = !DILocation(line: 332, column: 11, scope: !562)
!603 = distinct !{!603, !576, !604}
!604 = !DILocation(line: 338, column: 3, scope: !562)
!605 = !DILocation(line: 268, column: 5, scope: !582, inlinedAt: !606)
!606 = distinct !DILocation(line: 339, column: 9, scope: !562)
!607 = !DILocation(line: 267, column: 14, scope: !582, inlinedAt: !606)
!608 = !DILocation(line: 267, column: 18, scope: !582, inlinedAt: !606)
!609 = !DILocation(line: 269, column: 12, scope: !582, inlinedAt: !606)
!610 = !DILocation(line: 269, column: 18, scope: !582, inlinedAt: !606)
!611 = !DILocation(line: 269, column: 33, scope: !582, inlinedAt: !606)
!612 = !DILocation(line: 269, column: 15, scope: !582, inlinedAt: !606)
!613 = !DILocation(line: 340, column: 104, scope: !562)
!614 = !DILocation(line: 340, column: 123, scope: !562)
!615 = !DILocation(line: 340, column: 3, scope: !562)
!616 = !DILocation(line: 341, column: 1, scope: !562)
!617 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{!619, !620, !621}
!619 = !DILocalVariable(name: "i", arg: 1, scope: !617, file: !3, line: 343, type: !33)
!620 = !DILocalVariable(name: "o", arg: 2, scope: !617, file: !3, line: 343, type: !66)
!621 = !DILocalVariable(name: "a", scope: !617, file: !3, line: 346, type: !50)
!622 = !DILocation(line: 343, column: 25, scope: !617)
!623 = !DILocation(line: 343, column: 35, scope: !617)
!624 = !DILocation(line: 345, column: 19, scope: !617)
!625 = !DILocation(line: 345, column: 3, scope: !617)
!626 = !DILocation(line: 346, column: 7, scope: !617)
!627 = !DILocation(line: 347, column: 3, scope: !617)
!628 = !DILocation(line: 348, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !617, file: !3, line: 347, column: 15)
!630 = !DILocation(line: 349, column: 6, scope: !629)
!631 = !DILocation(line: 347, column: 11, scope: !617)
!632 = distinct !{!632, !627, !633}
!633 = !DILocation(line: 350, column: 3, scope: !617)
!634 = !DILocation(line: 351, column: 3, scope: !617)
!635 = !DILocation(line: 352, column: 1, scope: !617)
!636 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 357, type: !637, scopeLine: 357, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!50}
!639 = !{!640, !641}
!640 = !DILocalVariable(name: "even", scope: !636, file: !3, line: 358, type: !24)
!641 = !DILocalVariable(name: "odd", scope: !636, file: !3, line: 359, type: !24)
!642 = !DILocation(line: 358, column: 3, scope: !636)
!643 = !DILocation(line: 359, column: 3, scope: !636)
!644 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !653)
!645 = distinct !DILexicalBlock(scope: !646, file: !16, line: 258, column: 26)
!646 = distinct !DILexicalBlock(scope: !647, file: !16, line: 258, column: 26)
!647 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !648, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!72}
!650 = !{!651, !652}
!651 = !DILocalVariable(name: "__r", scope: !646, file: !16, line: 258, type: !86)
!652 = !DILocalVariable(name: "__r", scope: !645, file: !16, line: 258, type: !86)
!653 = distinct !DILocation(line: 360, column: 8, scope: !636)
!654 = !{i32 -2147275531}
!655 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !653)
!656 = !DILocation(line: 360, column: 26, scope: !636)
!657 = !DILocation(line: 360, column: 6, scope: !636)
!658 = !DILocation(line: 358, column: 15, scope: !636)
!659 = !DILocation(line: 361, column: 3, scope: !636)
!660 = !DILocation(line: 359, column: 15, scope: !636)
!661 = !DILocation(line: 362, column: 3, scope: !636)
!662 = !DILocation(line: 365, column: 1, scope: !636)
!663 = !DILocation(line: 364, column: 3, scope: !636)
!664 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 367, type: !637, scopeLine: 368, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!665 = !{!666}
!666 = !DILocalVariable(name: "f_outer", scope: !664, file: !3, line: 369, type: !24)
!667 = !DILocation(line: 369, column: 3, scope: !664)
!668 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !669)
!669 = distinct !DILocation(line: 370, column: 8, scope: !664)
!670 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !669)
!671 = !DILocation(line: 370, column: 26, scope: !664)
!672 = !DILocation(line: 370, column: 6, scope: !664)
!673 = !DILocation(line: 371, column: 3, scope: !664)
!674 = !DILocation(line: 369, column: 15, scope: !664)
!675 = !DILocation(line: 372, column: 3, scope: !664)
!676 = !DILocation(line: 374, column: 1, scope: !664)
!677 = !DILocation(line: 373, column: 3, scope: !664)
!678 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 376, type: !637, scopeLine: 377, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!679 = !{!680, !681, !682}
!680 = !DILocalVariable(name: "f1", scope: !678, file: !3, line: 378, type: !24)
!681 = !DILocalVariable(name: "f2", scope: !678, file: !3, line: 379, type: !24)
!682 = !DILocalVariable(name: "f3", scope: !678, file: !3, line: 380, type: !24)
!683 = !DILocation(line: 378, column: 3, scope: !678)
!684 = !DILocation(line: 379, column: 3, scope: !678)
!685 = !DILocation(line: 380, column: 3, scope: !678)
!686 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !687)
!687 = distinct !DILocation(line: 381, column: 8, scope: !678)
!688 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !687)
!689 = !DILocation(line: 381, column: 26, scope: !678)
!690 = !DILocation(line: 381, column: 6, scope: !678)
!691 = !DILocation(line: 382, column: 3, scope: !678)
!692 = !DILocation(line: 378, column: 15, scope: !678)
!693 = !DILocation(line: 383, column: 3, scope: !678)
!694 = !DILocation(line: 379, column: 15, scope: !678)
!695 = !DILocation(line: 384, column: 3, scope: !678)
!696 = !DILocation(line: 380, column: 15, scope: !678)
!697 = !DILocation(line: 385, column: 3, scope: !678)
!698 = !DILocation(line: 387, column: 1, scope: !678)
!699 = !DILocation(line: 386, column: 3, scope: !678)
!700 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 389, type: !637, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(name: "f_first", scope: !700, file: !3, line: 391, type: !24)
!703 = !DILocalVariable(name: "f_second", scope: !700, file: !3, line: 392, type: !24)
!704 = !DILocalVariable(name: "f_third", scope: !700, file: !3, line: 393, type: !24)
!705 = !DILocalVariable(name: "f_fourth", scope: !700, file: !3, line: 394, type: !24)
!706 = !DILocation(line: 391, column: 3, scope: !700)
!707 = !DILocation(line: 392, column: 3, scope: !700)
!708 = !DILocation(line: 393, column: 3, scope: !700)
!709 = !DILocation(line: 394, column: 3, scope: !700)
!710 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !711)
!711 = distinct !DILocation(line: 395, column: 8, scope: !700)
!712 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !711)
!713 = !DILocation(line: 395, column: 26, scope: !700)
!714 = !DILocation(line: 395, column: 6, scope: !700)
!715 = !DILocation(line: 396, column: 3, scope: !700)
!716 = !DILocation(line: 394, column: 15, scope: !700)
!717 = !DILocation(line: 397, column: 3, scope: !700)
!718 = !DILocation(line: 391, column: 15, scope: !700)
!719 = !DILocation(line: 398, column: 3, scope: !700)
!720 = !DILocation(line: 393, column: 15, scope: !700)
!721 = !DILocation(line: 399, column: 3, scope: !700)
!722 = !DILocation(line: 392, column: 15, scope: !700)
!723 = !DILocation(line: 400, column: 3, scope: !700)
!724 = !DILocation(line: 402, column: 20, scope: !700)
!725 = !DILocation(line: 402, column: 3, scope: !700)
!726 = !DILocation(line: 402, column: 12, scope: !700)
!727 = !DILocation(line: 402, column: 18, scope: !700)
!728 = !DILocation(line: 403, column: 21, scope: !700)
!729 = !DILocation(line: 403, column: 3, scope: !700)
!730 = !DILocation(line: 403, column: 13, scope: !700)
!731 = !DILocation(line: 403, column: 19, scope: !700)
!732 = !DILocation(line: 404, column: 20, scope: !700)
!733 = !DILocation(line: 404, column: 3, scope: !700)
!734 = !DILocation(line: 404, column: 12, scope: !700)
!735 = !DILocation(line: 404, column: 18, scope: !700)
!736 = !DILocation(line: 405, column: 21, scope: !700)
!737 = !DILocation(line: 405, column: 3, scope: !700)
!738 = !DILocation(line: 405, column: 13, scope: !700)
!739 = !DILocation(line: 405, column: 19, scope: !700)
!740 = !DILocation(line: 406, column: 3, scope: !700)
!741 = !DILocation(line: 407, column: 16, scope: !700)
!742 = !DILocation(line: 407, column: 3, scope: !700)
!743 = !DILocation(line: 408, column: 16, scope: !700)
!744 = !DILocation(line: 408, column: 3, scope: !700)
!745 = !DILocation(line: 409, column: 16, scope: !700)
!746 = !DILocation(line: 409, column: 3, scope: !700)
!747 = !DILocation(line: 411, column: 1, scope: !700)
!748 = !DILocation(line: 410, column: 3, scope: !700)
!749 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 413, type: !637, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!750 = !{!751}
!751 = !DILocalVariable(name: "f_outer_join", scope: !749, file: !3, line: 415, type: !24)
!752 = !DILocation(line: 415, column: 3, scope: !749)
!753 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !754)
!754 = distinct !DILocation(line: 416, column: 8, scope: !749)
!755 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !754)
!756 = !DILocation(line: 416, column: 26, scope: !749)
!757 = !DILocation(line: 416, column: 6, scope: !749)
!758 = !DILocation(line: 417, column: 3, scope: !749)
!759 = !DILocation(line: 415, column: 15, scope: !749)
!760 = !DILocation(line: 418, column: 3, scope: !749)
!761 = !DILocation(line: 420, column: 1, scope: !749)
!762 = !DILocation(line: 419, column: 3, scope: !749)
!763 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 422, type: !637, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!764 = !{!765}
!765 = !DILocalVariable(name: "f_orig", scope: !763, file: !3, line: 424, type: !24)
!766 = !DILocation(line: 424, column: 3, scope: !763)
!767 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !768)
!768 = distinct !DILocation(line: 425, column: 8, scope: !763)
!769 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !768)
!770 = !DILocation(line: 425, column: 26, scope: !763)
!771 = !DILocation(line: 425, column: 6, scope: !763)
!772 = !DILocation(line: 426, column: 3, scope: !763)
!773 = !DILocation(line: 424, column: 15, scope: !763)
!774 = !DILocation(line: 427, column: 3, scope: !763)
!775 = !DILocation(line: 429, column: 1, scope: !763)
!776 = !DILocation(line: 428, column: 3, scope: !763)
!777 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 431, type: !637, scopeLine: 432, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!778 = !{!779}
!779 = !DILocalVariable(name: "f_orig", scope: !777, file: !3, line: 433, type: !24)
!780 = !DILocation(line: 433, column: 3, scope: !777)
!781 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !782)
!782 = distinct !DILocation(line: 434, column: 8, scope: !777)
!783 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !782)
!784 = !DILocation(line: 434, column: 26, scope: !777)
!785 = !DILocation(line: 434, column: 6, scope: !777)
!786 = !DILocation(line: 435, column: 3, scope: !777)
!787 = !DILocation(line: 433, column: 15, scope: !777)
!788 = !DILocation(line: 436, column: 3, scope: !777)
!789 = !DILocation(line: 438, column: 1, scope: !777)
!790 = !DILocation(line: 437, column: 3, scope: !777)
!791 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 440, type: !637, scopeLine: 441, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!792 = !{!793}
!793 = !DILocalVariable(name: "f_orig", scope: !791, file: !3, line: 442, type: !24)
!794 = !DILocation(line: 442, column: 3, scope: !791)
!795 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !796)
!796 = distinct !DILocation(line: 443, column: 8, scope: !791)
!797 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !796)
!798 = !DILocation(line: 443, column: 26, scope: !791)
!799 = !DILocation(line: 443, column: 6, scope: !791)
!800 = !DILocation(line: 444, column: 3, scope: !791)
!801 = !DILocation(line: 442, column: 15, scope: !791)
!802 = !DILocation(line: 445, column: 3, scope: !791)
!803 = !DILocation(line: 447, column: 1, scope: !791)
!804 = !DILocation(line: 446, column: 3, scope: !791)
!805 = distinct !DISubprogram(name: "test_fiber_routine_2", scope: !3, file: !3, line: 449, type: !637, scopeLine: 450, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !806)
!806 = !{!807}
!807 = !DILocalVariable(name: "f_orig", scope: !805, file: !3, line: 451, type: !24)
!808 = !DILocation(line: 451, column: 3, scope: !805)
!809 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !810)
!810 = distinct !DILocation(line: 452, column: 8, scope: !805)
!811 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !810)
!812 = !DILocation(line: 452, column: 26, scope: !805)
!813 = !DILocation(line: 452, column: 6, scope: !805)
!814 = !DILocation(line: 453, column: 3, scope: !805)
!815 = !DILocation(line: 451, column: 15, scope: !805)
!816 = !DILocation(line: 454, column: 3, scope: !805)
!817 = !DILocation(line: 456, column: 1, scope: !805)
!818 = !DILocation(line: 455, column: 3, scope: !805)
!819 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 458, type: !637, scopeLine: 458, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!820 = !{!821, !822}
!821 = !DILocalVariable(name: "first", scope: !819, file: !3, line: 459, type: !24)
!822 = !DILocalVariable(name: "second", scope: !819, file: !3, line: 460, type: !24)
!823 = !DILocation(line: 459, column: 3, scope: !819)
!824 = !DILocation(line: 460, column: 3, scope: !819)
!825 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !826)
!826 = distinct !DILocation(line: 461, column: 8, scope: !819)
!827 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !826)
!828 = !DILocation(line: 461, column: 26, scope: !819)
!829 = !DILocation(line: 461, column: 6, scope: !819)
!830 = !DILocation(line: 459, column: 15, scope: !819)
!831 = !DILocation(line: 463, column: 3, scope: !819)
!832 = !DILocation(line: 460, column: 15, scope: !819)
!833 = !DILocation(line: 464, column: 3, scope: !819)
!834 = !DILocation(line: 467, column: 1, scope: !819)
!835 = !DILocation(line: 466, column: 3, scope: !819)
!836 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 473, type: !141, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!837 = !{!838, !839}
!838 = !DILocalVariable(name: "buf", arg: 1, scope: !836, file: !3, line: 473, type: !137)
!839 = !DILocalVariable(name: "priv", arg: 2, scope: !836, file: !3, line: 473, type: !33)
!840 = !DILocation(line: 473, column: 23, scope: !836)
!841 = !DILocation(line: 473, column: 35, scope: !836)
!842 = !DILocation(line: 378, column: 3, scope: !678, inlinedAt: !843)
!843 = distinct !DILocation(line: 475, column: 3, scope: !836)
!844 = !DILocation(line: 379, column: 3, scope: !678, inlinedAt: !843)
!845 = !DILocation(line: 380, column: 3, scope: !678, inlinedAt: !843)
!846 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !847)
!847 = distinct !DILocation(line: 381, column: 8, scope: !678, inlinedAt: !843)
!848 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !847)
!849 = !DILocation(line: 381, column: 26, scope: !678, inlinedAt: !843)
!850 = !DILocation(line: 381, column: 6, scope: !678, inlinedAt: !843)
!851 = !DILocation(line: 382, column: 3, scope: !678, inlinedAt: !843)
!852 = !DILocation(line: 378, column: 15, scope: !678, inlinedAt: !843)
!853 = !DILocation(line: 383, column: 3, scope: !678, inlinedAt: !843)
!854 = !DILocation(line: 379, column: 15, scope: !678, inlinedAt: !843)
!855 = !DILocation(line: 384, column: 3, scope: !678, inlinedAt: !843)
!856 = !DILocation(line: 380, column: 15, scope: !678, inlinedAt: !843)
!857 = !DILocation(line: 385, column: 3, scope: !678, inlinedAt: !843)
!858 = !DILocation(line: 387, column: 1, scope: !678, inlinedAt: !843)
!859 = !DILocation(line: 477, column: 3, scope: !836)
!860 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 481, type: !141, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "buf", arg: 1, scope: !860, file: !3, line: 481, type: !137)
!863 = !DILocalVariable(name: "priv", arg: 2, scope: !860, file: !3, line: 481, type: !33)
!864 = !DILocation(line: 481, column: 24, scope: !860)
!865 = !DILocation(line: 481, column: 36, scope: !860)
!866 = !DILocation(line: 369, column: 3, scope: !664, inlinedAt: !867)
!867 = distinct !DILocation(line: 483, column: 3, scope: !860)
!868 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !869)
!869 = distinct !DILocation(line: 370, column: 8, scope: !664, inlinedAt: !867)
!870 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !869)
!871 = !DILocation(line: 370, column: 26, scope: !664, inlinedAt: !867)
!872 = !DILocation(line: 370, column: 6, scope: !664, inlinedAt: !867)
!873 = !DILocation(line: 371, column: 3, scope: !664, inlinedAt: !867)
!874 = !DILocation(line: 369, column: 15, scope: !664, inlinedAt: !867)
!875 = !DILocation(line: 372, column: 3, scope: !664, inlinedAt: !867)
!876 = !DILocation(line: 374, column: 1, scope: !664, inlinedAt: !867)
!877 = !DILocation(line: 485, column: 3, scope: !860)
!878 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 489, type: !141, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !879)
!879 = !{!880, !881}
!880 = !DILocalVariable(name: "buf", arg: 1, scope: !878, file: !3, line: 489, type: !137)
!881 = !DILocalVariable(name: "priv", arg: 2, scope: !878, file: !3, line: 489, type: !33)
!882 = !DILocation(line: 489, column: 24, scope: !878)
!883 = !DILocation(line: 489, column: 36, scope: !878)
!884 = !DILocation(line: 358, column: 3, scope: !636, inlinedAt: !885)
!885 = distinct !DILocation(line: 491, column: 3, scope: !878)
!886 = !DILocation(line: 359, column: 3, scope: !636, inlinedAt: !885)
!887 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !888)
!888 = distinct !DILocation(line: 360, column: 8, scope: !636, inlinedAt: !885)
!889 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !888)
!890 = !DILocation(line: 360, column: 26, scope: !636, inlinedAt: !885)
!891 = !DILocation(line: 360, column: 6, scope: !636, inlinedAt: !885)
!892 = !DILocation(line: 358, column: 15, scope: !636, inlinedAt: !885)
!893 = !DILocation(line: 361, column: 3, scope: !636, inlinedAt: !885)
!894 = !DILocation(line: 359, column: 15, scope: !636, inlinedAt: !885)
!895 = !DILocation(line: 362, column: 3, scope: !636, inlinedAt: !885)
!896 = !DILocation(line: 365, column: 1, scope: !636, inlinedAt: !885)
!897 = !DILocation(line: 493, column: 3, scope: !878)
!898 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 497, type: !141, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !899)
!899 = !{!900, !901}
!900 = !DILocalVariable(name: "buf", arg: 1, scope: !898, file: !3, line: 497, type: !137)
!901 = !DILocalVariable(name: "priv", arg: 2, scope: !898, file: !3, line: 497, type: !33)
!902 = !DILocation(line: 497, column: 24, scope: !898)
!903 = !DILocation(line: 497, column: 36, scope: !898)
!904 = !DILocation(line: 499, column: 3, scope: !898)
!905 = !DILocation(line: 501, column: 3, scope: !898)
!906 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!907 = !{!908, !909}
!908 = !DILocalVariable(name: "buf", arg: 1, scope: !906, file: !3, line: 505, type: !137)
!909 = !DILocalVariable(name: "priv", arg: 2, scope: !906, file: !3, line: 505, type: !33)
!910 = !DILocation(line: 505, column: 24, scope: !906)
!911 = !DILocation(line: 505, column: 36, scope: !906)
!912 = !DILocation(line: 415, column: 3, scope: !749, inlinedAt: !913)
!913 = distinct !DILocation(line: 507, column: 3, scope: !906)
!914 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !915)
!915 = distinct !DILocation(line: 416, column: 8, scope: !749, inlinedAt: !913)
!916 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !915)
!917 = !DILocation(line: 416, column: 26, scope: !749, inlinedAt: !913)
!918 = !DILocation(line: 416, column: 6, scope: !749, inlinedAt: !913)
!919 = !DILocation(line: 417, column: 3, scope: !749, inlinedAt: !913)
!920 = !DILocation(line: 415, column: 15, scope: !749, inlinedAt: !913)
!921 = !DILocation(line: 418, column: 3, scope: !749, inlinedAt: !913)
!922 = !DILocation(line: 420, column: 1, scope: !749, inlinedAt: !913)
!923 = !DILocation(line: 508, column: 3, scope: !906)
!924 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!925 = !{!926, !927}
!926 = !DILocalVariable(name: "buf", arg: 1, scope: !924, file: !3, line: 512, type: !137)
!927 = !DILocalVariable(name: "priv", arg: 2, scope: !924, file: !3, line: 512, type: !33)
!928 = !DILocation(line: 512, column: 24, scope: !924)
!929 = !DILocation(line: 512, column: 36, scope: !924)
!930 = !DILocation(line: 424, column: 3, scope: !763, inlinedAt: !931)
!931 = distinct !DILocation(line: 514, column: 3, scope: !924)
!932 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !933)
!933 = distinct !DILocation(line: 425, column: 8, scope: !763, inlinedAt: !931)
!934 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !933)
!935 = !DILocation(line: 425, column: 26, scope: !763, inlinedAt: !931)
!936 = !DILocation(line: 425, column: 6, scope: !763, inlinedAt: !931)
!937 = !DILocation(line: 426, column: 3, scope: !763, inlinedAt: !931)
!938 = !DILocation(line: 424, column: 15, scope: !763, inlinedAt: !931)
!939 = !DILocation(line: 427, column: 3, scope: !763, inlinedAt: !931)
!940 = !DILocation(line: 429, column: 1, scope: !763, inlinedAt: !931)
!941 = !DILocation(line: 515, column: 3, scope: !924)
!942 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 519, type: !141, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!943 = !{!944, !945}
!944 = !DILocalVariable(name: "buf", arg: 1, scope: !942, file: !3, line: 519, type: !137)
!945 = !DILocalVariable(name: "priv", arg: 2, scope: !942, file: !3, line: 519, type: !33)
!946 = !DILocation(line: 519, column: 24, scope: !942)
!947 = !DILocation(line: 519, column: 36, scope: !942)
!948 = !DILocation(line: 433, column: 3, scope: !777, inlinedAt: !949)
!949 = distinct !DILocation(line: 521, column: 3, scope: !942)
!950 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !951)
!951 = distinct !DILocation(line: 434, column: 8, scope: !777, inlinedAt: !949)
!952 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !951)
!953 = !DILocation(line: 434, column: 26, scope: !777, inlinedAt: !949)
!954 = !DILocation(line: 434, column: 6, scope: !777, inlinedAt: !949)
!955 = !DILocation(line: 435, column: 3, scope: !777, inlinedAt: !949)
!956 = !DILocation(line: 433, column: 15, scope: !777, inlinedAt: !949)
!957 = !DILocation(line: 436, column: 3, scope: !777, inlinedAt: !949)
!958 = !DILocation(line: 438, column: 1, scope: !777, inlinedAt: !949)
!959 = !DILocation(line: 522, column: 3, scope: !942)
!960 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 526, type: !141, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!961 = !{!962, !963}
!962 = !DILocalVariable(name: "buf", arg: 1, scope: !960, file: !3, line: 526, type: !137)
!963 = !DILocalVariable(name: "priv", arg: 2, scope: !960, file: !3, line: 526, type: !33)
!964 = !DILocation(line: 526, column: 24, scope: !960)
!965 = !DILocation(line: 526, column: 36, scope: !960)
!966 = !DILocation(line: 442, column: 3, scope: !791, inlinedAt: !967)
!967 = distinct !DILocation(line: 528, column: 3, scope: !960)
!968 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !969)
!969 = distinct !DILocation(line: 443, column: 8, scope: !791, inlinedAt: !967)
!970 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !969)
!971 = !DILocation(line: 443, column: 26, scope: !791, inlinedAt: !967)
!972 = !DILocation(line: 443, column: 6, scope: !791, inlinedAt: !967)
!973 = !DILocation(line: 444, column: 3, scope: !791, inlinedAt: !967)
!974 = !DILocation(line: 442, column: 15, scope: !791, inlinedAt: !967)
!975 = !DILocation(line: 445, column: 3, scope: !791, inlinedAt: !967)
!976 = !DILocation(line: 447, column: 1, scope: !791, inlinedAt: !967)
!977 = !DILocation(line: 529, column: 3, scope: !960)
!978 = distinct !DISubprogram(name: "handle_fibers9", scope: !3, file: !3, line: 533, type: !141, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!979 = !{!980, !981}
!980 = !DILocalVariable(name: "buf", arg: 1, scope: !978, file: !3, line: 533, type: !137)
!981 = !DILocalVariable(name: "priv", arg: 2, scope: !978, file: !3, line: 533, type: !33)
!982 = !DILocation(line: 533, column: 24, scope: !978)
!983 = !DILocation(line: 533, column: 36, scope: !978)
!984 = !DILocation(line: 451, column: 3, scope: !805, inlinedAt: !985)
!985 = distinct !DILocation(line: 535, column: 3, scope: !978)
!986 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !987)
!987 = distinct !DILocation(line: 452, column: 8, scope: !805, inlinedAt: !985)
!988 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !987)
!989 = !DILocation(line: 452, column: 26, scope: !805, inlinedAt: !985)
!990 = !DILocation(line: 452, column: 6, scope: !805, inlinedAt: !985)
!991 = !DILocation(line: 453, column: 3, scope: !805, inlinedAt: !985)
!992 = !DILocation(line: 451, column: 15, scope: !805, inlinedAt: !985)
!993 = !DILocation(line: 454, column: 3, scope: !805, inlinedAt: !985)
!994 = !DILocation(line: 456, column: 1, scope: !805, inlinedAt: !985)
!995 = !DILocation(line: 536, column: 3, scope: !978)
!996 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 540, type: !141, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !997)
!997 = !{!998, !999}
!998 = !DILocalVariable(name: "buf", arg: 1, scope: !996, file: !3, line: 540, type: !137)
!999 = !DILocalVariable(name: "priv", arg: 2, scope: !996, file: !3, line: 540, type: !33)
!1000 = !DILocation(line: 540, column: 25, scope: !996)
!1001 = !DILocation(line: 540, column: 37, scope: !996)
!1002 = !DILocation(line: 459, column: 3, scope: !819, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 542, column: 3, scope: !996)
!1004 = !DILocation(line: 460, column: 3, scope: !819, inlinedAt: !1003)
!1005 = !DILocation(line: 258, column: 26, scope: !645, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 461, column: 8, scope: !819, inlinedAt: !1003)
!1007 = !DILocation(line: 258, column: 26, scope: !646, inlinedAt: !1006)
!1008 = !DILocation(line: 461, column: 26, scope: !819, inlinedAt: !1003)
!1009 = !DILocation(line: 461, column: 6, scope: !819, inlinedAt: !1003)
!1010 = !DILocation(line: 459, column: 15, scope: !819, inlinedAt: !1003)
!1011 = !DILocation(line: 463, column: 3, scope: !819, inlinedAt: !1003)
!1012 = !DILocation(line: 460, column: 15, scope: !819, inlinedAt: !1003)
!1013 = !DILocation(line: 464, column: 3, scope: !819, inlinedAt: !1003)
!1014 = !DILocation(line: 467, column: 1, scope: !819, inlinedAt: !1003)
!1015 = !DILocation(line: 543, column: 3, scope: !996)
