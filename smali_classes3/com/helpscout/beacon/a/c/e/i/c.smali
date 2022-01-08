.class public final Lcom/helpscout/beacon/a/c/e/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/i/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/e/h/e;

.field private final c:Lcom/helpscout/beacon/a/c/e/h/c;

.field private final d:Lcom/helpscout/beacon/internal/presentation/common/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/h/e;Lcom/helpscout/beacon/a/c/e/h/c;Lcom/helpscout/beacon/internal/presentation/common/a;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConversation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUploader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/i/c;->b:Lcom/helpscout/beacon/a/c/e/h/e;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/i/c;->c:Lcom/helpscout/beacon/a/c/e/h/c;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/i/c;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Lcom/helpscout/beacon/a/d/e/a/e;)Lcom/helpscout/beacon/a/c/e/i/c$a;
    .locals 7

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/e;->c()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/e/i/c;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowName()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowSubject()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->isVisitor()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v5, 0x0

    :goto_6
    new-instance p1, Lcom/helpscout/beacon/a/d/e/a/f;

    move-object v1, p1

    move v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/a/d/e/a/f;-><init>(ZZZZLjava/util/List;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->f()Z

    move-result p2

    new-instance v0, Lcom/helpscout/beacon/a/c/e/i/c$a;

    invoke-direct {v0, p2, p1}, Lcom/helpscout/beacon/a/c/e/i/c$a;-><init>(ZLcom/helpscout/beacon/a/d/e/a/f;)V

    return-object v0
.end method

.method private final a(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-static {}, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->getEmptyCustomFieldValue()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->isVisitor()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p3, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setEmail(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_2

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1, p2}, Lcom/helpscout/beacon/BeaconDatastore;->setName(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/i/c$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/i/c$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/i/c$b;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/i/c$b;-><init>(Lcom/helpscout/beacon/a/c/e/i/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/i/c;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->f:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/d/e/a/e;

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->e:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/i/c;

    :try_start_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, p3

    move-object p3, p1

    move-object p1, v2

    move-object v2, v8

    goto :goto_4

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p3}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object p3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lcom/helpscout/beacon/a/c/e/i/c;->a(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Lcom/helpscout/beacon/a/d/e/a/e;)Lcom/helpscout/beacon/a/c/e/i/c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/i/c$a;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    :try_start_3
    iget-object v2, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, ""

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/helpscout/beacon/a/d/e/a/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/d/e/a/e;->e()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/i/c$a;->a()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/helpscout/beacon/a/d/e/a/f;->a()Z

    move-result v7

    xor-int/2addr v7, v5

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/i/c$a;->a()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/d/e/a/f;->d()Z

    move-result p3

    xor-int/2addr p3, v5

    invoke-direct {p0, v6, v2, v7, p3}, Lcom/helpscout/beacon/a/c/e/i/c;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object p3

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->e:Ljava/lang/Object;

    iput-object p3, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->f:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->b:I

    invoke-virtual {p0, p2, v0}, Lcom/helpscout/beacon/a/c/e/i/c;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    :goto_4
    check-cast v2, Ljava/util/List;

    invoke-virtual {p3, v2}, Lcom/helpscout/beacon/a/d/e/a/e;->a(Ljava/util/List;)V

    iget-object p3, p1, Lcom/helpscout/beacon/a/c/e/i/c;->b:Lcom/helpscout/beacon/a/c/e/h/e;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->e:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->f:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->b:I

    invoke-virtual {p3, p2, v0}, Lcom/helpscout/beacon/a/c/e/h/e;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    move-object p2, p3

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    instance-of p3, p2, Lcom/helpscout/beacon/internal/presentation/ui/message/d$e;

    if-eqz p3, :cond_b

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/i/c$b;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/i/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v1, :cond_b

    return-object v1

    :catchall_0
    move-exception p1

    instance-of p2, p1, Lcom/helpscout/beacon/a/c/e/h/a;

    if-eqz p2, :cond_a

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/message/d$a;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/h/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/h/a;->a()Lcom/helpscout/beacon/a/d/e/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$a;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/message/d$f;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$f;-><init>(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    move-object p1, p2

    goto :goto_7

    :cond_c
    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$c;

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/i/c$a;->a()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$c;-><init>(Lcom/helpscout/beacon/a/d/e/a/f;)V

    :goto_7
    return-object p1
.end method

.method final synthetic a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/c;->c:Lcom/helpscout/beacon/a/c/e/h/c;

    invoke-virtual {v0, p1, p2}, Lcom/helpscout/beacon/a/c/e/h/c;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->clearContactFormDraft()V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/i/c;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
