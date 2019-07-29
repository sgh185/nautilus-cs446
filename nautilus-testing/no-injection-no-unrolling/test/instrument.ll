; ModuleID = 'src/test/instrument.bc'
source_filename = "src/test/instrument.c"
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

@vc = external dso_local local_unnamed_addr global %struct.nk_virtual_console*, align 8
@.str = private unnamed_addr constant [29 x i8] c"routine_simple_1() : a = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Fiber routine_simple_1 is finished, a = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"routine_simple_2() : a = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Fiber routine_simple_2 is finished, a = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"test_simple_routine() : Malloc failed\0A\00", align 1
@fibers_impl1 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers1 }, align 8, !dbg !0
@_nk_cmd_fibers_impl1 = internal global %struct.shell_cmd_impl* @fibers_impl1, section ".shell_cmds", align 8, !dbg !106
@fibers_impl2 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers2 }, align 8, !dbg !121
@_nk_cmd_fibers_impl2 = internal global %struct.shell_cmd_impl* @fibers_impl2, section ".shell_cmds", align 8, !dbg !119
@.str.5 = private unnamed_addr constant [12 x i8] c"instrument1\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Simple compiler instrumentation test 1\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"instrument2\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Simple compiler instrumentation test 2\00", align 1
@llvm.used = appending global [2 x i8*] [i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl1 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl2 to i8*)], section "llvm.metadata"

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_1(i8*, i8** nocapture readnone) #0 !dbg !128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !130, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i8** undef, metadata !131, metadata !DIExpression()), !dbg !135
  %3 = bitcast i8* %0 to i64*, !dbg !136
  call void @llvm.dbg.value(metadata i64* %3, metadata !132, metadata !DIExpression()), !dbg !137
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !138
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !139
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !140
  %5 = load i64, i64* %3, align 8, !dbg !141
  %6 = icmp eq i64 %5, 0, !dbg !142
  br i1 %6, label %15, label %7, !dbg !143

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !133, metadata !DIExpression()), !dbg !140
  %9 = add i32 %8, 1, !dbg !144
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8) #4, !dbg !146
  %11 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !147
  call void @llvm.dbg.value(metadata i32 %9, metadata !133, metadata !DIExpression()), !dbg !140
  %12 = zext i32 %9 to i64, !dbg !148
  %13 = load i64, i64* %3, align 8, !dbg !141
  %14 = icmp ugt i64 %13, %12, !dbg !142
  br i1 %14, label %7, label %15, !dbg !143, !llvm.loop !149

; <label>:15:                                     ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !151
  call void @llvm.dbg.value(metadata i32 %16, metadata !133, metadata !DIExpression()), !dbg !140
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %16) #4, !dbg !152
  tail call void @kmem_free(i8* nonnull %0) #4, !dbg !153
  ret void, !dbg !154
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_yield(...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !155 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !157, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i8** undef, metadata !158, metadata !DIExpression()), !dbg !162
  %3 = bitcast i8* %0 to i64*, !dbg !163
  call void @llvm.dbg.value(metadata i64* %3, metadata !159, metadata !DIExpression()), !dbg !164
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !165
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #4, !dbg !166
  call void @llvm.dbg.value(metadata i32 0, metadata !160, metadata !DIExpression()), !dbg !167
  %5 = load i64, i64* %3, align 8, !dbg !168
  %6 = icmp eq i64 %5, 0, !dbg !169
  br i1 %6, label %15, label %7, !dbg !170

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !160, metadata !DIExpression()), !dbg !167
  %9 = add i32 %8, 1, !dbg !171
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %8) #4, !dbg !173
  %11 = tail call i32 (...) @nk_fiber_yield() #4, !dbg !174
  call void @llvm.dbg.value(metadata i32 %9, metadata !160, metadata !DIExpression()), !dbg !167
  %12 = zext i32 %9 to i64, !dbg !175
  %13 = load i64, i64* %3, align 8, !dbg !168
  %14 = icmp ugt i64 %13, %12, !dbg !169
  br i1 %14, label %7, label %15, !dbg !170, !llvm.loop !176

; <label>:15:                                     ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !178
  call void @llvm.dbg.value(metadata i32 %16, metadata !160, metadata !DIExpression()), !dbg !167
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %16) #4, !dbg !179
  tail call void @kmem_free(i8* nonnull %0) #4, !dbg !180
  ret void, !dbg !181
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !182 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !217
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !217
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !218, !srcloc !228
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !226, metadata !DIExpression()) #5, !dbg !218
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !225, metadata !DIExpression()) #5, !dbg !229
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !230
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !230
  %7 = load i64, i64* %6, align 8, !dbg !230
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !231
  %8 = bitcast i64* %2 to i8*, !dbg !232
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !232
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #4, !dbg !233
  %9 = call i8* @kmem_malloc(i64 8) #4, !dbg !234
  call void @llvm.dbg.value(metadata i8* %9, metadata !215, metadata !DIExpression()), !dbg !234
  %10 = icmp eq i8* %9, null, !dbg !235
  br i1 %10, label %11, label %13, !dbg !237

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !238
  br label %18, !dbg !240

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !241
  call void @llvm.dbg.value(metadata i64* %14, metadata !214, metadata !DIExpression()), !dbg !242
  %15 = load i64, i64* %2, align 8, !dbg !243
  call void @llvm.dbg.value(metadata i64 %15, metadata !213, metadata !DIExpression()), !dbg !244
  %16 = urem i64 %15, 5000, !dbg !245
  store i64 %16, i64* %14, align 8, !dbg !246
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !186, metadata !DIExpression(DW_OP_deref)), !dbg !247
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %9, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !248
  br label %18, !dbg !249

; <label>:18:                                     ; preds = %13, %11
  %19 = phi i32 [ 0, %13 ], [ -1, %11 ], !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !251
  ret i32 %19, !dbg !251
}

; Function Attrs: noredzone
declare dso_local void @nk_get_rand_bytes(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine2() local_unnamed_addr #0 !dbg !252 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !264
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !264
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !265
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !266, !srcloc !228
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !226, metadata !DIExpression()) #5, !dbg !266
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !225, metadata !DIExpression()) #5, !dbg !268
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !269
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !269
  %10 = load i64, i64* %9, align 8, !dbg !269
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !270
  %11 = bitcast i64* %3 to i8*, !dbg !271
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !271
  %12 = bitcast i64* %4 to i8*, !dbg !272
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !272
  call void @nk_get_rand_bytes(i8* nonnull %11, i32 8) #4, !dbg !273
  call void @nk_get_rand_bytes(i8* nonnull %12, i32 8) #4, !dbg !274
  %13 = call i8* @kmem_malloc(i64 8) #4, !dbg !275
  call void @llvm.dbg.value(metadata i8* %13, metadata !259, metadata !DIExpression()), !dbg !275
  %14 = call i8* @kmem_malloc(i64 8) #4, !dbg !276
  call void @llvm.dbg.value(metadata i8* %14, metadata !262, metadata !DIExpression()), !dbg !276
  %15 = icmp ne i8* %13, null, !dbg !277
  %16 = icmp ne i8* %14, null, !dbg !279
  %17 = and i1 %15, %16, !dbg !280
  br i1 %17, label %20, label %18, !dbg !280

; <label>:18:                                     ; preds = %0
  %19 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !281
  br label %29, !dbg !283

; <label>:20:                                     ; preds = %0
  %21 = bitcast i8* %14 to i64*, !dbg !284
  call void @llvm.dbg.value(metadata i64* %21, metadata !261, metadata !DIExpression()), !dbg !285
  %22 = bitcast i8* %13 to i64*, !dbg !286
  call void @llvm.dbg.value(metadata i64* %22, metadata !258, metadata !DIExpression()), !dbg !287
  %23 = load i64, i64* %3, align 8, !dbg !288
  call void @llvm.dbg.value(metadata i64 %23, metadata !256, metadata !DIExpression()), !dbg !289
  %24 = urem i64 %23, 5000, !dbg !290
  store i64 %24, i64* %22, align 8, !dbg !291
  %25 = load i64, i64* %4, align 8, !dbg !292
  call void @llvm.dbg.value(metadata i64 %25, metadata !257, metadata !DIExpression()), !dbg !293
  %26 = urem i64 %25, 5000, !dbg !294
  store i64 %26, i64* %21, align 8, !dbg !295
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !254, metadata !DIExpression(DW_OP_deref)), !dbg !296
  %27 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %13, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #4, !dbg !297
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !255, metadata !DIExpression(DW_OP_deref)), !dbg !298
  %28 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_2, i8* nonnull %14, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #4, !dbg !299
  br label %29, !dbg !300

; <label>:29:                                     ; preds = %20, %18
  %30 = phi i32 [ 0, %20 ], [ -1, %18 ], !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !302
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !302
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !302
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !302
  ret i32 %30, !dbg !302
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !303 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i8* %1, metadata !306, metadata !DIExpression()), !dbg !308
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !309
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5, !dbg !309
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !dbg !311, !srcloc !228
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !226, metadata !DIExpression()) #5, !dbg !311
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !225, metadata !DIExpression()) #5, !dbg !313
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !314
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !314
  %9 = load i64, i64* %8, align 8, !dbg !314
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !315
  %10 = bitcast i64* %4 to i8*, !dbg !316
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5, !dbg !316
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #4, !dbg !317
  %11 = call i8* @kmem_malloc(i64 8) #4, !dbg !318
  call void @llvm.dbg.value(metadata i8* %11, metadata !215, metadata !DIExpression()) #5, !dbg !318
  %12 = icmp eq i8* %11, null, !dbg !319
  br i1 %12, label %13, label %15, !dbg !320

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !321
  br label %20, !dbg !322

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !323
  call void @llvm.dbg.value(metadata i64* %16, metadata !214, metadata !DIExpression()) #5, !dbg !324
  %17 = load i64, i64* %4, align 8, !dbg !325
  call void @llvm.dbg.value(metadata i64 %17, metadata !213, metadata !DIExpression()) #5, !dbg !326
  %18 = urem i64 %17, 5000, !dbg !327
  store i64 %18, i64* %16, align 8, !dbg !328
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !186, metadata !DIExpression(DW_OP_deref)) #5, !dbg !329
  %19 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %11, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #4, !dbg !330
  br label %20, !dbg !331

; <label>:20:                                     ; preds = %13, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5, !dbg !332
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5, !dbg !332
  ret i32 0, !dbg !333
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !334 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !336, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i8* %1, metadata !337, metadata !DIExpression()), !dbg !339
  %3 = tail call i32 @test_simple_routine2() #6, !dbg !340
  ret i32 0, !dbg !341
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
!llvm.module.flags = !{!123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fibers_impl1", scope: !2, file: !3, line: 142, type: !109, isLocal: true, isDefinition: true)
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
!105 = !{!106, !119, !0, !121}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl1", scope: !2, file: !3, line: 156, type: !108, isLocal: true, isDefinition: true, align: 64)
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
!120 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl2", scope: !2, file: !3, line: 157, type: !108, isLocal: true, isDefinition: true, align: 64)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "fibers_impl2", scope: !2, file: !3, line: 148, type: !109, isLocal: true, isDefinition: true)
!123 = !{i32 2, !"Dwarf Version", i32 4}
!124 = !{i32 2, !"Debug Info Version", i32 3}
!125 = !{i32 1, !"wchar_size", i32 4}
!126 = !{i32 1, !"Code Model", i32 4}
!127 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!128 = distinct !DISubprogram(name: "routine_simple_1", scope: !3, file: !3, line: 57, type: !81, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DILocalVariable(name: "i", arg: 1, scope: !128, file: !3, line: 57, type: !31)
!131 = !DILocalVariable(name: "o", arg: 2, scope: !128, file: !3, line: 57, type: !75)
!132 = !DILocalVariable(name: "end", scope: !128, file: !3, line: 59, type: !24)
!133 = !DILocalVariable(name: "a", scope: !128, file: !3, line: 61, type: !7)
!134 = !DILocation(line: 57, column: 29, scope: !128)
!135 = !DILocation(line: 57, column: 39, scope: !128)
!136 = !DILocation(line: 59, column: 19, scope: !128)
!137 = !DILocation(line: 59, column: 13, scope: !128)
!138 = !DILocation(line: 60, column: 19, scope: !128)
!139 = !DILocation(line: 60, column: 3, scope: !128)
!140 = !DILocation(line: 61, column: 16, scope: !128)
!141 = !DILocation(line: 62, column: 13, scope: !128)
!142 = !DILocation(line: 62, column: 11, scope: !128)
!143 = !DILocation(line: 62, column: 3, scope: !128)
!144 = !DILocation(line: 63, column: 52, scope: !145)
!145 = distinct !DILexicalBlock(scope: !128, file: !3, line: 62, column: 18)
!146 = !DILocation(line: 63, column: 5, scope: !145)
!147 = !DILocation(line: 64, column: 5, scope: !145)
!148 = !DILocation(line: 62, column: 9, scope: !128)
!149 = distinct !{!149, !143, !150}
!150 = !DILocation(line: 65, column: 3, scope: !128)
!151 = !DILocation(line: 0, scope: !128)
!152 = !DILocation(line: 66, column: 3, scope: !128)
!153 = !DILocation(line: 67, column: 3, scope: !128)
!154 = !DILocation(line: 68, column: 1, scope: !128)
!155 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!156 = !{!157, !158, !159, !160}
!157 = !DILocalVariable(name: "i", arg: 1, scope: !155, file: !3, line: 70, type: !31)
!158 = !DILocalVariable(name: "o", arg: 2, scope: !155, file: !3, line: 70, type: !75)
!159 = !DILocalVariable(name: "end", scope: !155, file: !3, line: 72, type: !24)
!160 = !DILocalVariable(name: "a", scope: !155, file: !3, line: 74, type: !7)
!161 = !DILocation(line: 70, column: 29, scope: !155)
!162 = !DILocation(line: 70, column: 39, scope: !155)
!163 = !DILocation(line: 72, column: 19, scope: !155)
!164 = !DILocation(line: 72, column: 13, scope: !155)
!165 = !DILocation(line: 73, column: 19, scope: !155)
!166 = !DILocation(line: 73, column: 3, scope: !155)
!167 = !DILocation(line: 74, column: 16, scope: !155)
!168 = !DILocation(line: 76, column: 13, scope: !155)
!169 = !DILocation(line: 76, column: 11, scope: !155)
!170 = !DILocation(line: 76, column: 3, scope: !155)
!171 = !DILocation(line: 77, column: 52, scope: !172)
!172 = distinct !DILexicalBlock(scope: !155, file: !3, line: 76, column: 18)
!173 = !DILocation(line: 77, column: 5, scope: !172)
!174 = !DILocation(line: 78, column: 5, scope: !172)
!175 = !DILocation(line: 76, column: 9, scope: !155)
!176 = distinct !{!176, !170, !177}
!177 = !DILocation(line: 79, column: 3, scope: !155)
!178 = !DILocation(line: 0, scope: !155)
!179 = !DILocation(line: 80, column: 3, scope: !155)
!180 = !DILocation(line: 81, column: 3, scope: !155)
!181 = !DILocation(line: 82, column: 1, scope: !155)
!182 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !183, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!48}
!185 = !{!186, !213, !214, !215}
!186 = !DILocalVariable(name: "simple", scope: !182, file: !3, line: 88, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_t", file: !6, line: 104, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber", file: !6, line: 70, size: 1216, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !200, !202, !203, !204, !205, !206, !207, !208, !210, !211, !212}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !189, file: !6, line: 71, baseType: !25, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !189, file: !6, line: 72, baseType: !31, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !189, file: !6, line: 73, baseType: !39, size: 16, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !189, file: !6, line: 75, baseType: !45, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !189, file: !6, line: 76, baseType: !27, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !189, file: !6, line: 78, baseType: !197, size: 32, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !198, line: 39, baseType: !199)
!198 = !DIFile(filename: "include/nautilus/spinlock.h", directory: "/home/sgi9754/nautilus-cs446")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 54, baseType: !7)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_status", scope: !189, file: !6, line: 79, baseType: !201, size: 32, offset: 352)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_status", file: !6, line: 66, baseType: !5)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !189, file: !6, line: 82, baseType: !88, size: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !189, file: !6, line: 83, baseType: !48, size: 32, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !189, file: !6, line: 91, baseType: !52, size: 128, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "wait_node", scope: !189, file: !6, line: 92, baseType: !52, size: 128, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !189, file: !6, line: 93, baseType: !48, size: 32, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sched_node", scope: !189, file: !6, line: 97, baseType: !52, size: 128, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !189, file: !6, line: 99, baseType: !209, size: 64, offset: 960)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_fun_t", file: !6, line: 56, baseType: !80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !189, file: !6, line: 100, baseType: !31, size: 64, offset: 1024)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !189, file: !6, line: 101, baseType: !75, size: 64, offset: 1088)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_done", scope: !189, file: !6, line: 103, baseType: !29, size: 8, offset: 1152)
!213 = !DILocalVariable(name: "t", scope: !182, file: !3, line: 90, type: !25)
!214 = !DILocalVariable(name: "f_input", scope: !182, file: !3, line: 92, type: !24)
!215 = !DILocalVariable(name: "p", scope: !216, file: !3, line: 92, type: !31)
!216 = distinct !DILexicalBlock(scope: !182, file: !3, line: 92, column: 23)
!217 = !DILocation(line: 88, column: 3, scope: !182)
!218 = !DILocation(line: 258, column: 26, scope: !219, inlinedAt: !227)
!219 = distinct !DILexicalBlock(scope: !220, file: !16, line: 258, column: 26)
!220 = distinct !DILexicalBlock(scope: !221, file: !16, line: 258, column: 26)
!221 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !222, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{!32}
!224 = !{!225, !226}
!225 = !DILocalVariable(name: "__r", scope: !220, file: !16, line: 258, type: !50)
!226 = !DILocalVariable(name: "__r", scope: !219, file: !16, line: 258, type: !50)
!227 = distinct !DILocation(line: 89, column: 8, scope: !182)
!228 = !{i32 -2147285331}
!229 = !DILocation(line: 258, column: 26, scope: !220, inlinedAt: !227)
!230 = !DILocation(line: 89, column: 26, scope: !182)
!231 = !DILocation(line: 89, column: 6, scope: !182)
!232 = !DILocation(line: 90, column: 3, scope: !182)
!233 = !DILocation(line: 91, column: 3, scope: !182)
!234 = !DILocation(line: 92, column: 23, scope: !216)
!235 = !DILocation(line: 93, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !182, file: !3, line: 93, column: 7)
!237 = !DILocation(line: 93, column: 7, scope: !182)
!238 = !DILocation(line: 94, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !3, line: 93, column: 17)
!240 = !DILocation(line: 95, column: 5, scope: !239)
!241 = !DILocation(line: 92, column: 23, scope: !182)
!242 = !DILocation(line: 92, column: 13, scope: !182)
!243 = !DILocation(line: 97, column: 14, scope: !182)
!244 = !DILocation(line: 90, column: 12, scope: !182)
!245 = !DILocation(line: 97, column: 16, scope: !182)
!246 = !DILocation(line: 97, column: 12, scope: !182)
!247 = !DILocation(line: 88, column: 15, scope: !182)
!248 = !DILocation(line: 98, column: 3, scope: !182)
!249 = !DILocation(line: 99, column: 3, scope: !182)
!250 = !DILocation(line: 0, scope: !182)
!251 = !DILocation(line: 100, column: 1, scope: !182)
!252 = distinct !DISubprogram(name: "test_simple_routine2", scope: !3, file: !3, line: 102, type: !183, scopeLine: 103, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !261, !262}
!254 = !DILocalVariable(name: "simple1", scope: !252, file: !3, line: 104, type: !187)
!255 = !DILocalVariable(name: "simple2", scope: !252, file: !3, line: 105, type: !187)
!256 = !DILocalVariable(name: "t1", scope: !252, file: !3, line: 107, type: !25)
!257 = !DILocalVariable(name: "t2", scope: !252, file: !3, line: 108, type: !25)
!258 = !DILocalVariable(name: "f1_input", scope: !252, file: !3, line: 111, type: !24)
!259 = !DILocalVariable(name: "p", scope: !260, file: !3, line: 111, type: !31)
!260 = distinct !DILexicalBlock(scope: !252, file: !3, line: 111, column: 24)
!261 = !DILocalVariable(name: "f2_input", scope: !252, file: !3, line: 112, type: !24)
!262 = !DILocalVariable(name: "p", scope: !263, file: !3, line: 112, type: !31)
!263 = distinct !DILexicalBlock(scope: !252, file: !3, line: 112, column: 24)
!264 = !DILocation(line: 104, column: 3, scope: !252)
!265 = !DILocation(line: 105, column: 3, scope: !252)
!266 = !DILocation(line: 258, column: 26, scope: !219, inlinedAt: !267)
!267 = distinct !DILocation(line: 106, column: 8, scope: !252)
!268 = !DILocation(line: 258, column: 26, scope: !220, inlinedAt: !267)
!269 = !DILocation(line: 106, column: 26, scope: !252)
!270 = !DILocation(line: 106, column: 6, scope: !252)
!271 = !DILocation(line: 107, column: 3, scope: !252)
!272 = !DILocation(line: 108, column: 3, scope: !252)
!273 = !DILocation(line: 109, column: 3, scope: !252)
!274 = !DILocation(line: 110, column: 3, scope: !252)
!275 = !DILocation(line: 111, column: 24, scope: !260)
!276 = !DILocation(line: 112, column: 24, scope: !263)
!277 = !DILocation(line: 113, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !252, file: !3, line: 113, column: 7)
!279 = !DILocation(line: 113, column: 21, scope: !278)
!280 = !DILocation(line: 113, column: 17, scope: !278)
!281 = !DILocation(line: 114, column: 5, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 113, column: 31)
!283 = !DILocation(line: 115, column: 5, scope: !282)
!284 = !DILocation(line: 112, column: 24, scope: !252)
!285 = !DILocation(line: 112, column: 13, scope: !252)
!286 = !DILocation(line: 111, column: 24, scope: !252)
!287 = !DILocation(line: 111, column: 13, scope: !252)
!288 = !DILocation(line: 117, column: 15, scope: !252)
!289 = !DILocation(line: 107, column: 12, scope: !252)
!290 = !DILocation(line: 117, column: 18, scope: !252)
!291 = !DILocation(line: 117, column: 13, scope: !252)
!292 = !DILocation(line: 118, column: 15, scope: !252)
!293 = !DILocation(line: 108, column: 12, scope: !252)
!294 = !DILocation(line: 118, column: 18, scope: !252)
!295 = !DILocation(line: 118, column: 13, scope: !252)
!296 = !DILocation(line: 104, column: 15, scope: !252)
!297 = !DILocation(line: 119, column: 3, scope: !252)
!298 = !DILocation(line: 105, column: 15, scope: !252)
!299 = !DILocation(line: 120, column: 3, scope: !252)
!300 = !DILocation(line: 121, column: 3, scope: !252)
!301 = !DILocation(line: 0, scope: !252)
!302 = !DILocation(line: 122, column: 1, scope: !252)
!303 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!304 = !{!305, !306}
!305 = !DILocalVariable(name: "buf", arg: 1, scope: !303, file: !3, line: 127, type: !113)
!306 = !DILocalVariable(name: "priv", arg: 2, scope: !303, file: !3, line: 127, type: !31)
!307 = !DILocation(line: 127, column: 23, scope: !303)
!308 = !DILocation(line: 127, column: 35, scope: !303)
!309 = !DILocation(line: 88, column: 3, scope: !182, inlinedAt: !310)
!310 = distinct !DILocation(line: 129, column: 3, scope: !303)
!311 = !DILocation(line: 258, column: 26, scope: !219, inlinedAt: !312)
!312 = distinct !DILocation(line: 89, column: 8, scope: !182, inlinedAt: !310)
!313 = !DILocation(line: 258, column: 26, scope: !220, inlinedAt: !312)
!314 = !DILocation(line: 89, column: 26, scope: !182, inlinedAt: !310)
!315 = !DILocation(line: 89, column: 6, scope: !182, inlinedAt: !310)
!316 = !DILocation(line: 90, column: 3, scope: !182, inlinedAt: !310)
!317 = !DILocation(line: 91, column: 3, scope: !182, inlinedAt: !310)
!318 = !DILocation(line: 92, column: 23, scope: !216, inlinedAt: !310)
!319 = !DILocation(line: 93, column: 8, scope: !236, inlinedAt: !310)
!320 = !DILocation(line: 93, column: 7, scope: !182, inlinedAt: !310)
!321 = !DILocation(line: 94, column: 5, scope: !239, inlinedAt: !310)
!322 = !DILocation(line: 95, column: 5, scope: !239, inlinedAt: !310)
!323 = !DILocation(line: 92, column: 23, scope: !182, inlinedAt: !310)
!324 = !DILocation(line: 92, column: 13, scope: !182, inlinedAt: !310)
!325 = !DILocation(line: 97, column: 14, scope: !182, inlinedAt: !310)
!326 = !DILocation(line: 90, column: 12, scope: !182, inlinedAt: !310)
!327 = !DILocation(line: 97, column: 16, scope: !182, inlinedAt: !310)
!328 = !DILocation(line: 97, column: 12, scope: !182, inlinedAt: !310)
!329 = !DILocation(line: 88, column: 15, scope: !182, inlinedAt: !310)
!330 = !DILocation(line: 98, column: 3, scope: !182, inlinedAt: !310)
!331 = !DILocation(line: 99, column: 3, scope: !182, inlinedAt: !310)
!332 = !DILocation(line: 100, column: 1, scope: !182, inlinedAt: !310)
!333 = !DILocation(line: 130, column: 3, scope: !303)
!334 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 134, type: !117, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!335 = !{!336, !337}
!336 = !DILocalVariable(name: "buf", arg: 1, scope: !334, file: !3, line: 134, type: !113)
!337 = !DILocalVariable(name: "priv", arg: 2, scope: !334, file: !3, line: 134, type: !31)
!338 = !DILocation(line: 134, column: 23, scope: !334)
!339 = !DILocation(line: 134, column: 35, scope: !334)
!340 = !DILocation(line: 136, column: 3, scope: !334)
!341 = !DILocation(line: 137, column: 3, scope: !334)
