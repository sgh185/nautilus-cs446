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
  call void @llvm.dbg.value(metadata i32 1, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 1, metadata !211, metadata !DIExpression()), !dbg !216
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 2, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 2, metadata !211, metadata !DIExpression()), !dbg !216
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 3, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 3, metadata !211, metadata !DIExpression()), !dbg !216
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 4, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 4, metadata !211, metadata !DIExpression()), !dbg !216
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 5, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 5, metadata !211, metadata !DIExpression()), !dbg !216
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 6, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 6, metadata !211, metadata !DIExpression()), !dbg !216
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 7, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 7, metadata !211, metadata !DIExpression()), !dbg !216
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 8, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 8, metadata !211, metadata !DIExpression()), !dbg !216
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 9, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 9, metadata !211, metadata !DIExpression()), !dbg !216
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #4, !dbg !217
  call void @llvm.dbg.value(metadata i32 10, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 10, metadata !211, metadata !DIExpression()), !dbg !216
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !219
  ret void, !dbg !220
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !221 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !223, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i8** undef, metadata !224, metadata !DIExpression()), !dbg !229
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !230
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !231
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !232
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !232
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !234
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !226, metadata !DIExpression(DW_OP_deref)), !dbg !235
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !237
  call void @llvm.dbg.value(metadata i32 1, metadata !225, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 1, metadata !225, metadata !DIExpression()), !dbg !232
  %8 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !234
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !226, metadata !DIExpression(DW_OP_deref)), !dbg !235
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !237
  call void @llvm.dbg.value(metadata i32 2, metadata !225, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 2, metadata !225, metadata !DIExpression()), !dbg !232
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !234
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !226, metadata !DIExpression(DW_OP_deref)), !dbg !235
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !237
  call void @llvm.dbg.value(metadata i32 3, metadata !225, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 3, metadata !225, metadata !DIExpression()), !dbg !232
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !240 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !242, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i8** undef, metadata !243, metadata !DIExpression()), !dbg !246
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !247
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !248
  call void @llvm.dbg.value(metadata i32 0, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 0, metadata !244, metadata !DIExpression()), !dbg !249
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 1, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 1, metadata !244, metadata !DIExpression()), !dbg !249
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 2, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 2, metadata !244, metadata !DIExpression()), !dbg !249
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 3, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 3, metadata !244, metadata !DIExpression()), !dbg !249
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 4, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 4, metadata !244, metadata !DIExpression()), !dbg !249
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 5, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 5, metadata !244, metadata !DIExpression()), !dbg !249
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 6, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 6, metadata !244, metadata !DIExpression()), !dbg !249
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 7, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 7, metadata !244, metadata !DIExpression()), !dbg !249
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 8, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 8, metadata !244, metadata !DIExpression()), !dbg !249
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 9, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 9, metadata !244, metadata !DIExpression()), !dbg !249
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #4, !dbg !250
  call void @llvm.dbg.value(metadata i32 10, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 10, metadata !244, metadata !DIExpression()), !dbg !249
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !252
  ret void, !dbg !253
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !254 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !256, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8** undef, metadata !257, metadata !DIExpression()), !dbg !262
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !263
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !264
  call void @llvm.dbg.value(metadata i32 0, metadata !258, metadata !DIExpression()), !dbg !265
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !258, metadata !DIExpression()), !dbg !265
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !267
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !259, metadata !DIExpression(DW_OP_deref)), !dbg !268
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !269
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !270
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !259, metadata !DIExpression()), !dbg !268
  %9 = call i32 @nk_fiber_join(%struct.nk_fiber* %8) #4, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !272
  call void @llvm.dbg.value(metadata i32 1, metadata !258, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 1, metadata !258, metadata !DIExpression()), !dbg !265
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !267
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !259, metadata !DIExpression(DW_OP_deref)), !dbg !268
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !269
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !270
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !259, metadata !DIExpression()), !dbg !268
  %13 = call i32 @nk_fiber_join(%struct.nk_fiber* %12) #4, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !272
  call void @llvm.dbg.value(metadata i32 2, metadata !258, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 2, metadata !258, metadata !DIExpression()), !dbg !265
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !267
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !259, metadata !DIExpression(DW_OP_deref)), !dbg !268
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !269
  %16 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !270
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !259, metadata !DIExpression()), !dbg !268
  %17 = call i32 @nk_fiber_join(%struct.nk_fiber* %16) #4, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !272
  call void @llvm.dbg.value(metadata i32 3, metadata !258, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 3, metadata !258, metadata !DIExpression()), !dbg !265
  %18 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !275 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i8** undef, metadata !278, metadata !DIExpression()), !dbg !281
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !282
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !283
  call void @llvm.dbg.value(metadata i32 0, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 0, metadata !279, metadata !DIExpression()), !dbg !284
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 1, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 1, metadata !279, metadata !DIExpression()), !dbg !284
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 2, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 2, metadata !279, metadata !DIExpression()), !dbg !284
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 3, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 3, metadata !279, metadata !DIExpression()), !dbg !284
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 4, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 4, metadata !279, metadata !DIExpression()), !dbg !284
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 5, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 5, metadata !279, metadata !DIExpression()), !dbg !284
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 6, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 6, metadata !279, metadata !DIExpression()), !dbg !284
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 7, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 7, metadata !279, metadata !DIExpression()), !dbg !284
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 8, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 8, metadata !279, metadata !DIExpression()), !dbg !284
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 9, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 9, metadata !279, metadata !DIExpression()), !dbg !284
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #4, !dbg !285
  call void @llvm.dbg.value(metadata i32 10, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 10, metadata !279, metadata !DIExpression()), !dbg !284
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #4, !dbg !287
  ret void, !dbg !288
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !289 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !291, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8** undef, metadata !292, metadata !DIExpression()), !dbg !296
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !297
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !298
  call void @llvm.dbg.value(metadata i32 0, metadata !293, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 0, metadata !293, metadata !DIExpression()), !dbg !299
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #4, !dbg !300
  call void @llvm.dbg.value(metadata i32 1, metadata !293, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 1, metadata !293, metadata !DIExpression()), !dbg !299
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #4, !dbg !300
  call void @llvm.dbg.value(metadata i32 2, metadata !293, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 2, metadata !293, metadata !DIExpression()), !dbg !299
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #4, !dbg !302
  %8 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !303
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !294, metadata !DIExpression(DW_OP_deref)), !dbg !304
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !305
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !306
  ret void, !dbg !306
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !307 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !309, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i8** undef, metadata !310, metadata !DIExpression()), !dbg !314
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !315
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !316
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !317
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #4, !dbg !318
  %6 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !320
  call void @llvm.dbg.value(metadata i32 1, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 1, metadata !311, metadata !DIExpression()), !dbg !317
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #4, !dbg !318
  %8 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !320
  call void @llvm.dbg.value(metadata i32 2, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 2, metadata !311, metadata !DIExpression()), !dbg !317
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #4, !dbg !318
  %10 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !320
  call void @llvm.dbg.value(metadata i32 3, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 3, metadata !311, metadata !DIExpression()), !dbg !317
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #4, !dbg !318
  %12 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !320
  call void @llvm.dbg.value(metadata i32 4, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 4, metadata !311, metadata !DIExpression()), !dbg !317
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #4, !dbg !318
  %14 = tail call i32 (...) @wrapper_nk_fiber_yield() #4, !dbg !320
  call void @llvm.dbg.value(metadata i32 5, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 5, metadata !311, metadata !DIExpression()), !dbg !317
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !321
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !322
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !322
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !312, metadata !DIExpression(DW_OP_deref)), !dbg !323
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !325
  ret void, !dbg !325
}

; Function Attrs: noredzone
declare dso_local i32 @wrapper_nk_fiber_yield(...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !326 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !328, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.value(metadata i8** undef, metadata !329, metadata !DIExpression()), !dbg !333
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !334
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 0, metadata !330, metadata !DIExpression()), !dbg !336
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 1, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 1, metadata !330, metadata !DIExpression()), !dbg !336
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 2, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 2, metadata !330, metadata !DIExpression()), !dbg !336
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 3, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 3, metadata !330, metadata !DIExpression()), !dbg !336
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 4, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 4, metadata !330, metadata !DIExpression()), !dbg !336
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 5, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 5, metadata !330, metadata !DIExpression()), !dbg !336
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 6, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 6, metadata !330, metadata !DIExpression()), !dbg !336
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 7, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 7, metadata !330, metadata !DIExpression()), !dbg !336
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 8, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 8, metadata !330, metadata !DIExpression()), !dbg !336
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 9, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 9, metadata !330, metadata !DIExpression()), !dbg !336
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #4, !dbg !337
  call void @llvm.dbg.value(metadata i32 10, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 10, metadata !330, metadata !DIExpression()), !dbg !336
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #4, !dbg !339
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !340
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !340
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !331, metadata !DIExpression(DW_OP_deref)), !dbg !341
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !342
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !343
  ret void, !dbg !343
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !344 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !346, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8** undef, metadata !347, metadata !DIExpression()), !dbg !351
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !352
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !353
  call void @llvm.dbg.value(metadata i32 0, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 0, metadata !348, metadata !DIExpression()), !dbg !354
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #4, !dbg !355
  call void @llvm.dbg.value(metadata i32 1, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 1, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 2, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 2, metadata !348, metadata !DIExpression()), !dbg !354
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #4, !dbg !355
  call void @llvm.dbg.value(metadata i32 3, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 3, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 4, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 4, metadata !348, metadata !DIExpression()), !dbg !354
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #4, !dbg !355
  call void @llvm.dbg.value(metadata i32 5, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 5, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 6, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 6, metadata !348, metadata !DIExpression()), !dbg !354
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #4, !dbg !355
  call void @llvm.dbg.value(metadata i32 7, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 7, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 8, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 8, metadata !348, metadata !DIExpression()), !dbg !354
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #4, !dbg !355
  call void @llvm.dbg.value(metadata i32 9, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 9, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 10, metadata !348, metadata !DIExpression()), !dbg !354
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !362 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !364, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i8** undef, metadata !365, metadata !DIExpression()), !dbg !369
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !370
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !371
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 1, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 1, metadata !366, metadata !DIExpression()), !dbg !372
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #4, !dbg !373
  call void @llvm.dbg.value(metadata i32 2, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 2, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 3, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 3, metadata !366, metadata !DIExpression()), !dbg !372
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #4, !dbg !373
  call void @llvm.dbg.value(metadata i32 4, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 4, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 5, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 5, metadata !366, metadata !DIExpression()), !dbg !372
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #4, !dbg !373
  call void @llvm.dbg.value(metadata i32 6, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 6, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 7, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 7, metadata !366, metadata !DIExpression()), !dbg !372
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #4, !dbg !373
  call void @llvm.dbg.value(metadata i32 8, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 8, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 9, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 9, metadata !366, metadata !DIExpression()), !dbg !372
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #4, !dbg !373
  call void @llvm.dbg.value(metadata i32 10, metadata !366, metadata !DIExpression()), !dbg !372
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !382, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i8** undef, metadata !383, metadata !DIExpression()), !dbg !387
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !388
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !389
  call void @llvm.dbg.value(metadata i32 0, metadata !384, metadata !DIExpression()), !dbg !390
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !391
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !385, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 0, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 0, metadata !384, metadata !DIExpression()), !dbg !390
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !393
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !395
  call void @llvm.dbg.value(metadata i32 1, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 1, metadata !384, metadata !DIExpression()), !dbg !390
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !393
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !395
  call void @llvm.dbg.value(metadata i32 2, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 2, metadata !384, metadata !DIExpression()), !dbg !390
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !393
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !395
  call void @llvm.dbg.value(metadata i32 3, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 3, metadata !384, metadata !DIExpression()), !dbg !390
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !393
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !395
  call void @llvm.dbg.value(metadata i32 4, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 4, metadata !384, metadata !DIExpression()), !dbg !390
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !393
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !395
  call void @llvm.dbg.value(metadata i32 5, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 5, metadata !384, metadata !DIExpression()), !dbg !390
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !398 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !400, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8** undef, metadata !401, metadata !DIExpression()), !dbg !405
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !406
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !407
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !408
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !409
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !403, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 0, metadata !402, metadata !DIExpression()), !dbg !408
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !411
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !413
  call void @llvm.dbg.value(metadata i32 1, metadata !402, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 1, metadata !402, metadata !DIExpression()), !dbg !408
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !411
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !413
  call void @llvm.dbg.value(metadata i32 2, metadata !402, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 2, metadata !402, metadata !DIExpression()), !dbg !408
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !411
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !413
  call void @llvm.dbg.value(metadata i32 3, metadata !402, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 3, metadata !402, metadata !DIExpression()), !dbg !408
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !411
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !413
  call void @llvm.dbg.value(metadata i32 4, metadata !402, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 4, metadata !402, metadata !DIExpression()), !dbg !408
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !411
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !413
  call void @llvm.dbg.value(metadata i32 5, metadata !402, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 5, metadata !402, metadata !DIExpression()), !dbg !408
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #4, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !418, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i8** undef, metadata !419, metadata !DIExpression()), !dbg !423
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !424
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !425
  call void @llvm.dbg.value(metadata i32 0, metadata !420, metadata !DIExpression()), !dbg !426
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !427
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !421, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i32 0, metadata !420, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 0, metadata !420, metadata !DIExpression()), !dbg !426
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !429
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !431
  call void @llvm.dbg.value(metadata i32 1, metadata !420, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 1, metadata !420, metadata !DIExpression()), !dbg !426
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !429
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !431
  call void @llvm.dbg.value(metadata i32 2, metadata !420, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 2, metadata !420, metadata !DIExpression()), !dbg !426
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !429
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !431
  call void @llvm.dbg.value(metadata i32 3, metadata !420, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 3, metadata !420, metadata !DIExpression()), !dbg !426
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !429
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !431
  call void @llvm.dbg.value(metadata i32 4, metadata !420, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 4, metadata !420, metadata !DIExpression()), !dbg !426
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !429
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !431
  call void @llvm.dbg.value(metadata i32 5, metadata !420, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 5, metadata !420, metadata !DIExpression()), !dbg !426
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #4, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !436, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i8** undef, metadata !437, metadata !DIExpression()), !dbg !441
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !442
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !443
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !444
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !445
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !439, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 0, metadata !438, metadata !DIExpression()), !dbg !444
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !447
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !449
  call void @llvm.dbg.value(metadata i32 1, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 1, metadata !438, metadata !DIExpression()), !dbg !444
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !447
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !449
  call void @llvm.dbg.value(metadata i32 2, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 2, metadata !438, metadata !DIExpression()), !dbg !444
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !447
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !449
  call void @llvm.dbg.value(metadata i32 3, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 3, metadata !438, metadata !DIExpression()), !dbg !444
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !447
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !449
  call void @llvm.dbg.value(metadata i32 4, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 4, metadata !438, metadata !DIExpression()), !dbg !444
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !447
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !449
  call void @llvm.dbg.value(metadata i32 5, metadata !438, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 5, metadata !438, metadata !DIExpression()), !dbg !444
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !452 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !454, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i8** undef, metadata !455, metadata !DIExpression()), !dbg !459
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !460
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !461
  call void @llvm.dbg.value(metadata i32 0, metadata !456, metadata !DIExpression()), !dbg !462
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !463
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !457, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 0, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 0, metadata !456, metadata !DIExpression()), !dbg !462
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #4, !dbg !465
  call void @llvm.dbg.value(metadata i32 1, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 1, metadata !456, metadata !DIExpression()), !dbg !462
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #4, !dbg !465
  call void @llvm.dbg.value(metadata i32 2, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 2, metadata !456, metadata !DIExpression()), !dbg !462
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #4, !dbg !465
  call void @llvm.dbg.value(metadata i32 3, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 3, metadata !456, metadata !DIExpression()), !dbg !462
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #4, !dbg !465
  call void @llvm.dbg.value(metadata i32 4, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 4, metadata !456, metadata !DIExpression()), !dbg !462
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #4, !dbg !465
  call void @llvm.dbg.value(metadata i32 5, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 5, metadata !456, metadata !DIExpression()), !dbg !462
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !469 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !471, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i8** undef, metadata !472, metadata !DIExpression()), !dbg !477
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !478
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !479
  call void @llvm.dbg.value(metadata i32 0, metadata !473, metadata !DIExpression()), !dbg !480
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !481
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !474, metadata !DIExpression()), !dbg !482
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !483
  br i1 %5, label %8, label %6, !dbg !485

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #4, !dbg !486
  br label %8, !dbg !488

; <label>:8:                                      ; preds = %2, %6
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !475, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i32 0, metadata !473, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 0, metadata !473, metadata !DIExpression()), !dbg !480
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !490
  call void @llvm.dbg.value(metadata i32 1, metadata !473, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 1, metadata !473, metadata !DIExpression()), !dbg !480
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !490
  call void @llvm.dbg.value(metadata i32 2, metadata !473, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 2, metadata !473, metadata !DIExpression()), !dbg !480
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !490
  call void @llvm.dbg.value(metadata i32 3, metadata !473, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 3, metadata !473, metadata !DIExpression()), !dbg !480
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !490
  call void @llvm.dbg.value(metadata i32 4, metadata !473, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 4, metadata !473, metadata !DIExpression()), !dbg !480
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !490
  call void @llvm.dbg.value(metadata i32 5, metadata !473, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.value(metadata i32 5, metadata !473, metadata !DIExpression()), !dbg !480
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #4, !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !494 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i8** undef, metadata !497, metadata !DIExpression()), !dbg !499
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !500
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !501
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !504 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !506, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i8** undef, metadata !507, metadata !DIExpression()), !dbg !516
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !517
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !518
  call void @llvm.dbg.value(metadata i32 0, metadata !508, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 0, metadata !508, metadata !DIExpression()), !dbg !519
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !520
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %5, metadata !509, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !510, metadata !DIExpression()), !dbg !522
  %6 = icmp eq %struct.nk_fiber* %5, null, !dbg !523
  br i1 %6, label %11, label %7, !dbg !524

; <label>:7:                                      ; preds = %26, %22, %18, %11, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !508, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 %8, metadata !508, metadata !DIExpression()), !dbg !519
  %9 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !525
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !525
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !512, metadata !DIExpression(DW_OP_deref)), !dbg !526
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #4, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !528
  br label %15

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !529
  call void @llvm.dbg.value(metadata i32 1, metadata !508, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 1, metadata !508, metadata !DIExpression()), !dbg !519
  %13 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !520
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !509, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !510, metadata !DIExpression()), !dbg !522
  %14 = icmp eq %struct.nk_fiber* %13, null, !dbg !523
  br i1 %14, label %18, label %7, !dbg !524

; <label>:15:                                     ; preds = %30, %7
  %16 = phi i32 [ %8, %7 ], [ 5, %30 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !508, metadata !DIExpression()), !dbg !519
  %17 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %16) #4, !dbg !530
  ret void, !dbg !531

; <label>:18:                                     ; preds = %11
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !529
  call void @llvm.dbg.value(metadata i32 2, metadata !508, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 2, metadata !508, metadata !DIExpression()), !dbg !519
  %20 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !520
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !509, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !510, metadata !DIExpression()), !dbg !522
  %21 = icmp eq %struct.nk_fiber* %20, null, !dbg !523
  br i1 %21, label %22, label %7, !dbg !524

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !529
  call void @llvm.dbg.value(metadata i32 3, metadata !508, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 3, metadata !508, metadata !DIExpression()), !dbg !519
  %24 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !520
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !509, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !510, metadata !DIExpression()), !dbg !522
  %25 = icmp eq %struct.nk_fiber* %24, null, !dbg !523
  br i1 %25, label %26, label %7, !dbg !524

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !529
  call void @llvm.dbg.value(metadata i32 4, metadata !508, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 4, metadata !508, metadata !DIExpression()), !dbg !519
  %28 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !520
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %28, metadata !509, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !510, metadata !DIExpression()), !dbg !522
  %29 = icmp eq %struct.nk_fiber* %28, null, !dbg !523
  br i1 %29, label %30, label %7, !dbg !524

; <label>:30:                                     ; preds = %26
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !529
  call void @llvm.dbg.value(metadata i32 5, metadata !508, metadata !DIExpression()), !dbg !519
  br label %15, !dbg !530
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !532 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !534, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i8** undef, metadata !535, metadata !DIExpression()), !dbg !541
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !542
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !543
  call void @llvm.dbg.value(metadata i32 0, metadata !536, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 0, metadata !536, metadata !DIExpression()), !dbg !544
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !537, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !538, metadata !DIExpression()), !dbg !547
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !548
  call void @llvm.dbg.value(metadata i32 1, metadata !536, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 1, metadata !536, metadata !DIExpression()), !dbg !544
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !537, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !538, metadata !DIExpression()), !dbg !547
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !548
  call void @llvm.dbg.value(metadata i32 2, metadata !536, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 2, metadata !536, metadata !DIExpression()), !dbg !544
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !537, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !538, metadata !DIExpression()), !dbg !547
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !548
  call void @llvm.dbg.value(metadata i32 3, metadata !536, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 3, metadata !536, metadata !DIExpression()), !dbg !544
  %10 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %10, metadata !537, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !538, metadata !DIExpression()), !dbg !547
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !548
  call void @llvm.dbg.value(metadata i32 4, metadata !536, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 4, metadata !536, metadata !DIExpression()), !dbg !544
  %12 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !537, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !538, metadata !DIExpression()), !dbg !547
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !548
  call void @llvm.dbg.value(metadata i32 5, metadata !536, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 5, metadata !536, metadata !DIExpression()), !dbg !544
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #4, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !551 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !553, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i8** undef, metadata !554, metadata !DIExpression()), !dbg !559
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !560
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !561
  call void @llvm.dbg.value(metadata i32 0, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 0, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 0, metadata !557, metadata !DIExpression()), !dbg !564
  br label %4, !dbg !565

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 %6, metadata !555, metadata !DIExpression()), !dbg !562
  %7 = icmp eq i32 %6, 2, !dbg !566
  br i1 %7, label %8, label %16, !dbg !569

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !570, !srcloc !580
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !570
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !570
  call void @llvm.dbg.value(metadata i32 %10, metadata !576, metadata !DIExpression()) #5, !dbg !581
  call void @llvm.dbg.value(metadata i32 %11, metadata !577, metadata !DIExpression()) #5, !dbg !582
  %12 = zext i32 %10 to i64, !dbg !583
  %13 = zext i32 %11 to i64, !dbg !584
  %14 = shl nuw i64 %13, 32, !dbg !585
  %15 = or i64 %14, %12, !dbg !586
  call void @llvm.dbg.value(metadata i64 %15, metadata !556, metadata !DIExpression()), !dbg !563
  br label %16, !dbg !587

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !588
  %18 = add nuw nsw i32 %6, 1, !dbg !589
  call void @llvm.dbg.value(metadata i64 %17, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 %18, metadata !555, metadata !DIExpression()), !dbg !562
  %19 = icmp eq i32 %18, 100000, !dbg !590
  br i1 %19, label %20, label %4, !dbg !565, !llvm.loop !591

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %17, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %17, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %17, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %17, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 100000, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %17, metadata !556, metadata !DIExpression()), !dbg !563
  %21 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !593, !srcloc !580
  %22 = extractvalue { i32, i32 } %21, 0, !dbg !593
  %23 = extractvalue { i32, i32 } %21, 1, !dbg !593
  call void @llvm.dbg.value(metadata i32 %22, metadata !576, metadata !DIExpression()) #5, !dbg !595
  call void @llvm.dbg.value(metadata i32 %23, metadata !577, metadata !DIExpression()) #5, !dbg !596
  %24 = zext i32 %22 to i64, !dbg !597
  %25 = zext i32 %23 to i64, !dbg !598
  %26 = shl nuw i64 %25, 32, !dbg !599
  %27 = or i64 %26, %24, !dbg !600
  call void @llvm.dbg.value(metadata i64 %27, metadata !557, metadata !DIExpression()), !dbg !564
  %28 = sub i64 %27, %17, !dbg !601
  %29 = udiv i64 %28, 100000, !dbg !602
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %28, i64 %29) #4, !dbg !603
  ret void, !dbg !604
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !605 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !607, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8** undef, metadata !608, metadata !DIExpression()), !dbg !611
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !612
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !613
  call void @llvm.dbg.value(metadata i32 0, metadata !609, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 undef, metadata !609, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 100000, metadata !609, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i32 100000, metadata !609, metadata !DIExpression()), !dbg !614
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #4, !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !617 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !623
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !624
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !624
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !625, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !625
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !636
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !637
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !637
  %8 = load i64, i64* %7, align 8, !dbg !637
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !638
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !621, metadata !DIExpression(DW_OP_deref)), !dbg !639
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !640
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !622, metadata !DIExpression(DW_OP_deref)), !dbg !641
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !642
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !643
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !643
  ret i32 0, !dbg !644
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !645 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !648
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !648
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !649, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !633, metadata !DIExpression()) #5, !dbg !649
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !632, metadata !DIExpression()) #5, !dbg !651
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !652
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !652
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !653
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !654
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !647, metadata !DIExpression(DW_OP_deref)), !dbg !655
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !656
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !657
  ret i32 0, !dbg !658
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !659 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !664
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !665
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !666
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !666
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !667, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !633, metadata !DIExpression()) #5, !dbg !667
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !632, metadata !DIExpression()) #5, !dbg !669
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !670
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !670
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !671
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #4, !dbg !672
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !661, metadata !DIExpression(DW_OP_deref)), !dbg !673
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !674
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !675
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !676
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !663, metadata !DIExpression(DW_OP_deref)), !dbg !677
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !678
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !679
  ret i32 0, !dbg !680
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !681 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !687
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !687
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !688
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !689
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !689
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !690
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !690
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !691, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !633, metadata !DIExpression()) #5, !dbg !691
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !632, metadata !DIExpression()) #5, !dbg !693
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !694
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !694
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !695
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !696
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !686, metadata !DIExpression(DW_OP_deref)), !dbg !697
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #4, !dbg !698
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !683, metadata !DIExpression(DW_OP_deref)), !dbg !699
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #4, !dbg !700
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !685, metadata !DIExpression(DW_OP_deref)), !dbg !701
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #4, !dbg !702
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !684, metadata !DIExpression(DW_OP_deref)), !dbg !703
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #4, !dbg !704
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !705
  %18 = load i64, i64* %17, align 8, !dbg !705
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !684, metadata !DIExpression(DW_OP_deref)), !dbg !703
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !706
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !683, metadata !DIExpression()), !dbg !699
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !707
  %21 = bitcast i8** %20 to i64*, !dbg !708
  store i64 %18, i64* %21, align 8, !dbg !708
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !709
  %23 = load i64, i64* %22, align 8, !dbg !709
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !685, metadata !DIExpression(DW_OP_deref)), !dbg !701
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !710
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !684, metadata !DIExpression()), !dbg !703
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !711
  %26 = bitcast i8** %25 to i64*, !dbg !712
  store i64 %23, i64* %26, align 8, !dbg !712
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !713
  %28 = load i64, i64* %27, align 8, !dbg !713
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !686, metadata !DIExpression(DW_OP_deref)), !dbg !697
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !714
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !685, metadata !DIExpression()), !dbg !701
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !715
  %31 = bitcast i8** %30 to i64*, !dbg !716
  store i64 %28, i64* %31, align 8, !dbg !716
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !717
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !683, metadata !DIExpression(DW_OP_deref)), !dbg !699
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !718
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !686, metadata !DIExpression()), !dbg !697
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !719
  %35 = bitcast i8** %34 to i64*, !dbg !720
  store i64 %32, i64* %35, align 8, !dbg !720
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !686, metadata !DIExpression()), !dbg !697
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #4, !dbg !721
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !722
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !683, metadata !DIExpression()), !dbg !699
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #4, !dbg !723
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !724
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !685, metadata !DIExpression()), !dbg !701
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #4, !dbg !725
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !726
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !684, metadata !DIExpression()), !dbg !703
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #4, !dbg !727
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !728
  ret i32 0, !dbg !729
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !730 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !733
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !734, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !633, metadata !DIExpression()) #5, !dbg !734
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !632, metadata !DIExpression()) #5, !dbg !736
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !737
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !737
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !738
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !739
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !732, metadata !DIExpression(DW_OP_deref)), !dbg !740
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !741
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !742
  ret i32 0, !dbg !743
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !744 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !747
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !747
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !748, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !633, metadata !DIExpression()) #5, !dbg !748
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !632, metadata !DIExpression()) #5, !dbg !750
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !751
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !751
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !752
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !753
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !746, metadata !DIExpression(DW_OP_deref)), !dbg !754
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !755
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !756
  ret i32 0, !dbg !757
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !758 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !761
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !762, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !633, metadata !DIExpression()) #5, !dbg !762
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !632, metadata !DIExpression()) #5, !dbg !764
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !765
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !765
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !766
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !767
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !760, metadata !DIExpression(DW_OP_deref)), !dbg !768
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !769
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !770
  ret i32 0, !dbg !771
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !772 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !775
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !775
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !776, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !633, metadata !DIExpression()) #5, !dbg !776
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !632, metadata !DIExpression()) #5, !dbg !778
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !779
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !779
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !780
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !781
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !774, metadata !DIExpression(DW_OP_deref)), !dbg !782
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !783
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !784
  ret i32 0, !dbg !785
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !786 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !789
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !790, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !633, metadata !DIExpression()) #5, !dbg !790
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !632, metadata !DIExpression()) #5, !dbg !792
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !793
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !793
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !794
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !795
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !788, metadata !DIExpression(DW_OP_deref)), !dbg !796
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !797
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !798
  ret i32 0, !dbg !799
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !800 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !804
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !804
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !805
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !805
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !806, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !806
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !808
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !809
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !809
  %8 = load i64, i64* %7, align 8, !dbg !809
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !810
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !802, metadata !DIExpression(DW_OP_deref)), !dbg !811
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !812
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !803, metadata !DIExpression(DW_OP_deref)), !dbg !813
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !814
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !815
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !815
  ret i32 0, !dbg !816
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !817 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !819, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i8* %1, metadata !820, metadata !DIExpression()), !dbg !822
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !823
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !825
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !826
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !826
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !827, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !633, metadata !DIExpression()) #5, !dbg !827
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !632, metadata !DIExpression()) #5, !dbg !829
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !830
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !830
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !831
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !832
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !661, metadata !DIExpression(DW_OP_deref)) #5, !dbg !833
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !834
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !662, metadata !DIExpression(DW_OP_deref)) #5, !dbg !835
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !836
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !663, metadata !DIExpression(DW_OP_deref)) #5, !dbg !837
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #4, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !839
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !839
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !839
  ret i32 0, !dbg !840
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !841 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !843, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i8* %1, metadata !844, metadata !DIExpression()), !dbg !846
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !847
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !847
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !849, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !849
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !851
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !852
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !852
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !853
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !854
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !647, metadata !DIExpression(DW_OP_deref)) #5, !dbg !855
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !856
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !857
  ret i32 0, !dbg !858
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !859 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !861, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i8* %1, metadata !862, metadata !DIExpression()), !dbg !864
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !865
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !865
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !867
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !867
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !868, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !633, metadata !DIExpression()) #5, !dbg !868
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !632, metadata !DIExpression()) #5, !dbg !870
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !871
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !871
  %10 = load i64, i64* %9, align 8, !dbg !871
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !872
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !621, metadata !DIExpression(DW_OP_deref)) #5, !dbg !873
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !874
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !622, metadata !DIExpression(DW_OP_deref)) #5, !dbg !875
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !876
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !877
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !877
  ret i32 0, !dbg !878
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !879 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !881, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %1, metadata !882, metadata !DIExpression()), !dbg !884
  %3 = tail call i32 @test_yield_to() #6, !dbg !885
  ret i32 0, !dbg !886
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !887 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !889, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %1, metadata !890, metadata !DIExpression()), !dbg !892
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !893
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !895, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !895
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !897
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !898
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !898
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !899
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !900
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !732, metadata !DIExpression(DW_OP_deref)) #5, !dbg !901
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !903
  ret i32 0, !dbg !904
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !905 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !907, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %1, metadata !908, metadata !DIExpression()), !dbg !910
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !911
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !913, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !913
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !915
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !916
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !916
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !917
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !918
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !746, metadata !DIExpression(DW_OP_deref)) #5, !dbg !919
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !921
  ret i32 0, !dbg !922
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !923 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !925, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i8* %1, metadata !926, metadata !DIExpression()), !dbg !928
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !929
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !929
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !931, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !931
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !933
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !934
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !934
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !935
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !936
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !760, metadata !DIExpression(DW_OP_deref)) #5, !dbg !937
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !938
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !939
  ret i32 0, !dbg !940
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !941 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !943, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8* %1, metadata !944, metadata !DIExpression()), !dbg !946
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !947
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !947
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !949, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !949
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !951
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !952
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !952
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !953
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !954
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !774, metadata !DIExpression(DW_OP_deref)) #5, !dbg !955
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !957
  ret i32 0, !dbg !958
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !959 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !961, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i8* %1, metadata !962, metadata !DIExpression()), !dbg !964
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !965
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !967, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !633, metadata !DIExpression()) #5, !dbg !967
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !632, metadata !DIExpression()) #5, !dbg !969
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !970
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !970
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !971
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !972
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !788, metadata !DIExpression(DW_OP_deref)) #5, !dbg !973
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !974
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !975
  ret i32 0, !dbg !976
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !977 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !979, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %1, metadata !980, metadata !DIExpression()), !dbg !982
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !983
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !983
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !985
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !985
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !986, !srcloc !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !633, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !632, metadata !DIExpression()) #5, !dbg !988
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !989
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !989
  %10 = load i64, i64* %9, align 8, !dbg !989
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !990
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !802, metadata !DIExpression(DW_OP_deref)) #5, !dbg !991
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !992
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !803, metadata !DIExpression(DW_OP_deref)) #5, !dbg !993
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !994
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !995
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !995
  ret i32 0, !dbg !996
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
!219 = !DILocation(line: 76, column: 3, scope: !207)
!220 = !DILocation(line: 77, column: 1, scope: !207)
!221 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!222 = !{!223, !224, !225, !226}
!223 = !DILocalVariable(name: "i", arg: 1, scope: !221, file: !3, line: 79, type: !33)
!224 = !DILocalVariable(name: "o", arg: 2, scope: !221, file: !3, line: 79, type: !66)
!225 = !DILocalVariable(name: "a", scope: !221, file: !3, line: 82, type: !50)
!226 = !DILocalVariable(name: "f_inner", scope: !227, file: !3, line: 85, type: !24)
!227 = distinct !DILexicalBlock(scope: !221, file: !3, line: 83, column: 15)
!228 = !DILocation(line: 79, column: 24, scope: !221)
!229 = !DILocation(line: 79, column: 34, scope: !221)
!230 = !DILocation(line: 81, column: 19, scope: !221)
!231 = !DILocation(line: 81, column: 3, scope: !221)
!232 = !DILocation(line: 82, column: 7, scope: !221)
!233 = !DILocation(line: 84, column: 5, scope: !227)
!234 = !DILocation(line: 85, column: 5, scope: !227)
!235 = !DILocation(line: 85, column: 17, scope: !227)
!236 = !DILocation(line: 86, column: 5, scope: !227)
!237 = !DILocation(line: 88, column: 3, scope: !221)
!238 = !DILocation(line: 89, column: 3, scope: !221)
!239 = !DILocation(line: 90, column: 1, scope: !221)
!240 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!241 = !{!242, !243, !244}
!242 = !DILocalVariable(name: "i", arg: 1, scope: !240, file: !3, line: 92, type: !33)
!243 = !DILocalVariable(name: "o", arg: 2, scope: !240, file: !3, line: 92, type: !66)
!244 = !DILocalVariable(name: "a", scope: !240, file: !3, line: 95, type: !50)
!245 = !DILocation(line: 92, column: 29, scope: !240)
!246 = !DILocation(line: 92, column: 39, scope: !240)
!247 = !DILocation(line: 94, column: 19, scope: !240)
!248 = !DILocation(line: 94, column: 3, scope: !240)
!249 = !DILocation(line: 95, column: 7, scope: !240)
!250 = !DILocation(line: 97, column: 5, scope: !251)
!251 = distinct !DILexicalBlock(scope: !240, file: !3, line: 96, column: 16)
!252 = !DILocation(line: 100, column: 3, scope: !240)
!253 = !DILocation(line: 101, column: 1, scope: !240)
!254 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DILocalVariable(name: "i", arg: 1, scope: !254, file: !3, line: 103, type: !33)
!257 = !DILocalVariable(name: "o", arg: 2, scope: !254, file: !3, line: 103, type: !66)
!258 = !DILocalVariable(name: "a", scope: !254, file: !3, line: 106, type: !50)
!259 = !DILocalVariable(name: "f_inner_join", scope: !260, file: !3, line: 109, type: !24)
!260 = distinct !DILexicalBlock(scope: !254, file: !3, line: 107, column: 15)
!261 = !DILocation(line: 103, column: 29, scope: !254)
!262 = !DILocation(line: 103, column: 39, scope: !254)
!263 = !DILocation(line: 105, column: 19, scope: !254)
!264 = !DILocation(line: 105, column: 3, scope: !254)
!265 = !DILocation(line: 106, column: 7, scope: !254)
!266 = !DILocation(line: 108, column: 5, scope: !260)
!267 = !DILocation(line: 109, column: 5, scope: !260)
!268 = !DILocation(line: 109, column: 17, scope: !260)
!269 = !DILocation(line: 110, column: 5, scope: !260)
!270 = !DILocation(line: 111, column: 19, scope: !260)
!271 = !DILocation(line: 111, column: 5, scope: !260)
!272 = !DILocation(line: 113, column: 3, scope: !254)
!273 = !DILocation(line: 114, column: 3, scope: !254)
!274 = !DILocation(line: 115, column: 1, scope: !254)
!275 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !276)
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "i", arg: 1, scope: !275, file: !3, line: 119, type: !33)
!278 = !DILocalVariable(name: "o", arg: 2, scope: !275, file: !3, line: 119, type: !66)
!279 = !DILocalVariable(name: "a", scope: !275, file: !3, line: 122, type: !50)
!280 = !DILocation(line: 119, column: 19, scope: !275)
!281 = !DILocation(line: 119, column: 29, scope: !275)
!282 = !DILocation(line: 121, column: 19, scope: !275)
!283 = !DILocation(line: 121, column: 3, scope: !275)
!284 = !DILocation(line: 122, column: 7, scope: !275)
!285 = !DILocation(line: 124, column: 5, scope: !286)
!286 = distinct !DILexicalBlock(scope: !275, file: !3, line: 123, column: 16)
!287 = !DILocation(line: 127, column: 3, scope: !275)
!288 = !DILocation(line: 128, column: 1, scope: !275)
!289 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!290 = !{!291, !292, !293, !294}
!291 = !DILocalVariable(name: "i", arg: 1, scope: !289, file: !3, line: 131, type: !33)
!292 = !DILocalVariable(name: "o", arg: 2, scope: !289, file: !3, line: 131, type: !66)
!293 = !DILocalVariable(name: "a", scope: !289, file: !3, line: 134, type: !50)
!294 = !DILocalVariable(name: "f4", scope: !289, file: !3, line: 140, type: !24)
!295 = !DILocation(line: 131, column: 19, scope: !289)
!296 = !DILocation(line: 131, column: 29, scope: !289)
!297 = !DILocation(line: 133, column: 19, scope: !289)
!298 = !DILocation(line: 133, column: 3, scope: !289)
!299 = !DILocation(line: 134, column: 7, scope: !289)
!300 = !DILocation(line: 136, column: 5, scope: !301)
!301 = distinct !DILexicalBlock(scope: !289, file: !3, line: 135, column: 15)
!302 = !DILocation(line: 139, column: 3, scope: !289)
!303 = !DILocation(line: 140, column: 3, scope: !289)
!304 = !DILocation(line: 140, column: 15, scope: !289)
!305 = !DILocation(line: 141, column: 3, scope: !289)
!306 = !DILocation(line: 142, column: 1, scope: !289)
!307 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!308 = !{!309, !310, !311, !312}
!309 = !DILocalVariable(name: "i", arg: 1, scope: !307, file: !3, line: 144, type: !33)
!310 = !DILocalVariable(name: "o", arg: 2, scope: !307, file: !3, line: 144, type: !66)
!311 = !DILocalVariable(name: "a", scope: !307, file: !3, line: 147, type: !50)
!312 = !DILocalVariable(name: "f3", scope: !307, file: !3, line: 154, type: !24)
!313 = !DILocation(line: 144, column: 19, scope: !307)
!314 = !DILocation(line: 144, column: 29, scope: !307)
!315 = !DILocation(line: 146, column: 19, scope: !307)
!316 = !DILocation(line: 146, column: 3, scope: !307)
!317 = !DILocation(line: 147, column: 7, scope: !307)
!318 = !DILocation(line: 149, column: 5, scope: !319)
!319 = distinct !DILexicalBlock(scope: !307, file: !3, line: 148, column: 15)
!320 = !DILocation(line: 150, column: 5, scope: !319)
!321 = !DILocation(line: 153, column: 3, scope: !307)
!322 = !DILocation(line: 154, column: 3, scope: !307)
!323 = !DILocation(line: 154, column: 15, scope: !307)
!324 = !DILocation(line: 155, column: 3, scope: !307)
!325 = !DILocation(line: 156, column: 1, scope: !307)
!326 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!327 = !{!328, !329, !330, !331}
!328 = !DILocalVariable(name: "i", arg: 1, scope: !326, file: !3, line: 159, type: !33)
!329 = !DILocalVariable(name: "o", arg: 2, scope: !326, file: !3, line: 159, type: !66)
!330 = !DILocalVariable(name: "a", scope: !326, file: !3, line: 162, type: !50)
!331 = !DILocalVariable(name: "f4", scope: !326, file: !3, line: 168, type: !24)
!332 = !DILocation(line: 159, column: 19, scope: !326)
!333 = !DILocation(line: 159, column: 29, scope: !326)
!334 = !DILocation(line: 161, column: 19, scope: !326)
!335 = !DILocation(line: 161, column: 3, scope: !326)
!336 = !DILocation(line: 162, column: 7, scope: !326)
!337 = !DILocation(line: 164, column: 5, scope: !338)
!338 = distinct !DILexicalBlock(scope: !326, file: !3, line: 163, column: 16)
!339 = !DILocation(line: 167, column: 3, scope: !326)
!340 = !DILocation(line: 168, column: 3, scope: !326)
!341 = !DILocation(line: 168, column: 15, scope: !326)
!342 = !DILocation(line: 169, column: 3, scope: !326)
!343 = !DILocation(line: 170, column: 1, scope: !326)
!344 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!345 = !{!346, !347, !348}
!346 = !DILocalVariable(name: "i", arg: 1, scope: !344, file: !3, line: 172, type: !33)
!347 = !DILocalVariable(name: "o", arg: 2, scope: !344, file: !3, line: 172, type: !66)
!348 = !DILocalVariable(name: "i", scope: !349, file: !3, line: 174, type: !50)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 174, column: 3)
!350 = !DILocation(line: 172, column: 23, scope: !344)
!351 = !DILocation(line: 172, column: 33, scope: !344)
!352 = !DILocation(line: 173, column: 19, scope: !344)
!353 = !DILocation(line: 173, column: 3, scope: !344)
!354 = !DILocation(line: 174, column: 12, scope: !349)
!355 = !DILocation(line: 176, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 175, column: 22)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 175, column: 9)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 174, column: 31)
!359 = distinct !DILexicalBlock(scope: !349, file: !3, line: 174, column: 3)
!360 = !DILocation(line: 180, column: 3, scope: !344)
!361 = !DILocation(line: 182, column: 3, scope: !344)
!362 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!363 = !{!364, !365, !366}
!364 = !DILocalVariable(name: "i", arg: 1, scope: !362, file: !3, line: 185, type: !33)
!365 = !DILocalVariable(name: "o", arg: 2, scope: !362, file: !3, line: 185, type: !66)
!366 = !DILocalVariable(name: "i", scope: !367, file: !3, line: 187, type: !50)
!367 = distinct !DILexicalBlock(scope: !362, file: !3, line: 187, column: 3)
!368 = !DILocation(line: 185, column: 22, scope: !362)
!369 = !DILocation(line: 185, column: 32, scope: !362)
!370 = !DILocation(line: 186, column: 19, scope: !362)
!371 = !DILocation(line: 186, column: 3, scope: !362)
!372 = !DILocation(line: 187, column: 12, scope: !367)
!373 = !DILocation(line: 189, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 188, column: 22)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 188, column: 9)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 187, column: 31)
!377 = distinct !DILexicalBlock(scope: !367, file: !3, line: 187, column: 3)
!378 = !DILocation(line: 193, column: 3, scope: !362)
!379 = !DILocation(line: 195, column: 3, scope: !362)
!380 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!381 = !{!382, !383, !384, !385}
!382 = !DILocalVariable(name: "i", arg: 1, scope: !380, file: !3, line: 198, type: !33)
!383 = !DILocalVariable(name: "o", arg: 2, scope: !380, file: !3, line: 198, type: !66)
!384 = !DILocalVariable(name: "a", scope: !380, file: !3, line: 201, type: !50)
!385 = !DILocalVariable(name: "f_to", scope: !380, file: !3, line: 202, type: !24)
!386 = !DILocation(line: 198, column: 24, scope: !380)
!387 = !DILocation(line: 198, column: 34, scope: !380)
!388 = !DILocation(line: 200, column: 19, scope: !380)
!389 = !DILocation(line: 200, column: 3, scope: !380)
!390 = !DILocation(line: 201, column: 7, scope: !380)
!391 = !DILocation(line: 202, column: 22, scope: !380)
!392 = !DILocation(line: 202, column: 15, scope: !380)
!393 = !DILocation(line: 204, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !380, file: !3, line: 203, column: 15)
!395 = !DILocation(line: 205, column: 5, scope: !394)
!396 = !DILocation(line: 207, column: 3, scope: !380)
!397 = !DILocation(line: 208, column: 1, scope: !380)
!398 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !399)
!399 = !{!400, !401, !402, !403}
!400 = !DILocalVariable(name: "i", arg: 1, scope: !398, file: !3, line: 211, type: !33)
!401 = !DILocalVariable(name: "o", arg: 2, scope: !398, file: !3, line: 211, type: !66)
!402 = !DILocalVariable(name: "a", scope: !398, file: !3, line: 214, type: !50)
!403 = !DILocalVariable(name: "f_to", scope: !398, file: !3, line: 215, type: !24)
!404 = !DILocation(line: 211, column: 25, scope: !398)
!405 = !DILocation(line: 211, column: 35, scope: !398)
!406 = !DILocation(line: 213, column: 19, scope: !398)
!407 = !DILocation(line: 213, column: 3, scope: !398)
!408 = !DILocation(line: 214, column: 7, scope: !398)
!409 = !DILocation(line: 215, column: 22, scope: !398)
!410 = !DILocation(line: 215, column: 15, scope: !398)
!411 = !DILocation(line: 217, column: 5, scope: !412)
!412 = distinct !DILexicalBlock(scope: !398, file: !3, line: 216, column: 15)
!413 = !DILocation(line: 218, column: 5, scope: !412)
!414 = !DILocation(line: 220, column: 3, scope: !398)
!415 = !DILocation(line: 221, column: 1, scope: !398)
!416 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!417 = !{!418, !419, !420, !421}
!418 = !DILocalVariable(name: "i", arg: 1, scope: !416, file: !3, line: 223, type: !33)
!419 = !DILocalVariable(name: "o", arg: 2, scope: !416, file: !3, line: 223, type: !66)
!420 = !DILocalVariable(name: "a", scope: !416, file: !3, line: 226, type: !50)
!421 = !DILocalVariable(name: "f_to", scope: !416, file: !3, line: 228, type: !24)
!422 = !DILocation(line: 223, column: 24, scope: !416)
!423 = !DILocation(line: 223, column: 34, scope: !416)
!424 = !DILocation(line: 225, column: 19, scope: !416)
!425 = !DILocation(line: 225, column: 3, scope: !416)
!426 = !DILocation(line: 226, column: 7, scope: !416)
!427 = !DILocation(line: 228, column: 22, scope: !416)
!428 = !DILocation(line: 228, column: 15, scope: !416)
!429 = !DILocation(line: 230, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !416, file: !3, line: 229, column: 15)
!431 = !DILocation(line: 231, column: 5, scope: !430)
!432 = !DILocation(line: 233, column: 3, scope: !416)
!433 = !DILocation(line: 234, column: 1, scope: !416)
!434 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!435 = !{!436, !437, !438, !439}
!436 = !DILocalVariable(name: "i", arg: 1, scope: !434, file: !3, line: 236, type: !33)
!437 = !DILocalVariable(name: "o", arg: 2, scope: !434, file: !3, line: 236, type: !66)
!438 = !DILocalVariable(name: "a", scope: !434, file: !3, line: 239, type: !50)
!439 = !DILocalVariable(name: "f_to", scope: !434, file: !3, line: 241, type: !24)
!440 = !DILocation(line: 236, column: 25, scope: !434)
!441 = !DILocation(line: 236, column: 35, scope: !434)
!442 = !DILocation(line: 238, column: 19, scope: !434)
!443 = !DILocation(line: 238, column: 3, scope: !434)
!444 = !DILocation(line: 239, column: 7, scope: !434)
!445 = !DILocation(line: 241, column: 22, scope: !434)
!446 = !DILocation(line: 241, column: 15, scope: !434)
!447 = !DILocation(line: 243, column: 5, scope: !448)
!448 = distinct !DILexicalBlock(scope: !434, file: !3, line: 242, column: 15)
!449 = !DILocation(line: 244, column: 5, scope: !448)
!450 = !DILocation(line: 246, column: 3, scope: !434)
!451 = !DILocation(line: 247, column: 1, scope: !434)
!452 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!453 = !{!454, !455, !456, !457}
!454 = !DILocalVariable(name: "i", arg: 1, scope: !452, file: !3, line: 249, type: !33)
!455 = !DILocalVariable(name: "o", arg: 2, scope: !452, file: !3, line: 249, type: !66)
!456 = !DILocalVariable(name: "a", scope: !452, file: !3, line: 252, type: !50)
!457 = !DILocalVariable(name: "f_new", scope: !452, file: !3, line: 253, type: !24)
!458 = !DILocation(line: 249, column: 23, scope: !452)
!459 = !DILocation(line: 249, column: 33, scope: !452)
!460 = !DILocation(line: 251, column: 19, scope: !452)
!461 = !DILocation(line: 251, column: 3, scope: !452)
!462 = !DILocation(line: 252, column: 7, scope: !452)
!463 = !DILocation(line: 254, column: 11, scope: !452)
!464 = !DILocation(line: 253, column: 15, scope: !452)
!465 = !DILocation(line: 257, column: 5, scope: !466)
!466 = distinct !DILexicalBlock(scope: !452, file: !3, line: 255, column: 15)
!467 = !DILocation(line: 260, column: 3, scope: !452)
!468 = !DILocation(line: 261, column: 1, scope: !452)
!469 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!470 = !{!471, !472, !473, !474, !475}
!471 = !DILocalVariable(name: "i", arg: 1, scope: !469, file: !3, line: 263, type: !33)
!472 = !DILocalVariable(name: "o", arg: 2, scope: !469, file: !3, line: 263, type: !66)
!473 = !DILocalVariable(name: "a", scope: !469, file: !3, line: 266, type: !50)
!474 = !DILocalVariable(name: "f_new", scope: !469, file: !3, line: 267, type: !24)
!475 = !DILocalVariable(name: "f_curr", scope: !469, file: !3, line: 274, type: !24)
!476 = !DILocation(line: 263, column: 28, scope: !469)
!477 = !DILocation(line: 263, column: 38, scope: !469)
!478 = !DILocation(line: 265, column: 19, scope: !469)
!479 = !DILocation(line: 265, column: 3, scope: !469)
!480 = !DILocation(line: 266, column: 7, scope: !469)
!481 = !DILocation(line: 268, column: 11, scope: !469)
!482 = !DILocation(line: 267, column: 15, scope: !469)
!483 = !DILocation(line: 269, column: 6, scope: !484)
!484 = distinct !DILexicalBlock(scope: !469, file: !3, line: 269, column: 6)
!485 = !DILocation(line: 269, column: 6, scope: !469)
!486 = !DILocation(line: 270, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 269, column: 12)
!488 = !DILocation(line: 271, column: 3, scope: !487)
!489 = !DILocation(line: 274, column: 15, scope: !469)
!490 = !DILocation(line: 276, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !469, file: !3, line: 275, column: 15)
!492 = !DILocation(line: 279, column: 3, scope: !469)
!493 = !DILocation(line: 280, column: 1, scope: !469)
!494 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!495 = !{!496, !497}
!496 = !DILocalVariable(name: "i", arg: 1, scope: !494, file: !3, line: 282, type: !33)
!497 = !DILocalVariable(name: "o", arg: 2, scope: !494, file: !3, line: 282, type: !66)
!498 = !DILocation(line: 282, column: 27, scope: !494)
!499 = !DILocation(line: 282, column: 37, scope: !494)
!500 = !DILocation(line: 284, column: 19, scope: !494)
!501 = !DILocation(line: 284, column: 3, scope: !494)
!502 = !DILocation(line: 286, column: 3, scope: !494)
!503 = !DILocation(line: 287, column: 1, scope: !494)
!504 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!505 = !{!506, !507, !508, !509, !510, !512}
!506 = !DILocalVariable(name: "i", arg: 1, scope: !504, file: !3, line: 290, type: !33)
!507 = !DILocalVariable(name: "o", arg: 2, scope: !504, file: !3, line: 290, type: !66)
!508 = !DILocalVariable(name: "a", scope: !504, file: !3, line: 293, type: !50)
!509 = !DILocalVariable(name: "f_new", scope: !504, file: !3, line: 294, type: !24)
!510 = !DILocalVariable(name: "curr", scope: !511, file: !3, line: 298, type: !24)
!511 = distinct !DILexicalBlock(scope: !504, file: !3, line: 295, column: 15)
!512 = !DILocalVariable(name: "new", scope: !513, file: !3, line: 300, type: !24)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 299, column: 14)
!514 = distinct !DILexicalBlock(scope: !511, file: !3, line: 299, column: 8)
!515 = !DILocation(line: 290, column: 27, scope: !504)
!516 = !DILocation(line: 290, column: 37, scope: !504)
!517 = !DILocation(line: 292, column: 19, scope: !504)
!518 = !DILocation(line: 292, column: 3, scope: !504)
!519 = !DILocation(line: 293, column: 7, scope: !504)
!520 = !DILocation(line: 296, column: 13, scope: !511)
!521 = !DILocation(line: 294, column: 15, scope: !504)
!522 = !DILocation(line: 298, column: 17, scope: !511)
!523 = !DILocation(line: 299, column: 8, scope: !514)
!524 = !DILocation(line: 299, column: 8, scope: !511)
!525 = !DILocation(line: 300, column: 7, scope: !513)
!526 = !DILocation(line: 300, column: 19, scope: !513)
!527 = !DILocation(line: 301, column: 7, scope: !513)
!528 = !DILocation(line: 303, column: 5, scope: !514)
!529 = !DILocation(line: 304, column: 5, scope: !511)
!530 = !DILocation(line: 307, column: 3, scope: !504)
!531 = !DILocation(line: 308, column: 1, scope: !504)
!532 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!533 = !{!534, !535, !536, !537, !538}
!534 = !DILocalVariable(name: "i", arg: 1, scope: !532, file: !3, line: 310, type: !33)
!535 = !DILocalVariable(name: "o", arg: 2, scope: !532, file: !3, line: 310, type: !66)
!536 = !DILocalVariable(name: "a", scope: !532, file: !3, line: 313, type: !50)
!537 = !DILocalVariable(name: "f_new", scope: !532, file: !3, line: 314, type: !24)
!538 = !DILocalVariable(name: "curr", scope: !539, file: !3, line: 318, type: !24)
!539 = distinct !DILexicalBlock(scope: !532, file: !3, line: 315, column: 15)
!540 = !DILocation(line: 310, column: 27, scope: !532)
!541 = !DILocation(line: 310, column: 37, scope: !532)
!542 = !DILocation(line: 312, column: 19, scope: !532)
!543 = !DILocation(line: 312, column: 3, scope: !532)
!544 = !DILocation(line: 313, column: 7, scope: !532)
!545 = !DILocation(line: 316, column: 13, scope: !539)
!546 = !DILocation(line: 314, column: 15, scope: !532)
!547 = !DILocation(line: 318, column: 17, scope: !539)
!548 = !DILocation(line: 319, column: 5, scope: !539)
!549 = !DILocation(line: 322, column: 3, scope: !532)
!550 = !DILocation(line: 323, column: 1, scope: !532)
!551 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!552 = !{!553, !554, !555, !556, !557}
!553 = !DILocalVariable(name: "i", arg: 1, scope: !551, file: !3, line: 326, type: !33)
!554 = !DILocalVariable(name: "o", arg: 2, scope: !551, file: !3, line: 326, type: !66)
!555 = !DILocalVariable(name: "a", scope: !551, file: !3, line: 329, type: !50)
!556 = !DILocalVariable(name: "start", scope: !551, file: !3, line: 330, type: !29)
!557 = !DILocalVariable(name: "end", scope: !551, file: !3, line: 331, type: !29)
!558 = !DILocation(line: 326, column: 24, scope: !551)
!559 = !DILocation(line: 326, column: 34, scope: !551)
!560 = !DILocation(line: 328, column: 19, scope: !551)
!561 = !DILocation(line: 328, column: 3, scope: !551)
!562 = !DILocation(line: 329, column: 7, scope: !551)
!563 = !DILocation(line: 330, column: 12, scope: !551)
!564 = !DILocation(line: 331, column: 12, scope: !551)
!565 = !DILocation(line: 332, column: 3, scope: !551)
!566 = !DILocation(line: 333, column: 11, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 333, column: 9)
!568 = distinct !DILexicalBlock(scope: !551, file: !3, line: 332, column: 15)
!569 = !DILocation(line: 333, column: 9, scope: !568)
!570 = !DILocation(line: 268, column: 5, scope: !571, inlinedAt: !578)
!571 = distinct !DISubprogram(name: "rdtsc", scope: !572, file: !572, line: 265, type: !573, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!572 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!573 = !DISubroutineType(types: !574)
!574 = !{!29}
!575 = !{!576, !577}
!576 = !DILocalVariable(name: "lo", scope: !571, file: !572, line: 267, type: !43)
!577 = !DILocalVariable(name: "hi", scope: !571, file: !572, line: 267, type: !43)
!578 = distinct !DILocation(line: 334, column: 17, scope: !579)
!579 = distinct !DILexicalBlock(scope: !567, file: !3, line: 333, column: 17)
!580 = !{i32 97056}
!581 = !DILocation(line: 267, column: 14, scope: !571, inlinedAt: !578)
!582 = !DILocation(line: 267, column: 18, scope: !571, inlinedAt: !578)
!583 = !DILocation(line: 269, column: 12, scope: !571, inlinedAt: !578)
!584 = !DILocation(line: 269, column: 18, scope: !571, inlinedAt: !578)
!585 = !DILocation(line: 269, column: 33, scope: !571, inlinedAt: !578)
!586 = !DILocation(line: 269, column: 15, scope: !571, inlinedAt: !578)
!587 = !DILocation(line: 335, column: 5, scope: !579)
!588 = !DILocation(line: 0, scope: !551)
!589 = !DILocation(line: 337, column: 6, scope: !568)
!590 = !DILocation(line: 332, column: 11, scope: !551)
!591 = distinct !{!591, !565, !592}
!592 = !DILocation(line: 338, column: 3, scope: !551)
!593 = !DILocation(line: 268, column: 5, scope: !571, inlinedAt: !594)
!594 = distinct !DILocation(line: 339, column: 9, scope: !551)
!595 = !DILocation(line: 267, column: 14, scope: !571, inlinedAt: !594)
!596 = !DILocation(line: 267, column: 18, scope: !571, inlinedAt: !594)
!597 = !DILocation(line: 269, column: 12, scope: !571, inlinedAt: !594)
!598 = !DILocation(line: 269, column: 18, scope: !571, inlinedAt: !594)
!599 = !DILocation(line: 269, column: 33, scope: !571, inlinedAt: !594)
!600 = !DILocation(line: 269, column: 15, scope: !571, inlinedAt: !594)
!601 = !DILocation(line: 340, column: 104, scope: !551)
!602 = !DILocation(line: 340, column: 123, scope: !551)
!603 = !DILocation(line: 340, column: 3, scope: !551)
!604 = !DILocation(line: 341, column: 1, scope: !551)
!605 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!606 = !{!607, !608, !609}
!607 = !DILocalVariable(name: "i", arg: 1, scope: !605, file: !3, line: 343, type: !33)
!608 = !DILocalVariable(name: "o", arg: 2, scope: !605, file: !3, line: 343, type: !66)
!609 = !DILocalVariable(name: "a", scope: !605, file: !3, line: 346, type: !50)
!610 = !DILocation(line: 343, column: 25, scope: !605)
!611 = !DILocation(line: 343, column: 35, scope: !605)
!612 = !DILocation(line: 345, column: 19, scope: !605)
!613 = !DILocation(line: 345, column: 3, scope: !605)
!614 = !DILocation(line: 346, column: 7, scope: !605)
!615 = !DILocation(line: 351, column: 3, scope: !605)
!616 = !DILocation(line: 352, column: 1, scope: !605)
!617 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 357, type: !618, scopeLine: 357, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{!50}
!620 = !{!621, !622}
!621 = !DILocalVariable(name: "even", scope: !617, file: !3, line: 358, type: !24)
!622 = !DILocalVariable(name: "odd", scope: !617, file: !3, line: 359, type: !24)
!623 = !DILocation(line: 358, column: 3, scope: !617)
!624 = !DILocation(line: 359, column: 3, scope: !617)
!625 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !634)
!626 = distinct !DILexicalBlock(scope: !627, file: !16, line: 258, column: 26)
!627 = distinct !DILexicalBlock(scope: !628, file: !16, line: 258, column: 26)
!628 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !629, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!72}
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "__r", scope: !627, file: !16, line: 258, type: !86)
!633 = !DILocalVariable(name: "__r", scope: !626, file: !16, line: 258, type: !86)
!634 = distinct !DILocation(line: 360, column: 8, scope: !617)
!635 = !{i32 -2147275502}
!636 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !634)
!637 = !DILocation(line: 360, column: 26, scope: !617)
!638 = !DILocation(line: 360, column: 6, scope: !617)
!639 = !DILocation(line: 358, column: 15, scope: !617)
!640 = !DILocation(line: 361, column: 3, scope: !617)
!641 = !DILocation(line: 359, column: 15, scope: !617)
!642 = !DILocation(line: 362, column: 3, scope: !617)
!643 = !DILocation(line: 365, column: 1, scope: !617)
!644 = !DILocation(line: 364, column: 3, scope: !617)
!645 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 367, type: !618, scopeLine: 368, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!646 = !{!647}
!647 = !DILocalVariable(name: "f_outer", scope: !645, file: !3, line: 369, type: !24)
!648 = !DILocation(line: 369, column: 3, scope: !645)
!649 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !650)
!650 = distinct !DILocation(line: 370, column: 8, scope: !645)
!651 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !650)
!652 = !DILocation(line: 370, column: 26, scope: !645)
!653 = !DILocation(line: 370, column: 6, scope: !645)
!654 = !DILocation(line: 371, column: 3, scope: !645)
!655 = !DILocation(line: 369, column: 15, scope: !645)
!656 = !DILocation(line: 372, column: 3, scope: !645)
!657 = !DILocation(line: 374, column: 1, scope: !645)
!658 = !DILocation(line: 373, column: 3, scope: !645)
!659 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 376, type: !618, scopeLine: 377, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !660)
!660 = !{!661, !662, !663}
!661 = !DILocalVariable(name: "f1", scope: !659, file: !3, line: 378, type: !24)
!662 = !DILocalVariable(name: "f2", scope: !659, file: !3, line: 379, type: !24)
!663 = !DILocalVariable(name: "f3", scope: !659, file: !3, line: 380, type: !24)
!664 = !DILocation(line: 378, column: 3, scope: !659)
!665 = !DILocation(line: 379, column: 3, scope: !659)
!666 = !DILocation(line: 380, column: 3, scope: !659)
!667 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !668)
!668 = distinct !DILocation(line: 381, column: 8, scope: !659)
!669 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !668)
!670 = !DILocation(line: 381, column: 26, scope: !659)
!671 = !DILocation(line: 381, column: 6, scope: !659)
!672 = !DILocation(line: 382, column: 3, scope: !659)
!673 = !DILocation(line: 378, column: 15, scope: !659)
!674 = !DILocation(line: 383, column: 3, scope: !659)
!675 = !DILocation(line: 379, column: 15, scope: !659)
!676 = !DILocation(line: 384, column: 3, scope: !659)
!677 = !DILocation(line: 380, column: 15, scope: !659)
!678 = !DILocation(line: 385, column: 3, scope: !659)
!679 = !DILocation(line: 387, column: 1, scope: !659)
!680 = !DILocation(line: 386, column: 3, scope: !659)
!681 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 389, type: !618, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!682 = !{!683, !684, !685, !686}
!683 = !DILocalVariable(name: "f_first", scope: !681, file: !3, line: 391, type: !24)
!684 = !DILocalVariable(name: "f_second", scope: !681, file: !3, line: 392, type: !24)
!685 = !DILocalVariable(name: "f_third", scope: !681, file: !3, line: 393, type: !24)
!686 = !DILocalVariable(name: "f_fourth", scope: !681, file: !3, line: 394, type: !24)
!687 = !DILocation(line: 391, column: 3, scope: !681)
!688 = !DILocation(line: 392, column: 3, scope: !681)
!689 = !DILocation(line: 393, column: 3, scope: !681)
!690 = !DILocation(line: 394, column: 3, scope: !681)
!691 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !692)
!692 = distinct !DILocation(line: 395, column: 8, scope: !681)
!693 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !692)
!694 = !DILocation(line: 395, column: 26, scope: !681)
!695 = !DILocation(line: 395, column: 6, scope: !681)
!696 = !DILocation(line: 396, column: 3, scope: !681)
!697 = !DILocation(line: 394, column: 15, scope: !681)
!698 = !DILocation(line: 397, column: 3, scope: !681)
!699 = !DILocation(line: 391, column: 15, scope: !681)
!700 = !DILocation(line: 398, column: 3, scope: !681)
!701 = !DILocation(line: 393, column: 15, scope: !681)
!702 = !DILocation(line: 399, column: 3, scope: !681)
!703 = !DILocation(line: 392, column: 15, scope: !681)
!704 = !DILocation(line: 400, column: 3, scope: !681)
!705 = !DILocation(line: 402, column: 20, scope: !681)
!706 = !DILocation(line: 402, column: 3, scope: !681)
!707 = !DILocation(line: 402, column: 12, scope: !681)
!708 = !DILocation(line: 402, column: 18, scope: !681)
!709 = !DILocation(line: 403, column: 21, scope: !681)
!710 = !DILocation(line: 403, column: 3, scope: !681)
!711 = !DILocation(line: 403, column: 13, scope: !681)
!712 = !DILocation(line: 403, column: 19, scope: !681)
!713 = !DILocation(line: 404, column: 20, scope: !681)
!714 = !DILocation(line: 404, column: 3, scope: !681)
!715 = !DILocation(line: 404, column: 12, scope: !681)
!716 = !DILocation(line: 404, column: 18, scope: !681)
!717 = !DILocation(line: 405, column: 21, scope: !681)
!718 = !DILocation(line: 405, column: 3, scope: !681)
!719 = !DILocation(line: 405, column: 13, scope: !681)
!720 = !DILocation(line: 405, column: 19, scope: !681)
!721 = !DILocation(line: 406, column: 3, scope: !681)
!722 = !DILocation(line: 407, column: 16, scope: !681)
!723 = !DILocation(line: 407, column: 3, scope: !681)
!724 = !DILocation(line: 408, column: 16, scope: !681)
!725 = !DILocation(line: 408, column: 3, scope: !681)
!726 = !DILocation(line: 409, column: 16, scope: !681)
!727 = !DILocation(line: 409, column: 3, scope: !681)
!728 = !DILocation(line: 411, column: 1, scope: !681)
!729 = !DILocation(line: 410, column: 3, scope: !681)
!730 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 413, type: !618, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!731 = !{!732}
!732 = !DILocalVariable(name: "f_outer_join", scope: !730, file: !3, line: 415, type: !24)
!733 = !DILocation(line: 415, column: 3, scope: !730)
!734 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !735)
!735 = distinct !DILocation(line: 416, column: 8, scope: !730)
!736 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !735)
!737 = !DILocation(line: 416, column: 26, scope: !730)
!738 = !DILocation(line: 416, column: 6, scope: !730)
!739 = !DILocation(line: 417, column: 3, scope: !730)
!740 = !DILocation(line: 415, column: 15, scope: !730)
!741 = !DILocation(line: 418, column: 3, scope: !730)
!742 = !DILocation(line: 420, column: 1, scope: !730)
!743 = !DILocation(line: 419, column: 3, scope: !730)
!744 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 422, type: !618, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!745 = !{!746}
!746 = !DILocalVariable(name: "f_orig", scope: !744, file: !3, line: 424, type: !24)
!747 = !DILocation(line: 424, column: 3, scope: !744)
!748 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !749)
!749 = distinct !DILocation(line: 425, column: 8, scope: !744)
!750 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !749)
!751 = !DILocation(line: 425, column: 26, scope: !744)
!752 = !DILocation(line: 425, column: 6, scope: !744)
!753 = !DILocation(line: 426, column: 3, scope: !744)
!754 = !DILocation(line: 424, column: 15, scope: !744)
!755 = !DILocation(line: 427, column: 3, scope: !744)
!756 = !DILocation(line: 429, column: 1, scope: !744)
!757 = !DILocation(line: 428, column: 3, scope: !744)
!758 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 431, type: !618, scopeLine: 432, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!759 = !{!760}
!760 = !DILocalVariable(name: "f_orig", scope: !758, file: !3, line: 433, type: !24)
!761 = !DILocation(line: 433, column: 3, scope: !758)
!762 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !763)
!763 = distinct !DILocation(line: 434, column: 8, scope: !758)
!764 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !763)
!765 = !DILocation(line: 434, column: 26, scope: !758)
!766 = !DILocation(line: 434, column: 6, scope: !758)
!767 = !DILocation(line: 435, column: 3, scope: !758)
!768 = !DILocation(line: 433, column: 15, scope: !758)
!769 = !DILocation(line: 436, column: 3, scope: !758)
!770 = !DILocation(line: 438, column: 1, scope: !758)
!771 = !DILocation(line: 437, column: 3, scope: !758)
!772 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 440, type: !618, scopeLine: 441, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!773 = !{!774}
!774 = !DILocalVariable(name: "f_orig", scope: !772, file: !3, line: 442, type: !24)
!775 = !DILocation(line: 442, column: 3, scope: !772)
!776 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !777)
!777 = distinct !DILocation(line: 443, column: 8, scope: !772)
!778 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !777)
!779 = !DILocation(line: 443, column: 26, scope: !772)
!780 = !DILocation(line: 443, column: 6, scope: !772)
!781 = !DILocation(line: 444, column: 3, scope: !772)
!782 = !DILocation(line: 442, column: 15, scope: !772)
!783 = !DILocation(line: 445, column: 3, scope: !772)
!784 = !DILocation(line: 447, column: 1, scope: !772)
!785 = !DILocation(line: 446, column: 3, scope: !772)
!786 = distinct !DISubprogram(name: "test_fiber_routine_2", scope: !3, file: !3, line: 449, type: !618, scopeLine: 450, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!787 = !{!788}
!788 = !DILocalVariable(name: "f_orig", scope: !786, file: !3, line: 451, type: !24)
!789 = !DILocation(line: 451, column: 3, scope: !786)
!790 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !791)
!791 = distinct !DILocation(line: 452, column: 8, scope: !786)
!792 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !791)
!793 = !DILocation(line: 452, column: 26, scope: !786)
!794 = !DILocation(line: 452, column: 6, scope: !786)
!795 = !DILocation(line: 453, column: 3, scope: !786)
!796 = !DILocation(line: 451, column: 15, scope: !786)
!797 = !DILocation(line: 454, column: 3, scope: !786)
!798 = !DILocation(line: 456, column: 1, scope: !786)
!799 = !DILocation(line: 455, column: 3, scope: !786)
!800 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 458, type: !618, scopeLine: 458, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !801)
!801 = !{!802, !803}
!802 = !DILocalVariable(name: "first", scope: !800, file: !3, line: 459, type: !24)
!803 = !DILocalVariable(name: "second", scope: !800, file: !3, line: 460, type: !24)
!804 = !DILocation(line: 459, column: 3, scope: !800)
!805 = !DILocation(line: 460, column: 3, scope: !800)
!806 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !807)
!807 = distinct !DILocation(line: 461, column: 8, scope: !800)
!808 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !807)
!809 = !DILocation(line: 461, column: 26, scope: !800)
!810 = !DILocation(line: 461, column: 6, scope: !800)
!811 = !DILocation(line: 459, column: 15, scope: !800)
!812 = !DILocation(line: 463, column: 3, scope: !800)
!813 = !DILocation(line: 460, column: 15, scope: !800)
!814 = !DILocation(line: 464, column: 3, scope: !800)
!815 = !DILocation(line: 467, column: 1, scope: !800)
!816 = !DILocation(line: 466, column: 3, scope: !800)
!817 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 473, type: !141, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !818)
!818 = !{!819, !820}
!819 = !DILocalVariable(name: "buf", arg: 1, scope: !817, file: !3, line: 473, type: !137)
!820 = !DILocalVariable(name: "priv", arg: 2, scope: !817, file: !3, line: 473, type: !33)
!821 = !DILocation(line: 473, column: 23, scope: !817)
!822 = !DILocation(line: 473, column: 35, scope: !817)
!823 = !DILocation(line: 378, column: 3, scope: !659, inlinedAt: !824)
!824 = distinct !DILocation(line: 475, column: 3, scope: !817)
!825 = !DILocation(line: 379, column: 3, scope: !659, inlinedAt: !824)
!826 = !DILocation(line: 380, column: 3, scope: !659, inlinedAt: !824)
!827 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !828)
!828 = distinct !DILocation(line: 381, column: 8, scope: !659, inlinedAt: !824)
!829 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !828)
!830 = !DILocation(line: 381, column: 26, scope: !659, inlinedAt: !824)
!831 = !DILocation(line: 381, column: 6, scope: !659, inlinedAt: !824)
!832 = !DILocation(line: 382, column: 3, scope: !659, inlinedAt: !824)
!833 = !DILocation(line: 378, column: 15, scope: !659, inlinedAt: !824)
!834 = !DILocation(line: 383, column: 3, scope: !659, inlinedAt: !824)
!835 = !DILocation(line: 379, column: 15, scope: !659, inlinedAt: !824)
!836 = !DILocation(line: 384, column: 3, scope: !659, inlinedAt: !824)
!837 = !DILocation(line: 380, column: 15, scope: !659, inlinedAt: !824)
!838 = !DILocation(line: 385, column: 3, scope: !659, inlinedAt: !824)
!839 = !DILocation(line: 387, column: 1, scope: !659, inlinedAt: !824)
!840 = !DILocation(line: 477, column: 3, scope: !817)
!841 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 481, type: !141, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!842 = !{!843, !844}
!843 = !DILocalVariable(name: "buf", arg: 1, scope: !841, file: !3, line: 481, type: !137)
!844 = !DILocalVariable(name: "priv", arg: 2, scope: !841, file: !3, line: 481, type: !33)
!845 = !DILocation(line: 481, column: 24, scope: !841)
!846 = !DILocation(line: 481, column: 36, scope: !841)
!847 = !DILocation(line: 369, column: 3, scope: !645, inlinedAt: !848)
!848 = distinct !DILocation(line: 483, column: 3, scope: !841)
!849 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !850)
!850 = distinct !DILocation(line: 370, column: 8, scope: !645, inlinedAt: !848)
!851 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !850)
!852 = !DILocation(line: 370, column: 26, scope: !645, inlinedAt: !848)
!853 = !DILocation(line: 370, column: 6, scope: !645, inlinedAt: !848)
!854 = !DILocation(line: 371, column: 3, scope: !645, inlinedAt: !848)
!855 = !DILocation(line: 369, column: 15, scope: !645, inlinedAt: !848)
!856 = !DILocation(line: 372, column: 3, scope: !645, inlinedAt: !848)
!857 = !DILocation(line: 374, column: 1, scope: !645, inlinedAt: !848)
!858 = !DILocation(line: 485, column: 3, scope: !841)
!859 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 489, type: !141, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!860 = !{!861, !862}
!861 = !DILocalVariable(name: "buf", arg: 1, scope: !859, file: !3, line: 489, type: !137)
!862 = !DILocalVariable(name: "priv", arg: 2, scope: !859, file: !3, line: 489, type: !33)
!863 = !DILocation(line: 489, column: 24, scope: !859)
!864 = !DILocation(line: 489, column: 36, scope: !859)
!865 = !DILocation(line: 358, column: 3, scope: !617, inlinedAt: !866)
!866 = distinct !DILocation(line: 491, column: 3, scope: !859)
!867 = !DILocation(line: 359, column: 3, scope: !617, inlinedAt: !866)
!868 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !869)
!869 = distinct !DILocation(line: 360, column: 8, scope: !617, inlinedAt: !866)
!870 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !869)
!871 = !DILocation(line: 360, column: 26, scope: !617, inlinedAt: !866)
!872 = !DILocation(line: 360, column: 6, scope: !617, inlinedAt: !866)
!873 = !DILocation(line: 358, column: 15, scope: !617, inlinedAt: !866)
!874 = !DILocation(line: 361, column: 3, scope: !617, inlinedAt: !866)
!875 = !DILocation(line: 359, column: 15, scope: !617, inlinedAt: !866)
!876 = !DILocation(line: 362, column: 3, scope: !617, inlinedAt: !866)
!877 = !DILocation(line: 365, column: 1, scope: !617, inlinedAt: !866)
!878 = !DILocation(line: 493, column: 3, scope: !859)
!879 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 497, type: !141, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !880)
!880 = !{!881, !882}
!881 = !DILocalVariable(name: "buf", arg: 1, scope: !879, file: !3, line: 497, type: !137)
!882 = !DILocalVariable(name: "priv", arg: 2, scope: !879, file: !3, line: 497, type: !33)
!883 = !DILocation(line: 497, column: 24, scope: !879)
!884 = !DILocation(line: 497, column: 36, scope: !879)
!885 = !DILocation(line: 499, column: 3, scope: !879)
!886 = !DILocation(line: 501, column: 3, scope: !879)
!887 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !888)
!888 = !{!889, !890}
!889 = !DILocalVariable(name: "buf", arg: 1, scope: !887, file: !3, line: 505, type: !137)
!890 = !DILocalVariable(name: "priv", arg: 2, scope: !887, file: !3, line: 505, type: !33)
!891 = !DILocation(line: 505, column: 24, scope: !887)
!892 = !DILocation(line: 505, column: 36, scope: !887)
!893 = !DILocation(line: 415, column: 3, scope: !730, inlinedAt: !894)
!894 = distinct !DILocation(line: 507, column: 3, scope: !887)
!895 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !896)
!896 = distinct !DILocation(line: 416, column: 8, scope: !730, inlinedAt: !894)
!897 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !896)
!898 = !DILocation(line: 416, column: 26, scope: !730, inlinedAt: !894)
!899 = !DILocation(line: 416, column: 6, scope: !730, inlinedAt: !894)
!900 = !DILocation(line: 417, column: 3, scope: !730, inlinedAt: !894)
!901 = !DILocation(line: 415, column: 15, scope: !730, inlinedAt: !894)
!902 = !DILocation(line: 418, column: 3, scope: !730, inlinedAt: !894)
!903 = !DILocation(line: 420, column: 1, scope: !730, inlinedAt: !894)
!904 = !DILocation(line: 508, column: 3, scope: !887)
!905 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !906)
!906 = !{!907, !908}
!907 = !DILocalVariable(name: "buf", arg: 1, scope: !905, file: !3, line: 512, type: !137)
!908 = !DILocalVariable(name: "priv", arg: 2, scope: !905, file: !3, line: 512, type: !33)
!909 = !DILocation(line: 512, column: 24, scope: !905)
!910 = !DILocation(line: 512, column: 36, scope: !905)
!911 = !DILocation(line: 424, column: 3, scope: !744, inlinedAt: !912)
!912 = distinct !DILocation(line: 514, column: 3, scope: !905)
!913 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !914)
!914 = distinct !DILocation(line: 425, column: 8, scope: !744, inlinedAt: !912)
!915 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !914)
!916 = !DILocation(line: 425, column: 26, scope: !744, inlinedAt: !912)
!917 = !DILocation(line: 425, column: 6, scope: !744, inlinedAt: !912)
!918 = !DILocation(line: 426, column: 3, scope: !744, inlinedAt: !912)
!919 = !DILocation(line: 424, column: 15, scope: !744, inlinedAt: !912)
!920 = !DILocation(line: 427, column: 3, scope: !744, inlinedAt: !912)
!921 = !DILocation(line: 429, column: 1, scope: !744, inlinedAt: !912)
!922 = !DILocation(line: 515, column: 3, scope: !905)
!923 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 519, type: !141, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!924 = !{!925, !926}
!925 = !DILocalVariable(name: "buf", arg: 1, scope: !923, file: !3, line: 519, type: !137)
!926 = !DILocalVariable(name: "priv", arg: 2, scope: !923, file: !3, line: 519, type: !33)
!927 = !DILocation(line: 519, column: 24, scope: !923)
!928 = !DILocation(line: 519, column: 36, scope: !923)
!929 = !DILocation(line: 433, column: 3, scope: !758, inlinedAt: !930)
!930 = distinct !DILocation(line: 521, column: 3, scope: !923)
!931 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !932)
!932 = distinct !DILocation(line: 434, column: 8, scope: !758, inlinedAt: !930)
!933 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !932)
!934 = !DILocation(line: 434, column: 26, scope: !758, inlinedAt: !930)
!935 = !DILocation(line: 434, column: 6, scope: !758, inlinedAt: !930)
!936 = !DILocation(line: 435, column: 3, scope: !758, inlinedAt: !930)
!937 = !DILocation(line: 433, column: 15, scope: !758, inlinedAt: !930)
!938 = !DILocation(line: 436, column: 3, scope: !758, inlinedAt: !930)
!939 = !DILocation(line: 438, column: 1, scope: !758, inlinedAt: !930)
!940 = !DILocation(line: 522, column: 3, scope: !923)
!941 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 526, type: !141, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !942)
!942 = !{!943, !944}
!943 = !DILocalVariable(name: "buf", arg: 1, scope: !941, file: !3, line: 526, type: !137)
!944 = !DILocalVariable(name: "priv", arg: 2, scope: !941, file: !3, line: 526, type: !33)
!945 = !DILocation(line: 526, column: 24, scope: !941)
!946 = !DILocation(line: 526, column: 36, scope: !941)
!947 = !DILocation(line: 442, column: 3, scope: !772, inlinedAt: !948)
!948 = distinct !DILocation(line: 528, column: 3, scope: !941)
!949 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !950)
!950 = distinct !DILocation(line: 443, column: 8, scope: !772, inlinedAt: !948)
!951 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !950)
!952 = !DILocation(line: 443, column: 26, scope: !772, inlinedAt: !948)
!953 = !DILocation(line: 443, column: 6, scope: !772, inlinedAt: !948)
!954 = !DILocation(line: 444, column: 3, scope: !772, inlinedAt: !948)
!955 = !DILocation(line: 442, column: 15, scope: !772, inlinedAt: !948)
!956 = !DILocation(line: 445, column: 3, scope: !772, inlinedAt: !948)
!957 = !DILocation(line: 447, column: 1, scope: !772, inlinedAt: !948)
!958 = !DILocation(line: 529, column: 3, scope: !941)
!959 = distinct !DISubprogram(name: "handle_fibers9", scope: !3, file: !3, line: 533, type: !141, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!960 = !{!961, !962}
!961 = !DILocalVariable(name: "buf", arg: 1, scope: !959, file: !3, line: 533, type: !137)
!962 = !DILocalVariable(name: "priv", arg: 2, scope: !959, file: !3, line: 533, type: !33)
!963 = !DILocation(line: 533, column: 24, scope: !959)
!964 = !DILocation(line: 533, column: 36, scope: !959)
!965 = !DILocation(line: 451, column: 3, scope: !786, inlinedAt: !966)
!966 = distinct !DILocation(line: 535, column: 3, scope: !959)
!967 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !968)
!968 = distinct !DILocation(line: 452, column: 8, scope: !786, inlinedAt: !966)
!969 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !968)
!970 = !DILocation(line: 452, column: 26, scope: !786, inlinedAt: !966)
!971 = !DILocation(line: 452, column: 6, scope: !786, inlinedAt: !966)
!972 = !DILocation(line: 453, column: 3, scope: !786, inlinedAt: !966)
!973 = !DILocation(line: 451, column: 15, scope: !786, inlinedAt: !966)
!974 = !DILocation(line: 454, column: 3, scope: !786, inlinedAt: !966)
!975 = !DILocation(line: 456, column: 1, scope: !786, inlinedAt: !966)
!976 = !DILocation(line: 536, column: 3, scope: !959)
!977 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 540, type: !141, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!978 = !{!979, !980}
!979 = !DILocalVariable(name: "buf", arg: 1, scope: !977, file: !3, line: 540, type: !137)
!980 = !DILocalVariable(name: "priv", arg: 2, scope: !977, file: !3, line: 540, type: !33)
!981 = !DILocation(line: 540, column: 25, scope: !977)
!982 = !DILocation(line: 540, column: 37, scope: !977)
!983 = !DILocation(line: 459, column: 3, scope: !800, inlinedAt: !984)
!984 = distinct !DILocation(line: 542, column: 3, scope: !977)
!985 = !DILocation(line: 460, column: 3, scope: !800, inlinedAt: !984)
!986 = !DILocation(line: 258, column: 26, scope: !626, inlinedAt: !987)
!987 = distinct !DILocation(line: 461, column: 8, scope: !800, inlinedAt: !984)
!988 = !DILocation(line: 258, column: 26, scope: !627, inlinedAt: !987)
!989 = !DILocation(line: 461, column: 26, scope: !800, inlinedAt: !984)
!990 = !DILocation(line: 461, column: 6, scope: !800, inlinedAt: !984)
!991 = !DILocation(line: 459, column: 15, scope: !800, inlinedAt: !984)
!992 = !DILocation(line: 463, column: 3, scope: !800, inlinedAt: !984)
!993 = !DILocation(line: 460, column: 15, scope: !800, inlinedAt: !984)
!994 = !DILocation(line: 464, column: 3, scope: !800, inlinedAt: !984)
!995 = !DILocation(line: 467, column: 1, scope: !800, inlinedAt: !984)
!996 = !DILocation(line: 543, column: 3, scope: !977)
