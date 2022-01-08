.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ>\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00040\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;",
        "",
        "",
        "exception",
        "",
        "handleError",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "handleChatMissingOrIgnore",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "viewState",
        "unrecoverableErrorAction",
        "handleChatCreationError",
        "(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleGeneralErrorWithHelpBot",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "chatState",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "Lcom/helpscout/beacon/a/c/b/b;",
        "helpBot",
        "Lcom/helpscout/beacon/a/c/b/b;",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/b/b;)V",
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
.field private final chatState:Lcom/helpscout/beacon/a/c/b/a;

.field private final helpBot:Lcom/helpscout/beacon/a/c/b/b;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/b/b;)V
    .locals 1

    const-string v0, "chatState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helpBot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->chatState:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->helpBot:Lcom/helpscout/beacon/a/c/b/b;

    return-void
.end method


# virtual methods
.method public final handleChatCreationError(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    instance-of p3, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;

    if-eqz p3, :cond_5

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->isUnauthorized()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->chatState:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/b/a;->g()V

    goto :goto_2

    :cond_4
    iput v4, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->label:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleGeneralErrorWithHelpBot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_5
    instance-of p3, p1, Ljava/io/IOException;

    if-eqz p3, :cond_6

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->label:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleGeneralErrorWithHelpBot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_6
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final handleChatMissingOrIgnore(Ljava/lang/Throwable;)Z
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->isMissing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->chatState:Lcom/helpscout/beacon/a/c/b/a;

    sget-object v0, Lcom/helpscout/beacon/a/c/b/a$b;->AGENT_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final handleError(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;->isMissing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->chatState:Lcom/helpscout/beacon/a/c/b/a;

    sget-object p2, Lcom/helpscout/beacon/a/c/b/a$b;->AGENT_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/a/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    goto :goto_2

    :cond_4
    iput v4, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;->label:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleGeneralErrorWithHelpBot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_5
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_6

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleError$1;->label:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleGeneralErrorWithHelpBot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic handleGeneralErrorWithHelpBot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->helpBot:Lcom/helpscout/beacon/a/c/b/b;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/c/b/b;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
