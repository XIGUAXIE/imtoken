.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, "src=\"//"

    const-string v2, "src=\"https://"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, ""

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "java.lang.String.format(this, *args)"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getPreview()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->cleanUpPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    aput-object v3, v8, v6

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "\n            <a href=\"%s\" class=\"c-RelatedArticles__card\">\n                <div class=\"c-RelatedArticles__card-title\">%s</div>\n                <div class=\"c-RelatedArticles__card-desc\">%s</div>\n              </a>\n        "

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p1, v0, v1

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\n            <div class=\"c-RelatedArticles\">\n                <div class=\"c-RelatedArticles__content\">\n                <div class=\"c-RelatedArticles__title\">%s</div>\n                    %s\n                </div>\n            </div>\n        "

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "articleApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relatedArticlesTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!doctype html>\n            <html>\n            <head>\n            <meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0, maximum-scale=1.0\'>\n            <link rel=\'stylesheet\' type=\'text/css\' href=\'file:///android_res/raw/hs_beacon_article.css\'>\n            </head>\n            <body>\n                <div class=\"c-article-container\">\n                    <article id=\"fullArticle\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</article>\n            </div>\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getRelated()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/e;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n            </body>\n            </html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
