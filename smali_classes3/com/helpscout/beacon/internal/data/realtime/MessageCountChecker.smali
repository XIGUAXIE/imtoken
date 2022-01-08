.class public final Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u001f\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008!\u0010\"J\u001b\u0010\u0005\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;",
        "",
        "Lkotlin/Function0;",
        "",
        "pusherRefresh",
        "start",
        "(Lkotlin/jvm/functions/Function0;)V",
        "recursiveMessageCountCheck",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stop",
        "()V",
        "Lkotlinx/coroutines/Job;",
        "timer",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "backgroundScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "logExceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "",
        "waitPeriodInMilli",
        "J",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;",
        "chatErrorHandler",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;",
        "pusherRefreshCallback",
        "Lkotlin/jvm/functions/Function0;",
        "Lcom/helpscout/beacon/a/c/e/g/w/c;",
        "messageCountCheckerUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/w/c;",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/g/w/c;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;J)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field private final chatErrorHandler:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

.field private final logExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final messageCountCheckerUseCase:Lcom/helpscout/beacon/a/c/e/g/w/c;

.field private pusherRefreshCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Lkotlinx/coroutines/Job;

.field private final waitPeriodInMilli:J


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/g/w/c;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;J)V
    .locals 1

    const-string v0, "messageCountCheckerUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->messageCountCheckerUseCase:Lcom/helpscout/beacon/a/c/e/g/w/c;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->chatErrorHandler:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->timer:Lkotlinx/coroutines/Job;

    iput-wide p5, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->waitPeriodInMilli:J

    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$$special$$inlined$CoroutineExceptionHandler$1;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->logExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$pusherRefreshCallback$1;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$pusherRefreshCallback$1;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->pusherRefreshCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/c/e/g/w/c;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p4, p3, p4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const-wide/16 p5, 0x7530

    :cond_2
    move-wide v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;-><init>(Lcom/helpscout/beacon/a/c/e/g/w/c;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;J)V

    return-void
.end method


# virtual methods
.method final synthetic recursiveMessageCountCheck(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    iget-object v2, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->messageCountCheckerUseCase:Lcom/helpscout/beacon/a/c/e/g/w/c;

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->label:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/g/w/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    :try_start_2
    iget-object p1, v2, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->pusherRefreshCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, p0

    :goto_2
    iget-object v5, v2, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->chatErrorHandler:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    invoke-virtual {v5, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleChatMissingOrIgnore(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->stop()V

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring Error checking the message count as we\'ll try again in soon. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    iget-wide v5, v2, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->waitPeriodInMilli:J

    iput-object v2, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_4
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$recursiveMessageCountCheck$1;->label:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->recursiveMessageCountCheck(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final start(Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pusherRefresh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->pusherRefreshCallback:Lkotlin/jvm/functions/Function0;

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->timer:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$start$1;

    invoke-direct {v5, p0, v0}, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker$start$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->timer:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->timer:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/MessageCountChecker;->timer:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
