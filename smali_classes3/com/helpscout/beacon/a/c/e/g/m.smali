.class public final Lcom/helpscout/beacon/a/c/e/g/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;)V
    .locals 1

    const-string v0, "chatRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/m;->a:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/m;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/m;->c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;J)Z
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->message:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getAuthor()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getId()Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/m$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/m$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/m$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/m$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/m;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->b:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->d:Ljava/lang/Object;

    check-cast v5, Lcom/helpscout/beacon/a/c/e/g/m;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->d:Ljava/lang/Object;

    check-cast v5, Lcom/helpscout/beacon/a/c/e/g/m;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/m;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, v2

    goto/16 :goto_5

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_3
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/m;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    :try_start_4
    check-cast p1, Ljava/util/List;

    iget-object v6, v2, Lcom/helpscout/beacon/a/c/e/g/m;->a:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->b:I

    invoke-virtual {v6, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_7
    move-object v11, v2

    move-object v2, p1

    move-object p1, v5

    move-object v5, v11

    :goto_2
    :try_start_5
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getId()J

    move-result-wide v9

    invoke-direct {v5, v8, v9, v10}, Lcom/helpscout/beacon/a/c/e/g/m;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;J)Z

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v6, v5, Lcom/helpscout/beacon/a/c/e/g/m;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v7, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->b:I

    invoke-virtual {v6, p1, v7, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne p1, v1, :cond_a

    return-object v1

    :catchall_2
    move-exception p1

    move-object v5, p0

    :goto_5
    iget-object v2, v5, Lcom/helpscout/beacon/a/c/e/g/m;->c:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->d:Ljava/lang/Object;

    iput-object v4, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/m$a;->b:I

    invoke-virtual {v2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleError(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_0
    move-exception p1

    throw p1
.end method
