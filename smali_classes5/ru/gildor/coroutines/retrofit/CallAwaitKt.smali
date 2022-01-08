.class public final Lru/gildor/coroutines/retrofit/CallAwaitKt;
.super Ljava/lang/Object;
.source "CallAwait.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallAwait.kt\nru/gildor/coroutines/retrofit/CallAwaitKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,126:1\n156#2,6:127\n156#2,6:133\n156#2,6:139\n*E\n*S KotlinDebug\n*F\n+ 1 CallAwait.kt\nru/gildor/coroutines/retrofit/CallAwaitKt\n*L\n34#1,6:127\n64#1,6:133\n89#1,6:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\'\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a+\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0008\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u001c\u0010\t\u001a\u00020\n*\u0006\u0012\u0002\u0008\u00030\u00032\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000cH\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "await",
        "T",
        "",
        "Lretrofit2/Call;",
        "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitResponse",
        "Lretrofit2/Response;",
        "awaitResult",
        "Lru/gildor/coroutines/retrofit/Result;",
        "registerOnCompletion",
        "",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "kotlin-coroutines-retrofit"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final synthetic access$registerOnCompletion(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lru/gildor/coroutines/retrofit/CallAwaitKt;->registerOnCompletion(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final await(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 129
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 130
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 35
    new-instance v2, Lru/gildor/coroutines/retrofit/CallAwaitKt$await$2$1;

    invoke-direct {v2, v1}, Lru/gildor/coroutines/retrofit/CallAwaitKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-interface {p0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 54
    invoke-static {p0, v1}, Lru/gildor/coroutines/retrofit/CallAwaitKt;->access$registerOnCompletion(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 131
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 127
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final awaitResponse(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 135
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 136
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 65
    new-instance v2, Lru/gildor/coroutines/retrofit/CallAwaitKt$awaitResponse$2$1;

    invoke-direct {v2, v1}, Lru/gildor/coroutines/retrofit/CallAwaitKt$awaitResponse$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-interface {p0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 77
    invoke-static {p0, v1}, Lru/gildor/coroutines/retrofit/CallAwaitKt;->access$registerOnCompletion(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 137
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 133
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final awaitResult(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lru/gildor/coroutines/retrofit/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 140
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 141
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 142
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 90
    new-instance v2, Lru/gildor/coroutines/retrofit/CallAwaitKt$awaitResult$2$1;

    invoke-direct {v2, v1}, Lru/gildor/coroutines/retrofit/CallAwaitKt$awaitResult$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-interface {p0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 113
    invoke-static {p0, v1}, Lru/gildor/coroutines/retrofit/CallAwaitKt;->access$registerOnCompletion(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 143
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 139
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method private static final registerOnCompletion(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;)V"
        }
    .end annotation

    .line 118
    new-instance v0, Lru/gildor/coroutines/retrofit/CallAwaitKt$registerOnCompletion$1;

    invoke-direct {v0, p0}, Lru/gildor/coroutines/retrofit/CallAwaitKt$registerOnCompletion$1;-><init>(Lretrofit2/Call;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
