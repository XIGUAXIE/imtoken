.class public final Lcom/helpscout/beacon/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/c/c/a;


# instance fields
.field private a:Lorg/threeten/bp/LocalDateTime;

.field private b:Lorg/threeten/bp/LocalDateTime;

.field private final c:Lcom/helpscout/beacon/internal/data/remote/a;

.field private final d:Lcom/helpscout/beacon/BeaconDatastore;

.field private final e:Lcom/helpscout/beacon/internal/presentation/common/b;

.field private final f:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final g:Lcom/helpscout/beacon/internal/core/util/DeviceTime;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/presentation/common/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/internal/core/util/DeviceTime;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p3, p0, Lcom/helpscout/beacon/a/b/b;->e:Lcom/helpscout/beacon/internal/presentation/common/b;

    iput-object p4, p0, Lcom/helpscout/beacon/a/b/b;->f:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p5, p0, Lcom/helpscout/beacon/a/b/b;->g:Lcom/helpscout/beacon/internal/core/util/DeviceTime;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setRawConfig(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->g:Lcom/helpscout/beacon/internal/core/util/DeviceTime;

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/core/util/DeviceTime;->getNow()Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/b;->a:Lorg/threeten/bp/LocalDateTime;

    return-void
.end method

.method private final a()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->a:Lorg/threeten/bp/LocalDateTime;

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/a/b/b;->a(Lorg/threeten/bp/LocalDateTime;J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final a(Lorg/threeten/bp/LocalDateTime;J)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->g:Lcom/helpscout/beacon/internal/core/util/DeviceTime;

    invoke-interface {v0}, Lcom/helpscout/beacon/internal/core/util/DeviceTime;->getNow()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/LocalDateTime;->minusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/threeten/bp/LocalDateTime;->isAfter(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final b(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->e:Lcom/helpscout/beacon/internal/presentation/common/b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDisplay()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a(I)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->f:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getLabels()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;)V

    return-void
.end method


# virtual methods
.method public a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/a;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/c/c/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/b$b;

    iget v1, v0, Lcom/helpscout/beacon/a/b/b$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/b$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/b$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/b$b;-><init>(Lcom/helpscout/beacon/a/b/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/b$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/b$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/b/b$b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/b/b;

    iget-object v0, v0, Lcom/helpscout/beacon/a/b/b$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/b/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/b$b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/b/b;

    iget-object v0, v0, Lcom/helpscout/beacon/a/b/b$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/b/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lcom/helpscout/beacon/a/b/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_6

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/b$b;->d:Ljava/lang/Object;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/b$b;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/b$b;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    move-object v0, p1

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/b/b;->a(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_6
    invoke-direct {p0}, Lcom/helpscout/beacon/a/b/b;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/b$b;->d:Ljava/lang/Object;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/b$b;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/b$b;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, p0

    move-object v0, p1

    goto :goto_1

    :cond_8
    move-object v0, p0

    :goto_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object p1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object p1

    move-object v0, p0

    :goto_3
    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/b/b;->b(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/core/model/ArticleApi;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/remote/a;->b(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/a;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/internal/data/remote/a;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/b/b$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/b/b$c;

    iget v1, v0, Lcom/helpscout/beacon/a/b/b$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/b$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/b$c;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/b/b$c;-><init>(Lcom/helpscout/beacon/a/b/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/b$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/b$c;->b:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getCustomFieldsEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    iput v3, v0, Lcom/helpscout/beacon/a/b/b$c;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/b/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/b/b$a;

    iget v1, v0, Lcom/helpscout/beacon/a/b/b$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/b$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/b$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/b/b$a;-><init>(Lcom/helpscout/beacon/a/b/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/b$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/helpscout/beacon/a/b/b$a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/BeaconDatastore;

    iget-object v0, v0, Lcom/helpscout/beacon/a/b/b$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/b/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getAgents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->b:Lorg/threeten/bp/LocalDateTime;

    const-wide/16 v4, 0xb4

    invoke-direct {p0, p1, v4, v5}, Lcom/helpscout/beacon/a/b/b;->a(Lorg/threeten/bp/LocalDateTime;J)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p0

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    iget-object v2, p0, Lcom/helpscout/beacon/a/b/b;->c:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/b$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/b$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/b$a;->b:I

    invoke-interface {v2, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    :goto_2
    check-cast p1, Ljava/util/List;

    invoke-interface {v1, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setAgents(Ljava/util/List;)V

    iget-object p1, v0, Lcom/helpscout/beacon/a/b/b;->g:Lcom/helpscout/beacon/internal/core/util/DeviceTime;

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/core/util/DeviceTime;->getNow()Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/b;->b:Lorg/threeten/bp/LocalDateTime;

    :goto_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/b;->d:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getAgents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
