.class public final Lcom/helpscout/beacon/a/b/c/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final c:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/g;

.field private final e:Lcom/helpscout/beacon/a/b/c/b/h;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;Lcom/helpscout/beacon/a/b/c/b/g;Lcom/helpscout/beacon/a/b/c/b/h;)V
    .locals 1

    const-string v0, "chatApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDao"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userRepo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/f;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/f;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/b/c/b/f;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    iput-object p4, p0, Lcom/helpscout/beacon/a/b/c/b/f;->d:Lcom/helpscout/beacon/a/b/c/b/g;

    iput-object p5, p0, Lcom/helpscout/beacon/a/b/c/b/f;->e:Lcom/helpscout/beacon/a/b/c/b/h;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/f;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;->loadChatDB(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/c/c/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/f$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f$c;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/f$c;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/f$c;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/f$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$c;->b:I

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

    sget-object p2, Lcom/helpscout/beacon/a/c/c/b;->CACHE:Lcom/helpscout/beacon/a/c/c/b;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/f;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {p1}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-result-object p1

    goto :goto_2

    :cond_3
    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/f$c;->b:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    move-object p1, p2

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    :goto_2
    return-object p1
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/f$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f$f;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/f$f;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/f$f;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    iget-object v0, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/b/c/b/f;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/f;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/helpscout/beacon/a/b/c/b/a;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/f;->d:Lcom/helpscout/beacon/a/b/c/b/g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getCustomer()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v2

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->b:I

    invoke-virtual {p2, v2, v0}, Lcom/helpscout/beacon/a/b/c/b/g;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->getAgent()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object v4, v2, Lcom/helpscout/beacon/a/b/c/b/f;->d:Lcom/helpscout/beacon/a/b/c/b/g;

    iput-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/f$f;->b:I

    invoke-virtual {v4, p2, v0}, Lcom/helpscout/beacon/a/b/c/b/g;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v2

    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-object v2, v0

    :cond_6
    iget-object p2, v2, Lcom/helpscout/beacon/a/b/c/b/f;->e:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-result-object p1

    iget-object p2, v2, Lcom/helpscout/beacon/a/b/c/b/f;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    invoke-interface {p2, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;->insert(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;)V

    return-object p1
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/f$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f$g;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/f$g;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/f$g;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->e:J

    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/b/c/b/f;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getId()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/f;->d:Lcom/helpscout/beacon/a/b/c/b/g;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->d:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->e:J

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/f$g;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/g;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    move-wide v1, v4

    :goto_1
    iget-object p2, p1, Lcom/helpscout/beacon/a/b/c/b/f;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;

    iget-object p1, p1, Lcom/helpscout/beacon/a/b/c/b/f;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {p1}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, v2, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;->updateAgent(JLjava/lang/String;)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/b/c/b/f$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f$a;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/f$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/b/c/b/f$a;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/b/c/b/f;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/f;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iget-object v2, p0, Lcom/helpscout/beacon/a/b/c/b/f;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v2}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->b:I

    invoke-interface {p1, v2, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->getChat(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/f$a;->b:I

    invoke-virtual {v2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/b/c/b/f$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f$b;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/f$b;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/b/c/b/f$b;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$b;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/f;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {p1}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->getAgentId()Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/helpscout/beacon/a/b/c/b/f;->d:Lcom/helpscout/beacon/a/b/c/b/g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->getAgentId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/f$b;->b:I

    invoke-virtual {v2, v5, v6, v0}, Lcom/helpscout/beacon/a/b/c/b/g;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    move-object v3, p1

    check-cast v3, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    :cond_5
    return-object v3
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/b/c/b/f$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f$d;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/f$d;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/b/c/b/f$d;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$d;->b:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/f;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {p1}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->getPLACEHOLDER_CUSTOMER_DB()Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/helpscout/beacon/a/b/c/b/f;->d:Lcom/helpscout/beacon/a/b/c/b/g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->getCustomerId()J

    move-result-wide v4

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/f$d;->b:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/helpscout/beacon/a/b/c/b/g;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    :goto_2
    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/b/c/b/f$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/f$e;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$e;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/f$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/f$e;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/b/c/b/f$e;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/f$e;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/helpscout/beacon/a/b/c/b/f$e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/f;->e:Lcom/helpscout/beacon/a/b/c/b/h;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/f$e;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/f$e;->b:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_1
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Z)Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->getPLACEHOLDER_CUSTOMER_API()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    :goto_2
    return-object p1
.end method
