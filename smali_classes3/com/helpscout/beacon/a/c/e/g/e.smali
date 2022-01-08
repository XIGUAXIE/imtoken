.class public final Lcom/helpscout/beacon/a/c/e/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final c:Lcom/helpscout/beacon/a/c/b/a;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final e:Lcom/helpscout/beacon/a/c/e/g/t;

.field private final f:Lcom/helpscout/beacon/a/c/d/a;

.field private final g:Lcom/helpscout/beacon/a/d/d/f;

.field private final h:Lcom/helpscout/beacon/a/c/e/c;

.field private final i:Lcom/helpscout/beacon/a/c/e/g/g;

.field private final j:Lcom/helpscout/beacon/a/c/e/g/r;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/a/c/e/g/t;Lcom/helpscout/beacon/a/c/d/a;Lcom/helpscout/beacon/a/d/d/f;Lcom/helpscout/beacon/a/c/e/c;Lcom/helpscout/beacon/a/c/e/g/g;Lcom/helpscout/beacon/a/c/e/g/r;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadEventsPostChatCreationUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushSubscriptionDelegate"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifyCustomerUseCase"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getChatTokenUseCase"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendChatToServerUseCase"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/e;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/e;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/e;->c:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/e;->d:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/g/e;->e:Lcom/helpscout/beacon/a/c/e/g/t;

    iput-object p6, p0, Lcom/helpscout/beacon/a/c/e/g/e;->f:Lcom/helpscout/beacon/a/c/d/a;

    iput-object p7, p0, Lcom/helpscout/beacon/a/c/e/g/e;->g:Lcom/helpscout/beacon/a/d/d/f;

    iput-object p8, p0, Lcom/helpscout/beacon/a/c/e/g/e;->h:Lcom/helpscout/beacon/a/c/e/c;

    iput-object p9, p0, Lcom/helpscout/beacon/a/c/e/g/e;->i:Lcom/helpscout/beacon/a/c/e/g/g;

    iput-object p10, p0, Lcom/helpscout/beacon/a/c/e/g/e;->j:Lcom/helpscout/beacon/a/c/e/g/r;

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/e;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getPushTokenRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/e;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final a(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/e;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->isVisitor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/e;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getChatConfig()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->getRequireEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/e$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/e$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/e$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/e$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/e;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/e;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/e;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/e;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->f:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/b/c/b/a;

    iget-object v3, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/a/c/e/g/e;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    move-object v3, v2

    move-object v2, v4

    :goto_1
    move-object v4, v10

    goto :goto_4

    :pswitch_4
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/e;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_5
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/e;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/e;->h:Lcom/helpscout/beacon/a/c/e/c;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, p0

    :goto_2
    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/e;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_3
    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/e;->f:Lcom/helpscout/beacon/a/c/d/a;

    new-instance v9, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v9}, Lcom/helpscout/beacon/a/c/d/a;->a(Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;)V

    invoke-direct {v2}, Lcom/helpscout/beacon/a/c/e/g/e;->a()Ljava/lang/String;

    move-result-object v3

    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/e;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    iget-object v4, v2, Lcom/helpscout/beacon/a/c/e/g/e;->i:Lcom/helpscout/beacon/a/c/e/g/g;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->f:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    invoke-virtual {v4, v0}, Lcom/helpscout/beacon/a/c/e/g/g;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v10, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_1

    :goto_4
    check-cast p1, Ljava/lang/String;

    invoke-interface {v3, p1}, Lcom/helpscout/beacon/a/b/c/b/a;->c(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/e;->j:Lcom/helpscout/beacon/a/c/e/g/r;

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/e;->f:Lcom/helpscout/beacon/a/c/d/a;

    invoke-virtual {v3}, Lcom/helpscout/beacon/a/c/d/a;->b()Ljava/util/List;

    move-result-object v3

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->e:Ljava/lang/Object;

    iput-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->f:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    invoke-virtual {p1, v3, v4, v0}, Lcom/helpscout/beacon/a/c/e/g/r;->a(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_5
    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/e;->d:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    invoke-virtual {v3, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_6
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/e;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v3}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/helpscout/beacon/BeaconDatastore;->setHasPreviousConversations(Z)V

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/e;->f:Lcom/helpscout/beacon/a/c/d/a;

    invoke-virtual {v3}, Lcom/helpscout/beacon/a/c/d/a;->a()V

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/e;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v3}, Lcom/helpscout/beacon/BeaconDatastore;->clearSessionAttributes()V

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/e;->c:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v3}, Lcom/helpscout/beacon/a/c/b/a;->b()V

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/e;->e:Lcom/helpscout/beacon/a/c/e/g/t;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->getCustomerId()J

    move-result-wide v4

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->d:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v0, Lcom/helpscout/beacon/a/c/e/g/e$a;->b:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/helpscout/beacon/a/c/e/g/t;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, v2

    :goto_7
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/e;->c:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/b/a;->a()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/e$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/e$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/e$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/e$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/e$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/e$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/e;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/e$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$b;->b:I

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

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/c/e/g/e;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/e;->c:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/b/a;->g()V

    goto :goto_1

    :cond_3
    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/e$b;->b:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/c/e/g/e;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/e$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/e$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/e$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/e$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/e$c;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/e$c;-><init>(Lcom/helpscout/beacon/a/c/e/g/e;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/e$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/e$c;->b:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/e;->g:Lcom/helpscout/beacon/a/d/d/f;

    invoke-interface {p1}, Lcom/helpscout/beacon/a/d/d/f;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/e$c;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/d/d/f;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
