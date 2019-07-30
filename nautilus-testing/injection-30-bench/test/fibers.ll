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
@.str.33 = private unnamed_addr constant [33 x i8] c"Delta (%d itr. to %d itr.) : %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Benchmark Timer1 is finished\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Benchmark Timer2 is finished\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"test_nested_fibers() : virtual console %p\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"test_fibers() : virtual console %p\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"test_yield_to() : virtual console %p\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"test_fiber_join() : virtual console %p\0A\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"test_fiber_fork() : virtual console %p\0A\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"test_fiber_fork_join() : virtual console %p\0A\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"test_fiber_routine() : virtual console %p\0A\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"test_fiber_routine_2() : virtual console %p\0A\00", align 1
@fibers_impl = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers }, align 8, !dbg !163
@_nk_cmd_fibers_impl = internal global %struct.shell_cmd_impl* @fibers_impl, section ".shell_cmds", align 8, !dbg !130
@fibers_impl2 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers2 }, align 8, !dbg !165
@_nk_cmd_fibers_impl2 = internal global %struct.shell_cmd_impl* @fibers_impl2, section ".shell_cmds", align 8, !dbg !143
@fibers_impl3 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers3 }, align 8, !dbg !167
@_nk_cmd_fibers_impl3 = internal global %struct.shell_cmd_impl* @fibers_impl3, section ".shell_cmds", align 8, !dbg !145
@fibers_impl4 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers4 }, align 8, !dbg !169
@_nk_cmd_fibers_impl4 = internal global %struct.shell_cmd_impl* @fibers_impl4, section ".shell_cmds", align 8, !dbg !147
@fibers_impl5 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers5 }, align 8, !dbg !171
@_nk_cmd_fibers_impl5 = internal global %struct.shell_cmd_impl* @fibers_impl5, section ".shell_cmds", align 8, !dbg !149
@fibers_impl6 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers6 }, align 8, !dbg !173
@_nk_cmd_fibers_impl6 = internal global %struct.shell_cmd_impl* @fibers_impl6, section ".shell_cmds", align 8, !dbg !151
@fibers_impl7 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers7 }, align 8, !dbg !175
@_nk_cmd_fibers_impl7 = internal global %struct.shell_cmd_impl* @fibers_impl7, section ".shell_cmds", align 8, !dbg !153
@fibers_impl8 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers8 }, align 8, !dbg !177
@_nk_cmd_fibers_impl8 = internal global %struct.shell_cmd_impl* @fibers_impl8, section ".shell_cmds", align 8, !dbg !155
@fibers_impl9 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers9 }, align 8, !dbg !179
@_nk_cmd_fibers_impl9 = internal global %struct.shell_cmd_impl* @fibers_impl9, section ".shell_cmds", align 8, !dbg !157
@fibers_impl10 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers10 }, align 8, !dbg !181
@_nk_cmd_fibers_impl10 = internal global %struct.shell_cmd_impl* @fibers_impl10, section ".shell_cmds", align 8, !dbg !159
@fibers_impl11 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers11 }, align 8, !dbg !183
@_nk_cmd_fibers_impl11 = internal global %struct.shell_cmd_impl* @fibers_impl11, section ".shell_cmds", align 8, !dbg !161
@.str.44 = private unnamed_addr constant [10 x i8] c"fibertest\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"fibertest2\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"fibertest3\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"fibertest4\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"fibertest5\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"fibertest6\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"fibertest7\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"fibertest8\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"fibertest9\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"fibertime1\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"fiberbench1\00", align 1
@llvm.used = appending global [11 x i8*] [i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl10 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl11 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl2 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl3 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl4 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl5 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl6 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl7 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl8 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl9 to i8*)], section "llvm.metadata"

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 !dbg !190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !194, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i32 0, metadata !196, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 0, metadata !195, metadata !DIExpression()), !dbg !199
  %2 = icmp sgt i32 %0, 0, !dbg !200
  br i1 %2, label %3, label %8, !dbg !203

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !195, metadata !DIExpression()), !dbg !199
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #4, !dbg !204
  %6 = add nuw nsw i32 %4, 1, !dbg !206
  call void @llvm.dbg.value(metadata i32 %4, metadata !196, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 %6, metadata !195, metadata !DIExpression()), !dbg !199
  %7 = icmp eq i32 %6, %0, !dbg !200
  br i1 %7, label %8, label %3, !dbg !203, !llvm.loop !207

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ], !dbg !209
  call void @llvm.dbg.value(metadata i32 %9, metadata !196, metadata !DIExpression()), !dbg !198
  ret i32 %9, !dbg !210
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !211 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !213, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i8** undef, metadata !214, metadata !DIExpression()), !dbg !217
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !218
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !219
  call void @llvm.dbg.value(metadata i32 0, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 0, metadata !215, metadata !DIExpression()), !dbg !220
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 1, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 1, metadata !215, metadata !DIExpression()), !dbg !220
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 2, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 2, metadata !215, metadata !DIExpression()), !dbg !220
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 3, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 3, metadata !215, metadata !DIExpression()), !dbg !220
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 4, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 4, metadata !215, metadata !DIExpression()), !dbg !220
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 5, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 5, metadata !215, metadata !DIExpression()), !dbg !220
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 6, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 6, metadata !215, metadata !DIExpression()), !dbg !220
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 7, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 7, metadata !215, metadata !DIExpression()), !dbg !220
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 8, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 8, metadata !215, metadata !DIExpression()), !dbg !220
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 9, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 9, metadata !215, metadata !DIExpression()), !dbg !220
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 10, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 10, metadata !215, metadata !DIExpression()), !dbg !220
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !223
  ret void, !dbg !224
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !225 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !227, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8** undef, metadata !228, metadata !DIExpression()), !dbg !233
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !234
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !236
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !236
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !237
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !238
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !230, metadata !DIExpression(DW_OP_deref)), !dbg !239
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !241
  call void @llvm.dbg.value(metadata i32 1, metadata !229, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 1, metadata !229, metadata !DIExpression()), !dbg !236
  %8 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !237
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !238
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !230, metadata !DIExpression(DW_OP_deref)), !dbg !239
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !241
  call void @llvm.dbg.value(metadata i32 2, metadata !229, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 2, metadata !229, metadata !DIExpression()), !dbg !236
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !237
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !238
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !230, metadata !DIExpression(DW_OP_deref)), !dbg !239
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !241
  call void @llvm.dbg.value(metadata i32 3, metadata !229, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 3, metadata !229, metadata !DIExpression()), !dbg !236
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !244 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !246, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i8** undef, metadata !247, metadata !DIExpression()), !dbg !250
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !251
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !252
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !253
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 1, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 1, metadata !248, metadata !DIExpression()), !dbg !253
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 2, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 2, metadata !248, metadata !DIExpression()), !dbg !253
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 3, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 3, metadata !248, metadata !DIExpression()), !dbg !253
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 4, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 4, metadata !248, metadata !DIExpression()), !dbg !253
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 5, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 5, metadata !248, metadata !DIExpression()), !dbg !253
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 6, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 6, metadata !248, metadata !DIExpression()), !dbg !253
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 7, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 7, metadata !248, metadata !DIExpression()), !dbg !253
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 8, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 8, metadata !248, metadata !DIExpression()), !dbg !253
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 9, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 9, metadata !248, metadata !DIExpression()), !dbg !253
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #4, !dbg !254
  call void @llvm.dbg.value(metadata i32 10, metadata !248, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 10, metadata !248, metadata !DIExpression()), !dbg !253
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !258 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !260, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8** undef, metadata !261, metadata !DIExpression()), !dbg !266
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !267
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !268
  call void @llvm.dbg.value(metadata i32 0, metadata !262, metadata !DIExpression()), !dbg !269
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !262, metadata !DIExpression()), !dbg !269
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !271
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !272
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !273
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !274
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !263, metadata !DIExpression()), !dbg !272
  %9 = call i32 @nk_fiber_join(%struct.nk_fiber* %8) #4, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !276
  call void @llvm.dbg.value(metadata i32 1, metadata !262, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 1, metadata !262, metadata !DIExpression()), !dbg !269
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !271
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !272
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !273
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !274
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !263, metadata !DIExpression()), !dbg !272
  %13 = call i32 @nk_fiber_join(%struct.nk_fiber* %12) #4, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !276
  call void @llvm.dbg.value(metadata i32 2, metadata !262, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 2, metadata !262, metadata !DIExpression()), !dbg !269
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !271
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !272
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !273
  %16 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !274
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !263, metadata !DIExpression()), !dbg !272
  %17 = call i32 @nk_fiber_join(%struct.nk_fiber* %16) #4, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !276
  call void @llvm.dbg.value(metadata i32 3, metadata !262, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 3, metadata !262, metadata !DIExpression()), !dbg !269
  %18 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !277
  ret void, !dbg !278
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !279 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i8** undef, metadata !282, metadata !DIExpression()), !dbg !285
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !286
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !287
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !288
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()), !dbg !288
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 2, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 2, metadata !283, metadata !DIExpression()), !dbg !288
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 3, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 3, metadata !283, metadata !DIExpression()), !dbg !288
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 4, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 4, metadata !283, metadata !DIExpression()), !dbg !288
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 5, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 5, metadata !283, metadata !DIExpression()), !dbg !288
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 6, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 6, metadata !283, metadata !DIExpression()), !dbg !288
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 7, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 7, metadata !283, metadata !DIExpression()), !dbg !288
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 8, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 8, metadata !283, metadata !DIExpression()), !dbg !288
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 9, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 9, metadata !283, metadata !DIExpression()), !dbg !288
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #4, !dbg !289
  call void @llvm.dbg.value(metadata i32 10, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 10, metadata !283, metadata !DIExpression()), !dbg !288
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #4, !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !293 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !295, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i8** undef, metadata !296, metadata !DIExpression()), !dbg !300
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !301
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !302
  call void @llvm.dbg.value(metadata i32 0, metadata !297, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 0, metadata !297, metadata !DIExpression()), !dbg !303
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #4, !dbg !304
  call void @llvm.dbg.value(metadata i32 1, metadata !297, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 1, metadata !297, metadata !DIExpression()), !dbg !303
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #4, !dbg !304
  call void @llvm.dbg.value(metadata i32 2, metadata !297, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 2, metadata !297, metadata !DIExpression()), !dbg !303
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #4, !dbg !306
  %8 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !307
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !307
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !298, metadata !DIExpression(DW_OP_deref)), !dbg !308
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !309
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !310
  ret void, !dbg !310
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !311 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !313, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8** undef, metadata !314, metadata !DIExpression()), !dbg !318
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !319
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !320
  call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !321
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #4, !dbg !322
  %6 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !324
  call void @llvm.dbg.value(metadata i32 1, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 1, metadata !315, metadata !DIExpression()), !dbg !321
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #4, !dbg !322
  %8 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !324
  call void @llvm.dbg.value(metadata i32 2, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 2, metadata !315, metadata !DIExpression()), !dbg !321
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #4, !dbg !322
  %10 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !324
  call void @llvm.dbg.value(metadata i32 3, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 3, metadata !315, metadata !DIExpression()), !dbg !321
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #4, !dbg !322
  %12 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !324
  call void @llvm.dbg.value(metadata i32 4, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 4, metadata !315, metadata !DIExpression()), !dbg !321
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #4, !dbg !322
  %14 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !324
  call void @llvm.dbg.value(metadata i32 5, metadata !315, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 5, metadata !315, metadata !DIExpression()), !dbg !321
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !325
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !326
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !326
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !316, metadata !DIExpression(DW_OP_deref)), !dbg !327
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !329
  ret void, !dbg !329
}

; Function Attrs: noredzone
declare dso_local i32 @wrapper_nk_fiber_yield(...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !330 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !332, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8** undef, metadata !333, metadata !DIExpression()), !dbg !337
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !338
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !339
  call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !340
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 1, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 1, metadata !334, metadata !DIExpression()), !dbg !340
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 2, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 2, metadata !334, metadata !DIExpression()), !dbg !340
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 3, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 3, metadata !334, metadata !DIExpression()), !dbg !340
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 4, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 4, metadata !334, metadata !DIExpression()), !dbg !340
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 5, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 5, metadata !334, metadata !DIExpression()), !dbg !340
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 6, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 6, metadata !334, metadata !DIExpression()), !dbg !340
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 7, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 7, metadata !334, metadata !DIExpression()), !dbg !340
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 8, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 8, metadata !334, metadata !DIExpression()), !dbg !340
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 9, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 9, metadata !334, metadata !DIExpression()), !dbg !340
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #4, !dbg !341
  call void @llvm.dbg.value(metadata i32 10, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 10, metadata !334, metadata !DIExpression()), !dbg !340
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #4, !dbg !343
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !344
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !335, metadata !DIExpression(DW_OP_deref)), !dbg !345
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !347
  ret void, !dbg !347
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !348 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !350, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i8** undef, metadata !351, metadata !DIExpression()), !dbg !355
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !356
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 0, metadata !352, metadata !DIExpression()), !dbg !358
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #4, !dbg !359
  call void @llvm.dbg.value(metadata i32 1, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 1, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 2, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 2, metadata !352, metadata !DIExpression()), !dbg !358
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #4, !dbg !359
  call void @llvm.dbg.value(metadata i32 3, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 3, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 4, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 4, metadata !352, metadata !DIExpression()), !dbg !358
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #4, !dbg !359
  call void @llvm.dbg.value(metadata i32 5, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 5, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 6, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 6, metadata !352, metadata !DIExpression()), !dbg !358
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #4, !dbg !359
  call void @llvm.dbg.value(metadata i32 7, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 7, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 8, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 8, metadata !352, metadata !DIExpression()), !dbg !358
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #4, !dbg !359
  call void @llvm.dbg.value(metadata i32 9, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 9, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 10, metadata !352, metadata !DIExpression()), !dbg !358
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !366 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !368, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i8** undef, metadata !369, metadata !DIExpression()), !dbg !373
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !374
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !375
  call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()), !dbg !376
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #4, !dbg !377
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 3, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 3, metadata !370, metadata !DIExpression()), !dbg !376
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #4, !dbg !377
  call void @llvm.dbg.value(metadata i32 4, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 4, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 5, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 5, metadata !370, metadata !DIExpression()), !dbg !376
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #4, !dbg !377
  call void @llvm.dbg.value(metadata i32 6, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 6, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 7, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 7, metadata !370, metadata !DIExpression()), !dbg !376
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #4, !dbg !377
  call void @llvm.dbg.value(metadata i32 8, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 8, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 9, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 9, metadata !370, metadata !DIExpression()), !dbg !376
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #4, !dbg !377
  call void @llvm.dbg.value(metadata i32 10, metadata !370, metadata !DIExpression()), !dbg !376
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !382
  ret void, !dbg !383
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !386, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i8** undef, metadata !387, metadata !DIExpression()), !dbg !391
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !392
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !393
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !394
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !395
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !389, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !394
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !397
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !399
  call void @llvm.dbg.value(metadata i32 1, metadata !388, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 1, metadata !388, metadata !DIExpression()), !dbg !394
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !397
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !399
  call void @llvm.dbg.value(metadata i32 2, metadata !388, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 2, metadata !388, metadata !DIExpression()), !dbg !394
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !397
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !399
  call void @llvm.dbg.value(metadata i32 3, metadata !388, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 3, metadata !388, metadata !DIExpression()), !dbg !394
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !397
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !399
  call void @llvm.dbg.value(metadata i32 4, metadata !388, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 4, metadata !388, metadata !DIExpression()), !dbg !394
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !397
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !399
  call void @llvm.dbg.value(metadata i32 5, metadata !388, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 5, metadata !388, metadata !DIExpression()), !dbg !394
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !402 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8** undef, metadata !405, metadata !DIExpression()), !dbg !409
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !410
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !411
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !412
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !413
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !407, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()), !dbg !412
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !415
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !417
  call void @llvm.dbg.value(metadata i32 1, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 1, metadata !406, metadata !DIExpression()), !dbg !412
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !415
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !417
  call void @llvm.dbg.value(metadata i32 2, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 2, metadata !406, metadata !DIExpression()), !dbg !412
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !415
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !417
  call void @llvm.dbg.value(metadata i32 3, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 3, metadata !406, metadata !DIExpression()), !dbg !412
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !415
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !417
  call void @llvm.dbg.value(metadata i32 4, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 4, metadata !406, metadata !DIExpression()), !dbg !412
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !415
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !417
  call void @llvm.dbg.value(metadata i32 5, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 5, metadata !406, metadata !DIExpression()), !dbg !412
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #4, !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i8** undef, metadata !423, metadata !DIExpression()), !dbg !427
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !428
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !429
  call void @llvm.dbg.value(metadata i32 0, metadata !424, metadata !DIExpression()), !dbg !430
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !431
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !425, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i32 0, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 0, metadata !424, metadata !DIExpression()), !dbg !430
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !433
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !435
  call void @llvm.dbg.value(metadata i32 1, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 1, metadata !424, metadata !DIExpression()), !dbg !430
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !433
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !435
  call void @llvm.dbg.value(metadata i32 2, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 2, metadata !424, metadata !DIExpression()), !dbg !430
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !433
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !435
  call void @llvm.dbg.value(metadata i32 3, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 3, metadata !424, metadata !DIExpression()), !dbg !430
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !433
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !435
  call void @llvm.dbg.value(metadata i32 4, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 4, metadata !424, metadata !DIExpression()), !dbg !430
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !433
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !435
  call void @llvm.dbg.value(metadata i32 5, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i32 5, metadata !424, metadata !DIExpression()), !dbg !430
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #4, !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !438 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !440, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i8** undef, metadata !441, metadata !DIExpression()), !dbg !445
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !446
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !447
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !448
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !449
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !443, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !448
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !451
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !453
  call void @llvm.dbg.value(metadata i32 1, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 1, metadata !442, metadata !DIExpression()), !dbg !448
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !451
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !453
  call void @llvm.dbg.value(metadata i32 2, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 2, metadata !442, metadata !DIExpression()), !dbg !448
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !451
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !453
  call void @llvm.dbg.value(metadata i32 3, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 3, metadata !442, metadata !DIExpression()), !dbg !448
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !451
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !453
  call void @llvm.dbg.value(metadata i32 4, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 4, metadata !442, metadata !DIExpression()), !dbg !448
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !451
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !453
  call void @llvm.dbg.value(metadata i32 5, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 5, metadata !442, metadata !DIExpression()), !dbg !448
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !456 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !458, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i8** undef, metadata !459, metadata !DIExpression()), !dbg !463
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !464
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !465
  call void @llvm.dbg.value(metadata i32 0, metadata !460, metadata !DIExpression()), !dbg !466
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !467
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !461, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 0, metadata !460, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 0, metadata !460, metadata !DIExpression()), !dbg !466
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #4, !dbg !469
  call void @llvm.dbg.value(metadata i32 1, metadata !460, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 1, metadata !460, metadata !DIExpression()), !dbg !466
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #4, !dbg !469
  call void @llvm.dbg.value(metadata i32 2, metadata !460, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 2, metadata !460, metadata !DIExpression()), !dbg !466
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #4, !dbg !469
  call void @llvm.dbg.value(metadata i32 3, metadata !460, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 3, metadata !460, metadata !DIExpression()), !dbg !466
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #4, !dbg !469
  call void @llvm.dbg.value(metadata i32 4, metadata !460, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 4, metadata !460, metadata !DIExpression()), !dbg !466
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #4, !dbg !469
  call void @llvm.dbg.value(metadata i32 5, metadata !460, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 5, metadata !460, metadata !DIExpression()), !dbg !466
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !473 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !475, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i8** undef, metadata !476, metadata !DIExpression()), !dbg !481
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !482
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !483
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !484
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !485
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !478, metadata !DIExpression()), !dbg !486
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !487
  br i1 %5, label %8, label %6, !dbg !489

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #4, !dbg !490
  br label %8, !dbg !492

; <label>:8:                                      ; preds = %2, %6
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !479, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !484
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !494
  call void @llvm.dbg.value(metadata i32 1, metadata !477, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 1, metadata !477, metadata !DIExpression()), !dbg !484
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !494
  call void @llvm.dbg.value(metadata i32 2, metadata !477, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 2, metadata !477, metadata !DIExpression()), !dbg !484
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !494
  call void @llvm.dbg.value(metadata i32 3, metadata !477, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 3, metadata !477, metadata !DIExpression()), !dbg !484
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !494
  call void @llvm.dbg.value(metadata i32 4, metadata !477, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 4, metadata !477, metadata !DIExpression()), !dbg !484
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !494
  call void @llvm.dbg.value(metadata i32 5, metadata !477, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 5, metadata !477, metadata !DIExpression()), !dbg !484
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #4, !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !498 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !500, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8** undef, metadata !501, metadata !DIExpression()), !dbg !503
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !504
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !505
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !508 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !510, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8** undef, metadata !511, metadata !DIExpression()), !dbg !520
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !521
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !512, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 0, metadata !512, metadata !DIExpression()), !dbg !523
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !524
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %5, metadata !513, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !514, metadata !DIExpression()), !dbg !526
  %6 = icmp eq %struct.nk_fiber* %5, null, !dbg !527
  br i1 %6, label %11, label %7, !dbg !528

; <label>:7:                                      ; preds = %26, %22, %18, %11, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !512, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %8, metadata !512, metadata !DIExpression()), !dbg !523
  %9 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !529
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !529
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !516, metadata !DIExpression(DW_OP_deref)), !dbg !530
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #4, !dbg !531
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !532
  br label %15

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !533
  call void @llvm.dbg.value(metadata i32 1, metadata !512, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 1, metadata !512, metadata !DIExpression()), !dbg !523
  %13 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !524
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !513, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !514, metadata !DIExpression()), !dbg !526
  %14 = icmp eq %struct.nk_fiber* %13, null, !dbg !527
  br i1 %14, label %18, label %7, !dbg !528

; <label>:15:                                     ; preds = %30, %7
  %16 = phi i32 [ %8, %7 ], [ 5, %30 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !512, metadata !DIExpression()), !dbg !523
  %17 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %16) #4, !dbg !534
  ret void, !dbg !535

; <label>:18:                                     ; preds = %11
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !533
  call void @llvm.dbg.value(metadata i32 2, metadata !512, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 2, metadata !512, metadata !DIExpression()), !dbg !523
  %20 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !524
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !513, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !514, metadata !DIExpression()), !dbg !526
  %21 = icmp eq %struct.nk_fiber* %20, null, !dbg !527
  br i1 %21, label %22, label %7, !dbg !528

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !533
  call void @llvm.dbg.value(metadata i32 3, metadata !512, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 3, metadata !512, metadata !DIExpression()), !dbg !523
  %24 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !524
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !513, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !514, metadata !DIExpression()), !dbg !526
  %25 = icmp eq %struct.nk_fiber* %24, null, !dbg !527
  br i1 %25, label %26, label %7, !dbg !528

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !533
  call void @llvm.dbg.value(metadata i32 4, metadata !512, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 4, metadata !512, metadata !DIExpression()), !dbg !523
  %28 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !524
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %28, metadata !513, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !514, metadata !DIExpression()), !dbg !526
  %29 = icmp eq %struct.nk_fiber* %28, null, !dbg !527
  br i1 %29, label %30, label %7, !dbg !528

; <label>:30:                                     ; preds = %26
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !533
  call void @llvm.dbg.value(metadata i32 5, metadata !512, metadata !DIExpression()), !dbg !523
  br label %15, !dbg !534
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !536 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !538, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i8** undef, metadata !539, metadata !DIExpression()), !dbg !545
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !546
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !547
  call void @llvm.dbg.value(metadata i32 0, metadata !540, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i32 0, metadata !540, metadata !DIExpression()), !dbg !548
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !549
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !541, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !542, metadata !DIExpression()), !dbg !551
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !552
  call void @llvm.dbg.value(metadata i32 1, metadata !540, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i32 1, metadata !540, metadata !DIExpression()), !dbg !548
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !549
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !541, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !542, metadata !DIExpression()), !dbg !551
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !552
  call void @llvm.dbg.value(metadata i32 2, metadata !540, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i32 2, metadata !540, metadata !DIExpression()), !dbg !548
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !549
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !541, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !542, metadata !DIExpression()), !dbg !551
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !552
  call void @llvm.dbg.value(metadata i32 3, metadata !540, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i32 3, metadata !540, metadata !DIExpression()), !dbg !548
  %10 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !549
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %10, metadata !541, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !542, metadata !DIExpression()), !dbg !551
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !552
  call void @llvm.dbg.value(metadata i32 4, metadata !540, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i32 4, metadata !540, metadata !DIExpression()), !dbg !548
  %12 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !549
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !541, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !542, metadata !DIExpression()), !dbg !551
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !552
  call void @llvm.dbg.value(metadata i32 5, metadata !540, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i32 5, metadata !540, metadata !DIExpression()), !dbg !548
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #4, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !555 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !557, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i8** undef, metadata !558, metadata !DIExpression()), !dbg !563
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !564
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !565
  call void @llvm.dbg.value(metadata i32 0, metadata !559, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i64 0, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i64 0, metadata !561, metadata !DIExpression()), !dbg !568
  br label %4, !dbg !569

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 %6, metadata !559, metadata !DIExpression()), !dbg !566
  %7 = icmp eq i32 %6, 2, !dbg !570
  br i1 %7, label %8, label %16, !dbg !573

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !574, !srcloc !584
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !574
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !574
  call void @llvm.dbg.value(metadata i32 %10, metadata !580, metadata !DIExpression()) #5, !dbg !585
  call void @llvm.dbg.value(metadata i32 %11, metadata !581, metadata !DIExpression()) #5, !dbg !586
  %12 = zext i32 %10 to i64, !dbg !587
  %13 = zext i32 %11 to i64, !dbg !588
  %14 = shl nuw i64 %13, 32, !dbg !589
  %15 = or i64 %14, %12, !dbg !590
  call void @llvm.dbg.value(metadata i64 %15, metadata !560, metadata !DIExpression()), !dbg !567
  br label %16, !dbg !591

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !592
  %18 = add nuw nsw i32 %6, 1, !dbg !593
  call void @llvm.dbg.value(metadata i64 %17, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 %18, metadata !559, metadata !DIExpression()), !dbg !566
  %19 = icmp eq i32 %18, 100000, !dbg !594
  br i1 %19, label %20, label %4, !dbg !569, !llvm.loop !595

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i64 %17, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i64 %17, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i64 %17, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i64 %17, metadata !560, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 100000, metadata !559, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i64 %17, metadata !560, metadata !DIExpression()), !dbg !567
  %21 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !597, !srcloc !584
  %22 = extractvalue { i32, i32 } %21, 0, !dbg !597
  %23 = extractvalue { i32, i32 } %21, 1, !dbg !597
  call void @llvm.dbg.value(metadata i32 %22, metadata !580, metadata !DIExpression()) #5, !dbg !599
  call void @llvm.dbg.value(metadata i32 %23, metadata !581, metadata !DIExpression()) #5, !dbg !600
  %24 = zext i32 %22 to i64, !dbg !601
  %25 = zext i32 %23 to i64, !dbg !602
  %26 = shl nuw i64 %25, 32, !dbg !603
  %27 = or i64 %26, %24, !dbg !604
  call void @llvm.dbg.value(metadata i64 %27, metadata !561, metadata !DIExpression()), !dbg !568
  %28 = sub i64 %27, %17, !dbg !605
  %29 = udiv i64 %28, 100000, !dbg !606
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %28, i64 %29) #4, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !609 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !611, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i8** undef, metadata !612, metadata !DIExpression()), !dbg !615
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !616
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !617
  call void @llvm.dbg.value(metadata i32 0, metadata !613, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 undef, metadata !613, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 100000, metadata !613, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 100000, metadata !613, metadata !DIExpression()), !dbg !618
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #4, !dbg !619
  ret void, !dbg !620
}

; Function Attrs: noredzone nounwind
define dso_local void @benchmark_timer1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !621 {
  %3 = alloca [2000 x i64], align 16
  call void @llvm.dbg.value(metadata i8* undef, metadata !623, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i8** undef, metadata !624, metadata !DIExpression()), !dbg !633
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !634
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !635
  call void @llvm.dbg.value(metadata i32 0, metadata !625, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i64 0, metadata !626, metadata !DIExpression()), !dbg !637
  %5 = bitcast [2000 x i64]* %3 to i8*, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 16000, i8* nonnull %5) #5, !dbg !638
  call void @llvm.dbg.declare(metadata [2000 x i64]* %3, metadata !627, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.value(metadata i32 0, metadata !625, metadata !DIExpression()), !dbg !636
  br label %6, !dbg !640

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %16, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !625, metadata !DIExpression()), !dbg !636
  tail call void @nk_simple_timing_loop(i64 100) #4, !dbg !641
  %8 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !643, !srcloc !584
  %9 = extractvalue { i32, i32 } %8, 0, !dbg !643
  %10 = extractvalue { i32, i32 } %8, 1, !dbg !643
  call void @llvm.dbg.value(metadata i32 %9, metadata !580, metadata !DIExpression()) #5, !dbg !645
  call void @llvm.dbg.value(metadata i32 %10, metadata !581, metadata !DIExpression()) #5, !dbg !646
  %11 = zext i32 %9 to i64, !dbg !647
  %12 = zext i32 %10 to i64, !dbg !648
  %13 = shl nuw i64 %12, 32, !dbg !649
  %14 = or i64 %13, %11, !dbg !650
  %15 = getelementptr [2000 x i64], [2000 x i64]* %3, i64 0, i64 %7, !dbg !651
  store i64 %14, i64* %15, align 8, !dbg !652
  %16 = add nuw nsw i64 %7, 1, !dbg !653
  call void @llvm.dbg.value(metadata i32 undef, metadata !625, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !636
  %17 = icmp eq i64 %16, 2000, !dbg !654
  br i1 %17, label %18, label %6, !dbg !640, !llvm.loop !655

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds [2000 x i64], [2000 x i64]* %3, i64 0, i64 0
  %20 = load i64, i64* %19, align 16, !dbg !657
  br label %21, !dbg !660

; <label>:21:                                     ; preds = %21, %18
  %22 = phi i64 [ %20, %18 ], [ %27, %21 ], !dbg !657
  %23 = phi i64 [ 1, %18 ], [ %31, %21 ]
  %24 = phi i32 [ 1, %18 ], [ %32, %21 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !631, metadata !DIExpression()), !dbg !661
  %25 = add nsw i32 %24, -1, !dbg !660
  %26 = getelementptr [2000 x i64], [2000 x i64]* %3, i64 0, i64 %23, !dbg !662
  %27 = load i64, i64* %26, align 8, !dbg !662
  %28 = sub i64 %27, %22, !dbg !663
  %29 = trunc i64 %23 to i32, !dbg !664
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0), i32 %25, i32 %29, i64 %28) #4, !dbg !664
  %31 = add nuw nsw i64 %23, 1, !dbg !665
  %32 = add nuw nsw i32 %24, 1, !dbg !665
  call void @llvm.dbg.value(metadata i32 %32, metadata !631, metadata !DIExpression()), !dbg !661
  %33 = icmp eq i64 %31, 2000, !dbg !666
  br i1 %33, label %34, label %21, !dbg !667, !llvm.loop !668

; <label>:34:                                     ; preds = %21
  %35 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0)) #4, !dbg !670
  call void @llvm.lifetime.end.p0i8(i64 16000, i8* nonnull %5) #5, !dbg !671
  ret void, !dbg !671
}

; Function Attrs: noredzone
declare dso_local void @nk_simple_timing_loop(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @benchmark_timer2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !672 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8** undef, metadata !675, metadata !DIExpression()), !dbg !678
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !679
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !676, metadata !DIExpression()), !dbg !681
  br label %4, !dbg !682

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !676, metadata !DIExpression()), !dbg !681
  tail call void @nk_simple_timing_loop(i64 100) #4, !dbg !683
  %6 = add nuw nsw i32 %5, 1, !dbg !685
  call void @llvm.dbg.value(metadata i32 %6, metadata !676, metadata !DIExpression()), !dbg !681
  %7 = icmp eq i32 %6, 2000, !dbg !686
  br i1 %7, label %8, label %4, !dbg !682, !llvm.loop !687

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !689
  ret void, !dbg !690
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_benchmark1() local_unnamed_addr #0 !dbg !691 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !697
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !697
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !698
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !698
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !699, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !699
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !710
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !711
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !711
  %8 = load i64, i64* %7, align 8, !dbg !711
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !712
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !695, metadata !DIExpression(DW_OP_deref)), !dbg !713
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !714
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !696, metadata !DIExpression(DW_OP_deref)), !dbg !715
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !716
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !717
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !717
  ret i32 0, !dbg !718
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !719 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !723
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !723
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !724
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !725, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !725
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !727
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !728
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !728
  %8 = load i64, i64* %7, align 8, !dbg !728
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !729
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !721, metadata !DIExpression(DW_OP_deref)), !dbg !730
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !731
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !722, metadata !DIExpression(DW_OP_deref)), !dbg !732
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !733
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !734
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !734
  ret i32 0, !dbg !735
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !736 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !739
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !739
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !740, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !707, metadata !DIExpression()) #5, !dbg !740
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !706, metadata !DIExpression()) #5, !dbg !742
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !743
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !743
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !744
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !745
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !738, metadata !DIExpression(DW_OP_deref)), !dbg !746
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !748
  ret i32 0, !dbg !749
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !750 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !755
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !755
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !756
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !756
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !757
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !758, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !707, metadata !DIExpression()) #5, !dbg !758
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !706, metadata !DIExpression()) #5, !dbg !760
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !761
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !761
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !762
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %9) #4, !dbg !763
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !752, metadata !DIExpression(DW_OP_deref)), !dbg !764
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !765
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !753, metadata !DIExpression(DW_OP_deref)), !dbg !766
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !767
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !754, metadata !DIExpression(DW_OP_deref)), !dbg !768
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !769
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !770
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !770
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !770
  ret i32 0, !dbg !771
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !772 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !778
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !778
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !779
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !779
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !780
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !781
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !781
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !782, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !707, metadata !DIExpression()) #5, !dbg !782
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !706, metadata !DIExpression()) #5, !dbg !784
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !785
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !785
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !786
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !787
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !777, metadata !DIExpression(DW_OP_deref)), !dbg !788
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #4, !dbg !789
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !774, metadata !DIExpression(DW_OP_deref)), !dbg !790
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #4, !dbg !791
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !776, metadata !DIExpression(DW_OP_deref)), !dbg !792
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #4, !dbg !793
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !775, metadata !DIExpression(DW_OP_deref)), !dbg !794
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #4, !dbg !795
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !796
  %18 = load i64, i64* %17, align 8, !dbg !796
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !775, metadata !DIExpression(DW_OP_deref)), !dbg !794
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !797
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !774, metadata !DIExpression()), !dbg !790
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !798
  %21 = bitcast i8** %20 to i64*, !dbg !799
  store i64 %18, i64* %21, align 8, !dbg !799
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !800
  %23 = load i64, i64* %22, align 8, !dbg !800
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !776, metadata !DIExpression(DW_OP_deref)), !dbg !792
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !801
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !775, metadata !DIExpression()), !dbg !794
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !802
  %26 = bitcast i8** %25 to i64*, !dbg !803
  store i64 %23, i64* %26, align 8, !dbg !803
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !804
  %28 = load i64, i64* %27, align 8, !dbg !804
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !777, metadata !DIExpression(DW_OP_deref)), !dbg !788
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !805
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !776, metadata !DIExpression()), !dbg !792
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !806
  %31 = bitcast i8** %30 to i64*, !dbg !807
  store i64 %28, i64* %31, align 8, !dbg !807
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !808
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !774, metadata !DIExpression(DW_OP_deref)), !dbg !790
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !809
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !777, metadata !DIExpression()), !dbg !788
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !810
  %35 = bitcast i8** %34 to i64*, !dbg !811
  store i64 %32, i64* %35, align 8, !dbg !811
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !777, metadata !DIExpression()), !dbg !788
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #4, !dbg !812
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !813
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !774, metadata !DIExpression()), !dbg !790
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #4, !dbg !814
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !815
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !776, metadata !DIExpression()), !dbg !792
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #4, !dbg !816
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !817
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !775, metadata !DIExpression()), !dbg !794
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #4, !dbg !818
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !819
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !819
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !819
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !819
  ret i32 0, !dbg !820
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !821 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !824
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !825, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !707, metadata !DIExpression()) #5, !dbg !825
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !706, metadata !DIExpression()) #5, !dbg !827
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !828
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !828
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !829
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !830
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !823, metadata !DIExpression(DW_OP_deref)), !dbg !831
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !833
  ret i32 0, !dbg !834
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !835 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !838
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !838
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !839, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !707, metadata !DIExpression()) #5, !dbg !839
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !706, metadata !DIExpression()) #5, !dbg !841
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !842
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !842
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !843
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !844
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !845
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !847
  ret i32 0, !dbg !848
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !849 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !852
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !852
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !853, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !707, metadata !DIExpression()) #5, !dbg !853
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !706, metadata !DIExpression()) #5, !dbg !855
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !856
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !856
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !857
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !858
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !851, metadata !DIExpression(DW_OP_deref)), !dbg !859
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !861
  ret i32 0, !dbg !862
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !863 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !866
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !866
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !867, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !707, metadata !DIExpression()) #5, !dbg !867
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !706, metadata !DIExpression()) #5, !dbg !869
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !870
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !870
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !871
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !872
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !865, metadata !DIExpression(DW_OP_deref)), !dbg !873
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !875
  ret i32 0, !dbg !876
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !877 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !880
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !880
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !881, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !707, metadata !DIExpression()) #5, !dbg !881
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !706, metadata !DIExpression()) #5, !dbg !883
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !884
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !884
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !885
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !886
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !879, metadata !DIExpression(DW_OP_deref)), !dbg !887
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !889
  ret i32 0, !dbg !890
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !891 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !895
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !895
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !896
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !897, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !897
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !899
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !900
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !900
  %8 = load i64, i64* %7, align 8, !dbg !900
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !901
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !893, metadata !DIExpression(DW_OP_deref)), !dbg !902
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !903
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !894, metadata !DIExpression(DW_OP_deref)), !dbg !904
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !905
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !906
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !906
  ret i32 0, !dbg !907
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !908 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !910, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata i8* %1, metadata !911, metadata !DIExpression()), !dbg !913
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !914
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !914
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !916
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !917
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !917
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !918, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !707, metadata !DIExpression()) #5, !dbg !918
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !706, metadata !DIExpression()) #5, !dbg !920
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !921
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !921
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !922
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !923
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !752, metadata !DIExpression(DW_OP_deref)) #5, !dbg !924
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !925
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !753, metadata !DIExpression(DW_OP_deref)) #5, !dbg !926
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !927
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !754, metadata !DIExpression(DW_OP_deref)) #5, !dbg !928
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #4, !dbg !929
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !930
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !930
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !930
  ret i32 0, !dbg !931
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !932 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !934, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %1, metadata !935, metadata !DIExpression()), !dbg !937
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !938
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !940, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !940
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !942
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !943
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !943
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !944
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !945
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !738, metadata !DIExpression(DW_OP_deref)) #5, !dbg !946
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !947
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !948
  ret i32 0, !dbg !949
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !950 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !952, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i8* %1, metadata !953, metadata !DIExpression()), !dbg !955
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !956
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !956
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !958
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !959, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !707, metadata !DIExpression()) #5, !dbg !959
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !706, metadata !DIExpression()) #5, !dbg !961
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !962
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !962
  %10 = load i64, i64* %9, align 8, !dbg !962
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !963
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !721, metadata !DIExpression(DW_OP_deref)) #5, !dbg !964
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !965
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !722, metadata !DIExpression(DW_OP_deref)) #5, !dbg !966
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !967
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !968
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !968
  ret i32 0, !dbg !969
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !972, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i8* %1, metadata !973, metadata !DIExpression()), !dbg !975
  %3 = tail call i32 @test_yield_to() #6, !dbg !976
  ret i32 0, !dbg !977
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !978 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()), !dbg !983
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !984
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !986, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !988
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !989
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !989
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !990
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !991
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !823, metadata !DIExpression(DW_OP_deref)) #5, !dbg !992
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !993
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !994
  ret i32 0, !dbg !995
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !996 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !998, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8* %1, metadata !999, metadata !DIExpression()), !dbg !1001
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1002
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1002
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1004, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !1006
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1007
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1007
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1008
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !837, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1010
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1011
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1012
  ret i32 0, !dbg !1013
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1014 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1016, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %1, metadata !1017, metadata !DIExpression()), !dbg !1019
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1020
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1022, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !1024
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1025
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1025
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1026
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1027
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !851, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1028
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1029
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1030
  ret i32 0, !dbg !1031
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1032 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1034, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %1, metadata !1035, metadata !DIExpression()), !dbg !1037
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1038
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1038
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1040, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !1040
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !1042
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1043
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1043
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1044
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1045
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !865, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1046
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1047
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1048
  ret i32 0, !dbg !1049
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1050 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %1, metadata !1053, metadata !DIExpression()), !dbg !1055
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1056
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1056
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1058, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !707, metadata !DIExpression()) #5, !dbg !1058
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !706, metadata !DIExpression()) #5, !dbg !1060
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1061
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1061
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1062
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1063
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !879, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1064
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1066
  ret i32 0, !dbg !1067
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1068 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1070, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8* %1, metadata !1071, metadata !DIExpression()), !dbg !1073
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1074
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1074
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1076
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1077, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !707, metadata !DIExpression()) #5, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !706, metadata !DIExpression()) #5, !dbg !1079
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1080
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1080
  %10 = load i64, i64* %9, align 8, !dbg !1080
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !893, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1082
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !894, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1084
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !1085
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1086
  ret i32 0, !dbg !1087
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers11(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1088 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1090, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %1, metadata !1091, metadata !DIExpression()), !dbg !1093
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1094
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1096
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1096
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1097, !srcloc !709
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !707, metadata !DIExpression()) #5, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !706, metadata !DIExpression()) #5, !dbg !1099
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1100
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1100
  %10 = load i64, i64* %9, align 8, !dbg !1100
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1101
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !695, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1102
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1103
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !696, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1104
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1106
  ret i32 0, !dbg !1107
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!185, !186, !187, !188}
!llvm.ident = !{!189}

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
!129 = !{!130, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !0, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl", scope: !2, file: !3, line: 703, type: !132, isLocal: true, isDefinition: true, align: 64)
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
!144 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl2", scope: !2, file: !3, line: 704, type: !132, isLocal: true, isDefinition: true, align: 64)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl3", scope: !2, file: !3, line: 705, type: !132, isLocal: true, isDefinition: true, align: 64)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl4", scope: !2, file: !3, line: 706, type: !132, isLocal: true, isDefinition: true, align: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl5", scope: !2, file: !3, line: 707, type: !132, isLocal: true, isDefinition: true, align: 64)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl6", scope: !2, file: !3, line: 708, type: !132, isLocal: true, isDefinition: true, align: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl7", scope: !2, file: !3, line: 709, type: !132, isLocal: true, isDefinition: true, align: 64)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl8", scope: !2, file: !3, line: 710, type: !132, isLocal: true, isDefinition: true, align: 64)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl9", scope: !2, file: !3, line: 711, type: !132, isLocal: true, isDefinition: true, align: 64)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl10", scope: !2, file: !3, line: 712, type: !132, isLocal: true, isDefinition: true, align: 64)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl11", scope: !2, file: !3, line: 713, type: !132, isLocal: true, isDefinition: true, align: 64)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "fibers_impl", scope: !2, file: !3, line: 633, type: !133, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "fibers_impl2", scope: !2, file: !3, line: 639, type: !133, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "fibers_impl3", scope: !2, file: !3, line: 645, type: !133, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "fibers_impl4", scope: !2, file: !3, line: 651, type: !133, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "fibers_impl5", scope: !2, file: !3, line: 657, type: !133, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "fibers_impl6", scope: !2, file: !3, line: 663, type: !133, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "fibers_impl7", scope: !2, file: !3, line: 669, type: !133, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "fibers_impl8", scope: !2, file: !3, line: 675, type: !133, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "fibers_impl9", scope: !2, file: !3, line: 681, type: !133, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "fibers_impl10", scope: !2, file: !3, line: 687, type: !133, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "fibers_impl11", scope: !2, file: !3, line: 694, type: !133, isLocal: true, isDefinition: true)
!185 = !{i32 2, !"Dwarf Version", i32 4}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{i32 1, !"wchar_size", i32 4}
!188 = !{i32 1, !"Code Model", i32 4}
!189 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!190 = distinct !DISubprogram(name: "souradip", scope: !3, file: !3, line: 45, type: !191, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!50, !50}
!193 = !{!194, !195, !196}
!194 = !DILocalVariable(name: "a", arg: 1, scope: !190, file: !3, line: 45, type: !50)
!195 = !DILocalVariable(name: "i", scope: !190, file: !3, line: 47, type: !50)
!196 = !DILocalVariable(name: "b", scope: !190, file: !3, line: 47, type: !50)
!197 = !DILocation(line: 45, column: 18, scope: !190)
!198 = !DILocation(line: 47, column: 10, scope: !190)
!199 = !DILocation(line: 47, column: 7, scope: !190)
!200 = !DILocation(line: 49, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 49, column: 3)
!202 = distinct !DILexicalBlock(scope: !190, file: !3, line: 49, column: 3)
!203 = !DILocation(line: 49, column: 3, scope: !202)
!204 = !DILocation(line: 51, column: 5, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 50, column: 3)
!206 = !DILocation(line: 49, column: 22, scope: !201)
!207 = distinct !{!207, !203, !208}
!208 = !DILocation(line: 53, column: 3, scope: !202)
!209 = !DILocation(line: 0, scope: !190)
!210 = !DILocation(line: 55, column: 3, scope: !190)
!211 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 68, type: !64, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213, !214, !215}
!213 = !DILocalVariable(name: "i", arg: 1, scope: !211, file: !3, line: 68, type: !33)
!214 = !DILocalVariable(name: "o", arg: 2, scope: !211, file: !3, line: 68, type: !66)
!215 = !DILocalVariable(name: "a", scope: !211, file: !3, line: 71, type: !50)
!216 = !DILocation(line: 68, column: 24, scope: !211)
!217 = !DILocation(line: 68, column: 34, scope: !211)
!218 = !DILocation(line: 70, column: 19, scope: !211)
!219 = !DILocation(line: 70, column: 3, scope: !211)
!220 = !DILocation(line: 71, column: 7, scope: !211)
!221 = !DILocation(line: 73, column: 5, scope: !222)
!222 = distinct !DILexicalBlock(scope: !211, file: !3, line: 72, column: 16)
!223 = !DILocation(line: 76, column: 3, scope: !211)
!224 = !DILocation(line: 77, column: 1, scope: !211)
!225 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227, !228, !229, !230}
!227 = !DILocalVariable(name: "i", arg: 1, scope: !225, file: !3, line: 79, type: !33)
!228 = !DILocalVariable(name: "o", arg: 2, scope: !225, file: !3, line: 79, type: !66)
!229 = !DILocalVariable(name: "a", scope: !225, file: !3, line: 82, type: !50)
!230 = !DILocalVariable(name: "f_inner", scope: !231, file: !3, line: 85, type: !24)
!231 = distinct !DILexicalBlock(scope: !225, file: !3, line: 83, column: 15)
!232 = !DILocation(line: 79, column: 24, scope: !225)
!233 = !DILocation(line: 79, column: 34, scope: !225)
!234 = !DILocation(line: 81, column: 19, scope: !225)
!235 = !DILocation(line: 81, column: 3, scope: !225)
!236 = !DILocation(line: 82, column: 7, scope: !225)
!237 = !DILocation(line: 84, column: 5, scope: !231)
!238 = !DILocation(line: 85, column: 5, scope: !231)
!239 = !DILocation(line: 85, column: 17, scope: !231)
!240 = !DILocation(line: 86, column: 5, scope: !231)
!241 = !DILocation(line: 88, column: 3, scope: !225)
!242 = !DILocation(line: 89, column: 3, scope: !225)
!243 = !DILocation(line: 90, column: 1, scope: !225)
!244 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!245 = !{!246, !247, !248}
!246 = !DILocalVariable(name: "i", arg: 1, scope: !244, file: !3, line: 92, type: !33)
!247 = !DILocalVariable(name: "o", arg: 2, scope: !244, file: !3, line: 92, type: !66)
!248 = !DILocalVariable(name: "a", scope: !244, file: !3, line: 95, type: !50)
!249 = !DILocation(line: 92, column: 29, scope: !244)
!250 = !DILocation(line: 92, column: 39, scope: !244)
!251 = !DILocation(line: 94, column: 19, scope: !244)
!252 = !DILocation(line: 94, column: 3, scope: !244)
!253 = !DILocation(line: 95, column: 7, scope: !244)
!254 = !DILocation(line: 97, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !244, file: !3, line: 96, column: 16)
!256 = !DILocation(line: 100, column: 3, scope: !244)
!257 = !DILocation(line: 101, column: 1, scope: !244)
!258 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!259 = !{!260, !261, !262, !263}
!260 = !DILocalVariable(name: "i", arg: 1, scope: !258, file: !3, line: 103, type: !33)
!261 = !DILocalVariable(name: "o", arg: 2, scope: !258, file: !3, line: 103, type: !66)
!262 = !DILocalVariable(name: "a", scope: !258, file: !3, line: 106, type: !50)
!263 = !DILocalVariable(name: "f_inner_join", scope: !264, file: !3, line: 109, type: !24)
!264 = distinct !DILexicalBlock(scope: !258, file: !3, line: 107, column: 15)
!265 = !DILocation(line: 103, column: 29, scope: !258)
!266 = !DILocation(line: 103, column: 39, scope: !258)
!267 = !DILocation(line: 105, column: 19, scope: !258)
!268 = !DILocation(line: 105, column: 3, scope: !258)
!269 = !DILocation(line: 106, column: 7, scope: !258)
!270 = !DILocation(line: 108, column: 5, scope: !264)
!271 = !DILocation(line: 109, column: 5, scope: !264)
!272 = !DILocation(line: 109, column: 17, scope: !264)
!273 = !DILocation(line: 110, column: 5, scope: !264)
!274 = !DILocation(line: 111, column: 19, scope: !264)
!275 = !DILocation(line: 111, column: 5, scope: !264)
!276 = !DILocation(line: 113, column: 3, scope: !258)
!277 = !DILocation(line: 114, column: 3, scope: !258)
!278 = !DILocation(line: 115, column: 1, scope: !258)
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
!291 = !DILocation(line: 127, column: 3, scope: !279)
!292 = !DILocation(line: 128, column: 1, scope: !279)
!293 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!294 = !{!295, !296, !297, !298}
!295 = !DILocalVariable(name: "i", arg: 1, scope: !293, file: !3, line: 131, type: !33)
!296 = !DILocalVariable(name: "o", arg: 2, scope: !293, file: !3, line: 131, type: !66)
!297 = !DILocalVariable(name: "a", scope: !293, file: !3, line: 134, type: !50)
!298 = !DILocalVariable(name: "f4", scope: !293, file: !3, line: 140, type: !24)
!299 = !DILocation(line: 131, column: 19, scope: !293)
!300 = !DILocation(line: 131, column: 29, scope: !293)
!301 = !DILocation(line: 133, column: 19, scope: !293)
!302 = !DILocation(line: 133, column: 3, scope: !293)
!303 = !DILocation(line: 134, column: 7, scope: !293)
!304 = !DILocation(line: 136, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !293, file: !3, line: 135, column: 15)
!306 = !DILocation(line: 139, column: 3, scope: !293)
!307 = !DILocation(line: 140, column: 3, scope: !293)
!308 = !DILocation(line: 140, column: 15, scope: !293)
!309 = !DILocation(line: 141, column: 3, scope: !293)
!310 = !DILocation(line: 142, column: 1, scope: !293)
!311 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DILocalVariable(name: "i", arg: 1, scope: !311, file: !3, line: 144, type: !33)
!314 = !DILocalVariable(name: "o", arg: 2, scope: !311, file: !3, line: 144, type: !66)
!315 = !DILocalVariable(name: "a", scope: !311, file: !3, line: 147, type: !50)
!316 = !DILocalVariable(name: "f3", scope: !311, file: !3, line: 154, type: !24)
!317 = !DILocation(line: 144, column: 19, scope: !311)
!318 = !DILocation(line: 144, column: 29, scope: !311)
!319 = !DILocation(line: 146, column: 19, scope: !311)
!320 = !DILocation(line: 146, column: 3, scope: !311)
!321 = !DILocation(line: 147, column: 7, scope: !311)
!322 = !DILocation(line: 149, column: 5, scope: !323)
!323 = distinct !DILexicalBlock(scope: !311, file: !3, line: 148, column: 15)
!324 = !DILocation(line: 150, column: 5, scope: !323)
!325 = !DILocation(line: 153, column: 3, scope: !311)
!326 = !DILocation(line: 154, column: 3, scope: !311)
!327 = !DILocation(line: 154, column: 15, scope: !311)
!328 = !DILocation(line: 155, column: 3, scope: !311)
!329 = !DILocation(line: 156, column: 1, scope: !311)
!330 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!331 = !{!332, !333, !334, !335}
!332 = !DILocalVariable(name: "i", arg: 1, scope: !330, file: !3, line: 159, type: !33)
!333 = !DILocalVariable(name: "o", arg: 2, scope: !330, file: !3, line: 159, type: !66)
!334 = !DILocalVariable(name: "a", scope: !330, file: !3, line: 162, type: !50)
!335 = !DILocalVariable(name: "f4", scope: !330, file: !3, line: 168, type: !24)
!336 = !DILocation(line: 159, column: 19, scope: !330)
!337 = !DILocation(line: 159, column: 29, scope: !330)
!338 = !DILocation(line: 161, column: 19, scope: !330)
!339 = !DILocation(line: 161, column: 3, scope: !330)
!340 = !DILocation(line: 162, column: 7, scope: !330)
!341 = !DILocation(line: 164, column: 5, scope: !342)
!342 = distinct !DILexicalBlock(scope: !330, file: !3, line: 163, column: 16)
!343 = !DILocation(line: 167, column: 3, scope: !330)
!344 = !DILocation(line: 168, column: 3, scope: !330)
!345 = !DILocation(line: 168, column: 15, scope: !330)
!346 = !DILocation(line: 169, column: 3, scope: !330)
!347 = !DILocation(line: 170, column: 1, scope: !330)
!348 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!349 = !{!350, !351, !352}
!350 = !DILocalVariable(name: "i", arg: 1, scope: !348, file: !3, line: 172, type: !33)
!351 = !DILocalVariable(name: "o", arg: 2, scope: !348, file: !3, line: 172, type: !66)
!352 = !DILocalVariable(name: "i", scope: !353, file: !3, line: 174, type: !50)
!353 = distinct !DILexicalBlock(scope: !348, file: !3, line: 174, column: 3)
!354 = !DILocation(line: 172, column: 23, scope: !348)
!355 = !DILocation(line: 172, column: 33, scope: !348)
!356 = !DILocation(line: 173, column: 19, scope: !348)
!357 = !DILocation(line: 173, column: 3, scope: !348)
!358 = !DILocation(line: 174, column: 12, scope: !353)
!359 = !DILocation(line: 176, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 175, column: 22)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 175, column: 9)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 174, column: 31)
!363 = distinct !DILexicalBlock(scope: !353, file: !3, line: 174, column: 3)
!364 = !DILocation(line: 180, column: 3, scope: !348)
!365 = !DILocation(line: 182, column: 3, scope: !348)
!366 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!367 = !{!368, !369, !370}
!368 = !DILocalVariable(name: "i", arg: 1, scope: !366, file: !3, line: 185, type: !33)
!369 = !DILocalVariable(name: "o", arg: 2, scope: !366, file: !3, line: 185, type: !66)
!370 = !DILocalVariable(name: "i", scope: !371, file: !3, line: 187, type: !50)
!371 = distinct !DILexicalBlock(scope: !366, file: !3, line: 187, column: 3)
!372 = !DILocation(line: 185, column: 22, scope: !366)
!373 = !DILocation(line: 185, column: 32, scope: !366)
!374 = !DILocation(line: 186, column: 19, scope: !366)
!375 = !DILocation(line: 186, column: 3, scope: !366)
!376 = !DILocation(line: 187, column: 12, scope: !371)
!377 = !DILocation(line: 189, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 188, column: 22)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 188, column: 9)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 187, column: 31)
!381 = distinct !DILexicalBlock(scope: !371, file: !3, line: 187, column: 3)
!382 = !DILocation(line: 193, column: 3, scope: !366)
!383 = !DILocation(line: 195, column: 3, scope: !366)
!384 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!385 = !{!386, !387, !388, !389}
!386 = !DILocalVariable(name: "i", arg: 1, scope: !384, file: !3, line: 198, type: !33)
!387 = !DILocalVariable(name: "o", arg: 2, scope: !384, file: !3, line: 198, type: !66)
!388 = !DILocalVariable(name: "a", scope: !384, file: !3, line: 201, type: !50)
!389 = !DILocalVariable(name: "f_to", scope: !384, file: !3, line: 202, type: !24)
!390 = !DILocation(line: 198, column: 24, scope: !384)
!391 = !DILocation(line: 198, column: 34, scope: !384)
!392 = !DILocation(line: 200, column: 19, scope: !384)
!393 = !DILocation(line: 200, column: 3, scope: !384)
!394 = !DILocation(line: 201, column: 7, scope: !384)
!395 = !DILocation(line: 202, column: 22, scope: !384)
!396 = !DILocation(line: 202, column: 15, scope: !384)
!397 = !DILocation(line: 204, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !384, file: !3, line: 203, column: 15)
!399 = !DILocation(line: 205, column: 5, scope: !398)
!400 = !DILocation(line: 207, column: 3, scope: !384)
!401 = !DILocation(line: 208, column: 1, scope: !384)
!402 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DILocalVariable(name: "i", arg: 1, scope: !402, file: !3, line: 211, type: !33)
!405 = !DILocalVariable(name: "o", arg: 2, scope: !402, file: !3, line: 211, type: !66)
!406 = !DILocalVariable(name: "a", scope: !402, file: !3, line: 214, type: !50)
!407 = !DILocalVariable(name: "f_to", scope: !402, file: !3, line: 215, type: !24)
!408 = !DILocation(line: 211, column: 25, scope: !402)
!409 = !DILocation(line: 211, column: 35, scope: !402)
!410 = !DILocation(line: 213, column: 19, scope: !402)
!411 = !DILocation(line: 213, column: 3, scope: !402)
!412 = !DILocation(line: 214, column: 7, scope: !402)
!413 = !DILocation(line: 215, column: 22, scope: !402)
!414 = !DILocation(line: 215, column: 15, scope: !402)
!415 = !DILocation(line: 217, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !402, file: !3, line: 216, column: 15)
!417 = !DILocation(line: 218, column: 5, scope: !416)
!418 = !DILocation(line: 220, column: 3, scope: !402)
!419 = !DILocation(line: 221, column: 1, scope: !402)
!420 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!421 = !{!422, !423, !424, !425}
!422 = !DILocalVariable(name: "i", arg: 1, scope: !420, file: !3, line: 223, type: !33)
!423 = !DILocalVariable(name: "o", arg: 2, scope: !420, file: !3, line: 223, type: !66)
!424 = !DILocalVariable(name: "a", scope: !420, file: !3, line: 226, type: !50)
!425 = !DILocalVariable(name: "f_to", scope: !420, file: !3, line: 228, type: !24)
!426 = !DILocation(line: 223, column: 24, scope: !420)
!427 = !DILocation(line: 223, column: 34, scope: !420)
!428 = !DILocation(line: 225, column: 19, scope: !420)
!429 = !DILocation(line: 225, column: 3, scope: !420)
!430 = !DILocation(line: 226, column: 7, scope: !420)
!431 = !DILocation(line: 228, column: 22, scope: !420)
!432 = !DILocation(line: 228, column: 15, scope: !420)
!433 = !DILocation(line: 230, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !420, file: !3, line: 229, column: 15)
!435 = !DILocation(line: 231, column: 5, scope: !434)
!436 = !DILocation(line: 233, column: 3, scope: !420)
!437 = !DILocation(line: 234, column: 1, scope: !420)
!438 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!439 = !{!440, !441, !442, !443}
!440 = !DILocalVariable(name: "i", arg: 1, scope: !438, file: !3, line: 236, type: !33)
!441 = !DILocalVariable(name: "o", arg: 2, scope: !438, file: !3, line: 236, type: !66)
!442 = !DILocalVariable(name: "a", scope: !438, file: !3, line: 239, type: !50)
!443 = !DILocalVariable(name: "f_to", scope: !438, file: !3, line: 241, type: !24)
!444 = !DILocation(line: 236, column: 25, scope: !438)
!445 = !DILocation(line: 236, column: 35, scope: !438)
!446 = !DILocation(line: 238, column: 19, scope: !438)
!447 = !DILocation(line: 238, column: 3, scope: !438)
!448 = !DILocation(line: 239, column: 7, scope: !438)
!449 = !DILocation(line: 241, column: 22, scope: !438)
!450 = !DILocation(line: 241, column: 15, scope: !438)
!451 = !DILocation(line: 243, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !438, file: !3, line: 242, column: 15)
!453 = !DILocation(line: 244, column: 5, scope: !452)
!454 = !DILocation(line: 246, column: 3, scope: !438)
!455 = !DILocation(line: 247, column: 1, scope: !438)
!456 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DILocalVariable(name: "i", arg: 1, scope: !456, file: !3, line: 249, type: !33)
!459 = !DILocalVariable(name: "o", arg: 2, scope: !456, file: !3, line: 249, type: !66)
!460 = !DILocalVariable(name: "a", scope: !456, file: !3, line: 252, type: !50)
!461 = !DILocalVariable(name: "f_new", scope: !456, file: !3, line: 253, type: !24)
!462 = !DILocation(line: 249, column: 23, scope: !456)
!463 = !DILocation(line: 249, column: 33, scope: !456)
!464 = !DILocation(line: 251, column: 19, scope: !456)
!465 = !DILocation(line: 251, column: 3, scope: !456)
!466 = !DILocation(line: 252, column: 7, scope: !456)
!467 = !DILocation(line: 254, column: 11, scope: !456)
!468 = !DILocation(line: 253, column: 15, scope: !456)
!469 = !DILocation(line: 257, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !456, file: !3, line: 255, column: 15)
!471 = !DILocation(line: 260, column: 3, scope: !456)
!472 = !DILocation(line: 261, column: 1, scope: !456)
!473 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!474 = !{!475, !476, !477, !478, !479}
!475 = !DILocalVariable(name: "i", arg: 1, scope: !473, file: !3, line: 263, type: !33)
!476 = !DILocalVariable(name: "o", arg: 2, scope: !473, file: !3, line: 263, type: !66)
!477 = !DILocalVariable(name: "a", scope: !473, file: !3, line: 266, type: !50)
!478 = !DILocalVariable(name: "f_new", scope: !473, file: !3, line: 267, type: !24)
!479 = !DILocalVariable(name: "f_curr", scope: !473, file: !3, line: 274, type: !24)
!480 = !DILocation(line: 263, column: 28, scope: !473)
!481 = !DILocation(line: 263, column: 38, scope: !473)
!482 = !DILocation(line: 265, column: 19, scope: !473)
!483 = !DILocation(line: 265, column: 3, scope: !473)
!484 = !DILocation(line: 266, column: 7, scope: !473)
!485 = !DILocation(line: 268, column: 11, scope: !473)
!486 = !DILocation(line: 267, column: 15, scope: !473)
!487 = !DILocation(line: 269, column: 6, scope: !488)
!488 = distinct !DILexicalBlock(scope: !473, file: !3, line: 269, column: 6)
!489 = !DILocation(line: 269, column: 6, scope: !473)
!490 = !DILocation(line: 270, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !3, line: 269, column: 12)
!492 = !DILocation(line: 271, column: 3, scope: !491)
!493 = !DILocation(line: 274, column: 15, scope: !473)
!494 = !DILocation(line: 276, column: 5, scope: !495)
!495 = distinct !DILexicalBlock(scope: !473, file: !3, line: 275, column: 15)
!496 = !DILocation(line: 279, column: 3, scope: !473)
!497 = !DILocation(line: 280, column: 1, scope: !473)
!498 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!499 = !{!500, !501}
!500 = !DILocalVariable(name: "i", arg: 1, scope: !498, file: !3, line: 282, type: !33)
!501 = !DILocalVariable(name: "o", arg: 2, scope: !498, file: !3, line: 282, type: !66)
!502 = !DILocation(line: 282, column: 27, scope: !498)
!503 = !DILocation(line: 282, column: 37, scope: !498)
!504 = !DILocation(line: 284, column: 19, scope: !498)
!505 = !DILocation(line: 284, column: 3, scope: !498)
!506 = !DILocation(line: 286, column: 3, scope: !498)
!507 = !DILocation(line: 287, column: 1, scope: !498)
!508 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!509 = !{!510, !511, !512, !513, !514, !516}
!510 = !DILocalVariable(name: "i", arg: 1, scope: !508, file: !3, line: 290, type: !33)
!511 = !DILocalVariable(name: "o", arg: 2, scope: !508, file: !3, line: 290, type: !66)
!512 = !DILocalVariable(name: "a", scope: !508, file: !3, line: 293, type: !50)
!513 = !DILocalVariable(name: "f_new", scope: !508, file: !3, line: 294, type: !24)
!514 = !DILocalVariable(name: "curr", scope: !515, file: !3, line: 298, type: !24)
!515 = distinct !DILexicalBlock(scope: !508, file: !3, line: 295, column: 15)
!516 = !DILocalVariable(name: "new", scope: !517, file: !3, line: 300, type: !24)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 299, column: 14)
!518 = distinct !DILexicalBlock(scope: !515, file: !3, line: 299, column: 8)
!519 = !DILocation(line: 290, column: 27, scope: !508)
!520 = !DILocation(line: 290, column: 37, scope: !508)
!521 = !DILocation(line: 292, column: 19, scope: !508)
!522 = !DILocation(line: 292, column: 3, scope: !508)
!523 = !DILocation(line: 293, column: 7, scope: !508)
!524 = !DILocation(line: 296, column: 13, scope: !515)
!525 = !DILocation(line: 294, column: 15, scope: !508)
!526 = !DILocation(line: 298, column: 17, scope: !515)
!527 = !DILocation(line: 299, column: 8, scope: !518)
!528 = !DILocation(line: 299, column: 8, scope: !515)
!529 = !DILocation(line: 300, column: 7, scope: !517)
!530 = !DILocation(line: 300, column: 19, scope: !517)
!531 = !DILocation(line: 301, column: 7, scope: !517)
!532 = !DILocation(line: 303, column: 5, scope: !518)
!533 = !DILocation(line: 304, column: 5, scope: !515)
!534 = !DILocation(line: 307, column: 3, scope: !508)
!535 = !DILocation(line: 308, column: 1, scope: !508)
!536 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !537)
!537 = !{!538, !539, !540, !541, !542}
!538 = !DILocalVariable(name: "i", arg: 1, scope: !536, file: !3, line: 310, type: !33)
!539 = !DILocalVariable(name: "o", arg: 2, scope: !536, file: !3, line: 310, type: !66)
!540 = !DILocalVariable(name: "a", scope: !536, file: !3, line: 313, type: !50)
!541 = !DILocalVariable(name: "f_new", scope: !536, file: !3, line: 314, type: !24)
!542 = !DILocalVariable(name: "curr", scope: !543, file: !3, line: 318, type: !24)
!543 = distinct !DILexicalBlock(scope: !536, file: !3, line: 315, column: 15)
!544 = !DILocation(line: 310, column: 27, scope: !536)
!545 = !DILocation(line: 310, column: 37, scope: !536)
!546 = !DILocation(line: 312, column: 19, scope: !536)
!547 = !DILocation(line: 312, column: 3, scope: !536)
!548 = !DILocation(line: 313, column: 7, scope: !536)
!549 = !DILocation(line: 316, column: 13, scope: !543)
!550 = !DILocation(line: 314, column: 15, scope: !536)
!551 = !DILocation(line: 318, column: 17, scope: !543)
!552 = !DILocation(line: 319, column: 5, scope: !543)
!553 = !DILocation(line: 322, column: 3, scope: !536)
!554 = !DILocation(line: 323, column: 1, scope: !536)
!555 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!556 = !{!557, !558, !559, !560, !561}
!557 = !DILocalVariable(name: "i", arg: 1, scope: !555, file: !3, line: 326, type: !33)
!558 = !DILocalVariable(name: "o", arg: 2, scope: !555, file: !3, line: 326, type: !66)
!559 = !DILocalVariable(name: "a", scope: !555, file: !3, line: 329, type: !50)
!560 = !DILocalVariable(name: "start", scope: !555, file: !3, line: 330, type: !29)
!561 = !DILocalVariable(name: "end", scope: !555, file: !3, line: 331, type: !29)
!562 = !DILocation(line: 326, column: 24, scope: !555)
!563 = !DILocation(line: 326, column: 34, scope: !555)
!564 = !DILocation(line: 328, column: 19, scope: !555)
!565 = !DILocation(line: 328, column: 3, scope: !555)
!566 = !DILocation(line: 329, column: 7, scope: !555)
!567 = !DILocation(line: 330, column: 12, scope: !555)
!568 = !DILocation(line: 331, column: 12, scope: !555)
!569 = !DILocation(line: 332, column: 3, scope: !555)
!570 = !DILocation(line: 333, column: 11, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 333, column: 9)
!572 = distinct !DILexicalBlock(scope: !555, file: !3, line: 332, column: 15)
!573 = !DILocation(line: 333, column: 9, scope: !572)
!574 = !DILocation(line: 268, column: 5, scope: !575, inlinedAt: !582)
!575 = distinct !DISubprogram(name: "rdtsc", scope: !576, file: !576, line: 265, type: !577, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!576 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!577 = !DISubroutineType(types: !578)
!578 = !{!29}
!579 = !{!580, !581}
!580 = !DILocalVariable(name: "lo", scope: !575, file: !576, line: 267, type: !43)
!581 = !DILocalVariable(name: "hi", scope: !575, file: !576, line: 267, type: !43)
!582 = distinct !DILocation(line: 334, column: 17, scope: !583)
!583 = distinct !DILexicalBlock(scope: !571, file: !3, line: 333, column: 17)
!584 = !{i32 98728}
!585 = !DILocation(line: 267, column: 14, scope: !575, inlinedAt: !582)
!586 = !DILocation(line: 267, column: 18, scope: !575, inlinedAt: !582)
!587 = !DILocation(line: 269, column: 12, scope: !575, inlinedAt: !582)
!588 = !DILocation(line: 269, column: 18, scope: !575, inlinedAt: !582)
!589 = !DILocation(line: 269, column: 33, scope: !575, inlinedAt: !582)
!590 = !DILocation(line: 269, column: 15, scope: !575, inlinedAt: !582)
!591 = !DILocation(line: 335, column: 5, scope: !583)
!592 = !DILocation(line: 0, scope: !555)
!593 = !DILocation(line: 337, column: 6, scope: !572)
!594 = !DILocation(line: 332, column: 11, scope: !555)
!595 = distinct !{!595, !569, !596}
!596 = !DILocation(line: 338, column: 3, scope: !555)
!597 = !DILocation(line: 268, column: 5, scope: !575, inlinedAt: !598)
!598 = distinct !DILocation(line: 339, column: 9, scope: !555)
!599 = !DILocation(line: 267, column: 14, scope: !575, inlinedAt: !598)
!600 = !DILocation(line: 267, column: 18, scope: !575, inlinedAt: !598)
!601 = !DILocation(line: 269, column: 12, scope: !575, inlinedAt: !598)
!602 = !DILocation(line: 269, column: 18, scope: !575, inlinedAt: !598)
!603 = !DILocation(line: 269, column: 33, scope: !575, inlinedAt: !598)
!604 = !DILocation(line: 269, column: 15, scope: !575, inlinedAt: !598)
!605 = !DILocation(line: 340, column: 104, scope: !555)
!606 = !DILocation(line: 340, column: 123, scope: !555)
!607 = !DILocation(line: 340, column: 3, scope: !555)
!608 = !DILocation(line: 341, column: 1, scope: !555)
!609 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!610 = !{!611, !612, !613}
!611 = !DILocalVariable(name: "i", arg: 1, scope: !609, file: !3, line: 343, type: !33)
!612 = !DILocalVariable(name: "o", arg: 2, scope: !609, file: !3, line: 343, type: !66)
!613 = !DILocalVariable(name: "a", scope: !609, file: !3, line: 346, type: !50)
!614 = !DILocation(line: 343, column: 25, scope: !609)
!615 = !DILocation(line: 343, column: 35, scope: !609)
!616 = !DILocation(line: 345, column: 19, scope: !609)
!617 = !DILocation(line: 345, column: 3, scope: !609)
!618 = !DILocation(line: 346, column: 7, scope: !609)
!619 = !DILocation(line: 351, column: 3, scope: !609)
!620 = !DILocation(line: 352, column: 1, scope: !609)
!621 = distinct !DISubprogram(name: "benchmark_timer1", scope: !3, file: !3, line: 381, type: !64, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!622 = !{!623, !624, !625, !626, !627, !631}
!623 = !DILocalVariable(name: "i", arg: 1, scope: !621, file: !3, line: 381, type: !33)
!624 = !DILocalVariable(name: "o", arg: 2, scope: !621, file: !3, line: 381, type: !66)
!625 = !DILocalVariable(name: "a", scope: !621, file: !3, line: 385, type: !50)
!626 = !DILocalVariable(name: "start", scope: !621, file: !3, line: 386, type: !29)
!627 = !DILocalVariable(name: "times", scope: !621, file: !3, line: 387, type: !628)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128000, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 2000)
!631 = !DILocalVariable(name: "j", scope: !621, file: !3, line: 396, type: !50)
!632 = !DILocation(line: 381, column: 29, scope: !621)
!633 = !DILocation(line: 381, column: 39, scope: !621)
!634 = !DILocation(line: 383, column: 19, scope: !621)
!635 = !DILocation(line: 383, column: 3, scope: !621)
!636 = !DILocation(line: 385, column: 7, scope: !621)
!637 = !DILocation(line: 386, column: 12, scope: !621)
!638 = !DILocation(line: 387, column: 3, scope: !621)
!639 = !DILocation(line: 387, column: 12, scope: !621)
!640 = !DILocation(line: 389, column: 3, scope: !621)
!641 = !DILocation(line: 390, column: 5, scope: !642)
!642 = distinct !DILexicalBlock(scope: !621, file: !3, line: 389, column: 21)
!643 = !DILocation(line: 268, column: 5, scope: !575, inlinedAt: !644)
!644 = distinct !DILocation(line: 391, column: 16, scope: !642)
!645 = !DILocation(line: 267, column: 14, scope: !575, inlinedAt: !644)
!646 = !DILocation(line: 267, column: 18, scope: !575, inlinedAt: !644)
!647 = !DILocation(line: 269, column: 12, scope: !575, inlinedAt: !644)
!648 = !DILocation(line: 269, column: 18, scope: !575, inlinedAt: !644)
!649 = !DILocation(line: 269, column: 33, scope: !575, inlinedAt: !644)
!650 = !DILocation(line: 269, column: 15, scope: !575, inlinedAt: !644)
!651 = !DILocation(line: 391, column: 5, scope: !642)
!652 = !DILocation(line: 391, column: 14, scope: !642)
!653 = !DILocation(line: 393, column: 6, scope: !642)
!654 = !DILocation(line: 389, column: 12, scope: !621)
!655 = distinct !{!655, !640, !656}
!656 = !DILocation(line: 394, column: 3, scope: !621)
!657 = !DILocation(line: 398, column: 77, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 397, column: 3)
!659 = distinct !DILexicalBlock(scope: !621, file: !3, line: 397, column: 3)
!660 = !DILocation(line: 398, column: 57, scope: !658)
!661 = !DILocation(line: 396, column: 7, scope: !621)
!662 = !DILocation(line: 398, column: 66, scope: !658)
!663 = !DILocation(line: 398, column: 75, scope: !658)
!664 = !DILocation(line: 398, column: 5, scope: !658)
!665 = !DILocation(line: 397, column: 28, scope: !658)
!666 = !DILocation(line: 397, column: 17, scope: !658)
!667 = !DILocation(line: 397, column: 3, scope: !659)
!668 = distinct !{!668, !667, !669}
!669 = !DILocation(line: 398, column: 90, scope: !659)
!670 = !DILocation(line: 400, column: 3, scope: !621)
!671 = !DILocation(line: 401, column: 1, scope: !621)
!672 = distinct !DISubprogram(name: "benchmark_timer2", scope: !3, file: !3, line: 403, type: !64, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !673)
!673 = !{!674, !675, !676}
!674 = !DILocalVariable(name: "i", arg: 1, scope: !672, file: !3, line: 403, type: !33)
!675 = !DILocalVariable(name: "o", arg: 2, scope: !672, file: !3, line: 403, type: !66)
!676 = !DILocalVariable(name: "a", scope: !672, file: !3, line: 407, type: !50)
!677 = !DILocation(line: 403, column: 29, scope: !672)
!678 = !DILocation(line: 403, column: 39, scope: !672)
!679 = !DILocation(line: 405, column: 19, scope: !672)
!680 = !DILocation(line: 405, column: 3, scope: !672)
!681 = !DILocation(line: 407, column: 7, scope: !672)
!682 = !DILocation(line: 409, column: 3, scope: !672)
!683 = !DILocation(line: 410, column: 5, scope: !684)
!684 = distinct !DILexicalBlock(scope: !672, file: !3, line: 409, column: 21)
!685 = !DILocation(line: 412, column: 6, scope: !684)
!686 = !DILocation(line: 409, column: 12, scope: !672)
!687 = distinct !{!687, !682, !688}
!688 = !DILocation(line: 413, column: 3, scope: !672)
!689 = !DILocation(line: 415, column: 3, scope: !672)
!690 = !DILocation(line: 416, column: 1, scope: !672)
!691 = distinct !DISubprogram(name: "test_fiber_benchmark1", scope: !3, file: !3, line: 421, type: !692, scopeLine: 421, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!50}
!694 = !{!695, !696}
!695 = !DILocalVariable(name: "first", scope: !691, file: !3, line: 422, type: !24)
!696 = !DILocalVariable(name: "second", scope: !691, file: !3, line: 423, type: !24)
!697 = !DILocation(line: 422, column: 3, scope: !691)
!698 = !DILocation(line: 423, column: 3, scope: !691)
!699 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !708)
!700 = distinct !DILexicalBlock(scope: !701, file: !16, line: 258, column: 26)
!701 = distinct !DILexicalBlock(scope: !702, file: !16, line: 258, column: 26)
!702 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !703, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!72}
!705 = !{!706, !707}
!706 = !DILocalVariable(name: "__r", scope: !701, file: !16, line: 258, type: !86)
!707 = !DILocalVariable(name: "__r", scope: !700, file: !16, line: 258, type: !86)
!708 = distinct !DILocation(line: 424, column: 8, scope: !691)
!709 = !{i32 -2147273830}
!710 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !708)
!711 = !DILocation(line: 424, column: 26, scope: !691)
!712 = !DILocation(line: 424, column: 6, scope: !691)
!713 = !DILocation(line: 422, column: 15, scope: !691)
!714 = !DILocation(line: 426, column: 3, scope: !691)
!715 = !DILocation(line: 423, column: 15, scope: !691)
!716 = !DILocation(line: 427, column: 3, scope: !691)
!717 = !DILocation(line: 430, column: 1, scope: !691)
!718 = !DILocation(line: 429, column: 3, scope: !691)
!719 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 433, type: !692, scopeLine: 433, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !720)
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "even", scope: !719, file: !3, line: 434, type: !24)
!722 = !DILocalVariable(name: "odd", scope: !719, file: !3, line: 435, type: !24)
!723 = !DILocation(line: 434, column: 3, scope: !719)
!724 = !DILocation(line: 435, column: 3, scope: !719)
!725 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !726)
!726 = distinct !DILocation(line: 436, column: 8, scope: !719)
!727 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !726)
!728 = !DILocation(line: 436, column: 26, scope: !719)
!729 = !DILocation(line: 436, column: 6, scope: !719)
!730 = !DILocation(line: 434, column: 15, scope: !719)
!731 = !DILocation(line: 437, column: 3, scope: !719)
!732 = !DILocation(line: 435, column: 15, scope: !719)
!733 = !DILocation(line: 438, column: 3, scope: !719)
!734 = !DILocation(line: 441, column: 1, scope: !719)
!735 = !DILocation(line: 440, column: 3, scope: !719)
!736 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 443, type: !692, scopeLine: 444, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !737)
!737 = !{!738}
!738 = !DILocalVariable(name: "f_outer", scope: !736, file: !3, line: 445, type: !24)
!739 = !DILocation(line: 445, column: 3, scope: !736)
!740 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !741)
!741 = distinct !DILocation(line: 446, column: 8, scope: !736)
!742 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !741)
!743 = !DILocation(line: 446, column: 26, scope: !736)
!744 = !DILocation(line: 446, column: 6, scope: !736)
!745 = !DILocation(line: 447, column: 3, scope: !736)
!746 = !DILocation(line: 445, column: 15, scope: !736)
!747 = !DILocation(line: 448, column: 3, scope: !736)
!748 = !DILocation(line: 450, column: 1, scope: !736)
!749 = !DILocation(line: 449, column: 3, scope: !736)
!750 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 452, type: !692, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !751)
!751 = !{!752, !753, !754}
!752 = !DILocalVariable(name: "f1", scope: !750, file: !3, line: 454, type: !24)
!753 = !DILocalVariable(name: "f2", scope: !750, file: !3, line: 455, type: !24)
!754 = !DILocalVariable(name: "f3", scope: !750, file: !3, line: 456, type: !24)
!755 = !DILocation(line: 454, column: 3, scope: !750)
!756 = !DILocation(line: 455, column: 3, scope: !750)
!757 = !DILocation(line: 456, column: 3, scope: !750)
!758 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !759)
!759 = distinct !DILocation(line: 457, column: 8, scope: !750)
!760 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !759)
!761 = !DILocation(line: 457, column: 26, scope: !750)
!762 = !DILocation(line: 457, column: 6, scope: !750)
!763 = !DILocation(line: 458, column: 3, scope: !750)
!764 = !DILocation(line: 454, column: 15, scope: !750)
!765 = !DILocation(line: 459, column: 3, scope: !750)
!766 = !DILocation(line: 455, column: 15, scope: !750)
!767 = !DILocation(line: 460, column: 3, scope: !750)
!768 = !DILocation(line: 456, column: 15, scope: !750)
!769 = !DILocation(line: 461, column: 3, scope: !750)
!770 = !DILocation(line: 463, column: 1, scope: !750)
!771 = !DILocation(line: 462, column: 3, scope: !750)
!772 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 465, type: !692, scopeLine: 466, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!773 = !{!774, !775, !776, !777}
!774 = !DILocalVariable(name: "f_first", scope: !772, file: !3, line: 467, type: !24)
!775 = !DILocalVariable(name: "f_second", scope: !772, file: !3, line: 468, type: !24)
!776 = !DILocalVariable(name: "f_third", scope: !772, file: !3, line: 469, type: !24)
!777 = !DILocalVariable(name: "f_fourth", scope: !772, file: !3, line: 470, type: !24)
!778 = !DILocation(line: 467, column: 3, scope: !772)
!779 = !DILocation(line: 468, column: 3, scope: !772)
!780 = !DILocation(line: 469, column: 3, scope: !772)
!781 = !DILocation(line: 470, column: 3, scope: !772)
!782 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !783)
!783 = distinct !DILocation(line: 471, column: 8, scope: !772)
!784 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !783)
!785 = !DILocation(line: 471, column: 26, scope: !772)
!786 = !DILocation(line: 471, column: 6, scope: !772)
!787 = !DILocation(line: 472, column: 3, scope: !772)
!788 = !DILocation(line: 470, column: 15, scope: !772)
!789 = !DILocation(line: 473, column: 3, scope: !772)
!790 = !DILocation(line: 467, column: 15, scope: !772)
!791 = !DILocation(line: 474, column: 3, scope: !772)
!792 = !DILocation(line: 469, column: 15, scope: !772)
!793 = !DILocation(line: 475, column: 3, scope: !772)
!794 = !DILocation(line: 468, column: 15, scope: !772)
!795 = !DILocation(line: 476, column: 3, scope: !772)
!796 = !DILocation(line: 478, column: 20, scope: !772)
!797 = !DILocation(line: 478, column: 3, scope: !772)
!798 = !DILocation(line: 478, column: 12, scope: !772)
!799 = !DILocation(line: 478, column: 18, scope: !772)
!800 = !DILocation(line: 479, column: 21, scope: !772)
!801 = !DILocation(line: 479, column: 3, scope: !772)
!802 = !DILocation(line: 479, column: 13, scope: !772)
!803 = !DILocation(line: 479, column: 19, scope: !772)
!804 = !DILocation(line: 480, column: 20, scope: !772)
!805 = !DILocation(line: 480, column: 3, scope: !772)
!806 = !DILocation(line: 480, column: 12, scope: !772)
!807 = !DILocation(line: 480, column: 18, scope: !772)
!808 = !DILocation(line: 481, column: 21, scope: !772)
!809 = !DILocation(line: 481, column: 3, scope: !772)
!810 = !DILocation(line: 481, column: 13, scope: !772)
!811 = !DILocation(line: 481, column: 19, scope: !772)
!812 = !DILocation(line: 482, column: 3, scope: !772)
!813 = !DILocation(line: 483, column: 16, scope: !772)
!814 = !DILocation(line: 483, column: 3, scope: !772)
!815 = !DILocation(line: 484, column: 16, scope: !772)
!816 = !DILocation(line: 484, column: 3, scope: !772)
!817 = !DILocation(line: 485, column: 16, scope: !772)
!818 = !DILocation(line: 485, column: 3, scope: !772)
!819 = !DILocation(line: 487, column: 1, scope: !772)
!820 = !DILocation(line: 486, column: 3, scope: !772)
!821 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 489, type: !692, scopeLine: 490, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !822)
!822 = !{!823}
!823 = !DILocalVariable(name: "f_outer_join", scope: !821, file: !3, line: 491, type: !24)
!824 = !DILocation(line: 491, column: 3, scope: !821)
!825 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !826)
!826 = distinct !DILocation(line: 492, column: 8, scope: !821)
!827 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !826)
!828 = !DILocation(line: 492, column: 26, scope: !821)
!829 = !DILocation(line: 492, column: 6, scope: !821)
!830 = !DILocation(line: 493, column: 3, scope: !821)
!831 = !DILocation(line: 491, column: 15, scope: !821)
!832 = !DILocation(line: 494, column: 3, scope: !821)
!833 = !DILocation(line: 496, column: 1, scope: !821)
!834 = !DILocation(line: 495, column: 3, scope: !821)
!835 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 498, type: !692, scopeLine: 499, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !836)
!836 = !{!837}
!837 = !DILocalVariable(name: "f_orig", scope: !835, file: !3, line: 500, type: !24)
!838 = !DILocation(line: 500, column: 3, scope: !835)
!839 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !840)
!840 = distinct !DILocation(line: 501, column: 8, scope: !835)
!841 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !840)
!842 = !DILocation(line: 501, column: 26, scope: !835)
!843 = !DILocation(line: 501, column: 6, scope: !835)
!844 = !DILocation(line: 502, column: 3, scope: !835)
!845 = !DILocation(line: 500, column: 15, scope: !835)
!846 = !DILocation(line: 503, column: 3, scope: !835)
!847 = !DILocation(line: 505, column: 1, scope: !835)
!848 = !DILocation(line: 504, column: 3, scope: !835)
!849 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 507, type: !692, scopeLine: 508, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!850 = !{!851}
!851 = !DILocalVariable(name: "f_orig", scope: !849, file: !3, line: 509, type: !24)
!852 = !DILocation(line: 509, column: 3, scope: !849)
!853 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !854)
!854 = distinct !DILocation(line: 510, column: 8, scope: !849)
!855 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !854)
!856 = !DILocation(line: 510, column: 26, scope: !849)
!857 = !DILocation(line: 510, column: 6, scope: !849)
!858 = !DILocation(line: 511, column: 3, scope: !849)
!859 = !DILocation(line: 509, column: 15, scope: !849)
!860 = !DILocation(line: 512, column: 3, scope: !849)
!861 = !DILocation(line: 514, column: 1, scope: !849)
!862 = !DILocation(line: 513, column: 3, scope: !849)
!863 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 516, type: !692, scopeLine: 517, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!864 = !{!865}
!865 = !DILocalVariable(name: "f_orig", scope: !863, file: !3, line: 518, type: !24)
!866 = !DILocation(line: 518, column: 3, scope: !863)
!867 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !868)
!868 = distinct !DILocation(line: 519, column: 8, scope: !863)
!869 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !868)
!870 = !DILocation(line: 519, column: 26, scope: !863)
!871 = !DILocation(line: 519, column: 6, scope: !863)
!872 = !DILocation(line: 520, column: 3, scope: !863)
!873 = !DILocation(line: 518, column: 15, scope: !863)
!874 = !DILocation(line: 521, column: 3, scope: !863)
!875 = !DILocation(line: 523, column: 1, scope: !863)
!876 = !DILocation(line: 522, column: 3, scope: !863)
!877 = distinct !DISubprogram(name: "test_fiber_routine_2", scope: !3, file: !3, line: 525, type: !692, scopeLine: 526, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !878)
!878 = !{!879}
!879 = !DILocalVariable(name: "f_orig", scope: !877, file: !3, line: 527, type: !24)
!880 = !DILocation(line: 527, column: 3, scope: !877)
!881 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !882)
!882 = distinct !DILocation(line: 528, column: 8, scope: !877)
!883 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !882)
!884 = !DILocation(line: 528, column: 26, scope: !877)
!885 = !DILocation(line: 528, column: 6, scope: !877)
!886 = !DILocation(line: 529, column: 3, scope: !877)
!887 = !DILocation(line: 527, column: 15, scope: !877)
!888 = !DILocation(line: 530, column: 3, scope: !877)
!889 = !DILocation(line: 532, column: 1, scope: !877)
!890 = !DILocation(line: 531, column: 3, scope: !877)
!891 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 534, type: !692, scopeLine: 534, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!892 = !{!893, !894}
!893 = !DILocalVariable(name: "first", scope: !891, file: !3, line: 535, type: !24)
!894 = !DILocalVariable(name: "second", scope: !891, file: !3, line: 536, type: !24)
!895 = !DILocation(line: 535, column: 3, scope: !891)
!896 = !DILocation(line: 536, column: 3, scope: !891)
!897 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !898)
!898 = distinct !DILocation(line: 537, column: 8, scope: !891)
!899 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !898)
!900 = !DILocation(line: 537, column: 26, scope: !891)
!901 = !DILocation(line: 537, column: 6, scope: !891)
!902 = !DILocation(line: 535, column: 15, scope: !891)
!903 = !DILocation(line: 539, column: 3, scope: !891)
!904 = !DILocation(line: 536, column: 15, scope: !891)
!905 = !DILocation(line: 540, column: 3, scope: !891)
!906 = !DILocation(line: 543, column: 1, scope: !891)
!907 = !DILocation(line: 542, column: 3, scope: !891)
!908 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 549, type: !141, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!909 = !{!910, !911}
!910 = !DILocalVariable(name: "buf", arg: 1, scope: !908, file: !3, line: 549, type: !137)
!911 = !DILocalVariable(name: "priv", arg: 2, scope: !908, file: !3, line: 549, type: !33)
!912 = !DILocation(line: 549, column: 23, scope: !908)
!913 = !DILocation(line: 549, column: 35, scope: !908)
!914 = !DILocation(line: 454, column: 3, scope: !750, inlinedAt: !915)
!915 = distinct !DILocation(line: 551, column: 3, scope: !908)
!916 = !DILocation(line: 455, column: 3, scope: !750, inlinedAt: !915)
!917 = !DILocation(line: 456, column: 3, scope: !750, inlinedAt: !915)
!918 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !919)
!919 = distinct !DILocation(line: 457, column: 8, scope: !750, inlinedAt: !915)
!920 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !919)
!921 = !DILocation(line: 457, column: 26, scope: !750, inlinedAt: !915)
!922 = !DILocation(line: 457, column: 6, scope: !750, inlinedAt: !915)
!923 = !DILocation(line: 458, column: 3, scope: !750, inlinedAt: !915)
!924 = !DILocation(line: 454, column: 15, scope: !750, inlinedAt: !915)
!925 = !DILocation(line: 459, column: 3, scope: !750, inlinedAt: !915)
!926 = !DILocation(line: 455, column: 15, scope: !750, inlinedAt: !915)
!927 = !DILocation(line: 460, column: 3, scope: !750, inlinedAt: !915)
!928 = !DILocation(line: 456, column: 15, scope: !750, inlinedAt: !915)
!929 = !DILocation(line: 461, column: 3, scope: !750, inlinedAt: !915)
!930 = !DILocation(line: 463, column: 1, scope: !750, inlinedAt: !915)
!931 = !DILocation(line: 553, column: 3, scope: !908)
!932 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 557, type: !141, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!933 = !{!934, !935}
!934 = !DILocalVariable(name: "buf", arg: 1, scope: !932, file: !3, line: 557, type: !137)
!935 = !DILocalVariable(name: "priv", arg: 2, scope: !932, file: !3, line: 557, type: !33)
!936 = !DILocation(line: 557, column: 24, scope: !932)
!937 = !DILocation(line: 557, column: 36, scope: !932)
!938 = !DILocation(line: 445, column: 3, scope: !736, inlinedAt: !939)
!939 = distinct !DILocation(line: 559, column: 3, scope: !932)
!940 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !941)
!941 = distinct !DILocation(line: 446, column: 8, scope: !736, inlinedAt: !939)
!942 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !941)
!943 = !DILocation(line: 446, column: 26, scope: !736, inlinedAt: !939)
!944 = !DILocation(line: 446, column: 6, scope: !736, inlinedAt: !939)
!945 = !DILocation(line: 447, column: 3, scope: !736, inlinedAt: !939)
!946 = !DILocation(line: 445, column: 15, scope: !736, inlinedAt: !939)
!947 = !DILocation(line: 448, column: 3, scope: !736, inlinedAt: !939)
!948 = !DILocation(line: 450, column: 1, scope: !736, inlinedAt: !939)
!949 = !DILocation(line: 561, column: 3, scope: !932)
!950 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 565, type: !141, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!951 = !{!952, !953}
!952 = !DILocalVariable(name: "buf", arg: 1, scope: !950, file: !3, line: 565, type: !137)
!953 = !DILocalVariable(name: "priv", arg: 2, scope: !950, file: !3, line: 565, type: !33)
!954 = !DILocation(line: 565, column: 24, scope: !950)
!955 = !DILocation(line: 565, column: 36, scope: !950)
!956 = !DILocation(line: 434, column: 3, scope: !719, inlinedAt: !957)
!957 = distinct !DILocation(line: 567, column: 3, scope: !950)
!958 = !DILocation(line: 435, column: 3, scope: !719, inlinedAt: !957)
!959 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !960)
!960 = distinct !DILocation(line: 436, column: 8, scope: !719, inlinedAt: !957)
!961 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !960)
!962 = !DILocation(line: 436, column: 26, scope: !719, inlinedAt: !957)
!963 = !DILocation(line: 436, column: 6, scope: !719, inlinedAt: !957)
!964 = !DILocation(line: 434, column: 15, scope: !719, inlinedAt: !957)
!965 = !DILocation(line: 437, column: 3, scope: !719, inlinedAt: !957)
!966 = !DILocation(line: 435, column: 15, scope: !719, inlinedAt: !957)
!967 = !DILocation(line: 438, column: 3, scope: !719, inlinedAt: !957)
!968 = !DILocation(line: 441, column: 1, scope: !719, inlinedAt: !957)
!969 = !DILocation(line: 569, column: 3, scope: !950)
!970 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 573, type: !141, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!971 = !{!972, !973}
!972 = !DILocalVariable(name: "buf", arg: 1, scope: !970, file: !3, line: 573, type: !137)
!973 = !DILocalVariable(name: "priv", arg: 2, scope: !970, file: !3, line: 573, type: !33)
!974 = !DILocation(line: 573, column: 24, scope: !970)
!975 = !DILocation(line: 573, column: 36, scope: !970)
!976 = !DILocation(line: 575, column: 3, scope: !970)
!977 = !DILocation(line: 577, column: 3, scope: !970)
!978 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 581, type: !141, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!979 = !{!980, !981}
!980 = !DILocalVariable(name: "buf", arg: 1, scope: !978, file: !3, line: 581, type: !137)
!981 = !DILocalVariable(name: "priv", arg: 2, scope: !978, file: !3, line: 581, type: !33)
!982 = !DILocation(line: 581, column: 24, scope: !978)
!983 = !DILocation(line: 581, column: 36, scope: !978)
!984 = !DILocation(line: 491, column: 3, scope: !821, inlinedAt: !985)
!985 = distinct !DILocation(line: 583, column: 3, scope: !978)
!986 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !987)
!987 = distinct !DILocation(line: 492, column: 8, scope: !821, inlinedAt: !985)
!988 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !987)
!989 = !DILocation(line: 492, column: 26, scope: !821, inlinedAt: !985)
!990 = !DILocation(line: 492, column: 6, scope: !821, inlinedAt: !985)
!991 = !DILocation(line: 493, column: 3, scope: !821, inlinedAt: !985)
!992 = !DILocation(line: 491, column: 15, scope: !821, inlinedAt: !985)
!993 = !DILocation(line: 494, column: 3, scope: !821, inlinedAt: !985)
!994 = !DILocation(line: 496, column: 1, scope: !821, inlinedAt: !985)
!995 = !DILocation(line: 584, column: 3, scope: !978)
!996 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 588, type: !141, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !997)
!997 = !{!998, !999}
!998 = !DILocalVariable(name: "buf", arg: 1, scope: !996, file: !3, line: 588, type: !137)
!999 = !DILocalVariable(name: "priv", arg: 2, scope: !996, file: !3, line: 588, type: !33)
!1000 = !DILocation(line: 588, column: 24, scope: !996)
!1001 = !DILocation(line: 588, column: 36, scope: !996)
!1002 = !DILocation(line: 500, column: 3, scope: !835, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 590, column: 3, scope: !996)
!1004 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 501, column: 8, scope: !835, inlinedAt: !1003)
!1006 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !1005)
!1007 = !DILocation(line: 501, column: 26, scope: !835, inlinedAt: !1003)
!1008 = !DILocation(line: 501, column: 6, scope: !835, inlinedAt: !1003)
!1009 = !DILocation(line: 502, column: 3, scope: !835, inlinedAt: !1003)
!1010 = !DILocation(line: 500, column: 15, scope: !835, inlinedAt: !1003)
!1011 = !DILocation(line: 503, column: 3, scope: !835, inlinedAt: !1003)
!1012 = !DILocation(line: 505, column: 1, scope: !835, inlinedAt: !1003)
!1013 = !DILocation(line: 591, column: 3, scope: !996)
!1014 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 595, type: !141, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1015 = !{!1016, !1017}
!1016 = !DILocalVariable(name: "buf", arg: 1, scope: !1014, file: !3, line: 595, type: !137)
!1017 = !DILocalVariable(name: "priv", arg: 2, scope: !1014, file: !3, line: 595, type: !33)
!1018 = !DILocation(line: 595, column: 24, scope: !1014)
!1019 = !DILocation(line: 595, column: 36, scope: !1014)
!1020 = !DILocation(line: 509, column: 3, scope: !849, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 597, column: 3, scope: !1014)
!1022 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 510, column: 8, scope: !849, inlinedAt: !1021)
!1024 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !1023)
!1025 = !DILocation(line: 510, column: 26, scope: !849, inlinedAt: !1021)
!1026 = !DILocation(line: 510, column: 6, scope: !849, inlinedAt: !1021)
!1027 = !DILocation(line: 511, column: 3, scope: !849, inlinedAt: !1021)
!1028 = !DILocation(line: 509, column: 15, scope: !849, inlinedAt: !1021)
!1029 = !DILocation(line: 512, column: 3, scope: !849, inlinedAt: !1021)
!1030 = !DILocation(line: 514, column: 1, scope: !849, inlinedAt: !1021)
!1031 = !DILocation(line: 598, column: 3, scope: !1014)
!1032 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 602, type: !141, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1033 = !{!1034, !1035}
!1034 = !DILocalVariable(name: "buf", arg: 1, scope: !1032, file: !3, line: 602, type: !137)
!1035 = !DILocalVariable(name: "priv", arg: 2, scope: !1032, file: !3, line: 602, type: !33)
!1036 = !DILocation(line: 602, column: 24, scope: !1032)
!1037 = !DILocation(line: 602, column: 36, scope: !1032)
!1038 = !DILocation(line: 518, column: 3, scope: !863, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 604, column: 3, scope: !1032)
!1040 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 519, column: 8, scope: !863, inlinedAt: !1039)
!1042 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !1041)
!1043 = !DILocation(line: 519, column: 26, scope: !863, inlinedAt: !1039)
!1044 = !DILocation(line: 519, column: 6, scope: !863, inlinedAt: !1039)
!1045 = !DILocation(line: 520, column: 3, scope: !863, inlinedAt: !1039)
!1046 = !DILocation(line: 518, column: 15, scope: !863, inlinedAt: !1039)
!1047 = !DILocation(line: 521, column: 3, scope: !863, inlinedAt: !1039)
!1048 = !DILocation(line: 523, column: 1, scope: !863, inlinedAt: !1039)
!1049 = !DILocation(line: 605, column: 3, scope: !1032)
!1050 = distinct !DISubprogram(name: "handle_fibers9", scope: !3, file: !3, line: 609, type: !141, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1051 = !{!1052, !1053}
!1052 = !DILocalVariable(name: "buf", arg: 1, scope: !1050, file: !3, line: 609, type: !137)
!1053 = !DILocalVariable(name: "priv", arg: 2, scope: !1050, file: !3, line: 609, type: !33)
!1054 = !DILocation(line: 609, column: 24, scope: !1050)
!1055 = !DILocation(line: 609, column: 36, scope: !1050)
!1056 = !DILocation(line: 527, column: 3, scope: !877, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 611, column: 3, scope: !1050)
!1058 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 528, column: 8, scope: !877, inlinedAt: !1057)
!1060 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !1059)
!1061 = !DILocation(line: 528, column: 26, scope: !877, inlinedAt: !1057)
!1062 = !DILocation(line: 528, column: 6, scope: !877, inlinedAt: !1057)
!1063 = !DILocation(line: 529, column: 3, scope: !877, inlinedAt: !1057)
!1064 = !DILocation(line: 527, column: 15, scope: !877, inlinedAt: !1057)
!1065 = !DILocation(line: 530, column: 3, scope: !877, inlinedAt: !1057)
!1066 = !DILocation(line: 532, column: 1, scope: !877, inlinedAt: !1057)
!1067 = !DILocation(line: 612, column: 3, scope: !1050)
!1068 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 616, type: !141, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1069 = !{!1070, !1071}
!1070 = !DILocalVariable(name: "buf", arg: 1, scope: !1068, file: !3, line: 616, type: !137)
!1071 = !DILocalVariable(name: "priv", arg: 2, scope: !1068, file: !3, line: 616, type: !33)
!1072 = !DILocation(line: 616, column: 25, scope: !1068)
!1073 = !DILocation(line: 616, column: 37, scope: !1068)
!1074 = !DILocation(line: 535, column: 3, scope: !891, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 618, column: 3, scope: !1068)
!1076 = !DILocation(line: 536, column: 3, scope: !891, inlinedAt: !1075)
!1077 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 537, column: 8, scope: !891, inlinedAt: !1075)
!1079 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !1078)
!1080 = !DILocation(line: 537, column: 26, scope: !891, inlinedAt: !1075)
!1081 = !DILocation(line: 537, column: 6, scope: !891, inlinedAt: !1075)
!1082 = !DILocation(line: 535, column: 15, scope: !891, inlinedAt: !1075)
!1083 = !DILocation(line: 539, column: 3, scope: !891, inlinedAt: !1075)
!1084 = !DILocation(line: 536, column: 15, scope: !891, inlinedAt: !1075)
!1085 = !DILocation(line: 540, column: 3, scope: !891, inlinedAt: !1075)
!1086 = !DILocation(line: 543, column: 1, scope: !891, inlinedAt: !1075)
!1087 = !DILocation(line: 619, column: 3, scope: !1068)
!1088 = distinct !DISubprogram(name: "handle_fibers11", scope: !3, file: !3, line: 624, type: !141, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1089)
!1089 = !{!1090, !1091}
!1090 = !DILocalVariable(name: "buf", arg: 1, scope: !1088, file: !3, line: 624, type: !137)
!1091 = !DILocalVariable(name: "priv", arg: 2, scope: !1088, file: !3, line: 624, type: !33)
!1092 = !DILocation(line: 624, column: 25, scope: !1088)
!1093 = !DILocation(line: 624, column: 37, scope: !1088)
!1094 = !DILocation(line: 422, column: 3, scope: !691, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 626, column: 3, scope: !1088)
!1096 = !DILocation(line: 423, column: 3, scope: !691, inlinedAt: !1095)
!1097 = !DILocation(line: 258, column: 26, scope: !700, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 424, column: 8, scope: !691, inlinedAt: !1095)
!1099 = !DILocation(line: 258, column: 26, scope: !701, inlinedAt: !1098)
!1100 = !DILocation(line: 424, column: 26, scope: !691, inlinedAt: !1095)
!1101 = !DILocation(line: 424, column: 6, scope: !691, inlinedAt: !1095)
!1102 = !DILocation(line: 422, column: 15, scope: !691, inlinedAt: !1095)
!1103 = !DILocation(line: 426, column: 3, scope: !691, inlinedAt: !1095)
!1104 = !DILocation(line: 423, column: 15, scope: !691, inlinedAt: !1095)
!1105 = !DILocation(line: 427, column: 3, scope: !691, inlinedAt: !1095)
!1106 = !DILocation(line: 430, column: 1, scope: !691, inlinedAt: !1095)
!1107 = !DILocation(line: 627, column: 3, scope: !1088)
