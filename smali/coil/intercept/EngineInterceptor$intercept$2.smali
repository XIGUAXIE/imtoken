.class final Lcoil/intercept/EngineInterceptor$intercept$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EngineInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/EngineInterceptor;->intercept(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcoil/request/SuccessResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor$intercept$2\n+ 2 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor\n+ 3 Logs.kt\ncoil/util/-Logs\n+ 4 Collections.kt\ncoil/util/-Collections\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 7 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,399:1\n282#2,51:400\n346#2,10:451\n356#2:463\n358#2,10:465\n368#2:478\n370#2,2:481\n333#2,2:485\n22#3,2:461\n25#3:464\n51#4,3:475\n55#4:480\n1#5:479\n1#5:487\n48#6:483\n26#7:484\n*E\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor$intercept$2\n*L\n117#1,51:400\n117#1,10:451\n117#1:463\n117#1,10:465\n117#1:478\n117#1,2:481\n117#1,2:485\n117#1,2:461\n117#1:464\n117#1,3:475\n117#1:480\n117#1:479\n117#1:483\n117#1:484\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcoil/request/SuccessResult;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil.intercept.EngineInterceptor$intercept$2"
    f = "EngineInterceptor.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x193,
        0x1aa,
        0x1de
    }
    m = "invokeSuspend"
    n = {
        "this_$iv",
        "fetcher$iv",
        "request$iv",
        "size$iv",
        "eventListener$iv",
        "options$iv",
        "type$iv",
        "this_$iv",
        "request$iv",
        "size$iv",
        "eventListener$iv",
        "options$iv",
        "fetchResult$iv",
        "decoder$iv",
        "request$iv",
        "size$iv",
        "eventListener$iv",
        "this_$iv$iv",
        "baseResult$iv",
        "$this$foldIndices$iv$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$5",
        "L$6",
        "L$7",
        "L$0",
        "L$1",
        "L$2",
        "L$4",
        "L$5",
        "L$6"
    }
.end annotation


# instance fields
.field final synthetic $chain:Lcoil/intercept/Interceptor$Chain;

.field final synthetic $eventListener:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $fetcher:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $mappedData:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $memoryCacheKey:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $request:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $size:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $value:Lkotlin/jvm/internal/Ref$ObjectRef;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcoil/intercept/EngineInterceptor;


# direct methods
.method constructor <init>(Lcoil/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil/intercept/Interceptor$Chain;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iput-object p2, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$mappedData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$fetcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    iput-object p7, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$size:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$eventListener:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p9, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcoil/intercept/EngineInterceptor$intercept$2;

    iget-object v1, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v2, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$mappedData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$fetcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    iget-object v7, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$size:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$eventListener:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, p0, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcoil/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil/intercept/Interceptor$Chain;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcoil/intercept/EngineInterceptor$intercept$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcoil/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 108
    iget v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    if-eq v1, v9, :cond_1

    if-ne v1, v8, :cond_0

    iget v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->I$1:I

    iget v2, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iget-object v3, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    check-cast v4, Lcoil/fetch/DrawableResult;

    iget-object v5, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lcoil/intercept/EngineInterceptor;

    iget-object v6, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    check-cast v6, Lcoil/intercept/EngineInterceptor$intercept$2;

    iget-object v9, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lcoil/EventListener;

    iget-object v13, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    check-cast v13, Lcoil/size/Size;

    iget-object v14, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lcoil/request/ImageRequest;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    move-object v8, v4

    move-object v4, v7

    const/4 v15, 0x3

    goto/16 :goto_9

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$7:Ljava/lang/Object;

    check-cast v1, Lcoil/decode/Decoder;

    iget-object v2, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lcoil/fetch/FetchResult;

    iget-object v3, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    check-cast v3, Lcoil/decode/Options;

    iget-object v4, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    check-cast v4, Lcoil/intercept/EngineInterceptor$intercept$2;

    iget-object v5, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lcoil/EventListener;

    iget-object v6, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lcoil/size/Size;

    iget-object v9, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lcoil/request/ImageRequest;

    iget-object v13, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lcoil/intercept/EngineInterceptor;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v12, p1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    iget v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iget-object v2, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lcoil/decode/Options;

    iget-object v3, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    check-cast v3, Lcoil/intercept/EngineInterceptor$intercept$2;

    iget-object v4, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    check-cast v4, Lcoil/EventListener;

    iget-object v5, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lcoil/size/Size;

    iget-object v6, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lcoil/request/ImageRequest;

    iget-object v13, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    check-cast v13, Lcoil/fetch/Fetcher;

    iget-object v14, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lcoil/intercept/EngineInterceptor;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v19, v1

    move-object v15, v14

    move-object/from16 v1, p1

    move-object/from16 v20, v3

    move-object v3, v2

    move-object v2, v6

    move-object v6, v5

    move-object v5, v4

    move-object/from16 v4, v20

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v2, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/request/ImageRequest;

    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcoil/intercept/EngineInterceptor;->access$invalidateData(Lcoil/intercept/EngineInterceptor;Ljava/lang/Object;)V

    .line 113
    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcoil/memory/RealMemoryCache$Value;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    invoke-static {v1}, Lcoil/intercept/EngineInterceptor;->access$getReferenceCounter$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v1

    iget-object v2, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$value:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/memory/RealMemoryCache$Value;

    invoke-interface {v2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    .line 117
    :cond_4
    iget-object v13, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$mappedData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$fetcher:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lcoil/fetch/Fetcher;

    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Lcoil/request/ImageRequest;

    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    check-cast v1, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v1}, Lcoil/intercept/RealInterceptorChain;->getRequestType()I

    move-result v6

    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$size:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcoil/size/Size;

    iget-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->$eventListener:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcoil/EventListener;

    .line 400
    invoke-static {v13}, Lcoil/intercept/EngineInterceptor;->access$getRequestService$p(Lcoil/intercept/EngineInterceptor;)Lcoil/memory/RequestService;

    move-result-object v1

    invoke-static {v13}, Lcoil/intercept/EngineInterceptor;->access$getSystemCallbacks$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/SystemCallbacks;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/util/SystemCallbacks;->isOnline()Z

    move-result v2

    invoke-virtual {v1, v15, v5, v2}, Lcoil/memory/RequestService;->options(Lcoil/request/ImageRequest;Lcoil/size/Size;Z)Lcoil/decode/Options;

    move-result-object v2

    .line 402
    invoke-interface {v4, v15, v14, v2}, Lcoil/EventListener;->fetchStart(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;)V

    .line 403
    invoke-static {v13}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v16

    iput-object v13, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    iput-object v14, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    iput-object v15, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    iput-object v5, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    iput-object v4, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    iput-object v7, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    iput-object v2, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    iput v6, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iput v12, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    move-object v1, v14

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move/from16 v19, v6

    move-object/from16 v6, p0

    invoke-interface/range {v1 .. v6}, Lcoil/fetch/Fetcher;->fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v4, v7

    move-object v2, v15

    move-object/from16 v5, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    move-object v15, v13

    move-object v13, v14

    .line 108
    :goto_0
    check-cast v1, Lcoil/fetch/FetchResult;

    .line 404
    invoke-interface {v5, v2, v13, v3, v1}, Lcoil/EventListener;->fetchEnd(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;Lcoil/fetch/FetchResult;)V

    .line 407
    instance-of v13, v1, Lcoil/fetch/SourceResult;

    if-eqz v13, :cond_a

    .line 410
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v13

    invoke-static {v13}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    if-nez v19, :cond_6

    .line 415
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v13

    if-nez v13, :cond_6

    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v13

    invoke-virtual {v13}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_7

    .line 419
    sget-object v13, Lcoil/decode/EmptyDecoder;->INSTANCE:Lcoil/decode/EmptyDecoder;

    check-cast v13, Lcoil/decode/Decoder;

    goto :goto_2

    .line 421
    :cond_7
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getDecoder()Lcoil/decode/Decoder;

    move-result-object v13

    if-eqz v13, :cond_8

    :goto_2
    move-object v10, v13

    goto :goto_3

    :cond_8
    invoke-static {v15}, Lcoil/intercept/EngineInterceptor;->access$getRegistry$p(Lcoil/intercept/EngineInterceptor;)Lcoil/ComponentRegistry;

    move-result-object v13

    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v1

    check-cast v16, Lcoil/fetch/SourceResult;

    invoke-virtual/range {v16 .. v16}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v10

    move-object/from16 v16, v1

    check-cast v16, Lcoil/fetch/SourceResult;

    invoke-virtual/range {v16 .. v16}, Lcoil/fetch/SourceResult;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v14, v10, v12}, Lcoil/util/-ComponentRegistries;->requireDecoder(Lcoil/ComponentRegistry;Ljava/lang/Object;Lokio/BufferedSource;Ljava/lang/String;)Lcoil/decode/Decoder;

    move-result-object v10

    .line 425
    :goto_3
    invoke-interface {v5, v2, v10, v3}, Lcoil/EventListener;->decodeStart(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;)V

    .line 426
    invoke-static {v15}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v14

    move-object v12, v1

    check-cast v12, Lcoil/fetch/SourceResult;

    invoke-virtual {v12}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v12

    iput-object v15, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    iput-object v2, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    iput-object v6, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    iput-object v5, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    iput-object v4, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    iput-object v3, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    iput-object v1, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    iput-object v10, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->L$7:Ljava/lang/Object;

    iput v9, v7, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    move-object v13, v10

    move-object v9, v15

    move-object v15, v12

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-interface/range {v13 .. v18}, Lcoil/decode/Decoder;->decode(Lcoil/bitmap/BitmapPool;Lokio/BufferedSource;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v12, v0, :cond_9

    return-object v0

    :cond_9
    move-object v13, v9

    move-object v9, v2

    move-object v2, v1

    move-object v1, v10

    .line 108
    :goto_4
    :try_start_2
    check-cast v12, Lcoil/decode/DecodeResult;

    .line 427
    invoke-interface {v5, v9, v1, v3, v12}, Lcoil/EventListener;->decodeEnd(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;Lcoil/decode/DecodeResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    new-instance v1, Lcoil/fetch/DrawableResult;

    .line 438
    invoke-virtual {v12}, Lcoil/decode/DecodeResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 439
    invoke-virtual {v12}, Lcoil/decode/DecodeResult;->isSampled()Z

    move-result v12

    .line 440
    check-cast v2, Lcoil/fetch/SourceResult;

    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v2

    .line 437
    invoke-direct {v1, v10, v12, v2}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    move-object v2, v9

    move-object v9, v13

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 432
    :goto_5
    check-cast v2, Lcoil/fetch/SourceResult;

    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcoil/util/-Extensions;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    throw v0

    :cond_a
    move-object v9, v15

    .line 443
    instance-of v10, v1, Lcoil/fetch/DrawableResult;

    if-eqz v10, :cond_18

    check-cast v1, Lcoil/fetch/DrawableResult;

    .line 447
    :goto_6
    invoke-interface/range {p0 .. p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 451
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v10

    .line 452
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    move-object v4, v7

    const/16 v16, 0x1

    goto/16 :goto_a

    .line 455
    :cond_b
    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v12, v12, Landroid/graphics/drawable/BitmapDrawable;

    const-string v13, " to apply transformations: "

    const/4 v14, 0x4

    const-string v15, "EngineInterceptor"

    if-eqz v12, :cond_f

    .line 456
    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 457
    sget-object v8, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    const-string/jumbo v11, "resultBitmap"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_7

    .line 460
    :cond_c
    invoke-static {v9}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 461
    invoke-interface {v8}, Lcoil/util/Logger;->getLevel()I

    move-result v11

    if-gt v11, v14, :cond_d

    .line 463
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Converting bitmap with config "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-interface {v8, v15, v12, v11, v13}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    :cond_d
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 465
    :cond_e
    invoke-static {v9}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v12

    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-virtual {v3}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v16

    invoke-virtual {v3}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v17

    move-object v15, v6

    invoke-virtual/range {v12 .. v17}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_7

    .line 468
    :cond_f
    invoke-static {v9}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 461
    invoke-interface {v8}, Lcoil/util/Logger;->getLevel()I

    move-result v11

    const/4 v12, 0x4

    if-gt v11, v12, :cond_10

    .line 469
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Converting drawable of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-interface {v8, v15, v12, v11, v13}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    :cond_10
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 471
    :cond_11
    invoke-static {v9}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v12

    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-virtual {v3}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v16

    invoke-virtual {v3}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v17

    move-object v15, v6

    invoke-virtual/range {v12 .. v17}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    :goto_7
    const-string v3, "input"

    .line 473
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v2, v12}, Lcoil/EventListener;->transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 476
    move-object v3, v10

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move-object v8, v1

    move-object v14, v2

    move v1, v3

    move-object v13, v6

    move-object v3, v10

    const/4 v2, 0x0

    move-object v6, v4

    move-object v4, v7

    move-object/from16 v20, v9

    move-object v9, v5

    move-object/from16 v5, v20

    :goto_8
    if-ge v2, v1, :cond_13

    .line 477
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcoil/transform/Transformation;

    .line 478
    invoke-static {v5}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v11

    const-string v15, "bitmap"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v14, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$1:Ljava/lang/Object;

    iput-object v9, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$2:Ljava/lang/Object;

    iput-object v6, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$3:Ljava/lang/Object;

    iput-object v5, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$4:Ljava/lang/Object;

    iput-object v8, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$5:Ljava/lang/Object;

    iput-object v3, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$6:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->L$7:Ljava/lang/Object;

    iput v2, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->I$0:I

    iput v1, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->I$1:I

    const/4 v15, 0x3

    iput v15, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->label:I

    invoke-interface {v10, v11, v12, v13, v6}, Lcoil/transform/Transformation;->transform(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_12

    return-object v0

    .line 108
    :cond_12
    :goto_9
    move-object v12, v10

    check-cast v12, Landroid/graphics/Bitmap;

    .line 478
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    const/16 v16, 0x1

    const-string/jumbo v0, "output"

    .line 481
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v14, v12}, Lcoil/EventListener;->transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 482
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 483
    move-object v9, v1

    check-cast v9, Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    .line 482
    invoke-static/range {v8 .. v13}, Lcoil/fetch/DrawableResult;->copy$default(Lcoil/fetch/DrawableResult;Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;ILjava/lang/Object;)Lcoil/fetch/DrawableResult;

    move-result-object v1

    .line 485
    :goto_a
    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    instance-of v0, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_14

    const/4 v13, 0x0

    :cond_14
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_15

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 486
    :cond_15
    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->component1()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->component2()Z

    move-result v2

    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->component3()Lcoil/decode/DataSource;

    move-result-object v1

    .line 120
    iget-object v3, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    invoke-static {v3, v0}, Lcoil/intercept/EngineInterceptor;->access$validateDrawable(Lcoil/intercept/EngineInterceptor;Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v3, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v5, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ImageRequest;

    iget-object v6, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcoil/memory/MemoryCache$Key;

    invoke-static {v3, v5, v6, v0, v2}, Lcoil/intercept/EngineInterceptor;->access$writeToMemoryCache(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z

    move-result v3

    .line 128
    iget-object v5, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ImageRequest;

    .line 130
    iget-object v6, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->$memoryCacheKey:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcoil/memory/MemoryCache$Key;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v11, v6

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    .line 133
    :goto_b
    iget-object v3, v4, Lcoil/intercept/EngineInterceptor$intercept$2;->$chain:Lcoil/intercept/Interceptor$Chain;

    check-cast v3, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v3}, Lcoil/intercept/RealInterceptorChain;->getCached()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_17

    const/4 v10, 0x1

    goto :goto_c

    :cond_17
    const/4 v10, 0x0

    .line 129
    :goto_c
    new-instance v3, Lcoil/request/ImageResult$Metadata;

    invoke-direct {v3, v11, v2, v1, v10}, Lcoil/request/ImageResult$Metadata;-><init>(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V

    .line 126
    new-instance v1, Lcoil/request/SuccessResult;

    invoke-direct {v1, v0, v5, v3}, Lcoil/request/SuccessResult;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    return-object v1

    .line 443
    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
