.class public final Lcom/helpscout/beacon/a/c/e/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/a;

.field private final b:Lcom/helpscout/beacon/a/d/d/f;

.field private final c:Lcom/helpscout/beacon/BeaconDatastore;

.field private final d:Lcom/helpscout/beacon/a/c/d/a;

.field private final e:Lcom/helpscout/beacon/a/c/e/c;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;Lcom/helpscout/beacon/a/d/d/f;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/d/a;Lcom/helpscout/beacon/a/c/e/c;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushSubscriptionDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datastore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifyCustomerUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/e;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/h/e;->b:Lcom/helpscout/beacon/a/d/d/f;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/h/e;->c:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/h/e;->d:Lcom/helpscout/beacon/a/c/d/a;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/h/e;->e:Lcom/helpscout/beacon/a/c/e/c;

    return-void
.end method

.method private final a()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/e;->d:Lcom/helpscout/beacon/a/c/d/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/d/a;->a()V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/e;->c:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->clearSessionAttributes()V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/e;->c:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->clearPrefilledForm()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/helpscout/beacon/a/c/e/h/e$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/helpscout/beacon/a/c/e/h/e$a;

    iget v3, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->b:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/helpscout/beacon/a/c/e/h/e$a;

    invoke-direct {v2, v1, v0}, Lcom/helpscout/beacon/a/c/e/h/e$a;-><init>(Lcom/helpscout/beacon/a/c/e/h/e;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    iget v3, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->b:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v12, :cond_3

    if-eq v3, v11, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v2, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/h/e;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/a/c/e/h/e;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    goto/16 :goto_8

    :cond_3
    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->d:Ljava/lang/Object;

    check-cast v3, Lcom/helpscout/beacon/a/c/e/h/e;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_3
    iget-object v0, v1, Lcom/helpscout/beacon/a/c/e/h/e;->c:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v13

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_7

    :goto_3
    move-object v14, v0

    goto :goto_4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/e/a/e;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lcom/helpscout/beacon/a/d/e/a/e;->a(Lcom/helpscout/beacon/a/d/e/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/e/a/e;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-static {}, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->getEmptyCustomFieldValue()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v12

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    iget-object v3, v1, Lcom/helpscout/beacon/a/c/e/h/e;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iget-object v0, v1, Lcom/helpscout/beacon/a/c/e/h/e;->d:Lcom/helpscout/beacon/a/c/d/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/d/a;->b()Ljava/util/List;

    move-result-object v6

    iget-object v0, v1, Lcom/helpscout/beacon/a/c/e/h/e;->c:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getSessionAttributes()Ljava/util/Map;

    move-result-object v7

    iput-object v1, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->d:Ljava/lang/Object;

    iput v12, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->b:I

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Lcom/helpscout/beacon/a/d/e/a/e;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_b

    return-object v9

    :cond_b
    move-object v3, v1

    :goto_7
    check-cast v0, Ljava/lang/String;

    iget-object v4, v3, Lcom/helpscout/beacon/a/c/e/h/e;->c:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4, v12}, Lcom/helpscout/beacon/BeaconDatastore;->setHasPreviousConversations(Z)V

    invoke-direct {v3}, Lcom/helpscout/beacon/a/c/e/h/e;->a()V

    iget-object v4, v3, Lcom/helpscout/beacon/a/c/e/h/e;->e:Lcom/helpscout/beacon/a/c/e/c;

    iput-object v3, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->d:Ljava/lang/Object;

    iput-object v0, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->e:Ljava/lang/Object;

    iput v11, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->b:I

    invoke-virtual {v4, v2}, Lcom/helpscout/beacon/a/c/e/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_c

    return-object v9

    :cond_c
    move-object/from16 v22, v4

    move-object v4, v0

    move-object/from16 v0, v22

    :goto_8
    check-cast v0, Lcom/helpscout/beacon/a/c/e/c$a;

    sget-object v5, Lcom/helpscout/beacon/a/c/e/c$a$a;->a:Lcom/helpscout/beacon/a/c/e/c$a$a;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v3, Lcom/helpscout/beacon/a/c/e/h/e;->b:Lcom/helpscout/beacon/a/d/d/f;

    iput-object v3, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->d:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->e:Ljava/lang/Object;

    iput v10, v2, Lcom/helpscout/beacon/a/c/e/h/e$a;->b:I

    invoke-interface {v0, v4, v2}, Lcom/helpscout/beacon/a/d/d/f;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_d

    return-object v9

    :cond_d
    move-object v2, v3

    :goto_9
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$e;

    iget-object v2, v2, Lcom/helpscout/beacon/a/c/e/h/e;->c:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getEnablePreviousMessages()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$e;-><init>(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/message/d$f;

    invoke-direct {v2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$f;-><init>(Ljava/lang/Throwable;)V

    return-object v2
.end method
