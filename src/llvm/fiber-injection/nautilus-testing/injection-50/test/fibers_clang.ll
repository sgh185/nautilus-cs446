; ModuleID = 'fibers_clang.bc'
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

@.str = private unnamed_addr constant [36 x i8] c"wrapper_nk_fiber_yield() : running\0A\00", align 1
@vc = common dso_local local_unnamed_addr global %struct.nk_virtual_console* null, align 8, !dbg !0
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
define dso_local i32 @wrapper_nk_fiber_yield() local_unnamed_addr #0 !dbg !186 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #4, !dbg !190
  %2 = tail call i32 @nk_fiber_yield() #4, !dbg !191
  ret i32 %2, !dbg !192
}

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !193 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !195, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i8** undef, metadata !196, metadata !DIExpression()), !dbg !199
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !200, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !205
  call void @llvm.dbg.value(metadata i32 0, metadata !197, metadata !DIExpression()), !dbg !206
  br label %4, !dbg !207

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !197, metadata !DIExpression()), !dbg !206
  %6 = add nuw nsw i32 %5, 1, !dbg !208
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %5) #4, !dbg !210
  call void @llvm.dbg.value(metadata i32 %6, metadata !197, metadata !DIExpression()), !dbg !206
  %8 = icmp eq i32 %6, 10, !dbg !211
  br i1 %8, label %9, label %4, !dbg !207, !llvm.loop !212

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 10, metadata !197, metadata !DIExpression()), !dbg !206
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !217 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !219, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i8** undef, metadata !220, metadata !DIExpression()), !dbg !225
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !226, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !227
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !228
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !228
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !229
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !230
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !222, metadata !DIExpression(DW_OP_deref)), !dbg !231
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !232
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !233
  call void @llvm.dbg.value(metadata i32 1, metadata !221, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 1, metadata !221, metadata !DIExpression()), !dbg !228
  %8 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !229
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !230
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !222, metadata !DIExpression(DW_OP_deref)), !dbg !231
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !232
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !233
  call void @llvm.dbg.value(metadata i32 2, metadata !221, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 2, metadata !221, metadata !DIExpression()), !dbg !228
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !229
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !230
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !222, metadata !DIExpression(DW_OP_deref)), !dbg !231
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !232
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !233
  call void @llvm.dbg.value(metadata i32 3, metadata !221, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 3, metadata !221, metadata !DIExpression()), !dbg !228
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !236 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !238, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i8** undef, metadata !239, metadata !DIExpression()), !dbg !242
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !243, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !244
  call void @llvm.dbg.value(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !245
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 1, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 1, metadata !240, metadata !DIExpression()), !dbg !245
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 2, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2, metadata !240, metadata !DIExpression()), !dbg !245
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 3, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 3, metadata !240, metadata !DIExpression()), !dbg !245
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 4, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 4, metadata !240, metadata !DIExpression()), !dbg !245
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 5, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 5, metadata !240, metadata !DIExpression()), !dbg !245
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 6, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 6, metadata !240, metadata !DIExpression()), !dbg !245
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 7, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 7, metadata !240, metadata !DIExpression()), !dbg !245
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 8, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 8, metadata !240, metadata !DIExpression()), !dbg !245
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 9, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 9, metadata !240, metadata !DIExpression()), !dbg !245
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 10, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 10, metadata !240, metadata !DIExpression()), !dbg !245
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !250 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !252, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i8** undef, metadata !253, metadata !DIExpression()), !dbg !258
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !259, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !260
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()), !dbg !261
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()), !dbg !261
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #4, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !263
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !255, metadata !DIExpression(DW_OP_deref)), !dbg !264
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !265
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !266, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !255, metadata !DIExpression()), !dbg !264
  %9 = call i32 @nk_fiber_join(%struct.nk_fiber* %8) #4, !dbg !267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !268
  call void @llvm.dbg.value(metadata i32 1, metadata !254, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 1, metadata !254, metadata !DIExpression()), !dbg !261
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #4, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !263
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !255, metadata !DIExpression(DW_OP_deref)), !dbg !264
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !265
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !266, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !255, metadata !DIExpression()), !dbg !264
  %13 = call i32 @nk_fiber_join(%struct.nk_fiber* %12) #4, !dbg !267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !268
  call void @llvm.dbg.value(metadata i32 2, metadata !254, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 2, metadata !254, metadata !DIExpression()), !dbg !261
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #4, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !263
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !255, metadata !DIExpression(DW_OP_deref)), !dbg !264
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !265
  %16 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !266, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !255, metadata !DIExpression()), !dbg !264
  %17 = call i32 @nk_fiber_join(%struct.nk_fiber* %16) #4, !dbg !267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !268
  call void @llvm.dbg.value(metadata i32 3, metadata !254, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 3, metadata !254, metadata !DIExpression()), !dbg !261
  %18 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !271 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !273, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i8** undef, metadata !274, metadata !DIExpression()), !dbg !277
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !278, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !279
  call void @llvm.dbg.value(metadata i32 0, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 0, metadata !275, metadata !DIExpression()), !dbg !280
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 1, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 1, metadata !275, metadata !DIExpression()), !dbg !280
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 2, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 2, metadata !275, metadata !DIExpression()), !dbg !280
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 3, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 3, metadata !275, metadata !DIExpression()), !dbg !280
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 4, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 4, metadata !275, metadata !DIExpression()), !dbg !280
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 5, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 5, metadata !275, metadata !DIExpression()), !dbg !280
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 6, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 6, metadata !275, metadata !DIExpression()), !dbg !280
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 7, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 7, metadata !275, metadata !DIExpression()), !dbg !280
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 8, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 8, metadata !275, metadata !DIExpression()), !dbg !280
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 9, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 9, metadata !275, metadata !DIExpression()), !dbg !280
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 10, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 10, metadata !275, metadata !DIExpression()), !dbg !280
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #4, !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !285 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !287, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8** undef, metadata !288, metadata !DIExpression()), !dbg !292
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !293, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !294
  call void @llvm.dbg.value(metadata i32 0, metadata !289, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !289, metadata !DIExpression()), !dbg !295
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #4, !dbg !296
  call void @llvm.dbg.value(metadata i32 1, metadata !289, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 1, metadata !289, metadata !DIExpression()), !dbg !295
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #4, !dbg !296
  call void @llvm.dbg.value(metadata i32 2, metadata !289, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 2, metadata !289, metadata !DIExpression()), !dbg !295
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #4, !dbg !298
  %8 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !299
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !299
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !290, metadata !DIExpression(DW_OP_deref)), !dbg !300
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !302
  ret void, !dbg !302
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !303 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !305, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i8** undef, metadata !306, metadata !DIExpression()), !dbg !310
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !311, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !312
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !313
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #4, !dbg !314
  call void @llvm.dbg.value(metadata i32 1, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 1, metadata !307, metadata !DIExpression()), !dbg !313
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #4, !dbg !314
  call void @llvm.dbg.value(metadata i32 2, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 2, metadata !307, metadata !DIExpression()), !dbg !313
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #4, !dbg !314
  call void @llvm.dbg.value(metadata i32 3, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 3, metadata !307, metadata !DIExpression()), !dbg !313
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #4, !dbg !314
  call void @llvm.dbg.value(metadata i32 4, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 4, metadata !307, metadata !DIExpression()), !dbg !313
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #4, !dbg !314
  call void @llvm.dbg.value(metadata i32 5, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 5, metadata !307, metadata !DIExpression()), !dbg !313
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !316
  %11 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !317
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !317
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !308, metadata !DIExpression(DW_OP_deref)), !dbg !318
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !319
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !320
  ret void, !dbg !320
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !321 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !323, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i8** undef, metadata !324, metadata !DIExpression()), !dbg !328
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !329, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !330
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !331
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 1, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 1, metadata !325, metadata !DIExpression()), !dbg !331
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 2, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 2, metadata !325, metadata !DIExpression()), !dbg !331
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 3, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 3, metadata !325, metadata !DIExpression()), !dbg !331
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 4, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 4, metadata !325, metadata !DIExpression()), !dbg !331
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 5, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 5, metadata !325, metadata !DIExpression()), !dbg !331
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 6, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 6, metadata !325, metadata !DIExpression()), !dbg !331
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 7, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 7, metadata !325, metadata !DIExpression()), !dbg !331
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 8, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 8, metadata !325, metadata !DIExpression()), !dbg !331
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 9, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 9, metadata !325, metadata !DIExpression()), !dbg !331
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 10, metadata !325, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 10, metadata !325, metadata !DIExpression()), !dbg !331
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #4, !dbg !334
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !335
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5, !dbg !335
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !326, metadata !DIExpression(DW_OP_deref)), !dbg !336
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !337
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5, !dbg !338
  ret void, !dbg !338
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !339 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !341, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i8** undef, metadata !342, metadata !DIExpression()), !dbg !346
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !347, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !348
  call void @llvm.dbg.value(metadata i32 0, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !343, metadata !DIExpression()), !dbg !349
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #4, !dbg !350
  call void @llvm.dbg.value(metadata i32 1, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 1, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 2, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 2, metadata !343, metadata !DIExpression()), !dbg !349
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #4, !dbg !350
  call void @llvm.dbg.value(metadata i32 3, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 3, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 4, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 4, metadata !343, metadata !DIExpression()), !dbg !349
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #4, !dbg !350
  call void @llvm.dbg.value(metadata i32 5, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 5, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 6, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 6, metadata !343, metadata !DIExpression()), !dbg !349
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #4, !dbg !350
  call void @llvm.dbg.value(metadata i32 7, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 7, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 8, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 8, metadata !343, metadata !DIExpression()), !dbg !349
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #4, !dbg !350
  call void @llvm.dbg.value(metadata i32 9, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 9, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 10, metadata !343, metadata !DIExpression()), !dbg !349
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !357 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !359, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i8** undef, metadata !360, metadata !DIExpression()), !dbg !364
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !365, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !366
  call void @llvm.dbg.value(metadata i32 0, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 0, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 1, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 1, metadata !361, metadata !DIExpression()), !dbg !367
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #4, !dbg !368
  call void @llvm.dbg.value(metadata i32 2, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 2, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 3, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 3, metadata !361, metadata !DIExpression()), !dbg !367
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #4, !dbg !368
  call void @llvm.dbg.value(metadata i32 4, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 4, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 5, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 5, metadata !361, metadata !DIExpression()), !dbg !367
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #4, !dbg !368
  call void @llvm.dbg.value(metadata i32 6, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 6, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 7, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 7, metadata !361, metadata !DIExpression()), !dbg !367
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #4, !dbg !368
  call void @llvm.dbg.value(metadata i32 8, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 8, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 9, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 9, metadata !361, metadata !DIExpression()), !dbg !367
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #4, !dbg !368
  call void @llvm.dbg.value(metadata i32 10, metadata !361, metadata !DIExpression()), !dbg !367
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !373
  ret void, !dbg !374
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !377, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i8** undef, metadata !378, metadata !DIExpression()), !dbg !382
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !383, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !384
  call void @llvm.dbg.value(metadata i32 0, metadata !379, metadata !DIExpression()), !dbg !385
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !386
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !380, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i32 0, metadata !379, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32 0, metadata !379, metadata !DIExpression()), !dbg !385
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !388
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !390
  call void @llvm.dbg.value(metadata i32 1, metadata !379, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32 1, metadata !379, metadata !DIExpression()), !dbg !385
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !388
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !390
  call void @llvm.dbg.value(metadata i32 2, metadata !379, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32 2, metadata !379, metadata !DIExpression()), !dbg !385
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !388
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !390
  call void @llvm.dbg.value(metadata i32 3, metadata !379, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32 3, metadata !379, metadata !DIExpression()), !dbg !385
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !388
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !390
  call void @llvm.dbg.value(metadata i32 4, metadata !379, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32 4, metadata !379, metadata !DIExpression()), !dbg !385
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !388
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !390
  call void @llvm.dbg.value(metadata i32 5, metadata !379, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32 5, metadata !379, metadata !DIExpression()), !dbg !385
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !395, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i8** undef, metadata !396, metadata !DIExpression()), !dbg !400
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !401, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !402
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !403
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !404
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !398, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !403
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !406
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !408
  call void @llvm.dbg.value(metadata i32 1, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 1, metadata !397, metadata !DIExpression()), !dbg !403
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !406
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !408
  call void @llvm.dbg.value(metadata i32 2, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 2, metadata !397, metadata !DIExpression()), !dbg !403
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !406
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !408
  call void @llvm.dbg.value(metadata i32 3, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 3, metadata !397, metadata !DIExpression()), !dbg !403
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !406
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !408
  call void @llvm.dbg.value(metadata i32 4, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 4, metadata !397, metadata !DIExpression()), !dbg !403
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !406
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !408
  call void @llvm.dbg.value(metadata i32 5, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 5, metadata !397, metadata !DIExpression()), !dbg !403
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #4, !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !413, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i8** undef, metadata !414, metadata !DIExpression()), !dbg !418
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !419, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !420
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !421
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !422
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !416, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !421
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !424
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !426
  call void @llvm.dbg.value(metadata i32 1, metadata !415, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 1, metadata !415, metadata !DIExpression()), !dbg !421
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !424
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !426
  call void @llvm.dbg.value(metadata i32 2, metadata !415, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 2, metadata !415, metadata !DIExpression()), !dbg !421
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !424
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !426
  call void @llvm.dbg.value(metadata i32 3, metadata !415, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 3, metadata !415, metadata !DIExpression()), !dbg !421
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !424
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !426
  call void @llvm.dbg.value(metadata i32 4, metadata !415, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 4, metadata !415, metadata !DIExpression()), !dbg !421
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !424
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !426
  call void @llvm.dbg.value(metadata i32 5, metadata !415, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 5, metadata !415, metadata !DIExpression()), !dbg !421
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #4, !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !431, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i8** undef, metadata !432, metadata !DIExpression()), !dbg !436
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !437, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !438
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()), !dbg !439
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !440
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !434, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()), !dbg !439
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #4, !dbg !442
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !444
  call void @llvm.dbg.value(metadata i32 1, metadata !433, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 1, metadata !433, metadata !DIExpression()), !dbg !439
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #4, !dbg !442
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !444
  call void @llvm.dbg.value(metadata i32 2, metadata !433, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 2, metadata !433, metadata !DIExpression()), !dbg !439
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #4, !dbg !442
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !444
  call void @llvm.dbg.value(metadata i32 3, metadata !433, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 3, metadata !433, metadata !DIExpression()), !dbg !439
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #4, !dbg !442
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !444
  call void @llvm.dbg.value(metadata i32 4, metadata !433, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 4, metadata !433, metadata !DIExpression()), !dbg !439
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #4, !dbg !442
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !444
  call void @llvm.dbg.value(metadata i32 5, metadata !433, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 5, metadata !433, metadata !DIExpression()), !dbg !439
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !447 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !449, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i8** undef, metadata !450, metadata !DIExpression()), !dbg !454
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !455, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !456
  call void @llvm.dbg.value(metadata i32 0, metadata !451, metadata !DIExpression()), !dbg !457
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !458
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !452, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 0, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 0, metadata !451, metadata !DIExpression()), !dbg !457
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #4, !dbg !460
  call void @llvm.dbg.value(metadata i32 1, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 1, metadata !451, metadata !DIExpression()), !dbg !457
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #4, !dbg !460
  call void @llvm.dbg.value(metadata i32 2, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 2, metadata !451, metadata !DIExpression()), !dbg !457
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #4, !dbg !460
  call void @llvm.dbg.value(metadata i32 3, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 3, metadata !451, metadata !DIExpression()), !dbg !457
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #4, !dbg !460
  call void @llvm.dbg.value(metadata i32 4, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 4, metadata !451, metadata !DIExpression()), !dbg !457
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #4, !dbg !460
  call void @llvm.dbg.value(metadata i32 5, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 5, metadata !451, metadata !DIExpression()), !dbg !457
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !464 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !466, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i8** undef, metadata !467, metadata !DIExpression()), !dbg !472
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !473, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !474
  call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !475
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !476
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !469, metadata !DIExpression()), !dbg !477
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !478
  br i1 %5, label %8, label %6, !dbg !480

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #4, !dbg !481
  br label %8, !dbg !483

; <label>:8:                                      ; preds = %2, %6
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !470, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !475
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !485
  call void @llvm.dbg.value(metadata i32 1, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 1, metadata !468, metadata !DIExpression()), !dbg !475
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !485
  call void @llvm.dbg.value(metadata i32 2, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 2, metadata !468, metadata !DIExpression()), !dbg !475
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !485
  call void @llvm.dbg.value(metadata i32 3, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 3, metadata !468, metadata !DIExpression()), !dbg !475
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !485
  call void @llvm.dbg.value(metadata i32 4, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 4, metadata !468, metadata !DIExpression()), !dbg !475
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !485
  call void @llvm.dbg.value(metadata i32 5, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 5, metadata !468, metadata !DIExpression()), !dbg !475
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #4, !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !489 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !491, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i8** undef, metadata !492, metadata !DIExpression()), !dbg !494
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !495, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !496
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !499 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !501, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i8** undef, metadata !502, metadata !DIExpression()), !dbg !511
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !512, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 0, metadata !503, metadata !DIExpression()), !dbg !514
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !515
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %5, metadata !504, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !505, metadata !DIExpression()), !dbg !517
  %6 = icmp eq %struct.nk_fiber* %5, null, !dbg !518
  br i1 %6, label %11, label %7, !dbg !519

; <label>:7:                                      ; preds = %26, %22, %18, %11, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %8, metadata !503, metadata !DIExpression()), !dbg !514
  %9 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !520
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !520
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !507, metadata !DIExpression(DW_OP_deref)), !dbg !521
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #4, !dbg !522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !523
  br label %15

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !524
  call void @llvm.dbg.value(metadata i32 1, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 1, metadata !503, metadata !DIExpression()), !dbg !514
  %13 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !515
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !504, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !505, metadata !DIExpression()), !dbg !517
  %14 = icmp eq %struct.nk_fiber* %13, null, !dbg !518
  br i1 %14, label %18, label %7, !dbg !519

; <label>:15:                                     ; preds = %30, %7
  %16 = phi i32 [ %8, %7 ], [ 5, %30 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !503, metadata !DIExpression()), !dbg !514
  %17 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %16) #4, !dbg !525
  ret void, !dbg !526

; <label>:18:                                     ; preds = %11
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !524
  call void @llvm.dbg.value(metadata i32 2, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 2, metadata !503, metadata !DIExpression()), !dbg !514
  %20 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !515
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !504, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !505, metadata !DIExpression()), !dbg !517
  %21 = icmp eq %struct.nk_fiber* %20, null, !dbg !518
  br i1 %21, label %22, label %7, !dbg !519

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !524
  call void @llvm.dbg.value(metadata i32 3, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 3, metadata !503, metadata !DIExpression()), !dbg !514
  %24 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !515
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !504, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !505, metadata !DIExpression()), !dbg !517
  %25 = icmp eq %struct.nk_fiber* %24, null, !dbg !518
  br i1 %25, label %26, label %7, !dbg !519

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !524
  call void @llvm.dbg.value(metadata i32 4, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 4, metadata !503, metadata !DIExpression()), !dbg !514
  %28 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !515
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %28, metadata !504, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !505, metadata !DIExpression()), !dbg !517
  %29 = icmp eq %struct.nk_fiber* %28, null, !dbg !518
  br i1 %29, label %30, label %7, !dbg !519

; <label>:30:                                     ; preds = %26
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !524
  call void @llvm.dbg.value(metadata i32 5, metadata !503, metadata !DIExpression()), !dbg !514
  br label %15, !dbg !525
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !527 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !529, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i8** undef, metadata !530, metadata !DIExpression()), !dbg !536
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !537, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !538
  call void @llvm.dbg.value(metadata i32 0, metadata !531, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 0, metadata !531, metadata !DIExpression()), !dbg !539
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !532, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !533, metadata !DIExpression()), !dbg !542
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #4, !dbg !543
  call void @llvm.dbg.value(metadata i32 1, metadata !531, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 1, metadata !531, metadata !DIExpression()), !dbg !539
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !532, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !533, metadata !DIExpression()), !dbg !542
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #4, !dbg !543
  call void @llvm.dbg.value(metadata i32 2, metadata !531, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 2, metadata !531, metadata !DIExpression()), !dbg !539
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !532, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !533, metadata !DIExpression()), !dbg !542
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #4, !dbg !543
  call void @llvm.dbg.value(metadata i32 3, metadata !531, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 3, metadata !531, metadata !DIExpression()), !dbg !539
  %10 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %10, metadata !532, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !533, metadata !DIExpression()), !dbg !542
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #4, !dbg !543
  call void @llvm.dbg.value(metadata i32 4, metadata !531, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 4, metadata !531, metadata !DIExpression()), !dbg !539
  %12 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !532, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !533, metadata !DIExpression()), !dbg !542
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #4, !dbg !543
  call void @llvm.dbg.value(metadata i32 5, metadata !531, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 5, metadata !531, metadata !DIExpression()), !dbg !539
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #4, !dbg !544
  ret void, !dbg !545
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !546 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !548, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8** undef, metadata !549, metadata !DIExpression()), !dbg !554
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !555, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !556
  call void @llvm.dbg.value(metadata i32 0, metadata !550, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 0, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 0, metadata !552, metadata !DIExpression()), !dbg !559
  br label %4, !dbg !560

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 %6, metadata !550, metadata !DIExpression()), !dbg !557
  %7 = icmp eq i32 %6, 2, !dbg !561
  br i1 %7, label %8, label %16, !dbg !564

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !565, !srcloc !575
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !565
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !565
  call void @llvm.dbg.value(metadata i32 %10, metadata !571, metadata !DIExpression()) #5, !dbg !576
  call void @llvm.dbg.value(metadata i32 %11, metadata !572, metadata !DIExpression()) #5, !dbg !577
  %12 = zext i32 %10 to i64, !dbg !578
  %13 = zext i32 %11 to i64, !dbg !579
  %14 = shl nuw i64 %13, 32, !dbg !580
  %15 = or i64 %14, %12, !dbg !581
  call void @llvm.dbg.value(metadata i64 %15, metadata !551, metadata !DIExpression()), !dbg !558
  br label %16, !dbg !582

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !583
  %18 = add nuw nsw i32 %6, 1, !dbg !584
  call void @llvm.dbg.value(metadata i64 %17, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 %18, metadata !550, metadata !DIExpression()), !dbg !557
  %19 = icmp eq i32 %18, 100000, !dbg !585
  br i1 %19, label %20, label %4, !dbg !560, !llvm.loop !586

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %17, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %17, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %17, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 %17, metadata !551, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 100000, metadata !550, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %17, metadata !551, metadata !DIExpression()), !dbg !558
  %21 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !588, !srcloc !575
  %22 = extractvalue { i32, i32 } %21, 0, !dbg !588
  %23 = extractvalue { i32, i32 } %21, 1, !dbg !588
  call void @llvm.dbg.value(metadata i32 %22, metadata !571, metadata !DIExpression()) #5, !dbg !590
  call void @llvm.dbg.value(metadata i32 %23, metadata !572, metadata !DIExpression()) #5, !dbg !591
  %24 = zext i32 %22 to i64, !dbg !592
  %25 = zext i32 %23 to i64, !dbg !593
  %26 = shl nuw i64 %25, 32, !dbg !594
  %27 = or i64 %26, %24, !dbg !595
  call void @llvm.dbg.value(metadata i64 %27, metadata !552, metadata !DIExpression()), !dbg !559
  %28 = sub i64 %27, %17, !dbg !596
  %29 = udiv i64 %28, 100000, !dbg !597
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %28, i64 %29) #4, !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !600 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !602, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i8** undef, metadata !603, metadata !DIExpression()), !dbg !606
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !607, !tbaa !201
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !608
  call void @llvm.dbg.value(metadata i32 0, metadata !604, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i32 undef, metadata !604, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i32 100000, metadata !604, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i32 100000, metadata !604, metadata !DIExpression()), !dbg !609
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #4, !dbg !610
  ret void, !dbg !611
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !612 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !616
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !616
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !617
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !617
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !618, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !618
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !629
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !630
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !630
  %8 = load i64, i64* %7, align 8, !dbg !630, !tbaa !631
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !637, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !614, metadata !DIExpression(DW_OP_deref)), !dbg !638
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !639
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !640
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !641
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !642
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !642
  ret i32 0, !dbg !643
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !644 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !647
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !647
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !648, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !626, metadata !DIExpression()) #5, !dbg !648
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !625, metadata !DIExpression()) #5, !dbg !650
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !651
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !651, !tbaa !631
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !652, !tbaa !201
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !653
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !646, metadata !DIExpression(DW_OP_deref)), !dbg !654
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !655
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !656
  ret i32 0, !dbg !657
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !658 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !663
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !663
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !664
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !665
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !666, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !626, metadata !DIExpression()) #5, !dbg !666
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !625, metadata !DIExpression()) #5, !dbg !668
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !669
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !669, !tbaa !631
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !670, !tbaa !201
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #4, !dbg !671
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !660, metadata !DIExpression(DW_OP_deref)), !dbg !672
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !673
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !661, metadata !DIExpression(DW_OP_deref)), !dbg !674
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !675
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !676
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !677
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !678
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !678
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !678
  ret i32 0, !dbg !679
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !680 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !686
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !686
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !687
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !687
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !688
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !689
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !689
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !690, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !626, metadata !DIExpression()) #5, !dbg !690
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !625, metadata !DIExpression()) #5, !dbg !692
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !693
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !693, !tbaa !631
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !694, !tbaa !201
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !695
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !685, metadata !DIExpression(DW_OP_deref)), !dbg !696
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #4, !dbg !697
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !682, metadata !DIExpression(DW_OP_deref)), !dbg !698
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #4, !dbg !699
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !684, metadata !DIExpression(DW_OP_deref)), !dbg !700
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #4, !dbg !701
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !683, metadata !DIExpression(DW_OP_deref)), !dbg !702
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #4, !dbg !703
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !704
  %18 = load i64, i64* %17, align 8, !dbg !704, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !683, metadata !DIExpression(DW_OP_deref)), !dbg !702
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !705, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !682, metadata !DIExpression()), !dbg !698
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !706
  %21 = bitcast i8** %20 to i64*, !dbg !707
  store i64 %18, i64* %21, align 8, !dbg !707, !tbaa !708
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !710
  %23 = load i64, i64* %22, align 8, !dbg !710, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !684, metadata !DIExpression(DW_OP_deref)), !dbg !700
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !711
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !683, metadata !DIExpression()), !dbg !702
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !712
  %26 = bitcast i8** %25 to i64*, !dbg !713
  store i64 %23, i64* %26, align 8, !dbg !713, !tbaa !708
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !714
  %28 = load i64, i64* %27, align 8, !dbg !714, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !685, metadata !DIExpression(DW_OP_deref)), !dbg !696
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !715
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !684, metadata !DIExpression()), !dbg !700
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !716
  %31 = bitcast i8** %30 to i64*, !dbg !717
  store i64 %28, i64* %31, align 8, !dbg !717, !tbaa !708
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !718
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !682, metadata !DIExpression(DW_OP_deref)), !dbg !698
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !719
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !685, metadata !DIExpression()), !dbg !696
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !720
  %35 = bitcast i8** %34 to i64*, !dbg !721
  store i64 %32, i64* %35, align 8, !dbg !721, !tbaa !708
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !685, metadata !DIExpression()), !dbg !696
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #4, !dbg !722
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !723, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !682, metadata !DIExpression()), !dbg !698
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #4, !dbg !724
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !725, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !684, metadata !DIExpression()), !dbg !700
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #4, !dbg !726
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !727, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !683, metadata !DIExpression()), !dbg !702
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #4, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !729
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !729
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !729
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !729
  ret i32 0, !dbg !730
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !731 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !734
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !735, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !626, metadata !DIExpression()) #5, !dbg !735
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !625, metadata !DIExpression()) #5, !dbg !737
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !738
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !738, !tbaa !631
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !739, !tbaa !201
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !740
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !733, metadata !DIExpression(DW_OP_deref)), !dbg !741
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !743
  ret i32 0, !dbg !744
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !745 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !748
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !749, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !626, metadata !DIExpression()) #5, !dbg !749
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !625, metadata !DIExpression()) #5, !dbg !751
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !752
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !752, !tbaa !631
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !753, !tbaa !201
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !754
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !747, metadata !DIExpression(DW_OP_deref)), !dbg !755
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !757
  ret i32 0, !dbg !758
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !759 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !762
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !763, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !626, metadata !DIExpression()) #5, !dbg !763
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !625, metadata !DIExpression()) #5, !dbg !765
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !766
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !766, !tbaa !631
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !767, !tbaa !201
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !768
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !761, metadata !DIExpression(DW_OP_deref)), !dbg !769
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !770
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !771
  ret i32 0, !dbg !772
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !773 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !776
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !776
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !777, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !626, metadata !DIExpression()) #5, !dbg !777
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !625, metadata !DIExpression()) #5, !dbg !779
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !780
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !780, !tbaa !631
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !781, !tbaa !201
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !782
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !775, metadata !DIExpression(DW_OP_deref)), !dbg !783
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !785
  ret i32 0, !dbg !786
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !787 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !790
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !790
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !791, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !626, metadata !DIExpression()) #5, !dbg !791
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !625, metadata !DIExpression()) #5, !dbg !793
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !794
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !794, !tbaa !631
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !795, !tbaa !201
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !796
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !789, metadata !DIExpression(DW_OP_deref)), !dbg !797
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !798
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !799
  ret i32 0, !dbg !800
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !801 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !805
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !805
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !806
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !807, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !807
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !809
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !810
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !810
  %8 = load i64, i64* %7, align 8, !dbg !810, !tbaa !631
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !811, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !803, metadata !DIExpression(DW_OP_deref)), !dbg !812
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !813
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !804, metadata !DIExpression(DW_OP_deref)), !dbg !814
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !815
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !816
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !816
  ret i32 0, !dbg !817
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !818 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !820, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i8* %1, metadata !821, metadata !DIExpression()), !dbg !823
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !824
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !826
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !826
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !827
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !828, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !626, metadata !DIExpression()) #5, !dbg !828
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !625, metadata !DIExpression()) #5, !dbg !830
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !831
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !831, !tbaa !631
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !832, !tbaa !201
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !833
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !660, metadata !DIExpression(DW_OP_deref)) #5, !dbg !834
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !835
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !661, metadata !DIExpression(DW_OP_deref)) #5, !dbg !836
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !837
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !662, metadata !DIExpression(DW_OP_deref)) #5, !dbg !838
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #4, !dbg !839
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !840
  ret i32 0, !dbg !841
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !842 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !844, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8* %1, metadata !845, metadata !DIExpression()), !dbg !847
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !848
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !848
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !850, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !850
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !852
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !853
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !853, !tbaa !631
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !854, !tbaa !201
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !855
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !646, metadata !DIExpression(DW_OP_deref)) #5, !dbg !856
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !858
  ret i32 0, !dbg !859
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !860 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !862, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i8* %1, metadata !863, metadata !DIExpression()), !dbg !865
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !866
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !866
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !868
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !868
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !869, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !626, metadata !DIExpression()) #5, !dbg !869
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !625, metadata !DIExpression()) #5, !dbg !871
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !872
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !872
  %10 = load i64, i64* %9, align 8, !dbg !872, !tbaa !631
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !873, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !614, metadata !DIExpression(DW_OP_deref)) #5, !dbg !874
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !875
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !615, metadata !DIExpression(DW_OP_deref)) #5, !dbg !876
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !877
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !878
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !878
  ret i32 0, !dbg !879
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !882, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %1, metadata !883, metadata !DIExpression()), !dbg !885
  %3 = tail call i32 @test_yield_to() #6, !dbg !886
  ret i32 0, !dbg !887
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !888 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !890, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i8* %1, metadata !891, metadata !DIExpression()), !dbg !893
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !894
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !896, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !896
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !898
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !899
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !899, !tbaa !631
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !900, !tbaa !201
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !901
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !733, metadata !DIExpression(DW_OP_deref)) #5, !dbg !902
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !903
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !904
  ret i32 0, !dbg !905
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !906 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !908, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8* %1, metadata !909, metadata !DIExpression()), !dbg !911
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !912
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !914, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !914
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !916
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !917
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !917, !tbaa !631
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !918, !tbaa !201
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !919
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !747, metadata !DIExpression(DW_OP_deref)) #5, !dbg !920
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !922
  ret i32 0, !dbg !923
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !924 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8* %1, metadata !927, metadata !DIExpression()), !dbg !929
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !930
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !930
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !932, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !932
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !934
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !935
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !935, !tbaa !631
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !936, !tbaa !201
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !937
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !761, metadata !DIExpression(DW_OP_deref)) #5, !dbg !938
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !940
  ret i32 0, !dbg !941
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !942 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !944, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %1, metadata !945, metadata !DIExpression()), !dbg !947
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !948
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !950, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !950
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !952
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !953
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !953, !tbaa !631
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !954, !tbaa !201
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !955
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !775, metadata !DIExpression(DW_OP_deref)) #5, !dbg !956
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !957
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !958
  ret i32 0, !dbg !959
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !960 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !962, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i8* %1, metadata !963, metadata !DIExpression()), !dbg !965
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !966
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !968, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !626, metadata !DIExpression()) #5, !dbg !968
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !625, metadata !DIExpression()) #5, !dbg !970
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !971
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !971, !tbaa !631
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !972, !tbaa !201
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !973
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !789, metadata !DIExpression(DW_OP_deref)) #5, !dbg !974
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !975
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !976
  ret i32 0, !dbg !977
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !978 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()), !dbg !983
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !984
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !986
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !986
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !987, !srcloc !628
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !626, metadata !DIExpression()) #5, !dbg !987
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !625, metadata !DIExpression()) #5, !dbg !989
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !990
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !990
  %10 = load i64, i64* %9, align 8, !dbg !990, !tbaa !631
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !991, !tbaa !201
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !803, metadata !DIExpression(DW_OP_deref)) #5, !dbg !992
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !993
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !804, metadata !DIExpression(DW_OP_deref)) #5, !dbg !994
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !995
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !996
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !996
  ret i32 0, !dbg !997
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
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
!131 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl", scope: !2, file: !3, line: 587, type: !132, isLocal: true, isDefinition: true, align: 64)
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
!144 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl2", scope: !2, file: !3, line: 588, type: !132, isLocal: true, isDefinition: true, align: 64)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl3", scope: !2, file: !3, line: 589, type: !132, isLocal: true, isDefinition: true, align: 64)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl4", scope: !2, file: !3, line: 590, type: !132, isLocal: true, isDefinition: true, align: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl5", scope: !2, file: !3, line: 591, type: !132, isLocal: true, isDefinition: true, align: 64)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl6", scope: !2, file: !3, line: 592, type: !132, isLocal: true, isDefinition: true, align: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl7", scope: !2, file: !3, line: 593, type: !132, isLocal: true, isDefinition: true, align: 64)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl8", scope: !2, file: !3, line: 594, type: !132, isLocal: true, isDefinition: true, align: 64)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl9", scope: !2, file: !3, line: 595, type: !132, isLocal: true, isDefinition: true, align: 64)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl10", scope: !2, file: !3, line: 596, type: !132, isLocal: true, isDefinition: true, align: 64)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "fibers_impl", scope: !2, file: !3, line: 526, type: !133, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "fibers_impl2", scope: !2, file: !3, line: 532, type: !133, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "fibers_impl3", scope: !2, file: !3, line: 538, type: !133, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "fibers_impl4", scope: !2, file: !3, line: 544, type: !133, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "fibers_impl5", scope: !2, file: !3, line: 550, type: !133, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "fibers_impl6", scope: !2, file: !3, line: 556, type: !133, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "fibers_impl7", scope: !2, file: !3, line: 562, type: !133, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "fibers_impl8", scope: !2, file: !3, line: 568, type: !133, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "fibers_impl9", scope: !2, file: !3, line: 574, type: !133, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "fibers_impl10", scope: !2, file: !3, line: 580, type: !133, isLocal: true, isDefinition: true)
!181 = !{i32 2, !"Dwarf Version", i32 4}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{i32 1, !"Code Model", i32 4}
!185 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!186 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !3, file: !3, line: 45, type: !187, scopeLine: 46, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!50}
!189 = !{}
!190 = !DILocation(line: 47, column: 3, scope: !186)
!191 = !DILocation(line: 48, column: 10, scope: !186)
!192 = !DILocation(line: 48, column: 3, scope: !186)
!193 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 52, type: !64, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!194 = !{!195, !196, !197}
!195 = !DILocalVariable(name: "i", arg: 1, scope: !193, file: !3, line: 52, type: !33)
!196 = !DILocalVariable(name: "o", arg: 2, scope: !193, file: !3, line: 52, type: !66)
!197 = !DILocalVariable(name: "a", scope: !193, file: !3, line: 55, type: !50)
!198 = !DILocation(line: 52, column: 24, scope: !193)
!199 = !DILocation(line: 52, column: 34, scope: !193)
!200 = !DILocation(line: 54, column: 19, scope: !193)
!201 = !{!202, !202, i64 0}
!202 = !{!"any pointer", !203, i64 0}
!203 = !{!"omnipotent char", !204, i64 0}
!204 = !{!"Simple C/C++ TBAA"}
!205 = !DILocation(line: 54, column: 3, scope: !193)
!206 = !DILocation(line: 55, column: 7, scope: !193)
!207 = !DILocation(line: 57, column: 3, scope: !193)
!208 = !DILocation(line: 58, column: 43, scope: !209)
!209 = distinct !DILexicalBlock(scope: !193, file: !3, line: 57, column: 16)
!210 = !DILocation(line: 58, column: 5, scope: !209)
!211 = !DILocation(line: 57, column: 11, scope: !193)
!212 = distinct !{!212, !207, !213, !214}
!213 = !DILocation(line: 60, column: 3, scope: !193)
!214 = !{!"llvm.loop.unroll.disable"}
!215 = !DILocation(line: 61, column: 3, scope: !193)
!216 = !DILocation(line: 62, column: 1, scope: !193)
!217 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 64, type: !64, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!218 = !{!219, !220, !221, !222}
!219 = !DILocalVariable(name: "i", arg: 1, scope: !217, file: !3, line: 64, type: !33)
!220 = !DILocalVariable(name: "o", arg: 2, scope: !217, file: !3, line: 64, type: !66)
!221 = !DILocalVariable(name: "a", scope: !217, file: !3, line: 67, type: !50)
!222 = !DILocalVariable(name: "f_inner", scope: !223, file: !3, line: 70, type: !24)
!223 = distinct !DILexicalBlock(scope: !217, file: !3, line: 68, column: 15)
!224 = !DILocation(line: 64, column: 24, scope: !217)
!225 = !DILocation(line: 64, column: 34, scope: !217)
!226 = !DILocation(line: 66, column: 19, scope: !217)
!227 = !DILocation(line: 66, column: 3, scope: !217)
!228 = !DILocation(line: 67, column: 7, scope: !217)
!229 = !DILocation(line: 69, column: 5, scope: !223)
!230 = !DILocation(line: 70, column: 5, scope: !223)
!231 = !DILocation(line: 70, column: 17, scope: !223)
!232 = !DILocation(line: 71, column: 5, scope: !223)
!233 = !DILocation(line: 73, column: 3, scope: !217)
!234 = !DILocation(line: 74, column: 3, scope: !217)
!235 = !DILocation(line: 75, column: 1, scope: !217)
!236 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 77, type: !64, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!237 = !{!238, !239, !240}
!238 = !DILocalVariable(name: "i", arg: 1, scope: !236, file: !3, line: 77, type: !33)
!239 = !DILocalVariable(name: "o", arg: 2, scope: !236, file: !3, line: 77, type: !66)
!240 = !DILocalVariable(name: "a", scope: !236, file: !3, line: 80, type: !50)
!241 = !DILocation(line: 77, column: 29, scope: !236)
!242 = !DILocation(line: 77, column: 39, scope: !236)
!243 = !DILocation(line: 79, column: 19, scope: !236)
!244 = !DILocation(line: 79, column: 3, scope: !236)
!245 = !DILocation(line: 80, column: 7, scope: !236)
!246 = !DILocation(line: 82, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !236, file: !3, line: 81, column: 16)
!248 = !DILocation(line: 85, column: 3, scope: !236)
!249 = !DILocation(line: 86, column: 1, scope: !236)
!250 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 88, type: !64, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DILocalVariable(name: "i", arg: 1, scope: !250, file: !3, line: 88, type: !33)
!253 = !DILocalVariable(name: "o", arg: 2, scope: !250, file: !3, line: 88, type: !66)
!254 = !DILocalVariable(name: "a", scope: !250, file: !3, line: 91, type: !50)
!255 = !DILocalVariable(name: "f_inner_join", scope: !256, file: !3, line: 94, type: !24)
!256 = distinct !DILexicalBlock(scope: !250, file: !3, line: 92, column: 15)
!257 = !DILocation(line: 88, column: 29, scope: !250)
!258 = !DILocation(line: 88, column: 39, scope: !250)
!259 = !DILocation(line: 90, column: 19, scope: !250)
!260 = !DILocation(line: 90, column: 3, scope: !250)
!261 = !DILocation(line: 91, column: 7, scope: !250)
!262 = !DILocation(line: 93, column: 5, scope: !256)
!263 = !DILocation(line: 94, column: 5, scope: !256)
!264 = !DILocation(line: 94, column: 17, scope: !256)
!265 = !DILocation(line: 95, column: 5, scope: !256)
!266 = !DILocation(line: 96, column: 19, scope: !256)
!267 = !DILocation(line: 96, column: 5, scope: !256)
!268 = !DILocation(line: 98, column: 3, scope: !250)
!269 = !DILocation(line: 99, column: 3, scope: !250)
!270 = !DILocation(line: 100, column: 1, scope: !250)
!271 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 104, type: !64, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!272 = !{!273, !274, !275}
!273 = !DILocalVariable(name: "i", arg: 1, scope: !271, file: !3, line: 104, type: !33)
!274 = !DILocalVariable(name: "o", arg: 2, scope: !271, file: !3, line: 104, type: !66)
!275 = !DILocalVariable(name: "a", scope: !271, file: !3, line: 107, type: !50)
!276 = !DILocation(line: 104, column: 19, scope: !271)
!277 = !DILocation(line: 104, column: 29, scope: !271)
!278 = !DILocation(line: 106, column: 19, scope: !271)
!279 = !DILocation(line: 106, column: 3, scope: !271)
!280 = !DILocation(line: 107, column: 7, scope: !271)
!281 = !DILocation(line: 109, column: 5, scope: !282)
!282 = distinct !DILexicalBlock(scope: !271, file: !3, line: 108, column: 16)
!283 = !DILocation(line: 112, column: 3, scope: !271)
!284 = !DILocation(line: 113, column: 1, scope: !271)
!285 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 116, type: !64, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!286 = !{!287, !288, !289, !290}
!287 = !DILocalVariable(name: "i", arg: 1, scope: !285, file: !3, line: 116, type: !33)
!288 = !DILocalVariable(name: "o", arg: 2, scope: !285, file: !3, line: 116, type: !66)
!289 = !DILocalVariable(name: "a", scope: !285, file: !3, line: 119, type: !50)
!290 = !DILocalVariable(name: "f4", scope: !285, file: !3, line: 125, type: !24)
!291 = !DILocation(line: 116, column: 19, scope: !285)
!292 = !DILocation(line: 116, column: 29, scope: !285)
!293 = !DILocation(line: 118, column: 19, scope: !285)
!294 = !DILocation(line: 118, column: 3, scope: !285)
!295 = !DILocation(line: 119, column: 7, scope: !285)
!296 = !DILocation(line: 121, column: 5, scope: !297)
!297 = distinct !DILexicalBlock(scope: !285, file: !3, line: 120, column: 15)
!298 = !DILocation(line: 124, column: 3, scope: !285)
!299 = !DILocation(line: 125, column: 3, scope: !285)
!300 = !DILocation(line: 125, column: 15, scope: !285)
!301 = !DILocation(line: 126, column: 3, scope: !285)
!302 = !DILocation(line: 127, column: 1, scope: !285)
!303 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 129, type: !64, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!304 = !{!305, !306, !307, !308}
!305 = !DILocalVariable(name: "i", arg: 1, scope: !303, file: !3, line: 129, type: !33)
!306 = !DILocalVariable(name: "o", arg: 2, scope: !303, file: !3, line: 129, type: !66)
!307 = !DILocalVariable(name: "a", scope: !303, file: !3, line: 132, type: !50)
!308 = !DILocalVariable(name: "f3", scope: !303, file: !3, line: 138, type: !24)
!309 = !DILocation(line: 129, column: 19, scope: !303)
!310 = !DILocation(line: 129, column: 29, scope: !303)
!311 = !DILocation(line: 131, column: 19, scope: !303)
!312 = !DILocation(line: 131, column: 3, scope: !303)
!313 = !DILocation(line: 132, column: 7, scope: !303)
!314 = !DILocation(line: 134, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !303, file: !3, line: 133, column: 15)
!316 = !DILocation(line: 137, column: 3, scope: !303)
!317 = !DILocation(line: 138, column: 3, scope: !303)
!318 = !DILocation(line: 138, column: 15, scope: !303)
!319 = !DILocation(line: 139, column: 3, scope: !303)
!320 = !DILocation(line: 140, column: 1, scope: !303)
!321 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 143, type: !64, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!322 = !{!323, !324, !325, !326}
!323 = !DILocalVariable(name: "i", arg: 1, scope: !321, file: !3, line: 143, type: !33)
!324 = !DILocalVariable(name: "o", arg: 2, scope: !321, file: !3, line: 143, type: !66)
!325 = !DILocalVariable(name: "a", scope: !321, file: !3, line: 146, type: !50)
!326 = !DILocalVariable(name: "f4", scope: !321, file: !3, line: 152, type: !24)
!327 = !DILocation(line: 143, column: 19, scope: !321)
!328 = !DILocation(line: 143, column: 29, scope: !321)
!329 = !DILocation(line: 145, column: 19, scope: !321)
!330 = !DILocation(line: 145, column: 3, scope: !321)
!331 = !DILocation(line: 146, column: 7, scope: !321)
!332 = !DILocation(line: 148, column: 5, scope: !333)
!333 = distinct !DILexicalBlock(scope: !321, file: !3, line: 147, column: 16)
!334 = !DILocation(line: 151, column: 3, scope: !321)
!335 = !DILocation(line: 152, column: 3, scope: !321)
!336 = !DILocation(line: 152, column: 15, scope: !321)
!337 = !DILocation(line: 153, column: 3, scope: !321)
!338 = !DILocation(line: 154, column: 1, scope: !321)
!339 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 156, type: !64, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!340 = !{!341, !342, !343}
!341 = !DILocalVariable(name: "i", arg: 1, scope: !339, file: !3, line: 156, type: !33)
!342 = !DILocalVariable(name: "o", arg: 2, scope: !339, file: !3, line: 156, type: !66)
!343 = !DILocalVariable(name: "i", scope: !344, file: !3, line: 158, type: !50)
!344 = distinct !DILexicalBlock(scope: !339, file: !3, line: 158, column: 3)
!345 = !DILocation(line: 156, column: 23, scope: !339)
!346 = !DILocation(line: 156, column: 33, scope: !339)
!347 = !DILocation(line: 157, column: 19, scope: !339)
!348 = !DILocation(line: 157, column: 3, scope: !339)
!349 = !DILocation(line: 158, column: 12, scope: !344)
!350 = !DILocation(line: 160, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 159, column: 22)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 159, column: 9)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 158, column: 31)
!354 = distinct !DILexicalBlock(scope: !344, file: !3, line: 158, column: 3)
!355 = !DILocation(line: 164, column: 3, scope: !339)
!356 = !DILocation(line: 166, column: 3, scope: !339)
!357 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 169, type: !64, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!358 = !{!359, !360, !361}
!359 = !DILocalVariable(name: "i", arg: 1, scope: !357, file: !3, line: 169, type: !33)
!360 = !DILocalVariable(name: "o", arg: 2, scope: !357, file: !3, line: 169, type: !66)
!361 = !DILocalVariable(name: "i", scope: !362, file: !3, line: 171, type: !50)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 171, column: 3)
!363 = !DILocation(line: 169, column: 22, scope: !357)
!364 = !DILocation(line: 169, column: 32, scope: !357)
!365 = !DILocation(line: 170, column: 19, scope: !357)
!366 = !DILocation(line: 170, column: 3, scope: !357)
!367 = !DILocation(line: 171, column: 12, scope: !362)
!368 = !DILocation(line: 173, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !3, line: 172, column: 22)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 172, column: 9)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 171, column: 31)
!372 = distinct !DILexicalBlock(scope: !362, file: !3, line: 171, column: 3)
!373 = !DILocation(line: 177, column: 3, scope: !357)
!374 = !DILocation(line: 179, column: 3, scope: !357)
!375 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 182, type: !64, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!376 = !{!377, !378, !379, !380}
!377 = !DILocalVariable(name: "i", arg: 1, scope: !375, file: !3, line: 182, type: !33)
!378 = !DILocalVariable(name: "o", arg: 2, scope: !375, file: !3, line: 182, type: !66)
!379 = !DILocalVariable(name: "a", scope: !375, file: !3, line: 185, type: !50)
!380 = !DILocalVariable(name: "f_to", scope: !375, file: !3, line: 186, type: !24)
!381 = !DILocation(line: 182, column: 24, scope: !375)
!382 = !DILocation(line: 182, column: 34, scope: !375)
!383 = !DILocation(line: 184, column: 19, scope: !375)
!384 = !DILocation(line: 184, column: 3, scope: !375)
!385 = !DILocation(line: 185, column: 7, scope: !375)
!386 = !DILocation(line: 186, column: 22, scope: !375)
!387 = !DILocation(line: 186, column: 15, scope: !375)
!388 = !DILocation(line: 188, column: 5, scope: !389)
!389 = distinct !DILexicalBlock(scope: !375, file: !3, line: 187, column: 15)
!390 = !DILocation(line: 189, column: 5, scope: !389)
!391 = !DILocation(line: 191, column: 3, scope: !375)
!392 = !DILocation(line: 192, column: 1, scope: !375)
!393 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 195, type: !64, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !394)
!394 = !{!395, !396, !397, !398}
!395 = !DILocalVariable(name: "i", arg: 1, scope: !393, file: !3, line: 195, type: !33)
!396 = !DILocalVariable(name: "o", arg: 2, scope: !393, file: !3, line: 195, type: !66)
!397 = !DILocalVariable(name: "a", scope: !393, file: !3, line: 198, type: !50)
!398 = !DILocalVariable(name: "f_to", scope: !393, file: !3, line: 199, type: !24)
!399 = !DILocation(line: 195, column: 25, scope: !393)
!400 = !DILocation(line: 195, column: 35, scope: !393)
!401 = !DILocation(line: 197, column: 19, scope: !393)
!402 = !DILocation(line: 197, column: 3, scope: !393)
!403 = !DILocation(line: 198, column: 7, scope: !393)
!404 = !DILocation(line: 199, column: 22, scope: !393)
!405 = !DILocation(line: 199, column: 15, scope: !393)
!406 = !DILocation(line: 201, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !393, file: !3, line: 200, column: 15)
!408 = !DILocation(line: 202, column: 5, scope: !407)
!409 = !DILocation(line: 204, column: 3, scope: !393)
!410 = !DILocation(line: 205, column: 1, scope: !393)
!411 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 207, type: !64, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!412 = !{!413, !414, !415, !416}
!413 = !DILocalVariable(name: "i", arg: 1, scope: !411, file: !3, line: 207, type: !33)
!414 = !DILocalVariable(name: "o", arg: 2, scope: !411, file: !3, line: 207, type: !66)
!415 = !DILocalVariable(name: "a", scope: !411, file: !3, line: 210, type: !50)
!416 = !DILocalVariable(name: "f_to", scope: !411, file: !3, line: 212, type: !24)
!417 = !DILocation(line: 207, column: 24, scope: !411)
!418 = !DILocation(line: 207, column: 34, scope: !411)
!419 = !DILocation(line: 209, column: 19, scope: !411)
!420 = !DILocation(line: 209, column: 3, scope: !411)
!421 = !DILocation(line: 210, column: 7, scope: !411)
!422 = !DILocation(line: 212, column: 22, scope: !411)
!423 = !DILocation(line: 212, column: 15, scope: !411)
!424 = !DILocation(line: 214, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !411, file: !3, line: 213, column: 15)
!426 = !DILocation(line: 215, column: 5, scope: !425)
!427 = !DILocation(line: 217, column: 3, scope: !411)
!428 = !DILocation(line: 218, column: 1, scope: !411)
!429 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 220, type: !64, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !430)
!430 = !{!431, !432, !433, !434}
!431 = !DILocalVariable(name: "i", arg: 1, scope: !429, file: !3, line: 220, type: !33)
!432 = !DILocalVariable(name: "o", arg: 2, scope: !429, file: !3, line: 220, type: !66)
!433 = !DILocalVariable(name: "a", scope: !429, file: !3, line: 223, type: !50)
!434 = !DILocalVariable(name: "f_to", scope: !429, file: !3, line: 225, type: !24)
!435 = !DILocation(line: 220, column: 25, scope: !429)
!436 = !DILocation(line: 220, column: 35, scope: !429)
!437 = !DILocation(line: 222, column: 19, scope: !429)
!438 = !DILocation(line: 222, column: 3, scope: !429)
!439 = !DILocation(line: 223, column: 7, scope: !429)
!440 = !DILocation(line: 225, column: 22, scope: !429)
!441 = !DILocation(line: 225, column: 15, scope: !429)
!442 = !DILocation(line: 227, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !429, file: !3, line: 226, column: 15)
!444 = !DILocation(line: 228, column: 5, scope: !443)
!445 = !DILocation(line: 230, column: 3, scope: !429)
!446 = !DILocation(line: 231, column: 1, scope: !429)
!447 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 233, type: !64, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !448)
!448 = !{!449, !450, !451, !452}
!449 = !DILocalVariable(name: "i", arg: 1, scope: !447, file: !3, line: 233, type: !33)
!450 = !DILocalVariable(name: "o", arg: 2, scope: !447, file: !3, line: 233, type: !66)
!451 = !DILocalVariable(name: "a", scope: !447, file: !3, line: 236, type: !50)
!452 = !DILocalVariable(name: "f_new", scope: !447, file: !3, line: 237, type: !24)
!453 = !DILocation(line: 233, column: 23, scope: !447)
!454 = !DILocation(line: 233, column: 33, scope: !447)
!455 = !DILocation(line: 235, column: 19, scope: !447)
!456 = !DILocation(line: 235, column: 3, scope: !447)
!457 = !DILocation(line: 236, column: 7, scope: !447)
!458 = !DILocation(line: 238, column: 11, scope: !447)
!459 = !DILocation(line: 237, column: 15, scope: !447)
!460 = !DILocation(line: 241, column: 5, scope: !461)
!461 = distinct !DILexicalBlock(scope: !447, file: !3, line: 239, column: 15)
!462 = !DILocation(line: 244, column: 3, scope: !447)
!463 = !DILocation(line: 245, column: 1, scope: !447)
!464 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 247, type: !64, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!465 = !{!466, !467, !468, !469, !470}
!466 = !DILocalVariable(name: "i", arg: 1, scope: !464, file: !3, line: 247, type: !33)
!467 = !DILocalVariable(name: "o", arg: 2, scope: !464, file: !3, line: 247, type: !66)
!468 = !DILocalVariable(name: "a", scope: !464, file: !3, line: 250, type: !50)
!469 = !DILocalVariable(name: "f_new", scope: !464, file: !3, line: 251, type: !24)
!470 = !DILocalVariable(name: "f_curr", scope: !464, file: !3, line: 258, type: !24)
!471 = !DILocation(line: 247, column: 28, scope: !464)
!472 = !DILocation(line: 247, column: 38, scope: !464)
!473 = !DILocation(line: 249, column: 19, scope: !464)
!474 = !DILocation(line: 249, column: 3, scope: !464)
!475 = !DILocation(line: 250, column: 7, scope: !464)
!476 = !DILocation(line: 252, column: 11, scope: !464)
!477 = !DILocation(line: 251, column: 15, scope: !464)
!478 = !DILocation(line: 253, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !464, file: !3, line: 253, column: 6)
!480 = !DILocation(line: 253, column: 6, scope: !464)
!481 = !DILocation(line: 254, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !3, line: 253, column: 12)
!483 = !DILocation(line: 255, column: 3, scope: !482)
!484 = !DILocation(line: 258, column: 15, scope: !464)
!485 = !DILocation(line: 260, column: 5, scope: !486)
!486 = distinct !DILexicalBlock(scope: !464, file: !3, line: 259, column: 15)
!487 = !DILocation(line: 263, column: 3, scope: !464)
!488 = !DILocation(line: 264, column: 1, scope: !464)
!489 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 266, type: !64, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!490 = !{!491, !492}
!491 = !DILocalVariable(name: "i", arg: 1, scope: !489, file: !3, line: 266, type: !33)
!492 = !DILocalVariable(name: "o", arg: 2, scope: !489, file: !3, line: 266, type: !66)
!493 = !DILocation(line: 266, column: 27, scope: !489)
!494 = !DILocation(line: 266, column: 37, scope: !489)
!495 = !DILocation(line: 268, column: 19, scope: !489)
!496 = !DILocation(line: 268, column: 3, scope: !489)
!497 = !DILocation(line: 270, column: 3, scope: !489)
!498 = !DILocation(line: 271, column: 1, scope: !489)
!499 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 274, type: !64, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!500 = !{!501, !502, !503, !504, !505, !507}
!501 = !DILocalVariable(name: "i", arg: 1, scope: !499, file: !3, line: 274, type: !33)
!502 = !DILocalVariable(name: "o", arg: 2, scope: !499, file: !3, line: 274, type: !66)
!503 = !DILocalVariable(name: "a", scope: !499, file: !3, line: 277, type: !50)
!504 = !DILocalVariable(name: "f_new", scope: !499, file: !3, line: 278, type: !24)
!505 = !DILocalVariable(name: "curr", scope: !506, file: !3, line: 282, type: !24)
!506 = distinct !DILexicalBlock(scope: !499, file: !3, line: 279, column: 15)
!507 = !DILocalVariable(name: "new", scope: !508, file: !3, line: 284, type: !24)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 283, column: 14)
!509 = distinct !DILexicalBlock(scope: !506, file: !3, line: 283, column: 8)
!510 = !DILocation(line: 274, column: 27, scope: !499)
!511 = !DILocation(line: 274, column: 37, scope: !499)
!512 = !DILocation(line: 276, column: 19, scope: !499)
!513 = !DILocation(line: 276, column: 3, scope: !499)
!514 = !DILocation(line: 277, column: 7, scope: !499)
!515 = !DILocation(line: 280, column: 13, scope: !506)
!516 = !DILocation(line: 278, column: 15, scope: !499)
!517 = !DILocation(line: 282, column: 17, scope: !506)
!518 = !DILocation(line: 283, column: 8, scope: !509)
!519 = !DILocation(line: 283, column: 8, scope: !506)
!520 = !DILocation(line: 284, column: 7, scope: !508)
!521 = !DILocation(line: 284, column: 19, scope: !508)
!522 = !DILocation(line: 285, column: 7, scope: !508)
!523 = !DILocation(line: 287, column: 5, scope: !509)
!524 = !DILocation(line: 288, column: 5, scope: !506)
!525 = !DILocation(line: 291, column: 3, scope: !499)
!526 = !DILocation(line: 292, column: 1, scope: !499)
!527 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 294, type: !64, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!528 = !{!529, !530, !531, !532, !533}
!529 = !DILocalVariable(name: "i", arg: 1, scope: !527, file: !3, line: 294, type: !33)
!530 = !DILocalVariable(name: "o", arg: 2, scope: !527, file: !3, line: 294, type: !66)
!531 = !DILocalVariable(name: "a", scope: !527, file: !3, line: 297, type: !50)
!532 = !DILocalVariable(name: "f_new", scope: !527, file: !3, line: 298, type: !24)
!533 = !DILocalVariable(name: "curr", scope: !534, file: !3, line: 302, type: !24)
!534 = distinct !DILexicalBlock(scope: !527, file: !3, line: 299, column: 15)
!535 = !DILocation(line: 294, column: 27, scope: !527)
!536 = !DILocation(line: 294, column: 37, scope: !527)
!537 = !DILocation(line: 296, column: 19, scope: !527)
!538 = !DILocation(line: 296, column: 3, scope: !527)
!539 = !DILocation(line: 297, column: 7, scope: !527)
!540 = !DILocation(line: 300, column: 13, scope: !534)
!541 = !DILocation(line: 298, column: 15, scope: !527)
!542 = !DILocation(line: 302, column: 17, scope: !534)
!543 = !DILocation(line: 303, column: 5, scope: !534)
!544 = !DILocation(line: 306, column: 3, scope: !527)
!545 = !DILocation(line: 307, column: 1, scope: !527)
!546 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!547 = !{!548, !549, !550, !551, !552}
!548 = !DILocalVariable(name: "i", arg: 1, scope: !546, file: !3, line: 310, type: !33)
!549 = !DILocalVariable(name: "o", arg: 2, scope: !546, file: !3, line: 310, type: !66)
!550 = !DILocalVariable(name: "a", scope: !546, file: !3, line: 313, type: !50)
!551 = !DILocalVariable(name: "start", scope: !546, file: !3, line: 314, type: !29)
!552 = !DILocalVariable(name: "end", scope: !546, file: !3, line: 315, type: !29)
!553 = !DILocation(line: 310, column: 24, scope: !546)
!554 = !DILocation(line: 310, column: 34, scope: !546)
!555 = !DILocation(line: 312, column: 19, scope: !546)
!556 = !DILocation(line: 312, column: 3, scope: !546)
!557 = !DILocation(line: 313, column: 7, scope: !546)
!558 = !DILocation(line: 314, column: 12, scope: !546)
!559 = !DILocation(line: 315, column: 12, scope: !546)
!560 = !DILocation(line: 316, column: 3, scope: !546)
!561 = !DILocation(line: 317, column: 11, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 317, column: 9)
!563 = distinct !DILexicalBlock(scope: !546, file: !3, line: 316, column: 15)
!564 = !DILocation(line: 317, column: 9, scope: !563)
!565 = !DILocation(line: 268, column: 5, scope: !566, inlinedAt: !573)
!566 = distinct !DISubprogram(name: "rdtsc", scope: !567, file: !567, line: 265, type: !568, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!567 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!568 = !DISubroutineType(types: !569)
!569 = !{!29}
!570 = !{!571, !572}
!571 = !DILocalVariable(name: "lo", scope: !566, file: !567, line: 267, type: !43)
!572 = !DILocalVariable(name: "hi", scope: !566, file: !567, line: 267, type: !43)
!573 = distinct !DILocation(line: 318, column: 17, scope: !574)
!574 = distinct !DILexicalBlock(scope: !562, file: !3, line: 317, column: 17)
!575 = !{i32 96617}
!576 = !DILocation(line: 267, column: 14, scope: !566, inlinedAt: !573)
!577 = !DILocation(line: 267, column: 18, scope: !566, inlinedAt: !573)
!578 = !DILocation(line: 269, column: 12, scope: !566, inlinedAt: !573)
!579 = !DILocation(line: 269, column: 18, scope: !566, inlinedAt: !573)
!580 = !DILocation(line: 269, column: 33, scope: !566, inlinedAt: !573)
!581 = !DILocation(line: 269, column: 15, scope: !566, inlinedAt: !573)
!582 = !DILocation(line: 319, column: 5, scope: !574)
!583 = !DILocation(line: 0, scope: !546)
!584 = !DILocation(line: 321, column: 6, scope: !563)
!585 = !DILocation(line: 316, column: 11, scope: !546)
!586 = distinct !{!586, !560, !587}
!587 = !DILocation(line: 322, column: 3, scope: !546)
!588 = !DILocation(line: 268, column: 5, scope: !566, inlinedAt: !589)
!589 = distinct !DILocation(line: 323, column: 9, scope: !546)
!590 = !DILocation(line: 267, column: 14, scope: !566, inlinedAt: !589)
!591 = !DILocation(line: 267, column: 18, scope: !566, inlinedAt: !589)
!592 = !DILocation(line: 269, column: 12, scope: !566, inlinedAt: !589)
!593 = !DILocation(line: 269, column: 18, scope: !566, inlinedAt: !589)
!594 = !DILocation(line: 269, column: 33, scope: !566, inlinedAt: !589)
!595 = !DILocation(line: 269, column: 15, scope: !566, inlinedAt: !589)
!596 = !DILocation(line: 324, column: 104, scope: !546)
!597 = !DILocation(line: 324, column: 123, scope: !546)
!598 = !DILocation(line: 324, column: 3, scope: !546)
!599 = !DILocation(line: 325, column: 1, scope: !546)
!600 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 327, type: !64, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!601 = !{!602, !603, !604}
!602 = !DILocalVariable(name: "i", arg: 1, scope: !600, file: !3, line: 327, type: !33)
!603 = !DILocalVariable(name: "o", arg: 2, scope: !600, file: !3, line: 327, type: !66)
!604 = !DILocalVariable(name: "a", scope: !600, file: !3, line: 330, type: !50)
!605 = !DILocation(line: 327, column: 25, scope: !600)
!606 = !DILocation(line: 327, column: 35, scope: !600)
!607 = !DILocation(line: 329, column: 19, scope: !600)
!608 = !DILocation(line: 329, column: 3, scope: !600)
!609 = !DILocation(line: 330, column: 7, scope: !600)
!610 = !DILocation(line: 335, column: 3, scope: !600)
!611 = !DILocation(line: 336, column: 1, scope: !600)
!612 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 338, type: !187, scopeLine: 338, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!613 = !{!614, !615}
!614 = !DILocalVariable(name: "even", scope: !612, file: !3, line: 339, type: !24)
!615 = !DILocalVariable(name: "odd", scope: !612, file: !3, line: 340, type: !24)
!616 = !DILocation(line: 339, column: 3, scope: !612)
!617 = !DILocation(line: 340, column: 3, scope: !612)
!618 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !627)
!619 = distinct !DILexicalBlock(scope: !620, file: !16, line: 258, column: 26)
!620 = distinct !DILexicalBlock(scope: !621, file: !16, line: 258, column: 26)
!621 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !622, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{!72}
!624 = !{!625, !626}
!625 = !DILocalVariable(name: "__r", scope: !620, file: !16, line: 258, type: !86)
!626 = !DILocalVariable(name: "__r", scope: !619, file: !16, line: 258, type: !86)
!627 = distinct !DILocation(line: 341, column: 8, scope: !612)
!628 = !{i32 -2147276160}
!629 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !627)
!630 = !DILocation(line: 341, column: 26, scope: !612)
!631 = !{!632, !202, i64 184}
!632 = !{!"nk_thread", !633, i64 0, !202, i64 8, !634, i64 16, !634, i64 18, !633, i64 24, !633, i64 32, !635, i64 40, !202, i64 48, !636, i64 56, !636, i64 72, !633, i64 88, !202, i64 96, !635, i64 104, !202, i64 112, !203, i64 120, !635, i64 124, !635, i64 128, !635, i64 132, !203, i64 136, !202, i64 144, !202, i64 152, !202, i64 160, !202, i64 168, !202, i64 176, !202, i64 184, !203, i64 192, !203, i64 224, !203, i64 2304}
!633 = !{!"long", !203, i64 0}
!634 = !{!"short", !203, i64 0}
!635 = !{!"int", !203, i64 0}
!636 = !{!"list_head", !202, i64 0, !202, i64 8}
!637 = !DILocation(line: 341, column: 6, scope: !612)
!638 = !DILocation(line: 339, column: 15, scope: !612)
!639 = !DILocation(line: 342, column: 3, scope: !612)
!640 = !DILocation(line: 340, column: 15, scope: !612)
!641 = !DILocation(line: 343, column: 3, scope: !612)
!642 = !DILocation(line: 346, column: 1, scope: !612)
!643 = !DILocation(line: 345, column: 3, scope: !612)
!644 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 348, type: !187, scopeLine: 349, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!645 = !{!646}
!646 = !DILocalVariable(name: "f_outer", scope: !644, file: !3, line: 350, type: !24)
!647 = !DILocation(line: 350, column: 3, scope: !644)
!648 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !649)
!649 = distinct !DILocation(line: 351, column: 8, scope: !644)
!650 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !649)
!651 = !DILocation(line: 351, column: 26, scope: !644)
!652 = !DILocation(line: 351, column: 6, scope: !644)
!653 = !DILocation(line: 352, column: 3, scope: !644)
!654 = !DILocation(line: 350, column: 15, scope: !644)
!655 = !DILocation(line: 353, column: 3, scope: !644)
!656 = !DILocation(line: 355, column: 1, scope: !644)
!657 = !DILocation(line: 354, column: 3, scope: !644)
!658 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 357, type: !187, scopeLine: 358, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!659 = !{!660, !661, !662}
!660 = !DILocalVariable(name: "f1", scope: !658, file: !3, line: 359, type: !24)
!661 = !DILocalVariable(name: "f2", scope: !658, file: !3, line: 360, type: !24)
!662 = !DILocalVariable(name: "f3", scope: !658, file: !3, line: 361, type: !24)
!663 = !DILocation(line: 359, column: 3, scope: !658)
!664 = !DILocation(line: 360, column: 3, scope: !658)
!665 = !DILocation(line: 361, column: 3, scope: !658)
!666 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !667)
!667 = distinct !DILocation(line: 362, column: 8, scope: !658)
!668 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !667)
!669 = !DILocation(line: 362, column: 26, scope: !658)
!670 = !DILocation(line: 362, column: 6, scope: !658)
!671 = !DILocation(line: 363, column: 3, scope: !658)
!672 = !DILocation(line: 359, column: 15, scope: !658)
!673 = !DILocation(line: 364, column: 3, scope: !658)
!674 = !DILocation(line: 360, column: 15, scope: !658)
!675 = !DILocation(line: 365, column: 3, scope: !658)
!676 = !DILocation(line: 361, column: 15, scope: !658)
!677 = !DILocation(line: 366, column: 3, scope: !658)
!678 = !DILocation(line: 368, column: 1, scope: !658)
!679 = !DILocation(line: 367, column: 3, scope: !658)
!680 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 370, type: !187, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !681)
!681 = !{!682, !683, !684, !685}
!682 = !DILocalVariable(name: "f_first", scope: !680, file: !3, line: 372, type: !24)
!683 = !DILocalVariable(name: "f_second", scope: !680, file: !3, line: 373, type: !24)
!684 = !DILocalVariable(name: "f_third", scope: !680, file: !3, line: 374, type: !24)
!685 = !DILocalVariable(name: "f_fourth", scope: !680, file: !3, line: 375, type: !24)
!686 = !DILocation(line: 372, column: 3, scope: !680)
!687 = !DILocation(line: 373, column: 3, scope: !680)
!688 = !DILocation(line: 374, column: 3, scope: !680)
!689 = !DILocation(line: 375, column: 3, scope: !680)
!690 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !691)
!691 = distinct !DILocation(line: 376, column: 8, scope: !680)
!692 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !691)
!693 = !DILocation(line: 376, column: 26, scope: !680)
!694 = !DILocation(line: 376, column: 6, scope: !680)
!695 = !DILocation(line: 377, column: 3, scope: !680)
!696 = !DILocation(line: 375, column: 15, scope: !680)
!697 = !DILocation(line: 378, column: 3, scope: !680)
!698 = !DILocation(line: 372, column: 15, scope: !680)
!699 = !DILocation(line: 379, column: 3, scope: !680)
!700 = !DILocation(line: 374, column: 15, scope: !680)
!701 = !DILocation(line: 380, column: 3, scope: !680)
!702 = !DILocation(line: 373, column: 15, scope: !680)
!703 = !DILocation(line: 381, column: 3, scope: !680)
!704 = !DILocation(line: 383, column: 20, scope: !680)
!705 = !DILocation(line: 383, column: 3, scope: !680)
!706 = !DILocation(line: 383, column: 12, scope: !680)
!707 = !DILocation(line: 383, column: 18, scope: !680)
!708 = !{!709, !202, i64 128}
!709 = !{!"nk_fiber", !633, i64 0, !202, i64 8, !634, i64 16, !633, i64 24, !633, i64 32, !635, i64 40, !203, i64 44, !202, i64 48, !635, i64 56, !636, i64 64, !636, i64 80, !635, i64 96, !636, i64 104, !202, i64 120, !202, i64 128, !202, i64 136, !203, i64 144}
!710 = !DILocation(line: 384, column: 21, scope: !680)
!711 = !DILocation(line: 384, column: 3, scope: !680)
!712 = !DILocation(line: 384, column: 13, scope: !680)
!713 = !DILocation(line: 384, column: 19, scope: !680)
!714 = !DILocation(line: 385, column: 20, scope: !680)
!715 = !DILocation(line: 385, column: 3, scope: !680)
!716 = !DILocation(line: 385, column: 12, scope: !680)
!717 = !DILocation(line: 385, column: 18, scope: !680)
!718 = !DILocation(line: 386, column: 21, scope: !680)
!719 = !DILocation(line: 386, column: 3, scope: !680)
!720 = !DILocation(line: 386, column: 13, scope: !680)
!721 = !DILocation(line: 386, column: 19, scope: !680)
!722 = !DILocation(line: 387, column: 3, scope: !680)
!723 = !DILocation(line: 388, column: 16, scope: !680)
!724 = !DILocation(line: 388, column: 3, scope: !680)
!725 = !DILocation(line: 389, column: 16, scope: !680)
!726 = !DILocation(line: 389, column: 3, scope: !680)
!727 = !DILocation(line: 390, column: 16, scope: !680)
!728 = !DILocation(line: 390, column: 3, scope: !680)
!729 = !DILocation(line: 392, column: 1, scope: !680)
!730 = !DILocation(line: 391, column: 3, scope: !680)
!731 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 394, type: !187, scopeLine: 395, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!732 = !{!733}
!733 = !DILocalVariable(name: "f_outer_join", scope: !731, file: !3, line: 396, type: !24)
!734 = !DILocation(line: 396, column: 3, scope: !731)
!735 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !736)
!736 = distinct !DILocation(line: 397, column: 8, scope: !731)
!737 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !736)
!738 = !DILocation(line: 397, column: 26, scope: !731)
!739 = !DILocation(line: 397, column: 6, scope: !731)
!740 = !DILocation(line: 398, column: 3, scope: !731)
!741 = !DILocation(line: 396, column: 15, scope: !731)
!742 = !DILocation(line: 399, column: 3, scope: !731)
!743 = !DILocation(line: 401, column: 1, scope: !731)
!744 = !DILocation(line: 400, column: 3, scope: !731)
!745 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 403, type: !187, scopeLine: 404, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!746 = !{!747}
!747 = !DILocalVariable(name: "f_orig", scope: !745, file: !3, line: 405, type: !24)
!748 = !DILocation(line: 405, column: 3, scope: !745)
!749 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !750)
!750 = distinct !DILocation(line: 406, column: 8, scope: !745)
!751 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !750)
!752 = !DILocation(line: 406, column: 26, scope: !745)
!753 = !DILocation(line: 406, column: 6, scope: !745)
!754 = !DILocation(line: 407, column: 3, scope: !745)
!755 = !DILocation(line: 405, column: 15, scope: !745)
!756 = !DILocation(line: 408, column: 3, scope: !745)
!757 = !DILocation(line: 410, column: 1, scope: !745)
!758 = !DILocation(line: 409, column: 3, scope: !745)
!759 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 412, type: !187, scopeLine: 413, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!760 = !{!761}
!761 = !DILocalVariable(name: "f_orig", scope: !759, file: !3, line: 414, type: !24)
!762 = !DILocation(line: 414, column: 3, scope: !759)
!763 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !764)
!764 = distinct !DILocation(line: 415, column: 8, scope: !759)
!765 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !764)
!766 = !DILocation(line: 415, column: 26, scope: !759)
!767 = !DILocation(line: 415, column: 6, scope: !759)
!768 = !DILocation(line: 416, column: 3, scope: !759)
!769 = !DILocation(line: 414, column: 15, scope: !759)
!770 = !DILocation(line: 417, column: 3, scope: !759)
!771 = !DILocation(line: 419, column: 1, scope: !759)
!772 = !DILocation(line: 418, column: 3, scope: !759)
!773 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 421, type: !187, scopeLine: 422, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!774 = !{!775}
!775 = !DILocalVariable(name: "f_orig", scope: !773, file: !3, line: 423, type: !24)
!776 = !DILocation(line: 423, column: 3, scope: !773)
!777 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !778)
!778 = distinct !DILocation(line: 424, column: 8, scope: !773)
!779 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !778)
!780 = !DILocation(line: 424, column: 26, scope: !773)
!781 = !DILocation(line: 424, column: 6, scope: !773)
!782 = !DILocation(line: 425, column: 3, scope: !773)
!783 = !DILocation(line: 423, column: 15, scope: !773)
!784 = !DILocation(line: 426, column: 3, scope: !773)
!785 = !DILocation(line: 428, column: 1, scope: !773)
!786 = !DILocation(line: 427, column: 3, scope: !773)
!787 = distinct !DISubprogram(name: "test_fiber_routine_2", scope: !3, file: !3, line: 430, type: !187, scopeLine: 431, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !788)
!788 = !{!789}
!789 = !DILocalVariable(name: "f_orig", scope: !787, file: !3, line: 432, type: !24)
!790 = !DILocation(line: 432, column: 3, scope: !787)
!791 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !792)
!792 = distinct !DILocation(line: 433, column: 8, scope: !787)
!793 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !792)
!794 = !DILocation(line: 433, column: 26, scope: !787)
!795 = !DILocation(line: 433, column: 6, scope: !787)
!796 = !DILocation(line: 434, column: 3, scope: !787)
!797 = !DILocation(line: 432, column: 15, scope: !787)
!798 = !DILocation(line: 435, column: 3, scope: !787)
!799 = !DILocation(line: 437, column: 1, scope: !787)
!800 = !DILocation(line: 436, column: 3, scope: !787)
!801 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 439, type: !187, scopeLine: 439, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!802 = !{!803, !804}
!803 = !DILocalVariable(name: "first", scope: !801, file: !3, line: 440, type: !24)
!804 = !DILocalVariable(name: "second", scope: !801, file: !3, line: 441, type: !24)
!805 = !DILocation(line: 440, column: 3, scope: !801)
!806 = !DILocation(line: 441, column: 3, scope: !801)
!807 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !808)
!808 = distinct !DILocation(line: 442, column: 8, scope: !801)
!809 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !808)
!810 = !DILocation(line: 442, column: 26, scope: !801)
!811 = !DILocation(line: 442, column: 6, scope: !801)
!812 = !DILocation(line: 440, column: 15, scope: !801)
!813 = !DILocation(line: 444, column: 3, scope: !801)
!814 = !DILocation(line: 441, column: 15, scope: !801)
!815 = !DILocation(line: 445, column: 3, scope: !801)
!816 = !DILocation(line: 448, column: 1, scope: !801)
!817 = !DILocation(line: 447, column: 3, scope: !801)
!818 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 452, type: !141, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!819 = !{!820, !821}
!820 = !DILocalVariable(name: "buf", arg: 1, scope: !818, file: !3, line: 452, type: !137)
!821 = !DILocalVariable(name: "priv", arg: 2, scope: !818, file: !3, line: 452, type: !33)
!822 = !DILocation(line: 452, column: 23, scope: !818)
!823 = !DILocation(line: 452, column: 35, scope: !818)
!824 = !DILocation(line: 359, column: 3, scope: !658, inlinedAt: !825)
!825 = distinct !DILocation(line: 454, column: 3, scope: !818)
!826 = !DILocation(line: 360, column: 3, scope: !658, inlinedAt: !825)
!827 = !DILocation(line: 361, column: 3, scope: !658, inlinedAt: !825)
!828 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !829)
!829 = distinct !DILocation(line: 362, column: 8, scope: !658, inlinedAt: !825)
!830 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !829)
!831 = !DILocation(line: 362, column: 26, scope: !658, inlinedAt: !825)
!832 = !DILocation(line: 362, column: 6, scope: !658, inlinedAt: !825)
!833 = !DILocation(line: 363, column: 3, scope: !658, inlinedAt: !825)
!834 = !DILocation(line: 359, column: 15, scope: !658, inlinedAt: !825)
!835 = !DILocation(line: 364, column: 3, scope: !658, inlinedAt: !825)
!836 = !DILocation(line: 360, column: 15, scope: !658, inlinedAt: !825)
!837 = !DILocation(line: 365, column: 3, scope: !658, inlinedAt: !825)
!838 = !DILocation(line: 361, column: 15, scope: !658, inlinedAt: !825)
!839 = !DILocation(line: 366, column: 3, scope: !658, inlinedAt: !825)
!840 = !DILocation(line: 368, column: 1, scope: !658, inlinedAt: !825)
!841 = !DILocation(line: 456, column: 3, scope: !818)
!842 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 460, type: !141, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!843 = !{!844, !845}
!844 = !DILocalVariable(name: "buf", arg: 1, scope: !842, file: !3, line: 460, type: !137)
!845 = !DILocalVariable(name: "priv", arg: 2, scope: !842, file: !3, line: 460, type: !33)
!846 = !DILocation(line: 460, column: 24, scope: !842)
!847 = !DILocation(line: 460, column: 36, scope: !842)
!848 = !DILocation(line: 350, column: 3, scope: !644, inlinedAt: !849)
!849 = distinct !DILocation(line: 462, column: 3, scope: !842)
!850 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !851)
!851 = distinct !DILocation(line: 351, column: 8, scope: !644, inlinedAt: !849)
!852 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !851)
!853 = !DILocation(line: 351, column: 26, scope: !644, inlinedAt: !849)
!854 = !DILocation(line: 351, column: 6, scope: !644, inlinedAt: !849)
!855 = !DILocation(line: 352, column: 3, scope: !644, inlinedAt: !849)
!856 = !DILocation(line: 350, column: 15, scope: !644, inlinedAt: !849)
!857 = !DILocation(line: 353, column: 3, scope: !644, inlinedAt: !849)
!858 = !DILocation(line: 355, column: 1, scope: !644, inlinedAt: !849)
!859 = !DILocation(line: 464, column: 3, scope: !842)
!860 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 468, type: !141, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "buf", arg: 1, scope: !860, file: !3, line: 468, type: !137)
!863 = !DILocalVariable(name: "priv", arg: 2, scope: !860, file: !3, line: 468, type: !33)
!864 = !DILocation(line: 468, column: 24, scope: !860)
!865 = !DILocation(line: 468, column: 36, scope: !860)
!866 = !DILocation(line: 339, column: 3, scope: !612, inlinedAt: !867)
!867 = distinct !DILocation(line: 470, column: 3, scope: !860)
!868 = !DILocation(line: 340, column: 3, scope: !612, inlinedAt: !867)
!869 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !870)
!870 = distinct !DILocation(line: 341, column: 8, scope: !612, inlinedAt: !867)
!871 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !870)
!872 = !DILocation(line: 341, column: 26, scope: !612, inlinedAt: !867)
!873 = !DILocation(line: 341, column: 6, scope: !612, inlinedAt: !867)
!874 = !DILocation(line: 339, column: 15, scope: !612, inlinedAt: !867)
!875 = !DILocation(line: 342, column: 3, scope: !612, inlinedAt: !867)
!876 = !DILocation(line: 340, column: 15, scope: !612, inlinedAt: !867)
!877 = !DILocation(line: 343, column: 3, scope: !612, inlinedAt: !867)
!878 = !DILocation(line: 346, column: 1, scope: !612, inlinedAt: !867)
!879 = !DILocation(line: 472, column: 3, scope: !860)
!880 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 476, type: !141, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!881 = !{!882, !883}
!882 = !DILocalVariable(name: "buf", arg: 1, scope: !880, file: !3, line: 476, type: !137)
!883 = !DILocalVariable(name: "priv", arg: 2, scope: !880, file: !3, line: 476, type: !33)
!884 = !DILocation(line: 476, column: 24, scope: !880)
!885 = !DILocation(line: 476, column: 36, scope: !880)
!886 = !DILocation(line: 478, column: 3, scope: !880)
!887 = !DILocation(line: 480, column: 3, scope: !880)
!888 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 484, type: !141, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!889 = !{!890, !891}
!890 = !DILocalVariable(name: "buf", arg: 1, scope: !888, file: !3, line: 484, type: !137)
!891 = !DILocalVariable(name: "priv", arg: 2, scope: !888, file: !3, line: 484, type: !33)
!892 = !DILocation(line: 484, column: 24, scope: !888)
!893 = !DILocation(line: 484, column: 36, scope: !888)
!894 = !DILocation(line: 396, column: 3, scope: !731, inlinedAt: !895)
!895 = distinct !DILocation(line: 486, column: 3, scope: !888)
!896 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !897)
!897 = distinct !DILocation(line: 397, column: 8, scope: !731, inlinedAt: !895)
!898 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !897)
!899 = !DILocation(line: 397, column: 26, scope: !731, inlinedAt: !895)
!900 = !DILocation(line: 397, column: 6, scope: !731, inlinedAt: !895)
!901 = !DILocation(line: 398, column: 3, scope: !731, inlinedAt: !895)
!902 = !DILocation(line: 396, column: 15, scope: !731, inlinedAt: !895)
!903 = !DILocation(line: 399, column: 3, scope: !731, inlinedAt: !895)
!904 = !DILocation(line: 401, column: 1, scope: !731, inlinedAt: !895)
!905 = !DILocation(line: 487, column: 3, scope: !888)
!906 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 491, type: !141, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!907 = !{!908, !909}
!908 = !DILocalVariable(name: "buf", arg: 1, scope: !906, file: !3, line: 491, type: !137)
!909 = !DILocalVariable(name: "priv", arg: 2, scope: !906, file: !3, line: 491, type: !33)
!910 = !DILocation(line: 491, column: 24, scope: !906)
!911 = !DILocation(line: 491, column: 36, scope: !906)
!912 = !DILocation(line: 405, column: 3, scope: !745, inlinedAt: !913)
!913 = distinct !DILocation(line: 493, column: 3, scope: !906)
!914 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !915)
!915 = distinct !DILocation(line: 406, column: 8, scope: !745, inlinedAt: !913)
!916 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !915)
!917 = !DILocation(line: 406, column: 26, scope: !745, inlinedAt: !913)
!918 = !DILocation(line: 406, column: 6, scope: !745, inlinedAt: !913)
!919 = !DILocation(line: 407, column: 3, scope: !745, inlinedAt: !913)
!920 = !DILocation(line: 405, column: 15, scope: !745, inlinedAt: !913)
!921 = !DILocation(line: 408, column: 3, scope: !745, inlinedAt: !913)
!922 = !DILocation(line: 410, column: 1, scope: !745, inlinedAt: !913)
!923 = !DILocation(line: 494, column: 3, scope: !906)
!924 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 498, type: !141, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!925 = !{!926, !927}
!926 = !DILocalVariable(name: "buf", arg: 1, scope: !924, file: !3, line: 498, type: !137)
!927 = !DILocalVariable(name: "priv", arg: 2, scope: !924, file: !3, line: 498, type: !33)
!928 = !DILocation(line: 498, column: 24, scope: !924)
!929 = !DILocation(line: 498, column: 36, scope: !924)
!930 = !DILocation(line: 414, column: 3, scope: !759, inlinedAt: !931)
!931 = distinct !DILocation(line: 500, column: 3, scope: !924)
!932 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !933)
!933 = distinct !DILocation(line: 415, column: 8, scope: !759, inlinedAt: !931)
!934 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !933)
!935 = !DILocation(line: 415, column: 26, scope: !759, inlinedAt: !931)
!936 = !DILocation(line: 415, column: 6, scope: !759, inlinedAt: !931)
!937 = !DILocation(line: 416, column: 3, scope: !759, inlinedAt: !931)
!938 = !DILocation(line: 414, column: 15, scope: !759, inlinedAt: !931)
!939 = !DILocation(line: 417, column: 3, scope: !759, inlinedAt: !931)
!940 = !DILocation(line: 419, column: 1, scope: !759, inlinedAt: !931)
!941 = !DILocation(line: 501, column: 3, scope: !924)
!942 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!943 = !{!944, !945}
!944 = !DILocalVariable(name: "buf", arg: 1, scope: !942, file: !3, line: 505, type: !137)
!945 = !DILocalVariable(name: "priv", arg: 2, scope: !942, file: !3, line: 505, type: !33)
!946 = !DILocation(line: 505, column: 24, scope: !942)
!947 = !DILocation(line: 505, column: 36, scope: !942)
!948 = !DILocation(line: 423, column: 3, scope: !773, inlinedAt: !949)
!949 = distinct !DILocation(line: 507, column: 3, scope: !942)
!950 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !951)
!951 = distinct !DILocation(line: 424, column: 8, scope: !773, inlinedAt: !949)
!952 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !951)
!953 = !DILocation(line: 424, column: 26, scope: !773, inlinedAt: !949)
!954 = !DILocation(line: 424, column: 6, scope: !773, inlinedAt: !949)
!955 = !DILocation(line: 425, column: 3, scope: !773, inlinedAt: !949)
!956 = !DILocation(line: 423, column: 15, scope: !773, inlinedAt: !949)
!957 = !DILocation(line: 426, column: 3, scope: !773, inlinedAt: !949)
!958 = !DILocation(line: 428, column: 1, scope: !773, inlinedAt: !949)
!959 = !DILocation(line: 508, column: 3, scope: !942)
!960 = distinct !DISubprogram(name: "handle_fibers9", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!961 = !{!962, !963}
!962 = !DILocalVariable(name: "buf", arg: 1, scope: !960, file: !3, line: 512, type: !137)
!963 = !DILocalVariable(name: "priv", arg: 2, scope: !960, file: !3, line: 512, type: !33)
!964 = !DILocation(line: 512, column: 24, scope: !960)
!965 = !DILocation(line: 512, column: 36, scope: !960)
!966 = !DILocation(line: 432, column: 3, scope: !787, inlinedAt: !967)
!967 = distinct !DILocation(line: 514, column: 3, scope: !960)
!968 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !969)
!969 = distinct !DILocation(line: 433, column: 8, scope: !787, inlinedAt: !967)
!970 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !969)
!971 = !DILocation(line: 433, column: 26, scope: !787, inlinedAt: !967)
!972 = !DILocation(line: 433, column: 6, scope: !787, inlinedAt: !967)
!973 = !DILocation(line: 434, column: 3, scope: !787, inlinedAt: !967)
!974 = !DILocation(line: 432, column: 15, scope: !787, inlinedAt: !967)
!975 = !DILocation(line: 435, column: 3, scope: !787, inlinedAt: !967)
!976 = !DILocation(line: 437, column: 1, scope: !787, inlinedAt: !967)
!977 = !DILocation(line: 515, column: 3, scope: !960)
!978 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 519, type: !141, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!979 = !{!980, !981}
!980 = !DILocalVariable(name: "buf", arg: 1, scope: !978, file: !3, line: 519, type: !137)
!981 = !DILocalVariable(name: "priv", arg: 2, scope: !978, file: !3, line: 519, type: !33)
!982 = !DILocation(line: 519, column: 25, scope: !978)
!983 = !DILocation(line: 519, column: 37, scope: !978)
!984 = !DILocation(line: 440, column: 3, scope: !801, inlinedAt: !985)
!985 = distinct !DILocation(line: 521, column: 3, scope: !978)
!986 = !DILocation(line: 441, column: 3, scope: !801, inlinedAt: !985)
!987 = !DILocation(line: 258, column: 26, scope: !619, inlinedAt: !988)
!988 = distinct !DILocation(line: 442, column: 8, scope: !801, inlinedAt: !985)
!989 = !DILocation(line: 258, column: 26, scope: !620, inlinedAt: !988)
!990 = !DILocation(line: 442, column: 26, scope: !801, inlinedAt: !985)
!991 = !DILocation(line: 442, column: 6, scope: !801, inlinedAt: !985)
!992 = !DILocation(line: 440, column: 15, scope: !801, inlinedAt: !985)
!993 = !DILocation(line: 444, column: 3, scope: !801, inlinedAt: !985)
!994 = !DILocation(line: 441, column: 15, scope: !801, inlinedAt: !985)
!995 = !DILocation(line: 445, column: 3, scope: !801, inlinedAt: !985)
!996 = !DILocation(line: 448, column: 1, scope: !801, inlinedAt: !985)
!997 = !DILocation(line: 522, column: 3, scope: !978)
