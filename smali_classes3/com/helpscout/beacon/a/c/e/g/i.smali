.class public final Lcom/helpscout/beacon/a/c/e/g/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/b/a;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/h;

.field private final e:Lcom/helpscout/beacon/a/c/c/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/a/b/c/b/h;Lcom/helpscout/beacon/a/c/c/a;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/i;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/i;->b:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/i;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/i;->d:Lcom/helpscout/beacon/a/b/c/b/h;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/g/i;->e:Lcom/helpscout/beacon/a/c/c/a;

    return-void
.end method

.method private final a(Ljava/lang/Long;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/i$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/i$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/i$c;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/i$c;-><init>(Lcom/helpscout/beacon/a/c/e/g/i;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/i;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/i;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->b:I

    invoke-virtual {p2, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v4, v2, Lcom/helpscout/beacon/a/c/e/g/i;->b:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v4}, Lcom/helpscout/beacon/a/c/b/a;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    invoke-direct {v2, p1}, Lcom/helpscout/beacon/a/c/e/g/i;->a(Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/helpscout/beacon/a/c/e/g/k$a$c;

    iget-object v0, v2, Lcom/helpscout/beacon/a/c/e/g/i;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getAllowAttachments()Z

    move-result v0

    iget-object v1, v2, Lcom/helpscout/beacon/a/c/e/g/i;->d:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {v1, p2}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/a/c/e/g/k$a$c;-><init>(ZLcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/i$c;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/i;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    move-object p1, p2

    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/k$a;

    :goto_3
    return-object p1
.end method

.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/i$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/i$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/i$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/i$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/i$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/i$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/i;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/i$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/i$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/i;->e:Lcom/helpscout/beacon/a/c/c/a;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/i$a;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/k$a$b;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/g/k$a$b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/i$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/i$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/i$b;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/i$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/i;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->b:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/i;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/i;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    sget-object v2, Lcom/helpscout/beacon/a/c/c/b;->CACHE:Lcom/helpscout/beacon/a/c/c/b;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->b:I

    invoke-virtual {p1, v2, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_2
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    iget-object v5, v2, Lcom/helpscout/beacon/a/c/e/g/i;->b:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v5}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->isEnded()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->getAgentId()Ljava/lang/Long;

    move-result-object p1

    iput-object v6, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->b:I

    invoke-virtual {v2, p1, v0}, Lcom/helpscout/beacon/a/c/e/g/i;->a(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_7
    iput-object v6, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/i;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/k$a;

    return-object p1

    :cond_9
    iput-object v6, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->d:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/i$b;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/i;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    return-object p1
.end method
