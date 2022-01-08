.class public final Lcom/helpscout/beacon/a/c/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/c/a;

.field private final c:Lcom/helpscout/beacon/a/c/e/c;

.field private final d:Lcom/helpscout/beacon/a/c/e/g/a;

.field private final e:Lcom/helpscout/beacon/a/c/e/e/b;

.field private final f:Lcom/helpscout/beacon/a/c/e/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/c/a;Lcom/helpscout/beacon/a/c/e/c;Lcom/helpscout/beacon/a/c/e/g/a;Lcom/helpscout/beacon/a/c/e/e/b;Lcom/helpscout/beacon/a/c/e/a;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifyCustomerUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatAgentAvailabilityUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getArticleSuggestionsUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getConfigUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/b;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/b;->c:Lcom/helpscout/beacon/a/c/e/c;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/b;->d:Lcom/helpscout/beacon/a/c/e/g/a;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/b;->e:Lcom/helpscout/beacon/a/c/e/e/b;

    iput-object p6, p0, Lcom/helpscout/beacon/a/c/e/b;->f:Lcom/helpscout/beacon/a/c/e/a;

    return-void
.end method

.method private final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/core/model/ArticleApi;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/core/model/ArticleApi;

    sget-object v2, Lcom/helpscout/beacon/internal/domain/model/ArticleUI;->Companion:Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;

    invoke-virtual {v2, v1}, Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;->fromApi(Lcom/helpscout/beacon/internal/core/model/ArticleApi;)Lcom/helpscout/beacon/internal/domain/model/ArticleUI;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final a()Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEnablePreviousMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getHasPreviousConversations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method final synthetic a(Lcom/helpscout/beacon/model/FocusMode;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/model/FocusMode;",
            "Z",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/b/d$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/helpscout/beacon/a/c/e/b$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/a/c/e/b$c;

    iget v3, v2, Lcom/helpscout/beacon/a/c/e/b$c;->b:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/helpscout/beacon/a/c/e/b$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/helpscout/beacon/a/c/e/b$c;

    invoke-direct {v2, p0, v1}, Lcom/helpscout/beacon/a/c/e/b$c;-><init>(Lcom/helpscout/beacon/a/c/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/helpscout/beacon/a/c/e/b$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/helpscout/beacon/a/c/e/b$c;->b:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-boolean v3, v2, Lcom/helpscout/beacon/a/c/e/b$c;->h:Z

    iget-object v4, v2, Lcom/helpscout/beacon/a/c/e/b$c;->g:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/a/c/e/b;

    iget-object v5, v2, Lcom/helpscout/beacon/a/c/e/b$c;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v2, Lcom/helpscout/beacon/a/c/e/b$c;->e:Ljava/lang/Object;

    check-cast v6, Lcom/helpscout/beacon/model/FocusMode;

    iget-object v2, v2, Lcom/helpscout/beacon/a/c/e/b$c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v3

    move-object v8, v6

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v4, v2, Lcom/helpscout/beacon/a/c/e/b$c;->h:Z

    iget-object v6, v2, Lcom/helpscout/beacon/a/c/e/b$c;->g:Ljava/lang/Object;

    check-cast v6, Lcom/helpscout/beacon/BeaconDatastore;

    iget-object v7, v2, Lcom/helpscout/beacon/a/c/e/b$c;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v2, Lcom/helpscout/beacon/a/c/e/b$c;->e:Ljava/lang/Object;

    check-cast v8, Lcom/helpscout/beacon/model/FocusMode;

    iget-object v9, v2, Lcom/helpscout/beacon/a/c/e/b$c;->d:Ljava/lang/Object;

    check-cast v9, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lcom/helpscout/beacon/a/c/e/b$c;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v7, v2, Lcom/helpscout/beacon/a/c/e/b$c;->e:Ljava/lang/Object;

    check-cast v7, Lcom/helpscout/beacon/model/FocusMode;

    iget-object v8, v2, Lcom/helpscout/beacon/a/c/e/b$c;->d:Ljava/lang/Object;

    check-cast v8, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/helpscout/beacon/a/c/e/b$c;->d:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v2, Lcom/helpscout/beacon/a/c/e/b$c;->e:Ljava/lang/Object;

    move-object v4, p3

    iput-object v4, v2, Lcom/helpscout/beacon/a/c/e/b$c;->f:Ljava/lang/Object;

    iput v7, v2, Lcom/helpscout/beacon/a/c/e/b$c;->b:I

    move v7, p2

    invoke-virtual {p0, p2, v2}, Lcom/helpscout/beacon/a/c/e/b;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_5

    return-object v3

    :cond_5
    move-object v8, v0

    :goto_1
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v9, v8, Lcom/helpscout/beacon/a/c/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/e/b$c;->d:Ljava/lang/Object;

    iput-object v1, v2, Lcom/helpscout/beacon/a/c/e/b$c;->e:Ljava/lang/Object;

    iput-object v4, v2, Lcom/helpscout/beacon/a/c/e/b$c;->f:Ljava/lang/Object;

    iput-object v9, v2, Lcom/helpscout/beacon/a/c/e/b$c;->g:Ljava/lang/Object;

    iput-boolean v7, v2, Lcom/helpscout/beacon/a/c/e/b$c;->h:Z

    iput v6, v2, Lcom/helpscout/beacon/a/c/e/b$c;->b:I

    invoke-virtual {v8, v2}, Lcom/helpscout/beacon/a/c/e/b;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_6

    return-object v3

    :cond_6
    move-object v10, v9

    move-object v9, v1

    move-object v1, v6

    move-object v6, v10

    move v11, v7

    move-object v7, v4

    move v4, v11

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v6, v1}, Lcom/helpscout/beacon/BeaconDatastore;->setHasPreviousConversations(Z)V

    iget-object v1, v8, Lcom/helpscout/beacon/a/c/e/b;->e:Lcom/helpscout/beacon/a/c/e/e/b;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/e/b$c;->d:Ljava/lang/Object;

    iput-object v9, v2, Lcom/helpscout/beacon/a/c/e/b$c;->e:Ljava/lang/Object;

    iput-object v7, v2, Lcom/helpscout/beacon/a/c/e/b$c;->f:Ljava/lang/Object;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/e/b$c;->g:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/helpscout/beacon/a/c/e/b$c;->h:Z

    iput v5, v2, Lcom/helpscout/beacon/a/c/e/b$c;->b:I

    invoke-virtual {v1, v2}, Lcom/helpscout/beacon/a/c/e/e/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v5, v7

    move-object v2, v8

    move v7, v4

    move-object v4, v2

    move-object v8, v9

    :goto_3
    check-cast v1, Ljava/util/List;

    invoke-direct {v4, v1}, Lcom/helpscout/beacon/a/c/e/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v1, Lcom/helpscout/beacon/a/d/b/d$b;

    invoke-direct {v2}, Lcom/helpscout/beacon/a/c/e/b;->a()Z

    move-result v6

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/helpscout/beacon/a/d/b/d$b;-><init>(Ljava/util/List;Ljava/util/List;ZZLcom/helpscout/beacon/model/FocusMode;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/b/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/helpscout/beacon/internal/presentation/ui/home/e;
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/b$f;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/b$f;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/b$f;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/b$f;-><init>(Lcom/helpscout/beacon/a/c/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->f:Z

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->e:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_2
    iget-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->f:Z

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->e:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    iget-boolean p2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->f:Z

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v2, 0x1

    xor-int/2addr p3, v2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p3, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setSignature(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/b;->f:Lcom/helpscout/beacon/a/c/e/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->f:Z

    iput v2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    invoke-static {p1, v3, v0, v2, v3}, Lcom/helpscout/beacon/a/c/e/a;->a(Lcom/helpscout/beacon/a/c/e/a;Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    return-object v1

    :cond_2
    move-object p1, p0

    :goto_1
    check-cast p3, Lcom/helpscout/beacon/a/c/e/a$a;

    instance-of v2, p3, Lcom/helpscout/beacon/a/c/e/a$a$b;

    if-eqz v2, :cond_b

    check-cast p3, Lcom/helpscout/beacon/a/c/e/a$a$b;

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/a$a$b;->a()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object p3

    iget-object v2, p1, Lcom/helpscout/beacon/a/c/e/b;->c:Lcom/helpscout/beacon/a/c/e/c;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    iput-object p3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->e:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->f:Z

    const/4 v4, 0x2

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p1

    move p1, p2

    move-object p2, p3

    :goto_2
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessagingEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, v2, Lcom/helpscout/beacon/a/c/e/b;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->e:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->f:Z

    const/4 v4, 0x3

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    invoke-interface {p3, v0}, Lcom/helpscout/beacon/a/c/c/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_3
    check-cast p3, Ljava/util/List;

    goto :goto_4

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_4
    if-eqz p1, :cond_6

    sget-object p1, Lcom/helpscout/beacon/model/FocusMode;->ASK_FIRST:Lcom/helpscout/beacon/model/FocusMode;

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDisplay()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->getFocusMode()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object p1

    :goto_5
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessagingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDocsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getChatEnabled()Z

    move-result p2

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->e:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/helpscout/beacon/a/c/e/b;->a(Lcom/helpscout/beacon/model/FocusMode;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_7
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessagingEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getChatEnabled()Z

    move-result p1

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->e:Ljava/lang/Object;

    const/4 p2, 0x5

    iput p2, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    invoke-virtual {v2, p1, p3, v0}, Lcom/helpscout/beacon/a/c/e/b;->a(ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_8
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDocsEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->d:Ljava/lang/Object;

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/b$f;->e:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v0, Lcom/helpscout/beacon/a/c/e/b$f;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_6
    check-cast p3, Lcom/helpscout/beacon/a/d/b/d;

    return-object p3

    :cond_a
    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/home/e;

    invoke-direct {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/e;-><init>()V

    throw p1

    :cond_b
    instance-of p1, p3, Lcom/helpscout/beacon/a/c/e/a$a$a;

    if-eqz p1, :cond_c

    check-cast p3, Lcom/helpscout/beacon/a/c/e/a$a$a;

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/a$a$a;->a()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/b/d$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/b$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/b$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/b$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/b$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/b$a;-><init>(Lcom/helpscout/beacon/a/c/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/b$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/b$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/b;->e:Lcom/helpscout/beacon/a/c/e/e/b;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/b$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/b$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/e/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/util/List;

    new-instance v1, Lcom/helpscout/beacon/a/d/b/d$a;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/d/b/d$a;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method final synthetic a(ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/b/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/b$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/b$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/b$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/b$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/b$b;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/b$b;-><init>(Lcom/helpscout/beacon/a/c/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/b$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/b$b;->h:Z

    iget-boolean p2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->g:Z

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/b$b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/b$b;->g:Z

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->f:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/BeaconDatastore;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Lcom/helpscout/beacon/a/c/e/b$b;->d:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/a/c/e/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, v5

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/b$b;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->e:Ljava/lang/Object;

    iput-object p3, v0, Lcom/helpscout/beacon/a/c/e/b$b;->f:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/b$b;->g:Z

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/b$b;->b:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/c/e/b;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p3, v2}, Lcom/helpscout/beacon/BeaconDatastore;->setHasPreviousConversations(Z)V

    invoke-direct {v4}, Lcom/helpscout/beacon/a/c/e/b;->a()Z

    move-result p3

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->e:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/b$b;->f:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/b$b;->g:Z

    iput-boolean p3, v0, Lcom/helpscout/beacon/a/c/e/b$b;->h:Z

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/b$b;->b:I

    invoke-virtual {v4, p1, v0}, Lcom/helpscout/beacon/a/c/e/b;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p2

    move p2, p1

    move p1, p3

    move-object p3, v0

    move-object v0, v5

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    new-instance v1, Lcom/helpscout/beacon/a/d/b/d$c;

    invoke-direct {v1, p1, p3, p2, v0}, Lcom/helpscout/beacon/a/d/b/d$c;-><init>(ZZZLjava/util/List;)V

    return-object v1
.end method

.method final synthetic a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/b$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/b$d;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/b$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/b$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/b$d;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/b$d;-><init>(Lcom/helpscout/beacon/a/c/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/b$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/b$d;->b:I

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

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/b;->d:Lcom/helpscout/beacon/a/c/e/g/a;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/b$d;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/g/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/b$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/b$e;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/b$e;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/b$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/b$e;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/b$e;-><init>(Lcom/helpscout/beacon/a/c/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/b$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/b$e;->b:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/b;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/b$e;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
