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
  br label %4, !dbg !217

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !211, metadata !DIExpression()), !dbg !216
  %6 = add nuw nsw i32 %5, 1, !dbg !218
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %5) #4, !dbg !220
  %8 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !221
  call void @llvm.dbg.value(metadata i32 %6, metadata !211, metadata !DIExpression()), !dbg !216
  %9 = icmp eq i32 %6, 10, !dbg !222
  br i1 %9, label %10, label %4, !dbg !217, !llvm.loop !223

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 10, metadata !211, metadata !DIExpression()), !dbg !216
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !225
  ret void, !dbg !226
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield(...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !227 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !229, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i8** undef, metadata !230, metadata !DIExpression()), !dbg !235
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !236
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !237
  call void @llvm.dbg.value(metadata i32 0, metadata !231, metadata !DIExpression()), !dbg !238
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  br label %6, !dbg !239

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !231, metadata !DIExpression()), !dbg !238
  %8 = add nuw nsw i32 %7, 1, !dbg !240
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %7) #4, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !242
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !232, metadata !DIExpression(DW_OP_deref)), !dbg !243
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !244
  %11 = call i32 (...) @nk_fiber_yield() #4, !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !246
  call void @llvm.dbg.value(metadata i32 %8, metadata !231, metadata !DIExpression()), !dbg !238
  %12 = icmp eq i32 %8, 3, !dbg !247
  br i1 %12, label %13, label %6, !dbg !239, !llvm.loop !248

; <label>:13:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i32 3, metadata !231, metadata !DIExpression()), !dbg !238
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !251 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !253, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i8** undef, metadata !254, metadata !DIExpression()), !dbg !257
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !258
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !259
  call void @llvm.dbg.value(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !260
  br label %4, !dbg !261

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !255, metadata !DIExpression()), !dbg !260
  %6 = add nuw nsw i32 %5, 1, !dbg !262
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %5) #4, !dbg !264
  %8 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !265
  call void @llvm.dbg.value(metadata i32 %6, metadata !255, metadata !DIExpression()), !dbg !260
  %9 = icmp eq i32 %6, 10, !dbg !266
  br i1 %9, label %10, label %4, !dbg !261, !llvm.loop !267

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 10, metadata !255, metadata !DIExpression()), !dbg !260
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #4, !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !271 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !273, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8** undef, metadata !274, metadata !DIExpression()), !dbg !279
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !280
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !281
  call void @llvm.dbg.value(metadata i32 0, metadata !275, metadata !DIExpression()), !dbg !282
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  br label %6, !dbg !283

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !275, metadata !DIExpression()), !dbg !282
  %8 = add nuw nsw i32 %7, 1, !dbg !284
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %7) #4, !dbg !285
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !286
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !276, metadata !DIExpression(DW_OP_deref)), !dbg !287
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !288
  %11 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !289
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !276, metadata !DIExpression()), !dbg !287
  %12 = call i32 @nk_fiber_join(%struct.nk_fiber* %11) #4, !dbg !290
  %13 = call i32 (...) @nk_fiber_yield() #4, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !292
  call void @llvm.dbg.value(metadata i32 %8, metadata !275, metadata !DIExpression()), !dbg !282
  %14 = icmp eq i32 %8, 3, !dbg !293
  br i1 %14, label %15, label %6, !dbg !283, !llvm.loop !294

; <label>:15:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i32 3, metadata !275, metadata !DIExpression()), !dbg !282
  %16 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #4, !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !297 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !299, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i8** undef, metadata !300, metadata !DIExpression()), !dbg !303
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !304
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !305
  call void @llvm.dbg.value(metadata i32 0, metadata !301, metadata !DIExpression()), !dbg !306
  br label %4, !dbg !307

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !301, metadata !DIExpression()), !dbg !306
  %6 = add nuw nsw i32 %5, 1, !dbg !308
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %5) #4, !dbg !310
  %8 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !311
  call void @llvm.dbg.value(metadata i32 %6, metadata !301, metadata !DIExpression()), !dbg !306
  %9 = icmp eq i32 %6, 10, !dbg !312
  br i1 %9, label %10, label %4, !dbg !307, !llvm.loop !313

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 10, metadata !301, metadata !DIExpression()), !dbg !306
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #4, !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !317 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !319, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i8** undef, metadata !320, metadata !DIExpression()), !dbg !324
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !325
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !326
  call void @llvm.dbg.value(metadata i32 0, metadata !321, metadata !DIExpression()), !dbg !327
  br label %5, !dbg !328

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !321, metadata !DIExpression()), !dbg !327
  %7 = add nuw nsw i32 %6, 1, !dbg !329
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %6) #4, !dbg !331
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !332
  call void @llvm.dbg.value(metadata i32 %7, metadata !321, metadata !DIExpression()), !dbg !327
  %10 = icmp eq i32 %7, 2, !dbg !333
  br i1 %10, label %11, label %5, !dbg !328, !llvm.loop !334

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 2, metadata !321, metadata !DIExpression()), !dbg !327
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #4, !dbg !336
  %13 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !337
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !322, metadata !DIExpression(DW_OP_deref)), !dbg !338
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !339
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !340
  ret void, !dbg !340
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !341 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !343, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8** undef, metadata !344, metadata !DIExpression()), !dbg !348
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !349
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !350
  call void @llvm.dbg.value(metadata i32 0, metadata !345, metadata !DIExpression()), !dbg !351
  br label %5, !dbg !352

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !345, metadata !DIExpression()), !dbg !351
  %7 = add nuw nsw i32 %6, 1, !dbg !353
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %6) #4, !dbg !355
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !356
  call void @llvm.dbg.value(metadata i32 %7, metadata !345, metadata !DIExpression()), !dbg !351
  %10 = icmp eq i32 %7, 5, !dbg !357
  br i1 %10, label %11, label %5, !dbg !352, !llvm.loop !358

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !345, metadata !DIExpression()), !dbg !351
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !360
  %13 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !361
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !361
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !346, metadata !DIExpression(DW_OP_deref)), !dbg !362
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !363
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !364
  ret void, !dbg !364
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !365 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !367, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8** undef, metadata !368, metadata !DIExpression()), !dbg !372
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !373
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !374
  call void @llvm.dbg.value(metadata i32 0, metadata !369, metadata !DIExpression()), !dbg !375
  br label %5, !dbg !376

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !369, metadata !DIExpression()), !dbg !375
  %7 = add nuw nsw i32 %6, 1, !dbg !377
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %6) #4, !dbg !379
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !380
  call void @llvm.dbg.value(metadata i32 %7, metadata !369, metadata !DIExpression()), !dbg !375
  %10 = icmp eq i32 %7, 10, !dbg !381
  br i1 %10, label %11, label %5, !dbg !376, !llvm.loop !382

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 10, metadata !369, metadata !DIExpression()), !dbg !375
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #4, !dbg !384
  %13 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !385
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5, !dbg !385
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !370, metadata !DIExpression(DW_OP_deref)), !dbg !386
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !387
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5, !dbg !388
  ret void, !dbg !388
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !389 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !391, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8** undef, metadata !392, metadata !DIExpression()), !dbg !396
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !397
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !398
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !399
  br label %6, !dbg !400

; <label>:4:                                      ; preds = %13
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !401
  ret void, !dbg !402

; <label>:6:                                      ; preds = %13, %2
  %7 = phi i32 [ 0, %2 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !393, metadata !DIExpression()), !dbg !399
  %8 = and i32 %7, 1, !dbg !403
  %9 = icmp eq i32 %8, 0, !dbg !403
  br i1 %9, label %10, label %13, !dbg !407

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %7) #4, !dbg !408
  %12 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !410
  br label %13, !dbg !411

; <label>:13:                                     ; preds = %6, %10
  %14 = add nuw nsw i32 %7, 1, !dbg !412
  call void @llvm.dbg.value(metadata i32 %14, metadata !393, metadata !DIExpression()), !dbg !399
  %15 = icmp eq i32 %14, 10, !dbg !413
  br i1 %15, label %4, label %6, !dbg !400, !llvm.loop !414
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !416 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !418, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i8** undef, metadata !419, metadata !DIExpression()), !dbg !423
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !424
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !425
  call void @llvm.dbg.value(metadata i32 0, metadata !420, metadata !DIExpression()), !dbg !426
  br label %6, !dbg !427

; <label>:4:                                      ; preds = %13
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #4, !dbg !428
  ret void, !dbg !429

; <label>:6:                                      ; preds = %13, %2
  %7 = phi i32 [ 0, %2 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !420, metadata !DIExpression()), !dbg !426
  %8 = and i32 %7, 1, !dbg !430
  %9 = icmp eq i32 %8, 0, !dbg !430
  br i1 %9, label %13, label %10, !dbg !434

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %7) #4, !dbg !435
  %12 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !437
  br label %13, !dbg !438

; <label>:13:                                     ; preds = %6, %10
  %14 = add nuw nsw i32 %7, 1, !dbg !439
  call void @llvm.dbg.value(metadata i32 %14, metadata !420, metadata !DIExpression()), !dbg !426
  %15 = icmp eq i32 %14, 10, !dbg !440
  br i1 %15, label %4, label %6, !dbg !427, !llvm.loop !441
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i8** undef, metadata !446, metadata !DIExpression()), !dbg !450
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !451
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !452
  call void @llvm.dbg.value(metadata i32 0, metadata !447, metadata !DIExpression()), !dbg !453
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !454
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !448, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 0, metadata !447, metadata !DIExpression()), !dbg !453
  br label %5, !dbg !456

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !447, metadata !DIExpression()), !dbg !453
  %7 = add nuw nsw i32 %6, 1, !dbg !457
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 %6, i8* %0) #4, !dbg !459
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !460
  call void @llvm.dbg.value(metadata i32 %7, metadata !447, metadata !DIExpression()), !dbg !453
  %10 = icmp eq i32 %7, 5, !dbg !461
  br i1 %10, label %11, label %5, !dbg !456, !llvm.loop !462

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !447, metadata !DIExpression()), !dbg !453
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #4, !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !466 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !468, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i8** undef, metadata !469, metadata !DIExpression()), !dbg !473
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !474
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !476
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !477
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !471, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !476
  br label %5, !dbg !479

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !470, metadata !DIExpression()), !dbg !476
  %7 = add nuw nsw i32 %6, 1, !dbg !480
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 %6, i8* %0) #4, !dbg !482
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !483
  call void @llvm.dbg.value(metadata i32 %7, metadata !470, metadata !DIExpression()), !dbg !476
  %10 = icmp eq i32 %7, 5, !dbg !484
  br i1 %10, label %11, label %5, !dbg !479, !llvm.loop !485

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !470, metadata !DIExpression()), !dbg !476
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #4, !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !489 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !491, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata i8** undef, metadata !492, metadata !DIExpression()), !dbg !496
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !497
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !498
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()), !dbg !499
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !500
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !494, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 0, metadata !493, metadata !DIExpression()), !dbg !499
  br label %5, !dbg !502

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !493, metadata !DIExpression()), !dbg !499
  %7 = add nuw nsw i32 %6, 1, !dbg !503
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 %6, i8* %0) #4, !dbg !505
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !506
  call void @llvm.dbg.value(metadata i32 %7, metadata !493, metadata !DIExpression()), !dbg !499
  %10 = icmp eq i32 %7, 5, !dbg !507
  br i1 %10, label %11, label %5, !dbg !502, !llvm.loop !508

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !493, metadata !DIExpression()), !dbg !499
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #4, !dbg !510
  ret void, !dbg !511
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !512 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !514, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i8** undef, metadata !515, metadata !DIExpression()), !dbg !519
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !520
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !521
  call void @llvm.dbg.value(metadata i32 0, metadata !516, metadata !DIExpression()), !dbg !522
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !523
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !517, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i32 0, metadata !516, metadata !DIExpression()), !dbg !522
  br label %5, !dbg !525

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !516, metadata !DIExpression()), !dbg !522
  %7 = add nuw nsw i32 %6, 1, !dbg !526
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 %6, i8* %0) #4, !dbg !528
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #4, !dbg !529
  call void @llvm.dbg.value(metadata i32 %7, metadata !516, metadata !DIExpression()), !dbg !522
  %10 = icmp eq i32 %7, 5, !dbg !530
  br i1 %10, label %11, label %5, !dbg !525, !llvm.loop !531

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !516, metadata !DIExpression()), !dbg !522
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !535 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !537, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8** undef, metadata !538, metadata !DIExpression()), !dbg !542
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !543
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !544
  call void @llvm.dbg.value(metadata i32 0, metadata !539, metadata !DIExpression()), !dbg !545
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !546
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !540, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32 0, metadata !539, metadata !DIExpression()), !dbg !545
  br label %5, !dbg !548

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !539, metadata !DIExpression()), !dbg !545
  %7 = add nuw nsw i32 %6, 1, !dbg !549
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 %6, %struct.nk_fiber* %4) #4, !dbg !551
  %9 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !552
  call void @llvm.dbg.value(metadata i32 %7, metadata !539, metadata !DIExpression()), !dbg !545
  %10 = icmp eq i32 %7, 5, !dbg !553
  br i1 %10, label %11, label %5, !dbg !548, !llvm.loop !554

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !539, metadata !DIExpression()), !dbg !545
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #4, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !558 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !560, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8** undef, metadata !561, metadata !DIExpression()), !dbg !566
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !567
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !568
  call void @llvm.dbg.value(metadata i32 0, metadata !562, metadata !DIExpression()), !dbg !569
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !570
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !563, metadata !DIExpression()), !dbg !571
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !572
  br i1 %5, label %8, label %6, !dbg !574

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #4, !dbg !575
  br label %8, !dbg !577

; <label>:8:                                      ; preds = %2, %6
  br label %9, !dbg !578

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i32 [ %11, %9 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !562, metadata !DIExpression()), !dbg !569
  %11 = add nuw nsw i32 %10, 1, !dbg !578
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 %10, %struct.nk_fiber* null) #4, !dbg !580
  %13 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !581
  call void @llvm.dbg.value(metadata i32 %11, metadata !562, metadata !DIExpression()), !dbg !569
  %14 = icmp eq i32 %11, 5, !dbg !582
  br i1 %14, label %15, label %9, !dbg !583, !llvm.loop !584

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i32 5, metadata !562, metadata !DIExpression()), !dbg !569
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #4, !dbg !586
  ret void, !dbg !587
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !588 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !590, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8** undef, metadata !591, metadata !DIExpression()), !dbg !593
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !594
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !595
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #4, !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !598 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !600, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i8** undef, metadata !601, metadata !DIExpression()), !dbg !610
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !611
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !612
  call void @llvm.dbg.value(metadata i32 0, metadata !602, metadata !DIExpression()), !dbg !613
  br label %5, !dbg !614

; <label>:5:                                      ; preds = %2, %12
  %6 = phi i32 [ 0, %2 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !613
  %7 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !615
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !603, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !604, metadata !DIExpression()), !dbg !617
  %8 = icmp eq %struct.nk_fiber* %7, null, !dbg !618
  br i1 %8, label %12, label %9, !dbg !619

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !613
  %10 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !620
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !620
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !606, metadata !DIExpression(DW_OP_deref)), !dbg !621
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #4, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !623
  br label %16

; <label>:12:                                     ; preds = %5
  %13 = add nuw nsw i32 %6, 1, !dbg !624
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 %6, %struct.nk_fiber* null) #4, !dbg !625
  call void @llvm.dbg.value(metadata i32 %13, metadata !602, metadata !DIExpression()), !dbg !613
  %15 = icmp ult i32 %13, 5, !dbg !626
  br i1 %15, label %5, label %16, !dbg !614

; <label>:16:                                     ; preds = %12, %9
  %17 = phi i32 [ %6, %9 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !602, metadata !DIExpression()), !dbg !613
  %18 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %17) #4, !dbg !627
  ret void, !dbg !628
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !629 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i8** undef, metadata !632, metadata !DIExpression()), !dbg !638
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !639
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !640
  call void @llvm.dbg.value(metadata i32 0, metadata !633, metadata !DIExpression()), !dbg !641
  br label %4, !dbg !642

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !633, metadata !DIExpression()), !dbg !641
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #4, !dbg !643
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !634, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !635, metadata !DIExpression()), !dbg !645
  %7 = add nuw nsw i32 %5, 1, !dbg !646
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 %5, %struct.nk_fiber* null) #4, !dbg !647
  call void @llvm.dbg.value(metadata i32 %7, metadata !633, metadata !DIExpression()), !dbg !641
  %9 = icmp eq i32 %7, 5, !dbg !648
  br i1 %9, label %10, label %4, !dbg !642, !llvm.loop !649

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 5, metadata !633, metadata !DIExpression()), !dbg !641
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #4, !dbg !651
  ret void, !dbg !652
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !653 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !655, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i8** undef, metadata !656, metadata !DIExpression()), !dbg !661
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !662
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !663
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i64 0, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 0, metadata !659, metadata !DIExpression()), !dbg !666
  br label %4, !dbg !667

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %19, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 %6, metadata !657, metadata !DIExpression()), !dbg !664
  %7 = icmp eq i32 %6, 2, !dbg !668
  br i1 %7, label %8, label %16, !dbg !671

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !672, !srcloc !682
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !672
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !672
  call void @llvm.dbg.value(metadata i32 %10, metadata !678, metadata !DIExpression()) #5, !dbg !683
  call void @llvm.dbg.value(metadata i32 %11, metadata !679, metadata !DIExpression()) #5, !dbg !684
  %12 = zext i32 %10 to i64, !dbg !685
  %13 = zext i32 %11 to i64, !dbg !686
  %14 = shl nuw i64 %13, 32, !dbg !687
  %15 = or i64 %14, %12, !dbg !688
  call void @llvm.dbg.value(metadata i64 %15, metadata !658, metadata !DIExpression()), !dbg !665
  br label %16, !dbg !689

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !690
  %18 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !691
  %19 = add nuw nsw i32 %6, 1, !dbg !692
  call void @llvm.dbg.value(metadata i64 %17, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 %19, metadata !657, metadata !DIExpression()), !dbg !664
  %20 = icmp eq i32 %19, 100000, !dbg !693
  br i1 %20, label %21, label %4, !dbg !667, !llvm.loop !694

; <label>:21:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 %17, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 %17, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 %17, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 100000, metadata !657, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i64 %17, metadata !658, metadata !DIExpression()), !dbg !665
  %22 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !696, !srcloc !682
  %23 = extractvalue { i32, i32 } %22, 0, !dbg !696
  %24 = extractvalue { i32, i32 } %22, 1, !dbg !696
  call void @llvm.dbg.value(metadata i32 %23, metadata !678, metadata !DIExpression()) #5, !dbg !698
  call void @llvm.dbg.value(metadata i32 %24, metadata !679, metadata !DIExpression()) #5, !dbg !699
  %25 = zext i32 %23 to i64, !dbg !700
  %26 = zext i32 %24 to i64, !dbg !701
  %27 = shl nuw i64 %26, 32, !dbg !702
  %28 = or i64 %27, %25, !dbg !703
  call void @llvm.dbg.value(metadata i64 %28, metadata !659, metadata !DIExpression()), !dbg !666
  %29 = sub i64 %28, %17, !dbg !704
  %30 = udiv i64 %29, 100000, !dbg !705
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %29, i64 %30) #4, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !708 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !710, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i8** undef, metadata !711, metadata !DIExpression()), !dbg !714
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !715
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #4, !dbg !716
  call void @llvm.dbg.value(metadata i32 0, metadata !712, metadata !DIExpression()), !dbg !717
  br label %4, !dbg !718

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !712, metadata !DIExpression()), !dbg !717
  %6 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !719
  %7 = add nuw nsw i32 %5, 1, !dbg !721
  call void @llvm.dbg.value(metadata i32 %7, metadata !712, metadata !DIExpression()), !dbg !717
  %8 = icmp eq i32 %7, 100000, !dbg !722
  br i1 %8, label %9, label %4, !dbg !718, !llvm.loop !723

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 100000, metadata !712, metadata !DIExpression()), !dbg !717
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #4, !dbg !725
  ret void, !dbg !726
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !727 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !733
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !734
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !735, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !735
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !746
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !747
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !747
  %8 = load i64, i64* %7, align 8, !dbg !747
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !748
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !731, metadata !DIExpression(DW_OP_deref)), !dbg !749
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !750
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !732, metadata !DIExpression(DW_OP_deref)), !dbg !751
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !753
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !753
  ret i32 0, !dbg !754
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !755 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !758
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !759, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !743, metadata !DIExpression()) #5, !dbg !759
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !742, metadata !DIExpression()) #5, !dbg !761
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !762
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !762
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !763
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !764
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !757, metadata !DIExpression(DW_OP_deref)), !dbg !765
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !766
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !767
  ret i32 0, !dbg !768
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !769 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !774
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !775
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !775
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !776
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !776
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !777, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !743, metadata !DIExpression()) #5, !dbg !777
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !742, metadata !DIExpression()) #5, !dbg !779
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !780
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !780
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !781
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #4, !dbg !782
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !783
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !784
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !772, metadata !DIExpression(DW_OP_deref)), !dbg !785
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !786
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !787
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !789
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !789
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !789
  ret i32 0, !dbg !790
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !791 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !797
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !797
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !798
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !798
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !799
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !800
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !800
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !801, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !743, metadata !DIExpression()) #5, !dbg !801
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !742, metadata !DIExpression()) #5, !dbg !803
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !804
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !804
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !805
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !806
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !796, metadata !DIExpression(DW_OP_deref)), !dbg !807
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #4, !dbg !808
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !793, metadata !DIExpression(DW_OP_deref)), !dbg !809
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #4, !dbg !810
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !811
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #4, !dbg !812
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !794, metadata !DIExpression(DW_OP_deref)), !dbg !813
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #4, !dbg !814
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !815
  %18 = load i64, i64* %17, align 8, !dbg !815
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !794, metadata !DIExpression(DW_OP_deref)), !dbg !813
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !816
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !793, metadata !DIExpression()), !dbg !809
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !817
  %21 = bitcast i8** %20 to i64*, !dbg !818
  store i64 %18, i64* %21, align 8, !dbg !818
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !819
  %23 = load i64, i64* %22, align 8, !dbg !819
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !811
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !820
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !794, metadata !DIExpression()), !dbg !813
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !821
  %26 = bitcast i8** %25 to i64*, !dbg !822
  store i64 %23, i64* %26, align 8, !dbg !822
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !823
  %28 = load i64, i64* %27, align 8, !dbg !823
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !796, metadata !DIExpression(DW_OP_deref)), !dbg !807
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !824
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !795, metadata !DIExpression()), !dbg !811
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !825
  %31 = bitcast i8** %30 to i64*, !dbg !826
  store i64 %28, i64* %31, align 8, !dbg !826
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !827
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !793, metadata !DIExpression(DW_OP_deref)), !dbg !809
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !828
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !796, metadata !DIExpression()), !dbg !807
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !829
  %35 = bitcast i8** %34 to i64*, !dbg !830
  store i64 %32, i64* %35, align 8, !dbg !830
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !796, metadata !DIExpression()), !dbg !807
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #4, !dbg !831
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !832
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !793, metadata !DIExpression()), !dbg !809
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #4, !dbg !833
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !834
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !795, metadata !DIExpression()), !dbg !811
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #4, !dbg !835
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !836
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !794, metadata !DIExpression()), !dbg !813
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #4, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !838
  ret i32 0, !dbg !839
}

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !840 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !843
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !843
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !844, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !743, metadata !DIExpression()) #5, !dbg !844
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !742, metadata !DIExpression()) #5, !dbg !846
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !847
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !847
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !848
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !849
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !842, metadata !DIExpression(DW_OP_deref)), !dbg !850
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !852
  ret i32 0, !dbg !853
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !854 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !857
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !857
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !858, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !743, metadata !DIExpression()) #5, !dbg !858
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !742, metadata !DIExpression()) #5, !dbg !860
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !861
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !861
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !862
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !863
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !856, metadata !DIExpression(DW_OP_deref)), !dbg !864
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !865
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !866
  ret i32 0, !dbg !867
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !868 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !871
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !871
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !872, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !743, metadata !DIExpression()) #5, !dbg !872
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !742, metadata !DIExpression()) #5, !dbg !874
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !875
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !875
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !876
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !877
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !870, metadata !DIExpression(DW_OP_deref)), !dbg !878
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !879
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !880
  ret i32 0, !dbg !881
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !882 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !885
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !885
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !886, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !743, metadata !DIExpression()) #5, !dbg !886
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !742, metadata !DIExpression()) #5, !dbg !888
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !889
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !889
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !890
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !891
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !884, metadata !DIExpression(DW_OP_deref)), !dbg !892
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !893
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !894
  ret i32 0, !dbg !895
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !896 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !899
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !900, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !743, metadata !DIExpression()) #5, !dbg !900
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !742, metadata !DIExpression()) #5, !dbg !902
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !903
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !903
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !904
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #4, !dbg !905
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !898, metadata !DIExpression(DW_OP_deref)), !dbg !906
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !908
  ret i32 0, !dbg !909
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !910 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !914
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !914
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !915
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !915
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !916, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !916
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !918
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !919
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !919
  %8 = load i64, i64* %7, align 8, !dbg !919
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !920
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !921
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !922
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !913, metadata !DIExpression(DW_OP_deref)), !dbg !923
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !924
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !925
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !925
  ret i32 0, !dbg !926
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !927 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !929, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i8* %1, metadata !930, metadata !DIExpression()), !dbg !932
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !933
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !933
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !935
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !935
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !936
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !937, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !743, metadata !DIExpression()) #5, !dbg !937
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !742, metadata !DIExpression()) #5, !dbg !939
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !940
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !940
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !941
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #4, !dbg !942
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !771, metadata !DIExpression(DW_OP_deref)) #5, !dbg !943
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !944
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !772, metadata !DIExpression(DW_OP_deref)) #5, !dbg !945
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !946
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !773, metadata !DIExpression(DW_OP_deref)) #5, !dbg !947
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #4, !dbg !948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !949
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !949
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !949
  ret i32 0, !dbg !950
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !951 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i8* %1, metadata !954, metadata !DIExpression()), !dbg !956
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !957
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !959, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !959
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !961
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !962
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !962
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !963
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !964
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !757, metadata !DIExpression(DW_OP_deref)) #5, !dbg !965
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !966
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !967
  ret i32 0, !dbg !968
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !969 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i8* %1, metadata !972, metadata !DIExpression()), !dbg !974
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !975
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !975
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !977
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !977
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !978, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !743, metadata !DIExpression()) #5, !dbg !978
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !742, metadata !DIExpression()) #5, !dbg !980
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !981
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !981
  %10 = load i64, i64* %9, align 8, !dbg !981
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !982
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !731, metadata !DIExpression(DW_OP_deref)) #5, !dbg !983
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !984
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !732, metadata !DIExpression(DW_OP_deref)) #5, !dbg !985
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !986
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !987
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !987
  ret i32 0, !dbg !988
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !989 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !991, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %1, metadata !992, metadata !DIExpression()), !dbg !994
  %3 = tail call i32 @test_yield_to() #6, !dbg !995
  ret i32 0, !dbg !996
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !997 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !999, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8* %1, metadata !1000, metadata !DIExpression()), !dbg !1002
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1003
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1005, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !1005
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !1007
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1008
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1008
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1009
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1010
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !842, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1011
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1012
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1013
  ret i32 0, !dbg !1014
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1015 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1017, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i8* %1, metadata !1018, metadata !DIExpression()), !dbg !1020
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1021
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1023, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !1025
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1026
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1026
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1027
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1028
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !856, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1029
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1030
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1031
  ret i32 0, !dbg !1032
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1033 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1035, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8* %1, metadata !1036, metadata !DIExpression()), !dbg !1038
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1039
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1039
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1041, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !1041
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !1043
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1044
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1044
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1045
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1046
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !870, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1047
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1048
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1049
  ret i32 0, !dbg !1050
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1051 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1053, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %1, metadata !1054, metadata !DIExpression()), !dbg !1056
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1057
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1059, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !1061
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1062
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1062
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1063
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1064
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !884, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1065
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1066
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1067
  ret i32 0, !dbg !1068
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1069 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1071, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i8* %1, metadata !1072, metadata !DIExpression()), !dbg !1074
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1075
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1077, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !743, metadata !DIExpression()) #5, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !742, metadata !DIExpression()) #5, !dbg !1079
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1080
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1080
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1081
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #4, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !898, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1083
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1084
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5, !dbg !1085
  ret i32 0, !dbg !1086
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1087 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1089, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %1, metadata !1090, metadata !DIExpression()), !dbg !1092
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1093
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1093
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1095
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1095
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !1096, !srcloc !745
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !743, metadata !DIExpression()) #5, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !742, metadata !DIExpression()) #5, !dbg !1098
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1099
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1099
  %10 = load i64, i64* %9, align 8, !dbg !1099
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1100
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !912, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1101
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !1102
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !913, metadata !DIExpression(DW_OP_deref)) #5, !dbg !1103
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #4, !dbg !1104
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !1105
  ret i32 0, !dbg !1106
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
!217 = !DILocation(line: 72, column: 3, scope: !207)
!218 = !DILocation(line: 73, column: 43, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !3, line: 72, column: 16)
!220 = !DILocation(line: 73, column: 5, scope: !219)
!221 = !DILocation(line: 74, column: 5, scope: !219)
!222 = !DILocation(line: 72, column: 11, scope: !207)
!223 = distinct !{!223, !217, !224}
!224 = !DILocation(line: 75, column: 3, scope: !207)
!225 = !DILocation(line: 76, column: 3, scope: !207)
!226 = !DILocation(line: 77, column: 1, scope: !207)
!227 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!228 = !{!229, !230, !231, !232}
!229 = !DILocalVariable(name: "i", arg: 1, scope: !227, file: !3, line: 79, type: !33)
!230 = !DILocalVariable(name: "o", arg: 2, scope: !227, file: !3, line: 79, type: !66)
!231 = !DILocalVariable(name: "a", scope: !227, file: !3, line: 82, type: !50)
!232 = !DILocalVariable(name: "f_inner", scope: !233, file: !3, line: 85, type: !24)
!233 = distinct !DILexicalBlock(scope: !227, file: !3, line: 83, column: 15)
!234 = !DILocation(line: 79, column: 24, scope: !227)
!235 = !DILocation(line: 79, column: 34, scope: !227)
!236 = !DILocation(line: 81, column: 19, scope: !227)
!237 = !DILocation(line: 81, column: 3, scope: !227)
!238 = !DILocation(line: 82, column: 7, scope: !227)
!239 = !DILocation(line: 83, column: 3, scope: !227)
!240 = !DILocation(line: 84, column: 43, scope: !233)
!241 = !DILocation(line: 84, column: 5, scope: !233)
!242 = !DILocation(line: 85, column: 5, scope: !233)
!243 = !DILocation(line: 85, column: 17, scope: !233)
!244 = !DILocation(line: 86, column: 5, scope: !233)
!245 = !DILocation(line: 87, column: 5, scope: !233)
!246 = !DILocation(line: 88, column: 3, scope: !227)
!247 = !DILocation(line: 83, column: 11, scope: !227)
!248 = distinct !{!248, !239, !246}
!249 = !DILocation(line: 89, column: 3, scope: !227)
!250 = !DILocation(line: 90, column: 1, scope: !227)
!251 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!252 = !{!253, !254, !255}
!253 = !DILocalVariable(name: "i", arg: 1, scope: !251, file: !3, line: 92, type: !33)
!254 = !DILocalVariable(name: "o", arg: 2, scope: !251, file: !3, line: 92, type: !66)
!255 = !DILocalVariable(name: "a", scope: !251, file: !3, line: 95, type: !50)
!256 = !DILocation(line: 92, column: 29, scope: !251)
!257 = !DILocation(line: 92, column: 39, scope: !251)
!258 = !DILocation(line: 94, column: 19, scope: !251)
!259 = !DILocation(line: 94, column: 3, scope: !251)
!260 = !DILocation(line: 95, column: 7, scope: !251)
!261 = !DILocation(line: 96, column: 3, scope: !251)
!262 = !DILocation(line: 97, column: 43, scope: !263)
!263 = distinct !DILexicalBlock(scope: !251, file: !3, line: 96, column: 16)
!264 = !DILocation(line: 97, column: 5, scope: !263)
!265 = !DILocation(line: 98, column: 5, scope: !263)
!266 = !DILocation(line: 96, column: 11, scope: !251)
!267 = distinct !{!267, !261, !268}
!268 = !DILocation(line: 99, column: 3, scope: !251)
!269 = !DILocation(line: 100, column: 3, scope: !251)
!270 = !DILocation(line: 101, column: 1, scope: !251)
!271 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!272 = !{!273, !274, !275, !276}
!273 = !DILocalVariable(name: "i", arg: 1, scope: !271, file: !3, line: 103, type: !33)
!274 = !DILocalVariable(name: "o", arg: 2, scope: !271, file: !3, line: 103, type: !66)
!275 = !DILocalVariable(name: "a", scope: !271, file: !3, line: 106, type: !50)
!276 = !DILocalVariable(name: "f_inner_join", scope: !277, file: !3, line: 109, type: !24)
!277 = distinct !DILexicalBlock(scope: !271, file: !3, line: 107, column: 15)
!278 = !DILocation(line: 103, column: 29, scope: !271)
!279 = !DILocation(line: 103, column: 39, scope: !271)
!280 = !DILocation(line: 105, column: 19, scope: !271)
!281 = !DILocation(line: 105, column: 3, scope: !271)
!282 = !DILocation(line: 106, column: 7, scope: !271)
!283 = !DILocation(line: 107, column: 3, scope: !271)
!284 = !DILocation(line: 108, column: 43, scope: !277)
!285 = !DILocation(line: 108, column: 5, scope: !277)
!286 = !DILocation(line: 109, column: 5, scope: !277)
!287 = !DILocation(line: 109, column: 17, scope: !277)
!288 = !DILocation(line: 110, column: 5, scope: !277)
!289 = !DILocation(line: 111, column: 19, scope: !277)
!290 = !DILocation(line: 111, column: 5, scope: !277)
!291 = !DILocation(line: 112, column: 5, scope: !277)
!292 = !DILocation(line: 113, column: 3, scope: !271)
!293 = !DILocation(line: 107, column: 11, scope: !271)
!294 = distinct !{!294, !283, !292}
!295 = !DILocation(line: 114, column: 3, scope: !271)
!296 = !DILocation(line: 115, column: 1, scope: !271)
!297 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "i", arg: 1, scope: !297, file: !3, line: 119, type: !33)
!300 = !DILocalVariable(name: "o", arg: 2, scope: !297, file: !3, line: 119, type: !66)
!301 = !DILocalVariable(name: "a", scope: !297, file: !3, line: 122, type: !50)
!302 = !DILocation(line: 119, column: 19, scope: !297)
!303 = !DILocation(line: 119, column: 29, scope: !297)
!304 = !DILocation(line: 121, column: 19, scope: !297)
!305 = !DILocation(line: 121, column: 3, scope: !297)
!306 = !DILocation(line: 122, column: 7, scope: !297)
!307 = !DILocation(line: 123, column: 3, scope: !297)
!308 = !DILocation(line: 124, column: 39, scope: !309)
!309 = distinct !DILexicalBlock(scope: !297, file: !3, line: 123, column: 16)
!310 = !DILocation(line: 124, column: 5, scope: !309)
!311 = !DILocation(line: 125, column: 5, scope: !309)
!312 = !DILocation(line: 123, column: 11, scope: !297)
!313 = distinct !{!313, !307, !314}
!314 = !DILocation(line: 126, column: 3, scope: !297)
!315 = !DILocation(line: 127, column: 3, scope: !297)
!316 = !DILocation(line: 128, column: 1, scope: !297)
!317 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!318 = !{!319, !320, !321, !322}
!319 = !DILocalVariable(name: "i", arg: 1, scope: !317, file: !3, line: 131, type: !33)
!320 = !DILocalVariable(name: "o", arg: 2, scope: !317, file: !3, line: 131, type: !66)
!321 = !DILocalVariable(name: "a", scope: !317, file: !3, line: 134, type: !50)
!322 = !DILocalVariable(name: "f4", scope: !317, file: !3, line: 140, type: !24)
!323 = !DILocation(line: 131, column: 19, scope: !317)
!324 = !DILocation(line: 131, column: 29, scope: !317)
!325 = !DILocation(line: 133, column: 19, scope: !317)
!326 = !DILocation(line: 133, column: 3, scope: !317)
!327 = !DILocation(line: 134, column: 7, scope: !317)
!328 = !DILocation(line: 135, column: 3, scope: !317)
!329 = !DILocation(line: 136, column: 39, scope: !330)
!330 = distinct !DILexicalBlock(scope: !317, file: !3, line: 135, column: 15)
!331 = !DILocation(line: 136, column: 5, scope: !330)
!332 = !DILocation(line: 137, column: 5, scope: !330)
!333 = !DILocation(line: 135, column: 11, scope: !317)
!334 = distinct !{!334, !328, !335}
!335 = !DILocation(line: 138, column: 3, scope: !317)
!336 = !DILocation(line: 139, column: 3, scope: !317)
!337 = !DILocation(line: 140, column: 3, scope: !317)
!338 = !DILocation(line: 140, column: 15, scope: !317)
!339 = !DILocation(line: 141, column: 3, scope: !317)
!340 = !DILocation(line: 142, column: 1, scope: !317)
!341 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!342 = !{!343, !344, !345, !346}
!343 = !DILocalVariable(name: "i", arg: 1, scope: !341, file: !3, line: 144, type: !33)
!344 = !DILocalVariable(name: "o", arg: 2, scope: !341, file: !3, line: 144, type: !66)
!345 = !DILocalVariable(name: "a", scope: !341, file: !3, line: 147, type: !50)
!346 = !DILocalVariable(name: "f3", scope: !341, file: !3, line: 154, type: !24)
!347 = !DILocation(line: 144, column: 19, scope: !341)
!348 = !DILocation(line: 144, column: 29, scope: !341)
!349 = !DILocation(line: 146, column: 19, scope: !341)
!350 = !DILocation(line: 146, column: 3, scope: !341)
!351 = !DILocation(line: 147, column: 7, scope: !341)
!352 = !DILocation(line: 148, column: 3, scope: !341)
!353 = !DILocation(line: 149, column: 39, scope: !354)
!354 = distinct !DILexicalBlock(scope: !341, file: !3, line: 148, column: 15)
!355 = !DILocation(line: 149, column: 5, scope: !354)
!356 = !DILocation(line: 151, column: 5, scope: !354)
!357 = !DILocation(line: 148, column: 11, scope: !341)
!358 = distinct !{!358, !352, !359}
!359 = !DILocation(line: 152, column: 3, scope: !341)
!360 = !DILocation(line: 153, column: 3, scope: !341)
!361 = !DILocation(line: 154, column: 3, scope: !341)
!362 = !DILocation(line: 154, column: 15, scope: !341)
!363 = !DILocation(line: 155, column: 3, scope: !341)
!364 = !DILocation(line: 156, column: 1, scope: !341)
!365 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !366)
!366 = !{!367, !368, !369, !370}
!367 = !DILocalVariable(name: "i", arg: 1, scope: !365, file: !3, line: 159, type: !33)
!368 = !DILocalVariable(name: "o", arg: 2, scope: !365, file: !3, line: 159, type: !66)
!369 = !DILocalVariable(name: "a", scope: !365, file: !3, line: 162, type: !50)
!370 = !DILocalVariable(name: "f4", scope: !365, file: !3, line: 168, type: !24)
!371 = !DILocation(line: 159, column: 19, scope: !365)
!372 = !DILocation(line: 159, column: 29, scope: !365)
!373 = !DILocation(line: 161, column: 19, scope: !365)
!374 = !DILocation(line: 161, column: 3, scope: !365)
!375 = !DILocation(line: 162, column: 7, scope: !365)
!376 = !DILocation(line: 163, column: 3, scope: !365)
!377 = !DILocation(line: 164, column: 39, scope: !378)
!378 = distinct !DILexicalBlock(scope: !365, file: !3, line: 163, column: 16)
!379 = !DILocation(line: 164, column: 5, scope: !378)
!380 = !DILocation(line: 165, column: 5, scope: !378)
!381 = !DILocation(line: 163, column: 11, scope: !365)
!382 = distinct !{!382, !376, !383}
!383 = !DILocation(line: 166, column: 3, scope: !365)
!384 = !DILocation(line: 167, column: 3, scope: !365)
!385 = !DILocation(line: 168, column: 3, scope: !365)
!386 = !DILocation(line: 168, column: 15, scope: !365)
!387 = !DILocation(line: 169, column: 3, scope: !365)
!388 = !DILocation(line: 170, column: 1, scope: !365)
!389 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!390 = !{!391, !392, !393}
!391 = !DILocalVariable(name: "i", arg: 1, scope: !389, file: !3, line: 172, type: !33)
!392 = !DILocalVariable(name: "o", arg: 2, scope: !389, file: !3, line: 172, type: !66)
!393 = !DILocalVariable(name: "i", scope: !394, file: !3, line: 174, type: !50)
!394 = distinct !DILexicalBlock(scope: !389, file: !3, line: 174, column: 3)
!395 = !DILocation(line: 172, column: 23, scope: !389)
!396 = !DILocation(line: 172, column: 33, scope: !389)
!397 = !DILocation(line: 173, column: 19, scope: !389)
!398 = !DILocation(line: 173, column: 3, scope: !389)
!399 = !DILocation(line: 174, column: 12, scope: !394)
!400 = !DILocation(line: 174, column: 3, scope: !394)
!401 = !DILocation(line: 180, column: 3, scope: !389)
!402 = !DILocation(line: 182, column: 3, scope: !389)
!403 = !DILocation(line: 175, column: 17, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 175, column: 9)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 174, column: 31)
!406 = distinct !DILexicalBlock(scope: !394, file: !3, line: 174, column: 3)
!407 = !DILocation(line: 175, column: 9, scope: !405)
!408 = !DILocation(line: 176, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 175, column: 22)
!410 = !DILocation(line: 177, column: 7, scope: !409)
!411 = !DILocation(line: 178, column: 5, scope: !409)
!412 = !DILocation(line: 174, column: 27, scope: !406)
!413 = !DILocation(line: 174, column: 21, scope: !406)
!414 = distinct !{!414, !400, !415}
!415 = !DILocation(line: 179, column: 3, scope: !394)
!416 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!417 = !{!418, !419, !420}
!418 = !DILocalVariable(name: "i", arg: 1, scope: !416, file: !3, line: 185, type: !33)
!419 = !DILocalVariable(name: "o", arg: 2, scope: !416, file: !3, line: 185, type: !66)
!420 = !DILocalVariable(name: "i", scope: !421, file: !3, line: 187, type: !50)
!421 = distinct !DILexicalBlock(scope: !416, file: !3, line: 187, column: 3)
!422 = !DILocation(line: 185, column: 22, scope: !416)
!423 = !DILocation(line: 185, column: 32, scope: !416)
!424 = !DILocation(line: 186, column: 19, scope: !416)
!425 = !DILocation(line: 186, column: 3, scope: !416)
!426 = !DILocation(line: 187, column: 12, scope: !421)
!427 = !DILocation(line: 187, column: 3, scope: !421)
!428 = !DILocation(line: 193, column: 3, scope: !416)
!429 = !DILocation(line: 195, column: 3, scope: !416)
!430 = !DILocation(line: 188, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 188, column: 9)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 187, column: 31)
!433 = distinct !DILexicalBlock(scope: !421, file: !3, line: 187, column: 3)
!434 = !DILocation(line: 188, column: 9, scope: !432)
!435 = !DILocation(line: 189, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !3, line: 188, column: 22)
!437 = !DILocation(line: 190, column: 7, scope: !436)
!438 = !DILocation(line: 191, column: 5, scope: !436)
!439 = !DILocation(line: 187, column: 27, scope: !433)
!440 = !DILocation(line: 187, column: 21, scope: !433)
!441 = distinct !{!441, !427, !442}
!442 = !DILocation(line: 192, column: 3, scope: !421)
!443 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DILocalVariable(name: "i", arg: 1, scope: !443, file: !3, line: 198, type: !33)
!446 = !DILocalVariable(name: "o", arg: 2, scope: !443, file: !3, line: 198, type: !66)
!447 = !DILocalVariable(name: "a", scope: !443, file: !3, line: 201, type: !50)
!448 = !DILocalVariable(name: "f_to", scope: !443, file: !3, line: 202, type: !24)
!449 = !DILocation(line: 198, column: 24, scope: !443)
!450 = !DILocation(line: 198, column: 34, scope: !443)
!451 = !DILocation(line: 200, column: 19, scope: !443)
!452 = !DILocation(line: 200, column: 3, scope: !443)
!453 = !DILocation(line: 201, column: 7, scope: !443)
!454 = !DILocation(line: 202, column: 22, scope: !443)
!455 = !DILocation(line: 202, column: 15, scope: !443)
!456 = !DILocation(line: 203, column: 3, scope: !443)
!457 = !DILocation(line: 204, column: 81, scope: !458)
!458 = distinct !DILexicalBlock(scope: !443, file: !3, line: 203, column: 15)
!459 = !DILocation(line: 204, column: 5, scope: !458)
!460 = !DILocation(line: 205, column: 5, scope: !458)
!461 = !DILocation(line: 203, column: 11, scope: !443)
!462 = distinct !{!462, !456, !463}
!463 = !DILocation(line: 206, column: 3, scope: !443)
!464 = !DILocation(line: 207, column: 3, scope: !443)
!465 = !DILocation(line: 208, column: 1, scope: !443)
!466 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!467 = !{!468, !469, !470, !471}
!468 = !DILocalVariable(name: "i", arg: 1, scope: !466, file: !3, line: 211, type: !33)
!469 = !DILocalVariable(name: "o", arg: 2, scope: !466, file: !3, line: 211, type: !66)
!470 = !DILocalVariable(name: "a", scope: !466, file: !3, line: 214, type: !50)
!471 = !DILocalVariable(name: "f_to", scope: !466, file: !3, line: 215, type: !24)
!472 = !DILocation(line: 211, column: 25, scope: !466)
!473 = !DILocation(line: 211, column: 35, scope: !466)
!474 = !DILocation(line: 213, column: 19, scope: !466)
!475 = !DILocation(line: 213, column: 3, scope: !466)
!476 = !DILocation(line: 214, column: 7, scope: !466)
!477 = !DILocation(line: 215, column: 22, scope: !466)
!478 = !DILocation(line: 215, column: 15, scope: !466)
!479 = !DILocation(line: 216, column: 3, scope: !466)
!480 = !DILocation(line: 217, column: 81, scope: !481)
!481 = distinct !DILexicalBlock(scope: !466, file: !3, line: 216, column: 15)
!482 = !DILocation(line: 217, column: 5, scope: !481)
!483 = !DILocation(line: 218, column: 5, scope: !481)
!484 = !DILocation(line: 216, column: 11, scope: !466)
!485 = distinct !{!485, !479, !486}
!486 = !DILocation(line: 219, column: 3, scope: !466)
!487 = !DILocation(line: 220, column: 3, scope: !466)
!488 = !DILocation(line: 221, column: 1, scope: !466)
!489 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!490 = !{!491, !492, !493, !494}
!491 = !DILocalVariable(name: "i", arg: 1, scope: !489, file: !3, line: 223, type: !33)
!492 = !DILocalVariable(name: "o", arg: 2, scope: !489, file: !3, line: 223, type: !66)
!493 = !DILocalVariable(name: "a", scope: !489, file: !3, line: 226, type: !50)
!494 = !DILocalVariable(name: "f_to", scope: !489, file: !3, line: 228, type: !24)
!495 = !DILocation(line: 223, column: 24, scope: !489)
!496 = !DILocation(line: 223, column: 34, scope: !489)
!497 = !DILocation(line: 225, column: 19, scope: !489)
!498 = !DILocation(line: 225, column: 3, scope: !489)
!499 = !DILocation(line: 226, column: 7, scope: !489)
!500 = !DILocation(line: 228, column: 22, scope: !489)
!501 = !DILocation(line: 228, column: 15, scope: !489)
!502 = !DILocation(line: 229, column: 3, scope: !489)
!503 = !DILocation(line: 230, column: 81, scope: !504)
!504 = distinct !DILexicalBlock(scope: !489, file: !3, line: 229, column: 15)
!505 = !DILocation(line: 230, column: 5, scope: !504)
!506 = !DILocation(line: 231, column: 5, scope: !504)
!507 = !DILocation(line: 229, column: 11, scope: !489)
!508 = distinct !{!508, !502, !509}
!509 = !DILocation(line: 232, column: 3, scope: !489)
!510 = !DILocation(line: 233, column: 3, scope: !489)
!511 = !DILocation(line: 234, column: 1, scope: !489)
!512 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!513 = !{!514, !515, !516, !517}
!514 = !DILocalVariable(name: "i", arg: 1, scope: !512, file: !3, line: 236, type: !33)
!515 = !DILocalVariable(name: "o", arg: 2, scope: !512, file: !3, line: 236, type: !66)
!516 = !DILocalVariable(name: "a", scope: !512, file: !3, line: 239, type: !50)
!517 = !DILocalVariable(name: "f_to", scope: !512, file: !3, line: 241, type: !24)
!518 = !DILocation(line: 236, column: 25, scope: !512)
!519 = !DILocation(line: 236, column: 35, scope: !512)
!520 = !DILocation(line: 238, column: 19, scope: !512)
!521 = !DILocation(line: 238, column: 3, scope: !512)
!522 = !DILocation(line: 239, column: 7, scope: !512)
!523 = !DILocation(line: 241, column: 22, scope: !512)
!524 = !DILocation(line: 241, column: 15, scope: !512)
!525 = !DILocation(line: 242, column: 3, scope: !512)
!526 = !DILocation(line: 243, column: 81, scope: !527)
!527 = distinct !DILexicalBlock(scope: !512, file: !3, line: 242, column: 15)
!528 = !DILocation(line: 243, column: 5, scope: !527)
!529 = !DILocation(line: 244, column: 5, scope: !527)
!530 = !DILocation(line: 242, column: 11, scope: !512)
!531 = distinct !{!531, !525, !532}
!532 = !DILocation(line: 245, column: 3, scope: !512)
!533 = !DILocation(line: 246, column: 3, scope: !512)
!534 = !DILocation(line: 247, column: 1, scope: !512)
!535 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!536 = !{!537, !538, !539, !540}
!537 = !DILocalVariable(name: "i", arg: 1, scope: !535, file: !3, line: 249, type: !33)
!538 = !DILocalVariable(name: "o", arg: 2, scope: !535, file: !3, line: 249, type: !66)
!539 = !DILocalVariable(name: "a", scope: !535, file: !3, line: 252, type: !50)
!540 = !DILocalVariable(name: "f_new", scope: !535, file: !3, line: 253, type: !24)
!541 = !DILocation(line: 249, column: 23, scope: !535)
!542 = !DILocation(line: 249, column: 33, scope: !535)
!543 = !DILocation(line: 251, column: 19, scope: !535)
!544 = !DILocation(line: 251, column: 3, scope: !535)
!545 = !DILocation(line: 252, column: 7, scope: !535)
!546 = !DILocation(line: 254, column: 11, scope: !535)
!547 = !DILocation(line: 253, column: 15, scope: !535)
!548 = !DILocation(line: 255, column: 3, scope: !535)
!549 = !DILocation(line: 257, column: 102, scope: !550)
!550 = distinct !DILexicalBlock(scope: !535, file: !3, line: 255, column: 15)
!551 = !DILocation(line: 257, column: 5, scope: !550)
!552 = !DILocation(line: 258, column: 5, scope: !550)
!553 = !DILocation(line: 255, column: 11, scope: !535)
!554 = distinct !{!554, !548, !555}
!555 = !DILocation(line: 259, column: 3, scope: !535)
!556 = !DILocation(line: 260, column: 3, scope: !535)
!557 = !DILocation(line: 261, column: 1, scope: !535)
!558 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!559 = !{!560, !561, !562, !563, !564}
!560 = !DILocalVariable(name: "i", arg: 1, scope: !558, file: !3, line: 263, type: !33)
!561 = !DILocalVariable(name: "o", arg: 2, scope: !558, file: !3, line: 263, type: !66)
!562 = !DILocalVariable(name: "a", scope: !558, file: !3, line: 266, type: !50)
!563 = !DILocalVariable(name: "f_new", scope: !558, file: !3, line: 267, type: !24)
!564 = !DILocalVariable(name: "f_curr", scope: !558, file: !3, line: 274, type: !24)
!565 = !DILocation(line: 263, column: 28, scope: !558)
!566 = !DILocation(line: 263, column: 38, scope: !558)
!567 = !DILocation(line: 265, column: 19, scope: !558)
!568 = !DILocation(line: 265, column: 3, scope: !558)
!569 = !DILocation(line: 266, column: 7, scope: !558)
!570 = !DILocation(line: 268, column: 11, scope: !558)
!571 = !DILocation(line: 267, column: 15, scope: !558)
!572 = !DILocation(line: 269, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !558, file: !3, line: 269, column: 6)
!574 = !DILocation(line: 269, column: 6, scope: !558)
!575 = !DILocation(line: 270, column: 5, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 269, column: 12)
!577 = !DILocation(line: 271, column: 3, scope: !576)
!578 = !DILocation(line: 276, column: 81, scope: !579)
!579 = distinct !DILexicalBlock(scope: !558, file: !3, line: 275, column: 15)
!580 = !DILocation(line: 276, column: 5, scope: !579)
!581 = !DILocation(line: 277, column: 5, scope: !579)
!582 = !DILocation(line: 275, column: 11, scope: !558)
!583 = !DILocation(line: 275, column: 3, scope: !558)
!584 = distinct !{!584, !583, !585}
!585 = !DILocation(line: 278, column: 3, scope: !558)
!586 = !DILocation(line: 279, column: 3, scope: !558)
!587 = !DILocation(line: 280, column: 1, scope: !558)
!588 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !589)
!589 = !{!590, !591}
!590 = !DILocalVariable(name: "i", arg: 1, scope: !588, file: !3, line: 282, type: !33)
!591 = !DILocalVariable(name: "o", arg: 2, scope: !588, file: !3, line: 282, type: !66)
!592 = !DILocation(line: 282, column: 27, scope: !588)
!593 = !DILocation(line: 282, column: 37, scope: !588)
!594 = !DILocation(line: 284, column: 19, scope: !588)
!595 = !DILocation(line: 284, column: 3, scope: !588)
!596 = !DILocation(line: 286, column: 3, scope: !588)
!597 = !DILocation(line: 287, column: 1, scope: !588)
!598 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!599 = !{!600, !601, !602, !603, !604, !606}
!600 = !DILocalVariable(name: "i", arg: 1, scope: !598, file: !3, line: 290, type: !33)
!601 = !DILocalVariable(name: "o", arg: 2, scope: !598, file: !3, line: 290, type: !66)
!602 = !DILocalVariable(name: "a", scope: !598, file: !3, line: 293, type: !50)
!603 = !DILocalVariable(name: "f_new", scope: !598, file: !3, line: 294, type: !24)
!604 = !DILocalVariable(name: "curr", scope: !605, file: !3, line: 298, type: !24)
!605 = distinct !DILexicalBlock(scope: !598, file: !3, line: 295, column: 15)
!606 = !DILocalVariable(name: "new", scope: !607, file: !3, line: 300, type: !24)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 299, column: 14)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 299, column: 8)
!609 = !DILocation(line: 290, column: 27, scope: !598)
!610 = !DILocation(line: 290, column: 37, scope: !598)
!611 = !DILocation(line: 292, column: 19, scope: !598)
!612 = !DILocation(line: 292, column: 3, scope: !598)
!613 = !DILocation(line: 293, column: 7, scope: !598)
!614 = !DILocation(line: 295, column: 3, scope: !598)
!615 = !DILocation(line: 296, column: 13, scope: !605)
!616 = !DILocation(line: 294, column: 15, scope: !598)
!617 = !DILocation(line: 298, column: 17, scope: !605)
!618 = !DILocation(line: 299, column: 8, scope: !608)
!619 = !DILocation(line: 299, column: 8, scope: !605)
!620 = !DILocation(line: 300, column: 7, scope: !607)
!621 = !DILocation(line: 300, column: 19, scope: !607)
!622 = !DILocation(line: 301, column: 7, scope: !607)
!623 = !DILocation(line: 303, column: 5, scope: !608)
!624 = !DILocation(line: 304, column: 80, scope: !605)
!625 = !DILocation(line: 304, column: 5, scope: !605)
!626 = !DILocation(line: 295, column: 11, scope: !598)
!627 = !DILocation(line: 307, column: 3, scope: !598)
!628 = !DILocation(line: 308, column: 1, scope: !598)
!629 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !630)
!630 = !{!631, !632, !633, !634, !635}
!631 = !DILocalVariable(name: "i", arg: 1, scope: !629, file: !3, line: 310, type: !33)
!632 = !DILocalVariable(name: "o", arg: 2, scope: !629, file: !3, line: 310, type: !66)
!633 = !DILocalVariable(name: "a", scope: !629, file: !3, line: 313, type: !50)
!634 = !DILocalVariable(name: "f_new", scope: !629, file: !3, line: 314, type: !24)
!635 = !DILocalVariable(name: "curr", scope: !636, file: !3, line: 318, type: !24)
!636 = distinct !DILexicalBlock(scope: !629, file: !3, line: 315, column: 15)
!637 = !DILocation(line: 310, column: 27, scope: !629)
!638 = !DILocation(line: 310, column: 37, scope: !629)
!639 = !DILocation(line: 312, column: 19, scope: !629)
!640 = !DILocation(line: 312, column: 3, scope: !629)
!641 = !DILocation(line: 313, column: 7, scope: !629)
!642 = !DILocation(line: 315, column: 3, scope: !629)
!643 = !DILocation(line: 316, column: 13, scope: !636)
!644 = !DILocation(line: 314, column: 15, scope: !629)
!645 = !DILocation(line: 318, column: 17, scope: !636)
!646 = !DILocation(line: 319, column: 80, scope: !636)
!647 = !DILocation(line: 319, column: 5, scope: !636)
!648 = !DILocation(line: 315, column: 11, scope: !629)
!649 = distinct !{!649, !642, !650}
!650 = !DILocation(line: 320, column: 3, scope: !629)
!651 = !DILocation(line: 322, column: 3, scope: !629)
!652 = !DILocation(line: 323, column: 1, scope: !629)
!653 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!654 = !{!655, !656, !657, !658, !659}
!655 = !DILocalVariable(name: "i", arg: 1, scope: !653, file: !3, line: 326, type: !33)
!656 = !DILocalVariable(name: "o", arg: 2, scope: !653, file: !3, line: 326, type: !66)
!657 = !DILocalVariable(name: "a", scope: !653, file: !3, line: 329, type: !50)
!658 = !DILocalVariable(name: "start", scope: !653, file: !3, line: 330, type: !29)
!659 = !DILocalVariable(name: "end", scope: !653, file: !3, line: 331, type: !29)
!660 = !DILocation(line: 326, column: 24, scope: !653)
!661 = !DILocation(line: 326, column: 34, scope: !653)
!662 = !DILocation(line: 328, column: 19, scope: !653)
!663 = !DILocation(line: 328, column: 3, scope: !653)
!664 = !DILocation(line: 329, column: 7, scope: !653)
!665 = !DILocation(line: 330, column: 12, scope: !653)
!666 = !DILocation(line: 331, column: 12, scope: !653)
!667 = !DILocation(line: 332, column: 3, scope: !653)
!668 = !DILocation(line: 333, column: 11, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 333, column: 9)
!670 = distinct !DILexicalBlock(scope: !653, file: !3, line: 332, column: 15)
!671 = !DILocation(line: 333, column: 9, scope: !670)
!672 = !DILocation(line: 268, column: 5, scope: !673, inlinedAt: !680)
!673 = distinct !DISubprogram(name: "rdtsc", scope: !674, file: !674, line: 265, type: !675, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!674 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!675 = !DISubroutineType(types: !676)
!676 = !{!29}
!677 = !{!678, !679}
!678 = !DILocalVariable(name: "lo", scope: !673, file: !674, line: 267, type: !43)
!679 = !DILocalVariable(name: "hi", scope: !673, file: !674, line: 267, type: !43)
!680 = distinct !DILocation(line: 334, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !669, file: !3, line: 333, column: 17)
!682 = !{i32 97027}
!683 = !DILocation(line: 267, column: 14, scope: !673, inlinedAt: !680)
!684 = !DILocation(line: 267, column: 18, scope: !673, inlinedAt: !680)
!685 = !DILocation(line: 269, column: 12, scope: !673, inlinedAt: !680)
!686 = !DILocation(line: 269, column: 18, scope: !673, inlinedAt: !680)
!687 = !DILocation(line: 269, column: 33, scope: !673, inlinedAt: !680)
!688 = !DILocation(line: 269, column: 15, scope: !673, inlinedAt: !680)
!689 = !DILocation(line: 335, column: 5, scope: !681)
!690 = !DILocation(line: 0, scope: !653)
!691 = !DILocation(line: 336, column: 5, scope: !670)
!692 = !DILocation(line: 337, column: 6, scope: !670)
!693 = !DILocation(line: 332, column: 11, scope: !653)
!694 = distinct !{!694, !667, !695}
!695 = !DILocation(line: 338, column: 3, scope: !653)
!696 = !DILocation(line: 268, column: 5, scope: !673, inlinedAt: !697)
!697 = distinct !DILocation(line: 339, column: 9, scope: !653)
!698 = !DILocation(line: 267, column: 14, scope: !673, inlinedAt: !697)
!699 = !DILocation(line: 267, column: 18, scope: !673, inlinedAt: !697)
!700 = !DILocation(line: 269, column: 12, scope: !673, inlinedAt: !697)
!701 = !DILocation(line: 269, column: 18, scope: !673, inlinedAt: !697)
!702 = !DILocation(line: 269, column: 33, scope: !673, inlinedAt: !697)
!703 = !DILocation(line: 269, column: 15, scope: !673, inlinedAt: !697)
!704 = !DILocation(line: 340, column: 104, scope: !653)
!705 = !DILocation(line: 340, column: 123, scope: !653)
!706 = !DILocation(line: 340, column: 3, scope: !653)
!707 = !DILocation(line: 341, column: 1, scope: !653)
!708 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!709 = !{!710, !711, !712}
!710 = !DILocalVariable(name: "i", arg: 1, scope: !708, file: !3, line: 343, type: !33)
!711 = !DILocalVariable(name: "o", arg: 2, scope: !708, file: !3, line: 343, type: !66)
!712 = !DILocalVariable(name: "a", scope: !708, file: !3, line: 346, type: !50)
!713 = !DILocation(line: 343, column: 25, scope: !708)
!714 = !DILocation(line: 343, column: 35, scope: !708)
!715 = !DILocation(line: 345, column: 19, scope: !708)
!716 = !DILocation(line: 345, column: 3, scope: !708)
!717 = !DILocation(line: 346, column: 7, scope: !708)
!718 = !DILocation(line: 347, column: 3, scope: !708)
!719 = !DILocation(line: 348, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !708, file: !3, line: 347, column: 15)
!721 = !DILocation(line: 349, column: 6, scope: !720)
!722 = !DILocation(line: 347, column: 11, scope: !708)
!723 = distinct !{!723, !718, !724}
!724 = !DILocation(line: 350, column: 3, scope: !708)
!725 = !DILocation(line: 351, column: 3, scope: !708)
!726 = !DILocation(line: 352, column: 1, scope: !708)
!727 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 357, type: !728, scopeLine: 357, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!50}
!730 = !{!731, !732}
!731 = !DILocalVariable(name: "even", scope: !727, file: !3, line: 358, type: !24)
!732 = !DILocalVariable(name: "odd", scope: !727, file: !3, line: 359, type: !24)
!733 = !DILocation(line: 358, column: 3, scope: !727)
!734 = !DILocation(line: 359, column: 3, scope: !727)
!735 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !744)
!736 = distinct !DILexicalBlock(scope: !737, file: !16, line: 258, column: 26)
!737 = distinct !DILexicalBlock(scope: !738, file: !16, line: 258, column: 26)
!738 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !739, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!72}
!741 = !{!742, !743}
!742 = !DILocalVariable(name: "__r", scope: !737, file: !16, line: 258, type: !86)
!743 = !DILocalVariable(name: "__r", scope: !736, file: !16, line: 258, type: !86)
!744 = distinct !DILocation(line: 360, column: 8, scope: !727)
!745 = !{i32 -2147275531}
!746 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !744)
!747 = !DILocation(line: 360, column: 26, scope: !727)
!748 = !DILocation(line: 360, column: 6, scope: !727)
!749 = !DILocation(line: 358, column: 15, scope: !727)
!750 = !DILocation(line: 361, column: 3, scope: !727)
!751 = !DILocation(line: 359, column: 15, scope: !727)
!752 = !DILocation(line: 362, column: 3, scope: !727)
!753 = !DILocation(line: 365, column: 1, scope: !727)
!754 = !DILocation(line: 364, column: 3, scope: !727)
!755 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 367, type: !728, scopeLine: 368, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!756 = !{!757}
!757 = !DILocalVariable(name: "f_outer", scope: !755, file: !3, line: 369, type: !24)
!758 = !DILocation(line: 369, column: 3, scope: !755)
!759 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !760)
!760 = distinct !DILocation(line: 370, column: 8, scope: !755)
!761 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !760)
!762 = !DILocation(line: 370, column: 26, scope: !755)
!763 = !DILocation(line: 370, column: 6, scope: !755)
!764 = !DILocation(line: 371, column: 3, scope: !755)
!765 = !DILocation(line: 369, column: 15, scope: !755)
!766 = !DILocation(line: 372, column: 3, scope: !755)
!767 = !DILocation(line: 374, column: 1, scope: !755)
!768 = !DILocation(line: 373, column: 3, scope: !755)
!769 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 376, type: !728, scopeLine: 377, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !770)
!770 = !{!771, !772, !773}
!771 = !DILocalVariable(name: "f1", scope: !769, file: !3, line: 378, type: !24)
!772 = !DILocalVariable(name: "f2", scope: !769, file: !3, line: 379, type: !24)
!773 = !DILocalVariable(name: "f3", scope: !769, file: !3, line: 380, type: !24)
!774 = !DILocation(line: 378, column: 3, scope: !769)
!775 = !DILocation(line: 379, column: 3, scope: !769)
!776 = !DILocation(line: 380, column: 3, scope: !769)
!777 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !778)
!778 = distinct !DILocation(line: 381, column: 8, scope: !769)
!779 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !778)
!780 = !DILocation(line: 381, column: 26, scope: !769)
!781 = !DILocation(line: 381, column: 6, scope: !769)
!782 = !DILocation(line: 382, column: 3, scope: !769)
!783 = !DILocation(line: 378, column: 15, scope: !769)
!784 = !DILocation(line: 383, column: 3, scope: !769)
!785 = !DILocation(line: 379, column: 15, scope: !769)
!786 = !DILocation(line: 384, column: 3, scope: !769)
!787 = !DILocation(line: 380, column: 15, scope: !769)
!788 = !DILocation(line: 385, column: 3, scope: !769)
!789 = !DILocation(line: 387, column: 1, scope: !769)
!790 = !DILocation(line: 386, column: 3, scope: !769)
!791 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 389, type: !728, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!792 = !{!793, !794, !795, !796}
!793 = !DILocalVariable(name: "f_first", scope: !791, file: !3, line: 391, type: !24)
!794 = !DILocalVariable(name: "f_second", scope: !791, file: !3, line: 392, type: !24)
!795 = !DILocalVariable(name: "f_third", scope: !791, file: !3, line: 393, type: !24)
!796 = !DILocalVariable(name: "f_fourth", scope: !791, file: !3, line: 394, type: !24)
!797 = !DILocation(line: 391, column: 3, scope: !791)
!798 = !DILocation(line: 392, column: 3, scope: !791)
!799 = !DILocation(line: 393, column: 3, scope: !791)
!800 = !DILocation(line: 394, column: 3, scope: !791)
!801 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !802)
!802 = distinct !DILocation(line: 395, column: 8, scope: !791)
!803 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !802)
!804 = !DILocation(line: 395, column: 26, scope: !791)
!805 = !DILocation(line: 395, column: 6, scope: !791)
!806 = !DILocation(line: 396, column: 3, scope: !791)
!807 = !DILocation(line: 394, column: 15, scope: !791)
!808 = !DILocation(line: 397, column: 3, scope: !791)
!809 = !DILocation(line: 391, column: 15, scope: !791)
!810 = !DILocation(line: 398, column: 3, scope: !791)
!811 = !DILocation(line: 393, column: 15, scope: !791)
!812 = !DILocation(line: 399, column: 3, scope: !791)
!813 = !DILocation(line: 392, column: 15, scope: !791)
!814 = !DILocation(line: 400, column: 3, scope: !791)
!815 = !DILocation(line: 402, column: 20, scope: !791)
!816 = !DILocation(line: 402, column: 3, scope: !791)
!817 = !DILocation(line: 402, column: 12, scope: !791)
!818 = !DILocation(line: 402, column: 18, scope: !791)
!819 = !DILocation(line: 403, column: 21, scope: !791)
!820 = !DILocation(line: 403, column: 3, scope: !791)
!821 = !DILocation(line: 403, column: 13, scope: !791)
!822 = !DILocation(line: 403, column: 19, scope: !791)
!823 = !DILocation(line: 404, column: 20, scope: !791)
!824 = !DILocation(line: 404, column: 3, scope: !791)
!825 = !DILocation(line: 404, column: 12, scope: !791)
!826 = !DILocation(line: 404, column: 18, scope: !791)
!827 = !DILocation(line: 405, column: 21, scope: !791)
!828 = !DILocation(line: 405, column: 3, scope: !791)
!829 = !DILocation(line: 405, column: 13, scope: !791)
!830 = !DILocation(line: 405, column: 19, scope: !791)
!831 = !DILocation(line: 406, column: 3, scope: !791)
!832 = !DILocation(line: 407, column: 16, scope: !791)
!833 = !DILocation(line: 407, column: 3, scope: !791)
!834 = !DILocation(line: 408, column: 16, scope: !791)
!835 = !DILocation(line: 408, column: 3, scope: !791)
!836 = !DILocation(line: 409, column: 16, scope: !791)
!837 = !DILocation(line: 409, column: 3, scope: !791)
!838 = !DILocation(line: 411, column: 1, scope: !791)
!839 = !DILocation(line: 410, column: 3, scope: !791)
!840 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 413, type: !728, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !841)
!841 = !{!842}
!842 = !DILocalVariable(name: "f_outer_join", scope: !840, file: !3, line: 415, type: !24)
!843 = !DILocation(line: 415, column: 3, scope: !840)
!844 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !845)
!845 = distinct !DILocation(line: 416, column: 8, scope: !840)
!846 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !845)
!847 = !DILocation(line: 416, column: 26, scope: !840)
!848 = !DILocation(line: 416, column: 6, scope: !840)
!849 = !DILocation(line: 417, column: 3, scope: !840)
!850 = !DILocation(line: 415, column: 15, scope: !840)
!851 = !DILocation(line: 418, column: 3, scope: !840)
!852 = !DILocation(line: 420, column: 1, scope: !840)
!853 = !DILocation(line: 419, column: 3, scope: !840)
!854 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 422, type: !728, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!855 = !{!856}
!856 = !DILocalVariable(name: "f_orig", scope: !854, file: !3, line: 424, type: !24)
!857 = !DILocation(line: 424, column: 3, scope: !854)
!858 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !859)
!859 = distinct !DILocation(line: 425, column: 8, scope: !854)
!860 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !859)
!861 = !DILocation(line: 425, column: 26, scope: !854)
!862 = !DILocation(line: 425, column: 6, scope: !854)
!863 = !DILocation(line: 426, column: 3, scope: !854)
!864 = !DILocation(line: 424, column: 15, scope: !854)
!865 = !DILocation(line: 427, column: 3, scope: !854)
!866 = !DILocation(line: 429, column: 1, scope: !854)
!867 = !DILocation(line: 428, column: 3, scope: !854)
!868 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 431, type: !728, scopeLine: 432, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!869 = !{!870}
!870 = !DILocalVariable(name: "f_orig", scope: !868, file: !3, line: 433, type: !24)
!871 = !DILocation(line: 433, column: 3, scope: !868)
!872 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !873)
!873 = distinct !DILocation(line: 434, column: 8, scope: !868)
!874 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !873)
!875 = !DILocation(line: 434, column: 26, scope: !868)
!876 = !DILocation(line: 434, column: 6, scope: !868)
!877 = !DILocation(line: 435, column: 3, scope: !868)
!878 = !DILocation(line: 433, column: 15, scope: !868)
!879 = !DILocation(line: 436, column: 3, scope: !868)
!880 = !DILocation(line: 438, column: 1, scope: !868)
!881 = !DILocation(line: 437, column: 3, scope: !868)
!882 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 440, type: !728, scopeLine: 441, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "f_orig", scope: !882, file: !3, line: 442, type: !24)
!885 = !DILocation(line: 442, column: 3, scope: !882)
!886 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !887)
!887 = distinct !DILocation(line: 443, column: 8, scope: !882)
!888 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !887)
!889 = !DILocation(line: 443, column: 26, scope: !882)
!890 = !DILocation(line: 443, column: 6, scope: !882)
!891 = !DILocation(line: 444, column: 3, scope: !882)
!892 = !DILocation(line: 442, column: 15, scope: !882)
!893 = !DILocation(line: 445, column: 3, scope: !882)
!894 = !DILocation(line: 447, column: 1, scope: !882)
!895 = !DILocation(line: 446, column: 3, scope: !882)
!896 = distinct !DISubprogram(name: "test_fiber_routine_2", scope: !3, file: !3, line: 449, type: !728, scopeLine: 450, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!897 = !{!898}
!898 = !DILocalVariable(name: "f_orig", scope: !896, file: !3, line: 451, type: !24)
!899 = !DILocation(line: 451, column: 3, scope: !896)
!900 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !901)
!901 = distinct !DILocation(line: 452, column: 8, scope: !896)
!902 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !901)
!903 = !DILocation(line: 452, column: 26, scope: !896)
!904 = !DILocation(line: 452, column: 6, scope: !896)
!905 = !DILocation(line: 453, column: 3, scope: !896)
!906 = !DILocation(line: 451, column: 15, scope: !896)
!907 = !DILocation(line: 454, column: 3, scope: !896)
!908 = !DILocation(line: 456, column: 1, scope: !896)
!909 = !DILocation(line: 455, column: 3, scope: !896)
!910 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 458, type: !728, scopeLine: 458, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!911 = !{!912, !913}
!912 = !DILocalVariable(name: "first", scope: !910, file: !3, line: 459, type: !24)
!913 = !DILocalVariable(name: "second", scope: !910, file: !3, line: 460, type: !24)
!914 = !DILocation(line: 459, column: 3, scope: !910)
!915 = !DILocation(line: 460, column: 3, scope: !910)
!916 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !917)
!917 = distinct !DILocation(line: 461, column: 8, scope: !910)
!918 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !917)
!919 = !DILocation(line: 461, column: 26, scope: !910)
!920 = !DILocation(line: 461, column: 6, scope: !910)
!921 = !DILocation(line: 459, column: 15, scope: !910)
!922 = !DILocation(line: 463, column: 3, scope: !910)
!923 = !DILocation(line: 460, column: 15, scope: !910)
!924 = !DILocation(line: 464, column: 3, scope: !910)
!925 = !DILocation(line: 467, column: 1, scope: !910)
!926 = !DILocation(line: 466, column: 3, scope: !910)
!927 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 473, type: !141, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!928 = !{!929, !930}
!929 = !DILocalVariable(name: "buf", arg: 1, scope: !927, file: !3, line: 473, type: !137)
!930 = !DILocalVariable(name: "priv", arg: 2, scope: !927, file: !3, line: 473, type: !33)
!931 = !DILocation(line: 473, column: 23, scope: !927)
!932 = !DILocation(line: 473, column: 35, scope: !927)
!933 = !DILocation(line: 378, column: 3, scope: !769, inlinedAt: !934)
!934 = distinct !DILocation(line: 475, column: 3, scope: !927)
!935 = !DILocation(line: 379, column: 3, scope: !769, inlinedAt: !934)
!936 = !DILocation(line: 380, column: 3, scope: !769, inlinedAt: !934)
!937 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !938)
!938 = distinct !DILocation(line: 381, column: 8, scope: !769, inlinedAt: !934)
!939 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !938)
!940 = !DILocation(line: 381, column: 26, scope: !769, inlinedAt: !934)
!941 = !DILocation(line: 381, column: 6, scope: !769, inlinedAt: !934)
!942 = !DILocation(line: 382, column: 3, scope: !769, inlinedAt: !934)
!943 = !DILocation(line: 378, column: 15, scope: !769, inlinedAt: !934)
!944 = !DILocation(line: 383, column: 3, scope: !769, inlinedAt: !934)
!945 = !DILocation(line: 379, column: 15, scope: !769, inlinedAt: !934)
!946 = !DILocation(line: 384, column: 3, scope: !769, inlinedAt: !934)
!947 = !DILocation(line: 380, column: 15, scope: !769, inlinedAt: !934)
!948 = !DILocation(line: 385, column: 3, scope: !769, inlinedAt: !934)
!949 = !DILocation(line: 387, column: 1, scope: !769, inlinedAt: !934)
!950 = !DILocation(line: 477, column: 3, scope: !927)
!951 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 481, type: !141, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !952)
!952 = !{!953, !954}
!953 = !DILocalVariable(name: "buf", arg: 1, scope: !951, file: !3, line: 481, type: !137)
!954 = !DILocalVariable(name: "priv", arg: 2, scope: !951, file: !3, line: 481, type: !33)
!955 = !DILocation(line: 481, column: 24, scope: !951)
!956 = !DILocation(line: 481, column: 36, scope: !951)
!957 = !DILocation(line: 369, column: 3, scope: !755, inlinedAt: !958)
!958 = distinct !DILocation(line: 483, column: 3, scope: !951)
!959 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !960)
!960 = distinct !DILocation(line: 370, column: 8, scope: !755, inlinedAt: !958)
!961 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !960)
!962 = !DILocation(line: 370, column: 26, scope: !755, inlinedAt: !958)
!963 = !DILocation(line: 370, column: 6, scope: !755, inlinedAt: !958)
!964 = !DILocation(line: 371, column: 3, scope: !755, inlinedAt: !958)
!965 = !DILocation(line: 369, column: 15, scope: !755, inlinedAt: !958)
!966 = !DILocation(line: 372, column: 3, scope: !755, inlinedAt: !958)
!967 = !DILocation(line: 374, column: 1, scope: !755, inlinedAt: !958)
!968 = !DILocation(line: 485, column: 3, scope: !951)
!969 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 489, type: !141, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!970 = !{!971, !972}
!971 = !DILocalVariable(name: "buf", arg: 1, scope: !969, file: !3, line: 489, type: !137)
!972 = !DILocalVariable(name: "priv", arg: 2, scope: !969, file: !3, line: 489, type: !33)
!973 = !DILocation(line: 489, column: 24, scope: !969)
!974 = !DILocation(line: 489, column: 36, scope: !969)
!975 = !DILocation(line: 358, column: 3, scope: !727, inlinedAt: !976)
!976 = distinct !DILocation(line: 491, column: 3, scope: !969)
!977 = !DILocation(line: 359, column: 3, scope: !727, inlinedAt: !976)
!978 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !979)
!979 = distinct !DILocation(line: 360, column: 8, scope: !727, inlinedAt: !976)
!980 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !979)
!981 = !DILocation(line: 360, column: 26, scope: !727, inlinedAt: !976)
!982 = !DILocation(line: 360, column: 6, scope: !727, inlinedAt: !976)
!983 = !DILocation(line: 358, column: 15, scope: !727, inlinedAt: !976)
!984 = !DILocation(line: 361, column: 3, scope: !727, inlinedAt: !976)
!985 = !DILocation(line: 359, column: 15, scope: !727, inlinedAt: !976)
!986 = !DILocation(line: 362, column: 3, scope: !727, inlinedAt: !976)
!987 = !DILocation(line: 365, column: 1, scope: !727, inlinedAt: !976)
!988 = !DILocation(line: 493, column: 3, scope: !969)
!989 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 497, type: !141, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !990)
!990 = !{!991, !992}
!991 = !DILocalVariable(name: "buf", arg: 1, scope: !989, file: !3, line: 497, type: !137)
!992 = !DILocalVariable(name: "priv", arg: 2, scope: !989, file: !3, line: 497, type: !33)
!993 = !DILocation(line: 497, column: 24, scope: !989)
!994 = !DILocation(line: 497, column: 36, scope: !989)
!995 = !DILocation(line: 499, column: 3, scope: !989)
!996 = !DILocation(line: 501, column: 3, scope: !989)
!997 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !998)
!998 = !{!999, !1000}
!999 = !DILocalVariable(name: "buf", arg: 1, scope: !997, file: !3, line: 505, type: !137)
!1000 = !DILocalVariable(name: "priv", arg: 2, scope: !997, file: !3, line: 505, type: !33)
!1001 = !DILocation(line: 505, column: 24, scope: !997)
!1002 = !DILocation(line: 505, column: 36, scope: !997)
!1003 = !DILocation(line: 415, column: 3, scope: !840, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 507, column: 3, scope: !997)
!1005 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 416, column: 8, scope: !840, inlinedAt: !1004)
!1007 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !1006)
!1008 = !DILocation(line: 416, column: 26, scope: !840, inlinedAt: !1004)
!1009 = !DILocation(line: 416, column: 6, scope: !840, inlinedAt: !1004)
!1010 = !DILocation(line: 417, column: 3, scope: !840, inlinedAt: !1004)
!1011 = !DILocation(line: 415, column: 15, scope: !840, inlinedAt: !1004)
!1012 = !DILocation(line: 418, column: 3, scope: !840, inlinedAt: !1004)
!1013 = !DILocation(line: 420, column: 1, scope: !840, inlinedAt: !1004)
!1014 = !DILocation(line: 508, column: 3, scope: !997)
!1015 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1016)
!1016 = !{!1017, !1018}
!1017 = !DILocalVariable(name: "buf", arg: 1, scope: !1015, file: !3, line: 512, type: !137)
!1018 = !DILocalVariable(name: "priv", arg: 2, scope: !1015, file: !3, line: 512, type: !33)
!1019 = !DILocation(line: 512, column: 24, scope: !1015)
!1020 = !DILocation(line: 512, column: 36, scope: !1015)
!1021 = !DILocation(line: 424, column: 3, scope: !854, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 514, column: 3, scope: !1015)
!1023 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 425, column: 8, scope: !854, inlinedAt: !1022)
!1025 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !1024)
!1026 = !DILocation(line: 425, column: 26, scope: !854, inlinedAt: !1022)
!1027 = !DILocation(line: 425, column: 6, scope: !854, inlinedAt: !1022)
!1028 = !DILocation(line: 426, column: 3, scope: !854, inlinedAt: !1022)
!1029 = !DILocation(line: 424, column: 15, scope: !854, inlinedAt: !1022)
!1030 = !DILocation(line: 427, column: 3, scope: !854, inlinedAt: !1022)
!1031 = !DILocation(line: 429, column: 1, scope: !854, inlinedAt: !1022)
!1032 = !DILocation(line: 515, column: 3, scope: !1015)
!1033 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 519, type: !141, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1034 = !{!1035, !1036}
!1035 = !DILocalVariable(name: "buf", arg: 1, scope: !1033, file: !3, line: 519, type: !137)
!1036 = !DILocalVariable(name: "priv", arg: 2, scope: !1033, file: !3, line: 519, type: !33)
!1037 = !DILocation(line: 519, column: 24, scope: !1033)
!1038 = !DILocation(line: 519, column: 36, scope: !1033)
!1039 = !DILocation(line: 433, column: 3, scope: !868, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 521, column: 3, scope: !1033)
!1041 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 434, column: 8, scope: !868, inlinedAt: !1040)
!1043 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !1042)
!1044 = !DILocation(line: 434, column: 26, scope: !868, inlinedAt: !1040)
!1045 = !DILocation(line: 434, column: 6, scope: !868, inlinedAt: !1040)
!1046 = !DILocation(line: 435, column: 3, scope: !868, inlinedAt: !1040)
!1047 = !DILocation(line: 433, column: 15, scope: !868, inlinedAt: !1040)
!1048 = !DILocation(line: 436, column: 3, scope: !868, inlinedAt: !1040)
!1049 = !DILocation(line: 438, column: 1, scope: !868, inlinedAt: !1040)
!1050 = !DILocation(line: 522, column: 3, scope: !1033)
!1051 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 526, type: !141, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1052)
!1052 = !{!1053, !1054}
!1053 = !DILocalVariable(name: "buf", arg: 1, scope: !1051, file: !3, line: 526, type: !137)
!1054 = !DILocalVariable(name: "priv", arg: 2, scope: !1051, file: !3, line: 526, type: !33)
!1055 = !DILocation(line: 526, column: 24, scope: !1051)
!1056 = !DILocation(line: 526, column: 36, scope: !1051)
!1057 = !DILocation(line: 442, column: 3, scope: !882, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 528, column: 3, scope: !1051)
!1059 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 443, column: 8, scope: !882, inlinedAt: !1058)
!1061 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !1060)
!1062 = !DILocation(line: 443, column: 26, scope: !882, inlinedAt: !1058)
!1063 = !DILocation(line: 443, column: 6, scope: !882, inlinedAt: !1058)
!1064 = !DILocation(line: 444, column: 3, scope: !882, inlinedAt: !1058)
!1065 = !DILocation(line: 442, column: 15, scope: !882, inlinedAt: !1058)
!1066 = !DILocation(line: 445, column: 3, scope: !882, inlinedAt: !1058)
!1067 = !DILocation(line: 447, column: 1, scope: !882, inlinedAt: !1058)
!1068 = !DILocation(line: 529, column: 3, scope: !1051)
!1069 = distinct !DISubprogram(name: "handle_fibers9", scope: !3, file: !3, line: 533, type: !141, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1070)
!1070 = !{!1071, !1072}
!1071 = !DILocalVariable(name: "buf", arg: 1, scope: !1069, file: !3, line: 533, type: !137)
!1072 = !DILocalVariable(name: "priv", arg: 2, scope: !1069, file: !3, line: 533, type: !33)
!1073 = !DILocation(line: 533, column: 24, scope: !1069)
!1074 = !DILocation(line: 533, column: 36, scope: !1069)
!1075 = !DILocation(line: 451, column: 3, scope: !896, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 535, column: 3, scope: !1069)
!1077 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 452, column: 8, scope: !896, inlinedAt: !1076)
!1079 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !1078)
!1080 = !DILocation(line: 452, column: 26, scope: !896, inlinedAt: !1076)
!1081 = !DILocation(line: 452, column: 6, scope: !896, inlinedAt: !1076)
!1082 = !DILocation(line: 453, column: 3, scope: !896, inlinedAt: !1076)
!1083 = !DILocation(line: 451, column: 15, scope: !896, inlinedAt: !1076)
!1084 = !DILocation(line: 454, column: 3, scope: !896, inlinedAt: !1076)
!1085 = !DILocation(line: 456, column: 1, scope: !896, inlinedAt: !1076)
!1086 = !DILocation(line: 536, column: 3, scope: !1069)
!1087 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 540, type: !141, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1088)
!1088 = !{!1089, !1090}
!1089 = !DILocalVariable(name: "buf", arg: 1, scope: !1087, file: !3, line: 540, type: !137)
!1090 = !DILocalVariable(name: "priv", arg: 2, scope: !1087, file: !3, line: 540, type: !33)
!1091 = !DILocation(line: 540, column: 25, scope: !1087)
!1092 = !DILocation(line: 540, column: 37, scope: !1087)
!1093 = !DILocation(line: 459, column: 3, scope: !910, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 542, column: 3, scope: !1087)
!1095 = !DILocation(line: 460, column: 3, scope: !910, inlinedAt: !1094)
!1096 = !DILocation(line: 258, column: 26, scope: !736, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 461, column: 8, scope: !910, inlinedAt: !1094)
!1098 = !DILocation(line: 258, column: 26, scope: !737, inlinedAt: !1097)
!1099 = !DILocation(line: 461, column: 26, scope: !910, inlinedAt: !1094)
!1100 = !DILocation(line: 461, column: 6, scope: !910, inlinedAt: !1094)
!1101 = !DILocation(line: 459, column: 15, scope: !910, inlinedAt: !1094)
!1102 = !DILocation(line: 463, column: 3, scope: !910, inlinedAt: !1094)
!1103 = !DILocation(line: 460, column: 15, scope: !910, inlinedAt: !1094)
!1104 = !DILocation(line: 464, column: 3, scope: !910, inlinedAt: !1094)
!1105 = !DILocation(line: 467, column: 1, scope: !910, inlinedAt: !1094)
!1106 = !DILocation(line: 543, column: 3, scope: !1087)
