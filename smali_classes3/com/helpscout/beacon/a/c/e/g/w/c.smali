.class public final Lcom/helpscout/beacon/a/c/e/g/w/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final c:Lcom/helpscout/beacon/a/c/e/g/m;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/c/e/g/m;)V
    .locals 1

    const-string v0, "chatApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshEventsUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/w/c;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/w/c;->c:Lcom/helpscout/beacon/a/c/e/g/m;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/w/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/w/c$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/w/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide v4, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->e:J

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/w/c;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/w/c;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->d:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->getMessageEventCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/w/c;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->d:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->e:J

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-wide v4, v5

    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-lez v9, :cond_7

    int-to-long v6, p1

    cmp-long v9, v4, v6

    if-lez v9, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event refreshing as CountAPI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is more than CountDB: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/w/c;->c:Lcom/helpscout/beacon/a/c/e/g/m;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/w/c$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/g/m;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event refresh not needed. CountAPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " CountDB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
