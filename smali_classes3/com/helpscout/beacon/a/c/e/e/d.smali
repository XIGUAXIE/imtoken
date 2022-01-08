.class public final Lcom/helpscout/beacon/a/c/e/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/c/a;

.field private final b:Lcom/helpscout/beacon/a/c/d/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/c/a;Lcom/helpscout/beacon/a/c/d/a;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/e/d;->a:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/e/d;->b:Lcom/helpscout/beacon/a/c/d/a;

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/a/c/e/e/d;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/a/c/e/e/d;->a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;",
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

    check-cast v1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;

    sget-object v2, Lcom/helpscout/beacon/internal/domain/model/ArticleUI;->Companion:Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;

    invoke-virtual {v2, v1}, Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;->fromArticleSearch(Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;)Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/b/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/e/d$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/e/d$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/d$a;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/e/d$a;-><init>(Lcom/helpscout/beacon/a/c/e/e/d;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p2, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->e:I

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/e/d;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/c/e/e/d;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/e/d;->b:Lcom/helpscout/beacon/a/c/d/a;

    new-instance v2, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    move-object v4, v2

    move-object v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p3, v2}, Lcom/helpscout/beacon/a/c/d/a;->a(Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;)V

    :cond_3
    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/e/d;->a:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->d:Ljava/lang/Object;

    iput p2, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->e:I

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/e/d$a;->b:I

    invoke-interface {p3, p1, p2, v0}, Lcom/helpscout/beacon/a/c/c/a;->a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p3, Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/e/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/helpscout/beacon/a/d/b/e$b;->a:Lcom/helpscout/beacon/a/d/b/e$b;

    goto :goto_3

    :cond_5
    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/e/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/helpscout/beacon/a/d/b/e$f;

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/helpscout/beacon/a/c/e/e/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;->getPaging()Lcom/helpscout/beacon/internal/core/model/PagingApi;

    move-result-object p3

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/core/model/PagingApi;->getHasMore()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/helpscout/beacon/a/d/b/e$f;-><init>(Ljava/util/List;Z)V

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/helpscout/beacon/a/d/b/e$i;

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/helpscout/beacon/a/c/e/e/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/core/model/ArticleSearchResponseApi;->getPaging()Lcom/helpscout/beacon/internal/core/model/PagingApi;

    move-result-object p3

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/core/model/PagingApi;->getHasMore()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/helpscout/beacon/a/d/b/e$i;-><init>(Ljava/util/List;Z)V

    :goto_2
    move-object p1, p2

    :goto_3
    return-object p1
.end method
