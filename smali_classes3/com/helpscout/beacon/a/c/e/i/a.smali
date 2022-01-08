.class public final Lcom/helpscout/beacon/a/c/e/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/c/a;

.field private final c:Lcom/helpscout/beacon/a/c/e/f/c;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/c/a;Lcom/helpscout/beacon/a/c/e/f/c;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolveUrisToAttachmentUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/i/a;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/i/a;->c:Lcom/helpscout/beacon/a/c/e/f/c;

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/model/PreFilledForm;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormDraft()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormDraft()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getPreFilledForm()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getPreFilledForm()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
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

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v1, p2}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->isValidPrefilledValue(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->setHidden(Z)V

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final a(Lcom/helpscout/beacon/model/PreFilledForm;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/model/PreFilledForm;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/PreFilledForm;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/i/a;->c:Lcom/helpscout/beacon/a/c/e/f/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/PreFilledForm;->getAttachments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/a/c/e/f/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/helpscout/beacon/a/d/e/a/d;

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/d/e/a/d;->b()La/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/a;->e()J

    move-result-wide v4

    const-wide/32 v6, 0x989680

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/i/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/i/a$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/i/a$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/i/a$a;-><init>(Lcom/helpscout/beacon/a/c/e/i/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/i/a;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/i/a;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/i/a$a;->b:I

    invoke-interface {p2, v0}, Lcom/helpscout/beacon/a/c/c/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/util/List;

    iget-object v1, v0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v1}, Lcom/helpscout/beacon/BeaconDatastore;->getShowPrefilledCustomFields()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {v0, p2, p1}, Lcom/helpscout/beacon/a/c/e/i/a;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/i/a$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/i/a$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/i/a$b;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/i/a$b;-><init>(Lcom/helpscout/beacon/a/c/e/i/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->g:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/a/d/e/a/b;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v3, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->e:Ljava/lang/Object;

    check-cast v3, Lcom/helpscout/beacon/model/PreFilledForm;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/i/a;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v8, v3

    move-object v2, v1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/i/a;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/a;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object p1

    invoke-direct {v2}, Lcom/helpscout/beacon/a/c/e/i/a;->a()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/helpscout/beacon/a/c/e/i/a;->a(Lcom/helpscout/beacon/model/PreFilledForm;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/helpscout/beacon/model/PreFilledForm;->getCustomFieldValues()Ljava/util/Map;

    move-result-object v6

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->d:Ljava/lang/Object;

    iput-object v4, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->e:Ljava/lang/Object;

    iput-object v5, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->f:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/i/a$b;->b:I

    invoke-virtual {v2, v6, v0}, Lcom/helpscout/beacon/a/c/e/i/a;->a(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, v4

    move-object v13, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v13

    :goto_2
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v4

    invoke-static {}, Lcom/helpscout/beacon/a/d/e/a/g;->b()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v6

    const/4 v9, 0x0

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->isVisitor()Z

    move-result v10

    const/16 v11, 0x80

    const/4 v12, 0x0

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;-><init>(Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
