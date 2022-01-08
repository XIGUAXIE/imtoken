.class public final Lcom/helpscout/beacon/a/c/e/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/c/a;

.field private final c:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/c/a;Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestionConverter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/e/b;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/e/b;->c:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;

    return-void
.end method

.method private final a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/model/SuggestedArticle;

    invoke-interface {v2}, Lcom/helpscout/beacon/model/SuggestedArticle;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x5

    if-le p1, v1, :cond_2

    const/4 p1, 0x0

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "You cannot suggest more than 5 articles. Leaving the first 5 on the list."

    invoke-static {v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/core/model/ArticleApi;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/e/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/e/b$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/b$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/e/b$a;-><init>(Lcom/helpscout/beacon/a/c/e/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v4, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/a/c/e/e/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    move-object v2, p2

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/model/SuggestedArticle;

    instance-of v5, p2, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/helpscout/beacon/a/c/e/e/b;->b:Lcom/helpscout/beacon/a/c/c/a;

    check-cast p2, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;

    invoke-virtual {p2}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object v4, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->f:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/e/b$a;->b:I

    invoke-interface {v5, p2, v0}, Lcom/helpscout/beacon/a/c/c/a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    iget-object v5, v4, Lcom/helpscout/beacon/a/c/e/e/b;->c:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;

    invoke-virtual {v5, p2}, Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;->map(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;

    move-result-object p2

    goto :goto_3

    :cond_5
    instance-of v5, p2, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/helpscout/beacon/a/c/e/e/b;->c:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;

    check-cast p2, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;

    invoke-virtual {v5, p2}, Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;->map(Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;)Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;

    move-result-object p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_3

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/e/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/e/b$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/e/b$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/e/b$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/b$b;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/e/b$b;-><init>(Lcom/helpscout/beacon/a/c/e/e/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/e/b$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/e/b$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

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

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/e/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getSuggestionArticles()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/c/e/e/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/e/b;->b:Lcom/helpscout/beacon/a/c/c/a;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/e/b$b;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_4
    iput v3, v0, Lcom/helpscout/beacon/a/c/e/e/b$b;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/helpscout/beacon/a/c/e/e/b;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
