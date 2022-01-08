.class public final Lcom/helpscout/beacon/a/c/e/g/w/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;)V
    .locals 1

    const-string v0, "eventRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatApiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/w/b;->b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/w/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/w/b$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/w/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

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

    goto/16 :goto_5

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/w/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/w/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_3

    :cond_5
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/w/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->e:Ljava/lang/Object;

    iput v7, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/helpscout/beacon/a/c/e/g/w/b;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, v2, Lcom/helpscout/beacon/a/c/e/g/w/b;->b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->e:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->getChatEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    move-object p1, p2

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->isAgentEvent()Z

    move-result p2

    if-eqz p2, :cond_b

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/w/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, v2, Lcom/helpscout/beacon/a/c/e/g/w/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    const-string v3, "AGENT_IS_TYPING_EVENT_ID"

    invoke-virtual {p2, p1, v2, v3, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_a
    iget-object p2, v2, Lcom/helpscout/beacon/a/c/e/g/w/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$a;->b:I

    invoke-virtual {p2, p1, v2, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/w/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    const-string v1, "AGENT_IS_TYPING_EVENT_ID"

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/w/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/w/b$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/w/b$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/w/b$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/w/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$b;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/w/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/w/b$b;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
