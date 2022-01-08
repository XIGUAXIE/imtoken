.class public final Lcom/helpscout/beacon/a/c/e/g/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/d;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final d:Lcom/helpscout/beacon/BeaconDatastore;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;Lcom/helpscout/beacon/a/b/c/b/d;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 1

    const-string v0, "chatApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatIdGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconDatastore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/r;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/r;->b:Lcom/helpscout/beacon/a/b/c/b/d;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/r;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/r;->d:Lcom/helpscout/beacon/BeaconDatastore;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/g/r$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/r$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/r$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/r$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/r$a;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/g/r$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/r;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p3, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->f:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v1, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/a/c/e/g/r;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/r;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p0, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->d:Ljava/lang/Object;

    iput-object p1, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->e:Ljava/lang/Object;

    iput-object p2, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->f:Ljava/lang/Object;

    iput v3, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->b:I

    invoke-virtual {p3, v7}, Lcom/helpscout/beacon/a/b/c/b/c;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    :goto_1
    move-object v4, p1

    move-object v5, p2

    check-cast p3, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    iget-object p1, v1, Lcom/helpscout/beacon/a/c/e/g/r;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iget-object p2, v1, Lcom/helpscout/beacon/a/c/e/g/r;->b:Lcom/helpscout/beacon/a/b/c/b/d;

    invoke-interface {p2}, Lcom/helpscout/beacon/a/b/c/b/d;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getBody()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    move-object p3, v3

    :goto_2
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    const-string p3, ""

    :goto_3
    iget-object v1, v1, Lcom/helpscout/beacon/a/c/e/g/r;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v1}, Lcom/helpscout/beacon/BeaconDatastore;->getSessionAttributes()Ljava/util/Map;

    move-result-object v6

    iput-object v3, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->d:Ljava/lang/Object;

    iput-object v3, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->e:Ljava/lang/Object;

    iput-object v3, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->f:Ljava/lang/Object;

    iput v2, v7, Lcom/helpscout/beacon/a/c/e/g/r$a;->b:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v1 .. v7}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->startChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_7

    return-object v0

    :cond_7
    :goto_4
    return-object p3
.end method
