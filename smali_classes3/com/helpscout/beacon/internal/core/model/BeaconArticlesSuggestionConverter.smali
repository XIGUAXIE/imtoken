.class public final Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\t\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\t\u0010\u000eJ\u0015\u0010\t\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\t\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;",
        "",
        "",
        "articleText",
        "convertTextToPreview",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionApi;",
        "articleSuggestionApi",
        "Lcom/helpscout/beacon/internal/core/model/ArticleApi;",
        "map",
        "(Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionApi;)Lcom/helpscout/beacon/internal/core/model/ArticleApi;",
        "Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;",
        "suggestedArticle",
        "Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;",
        "(Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;)Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;",
        "Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;",
        "articleApi",
        "Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;",
        "(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;",
        "<init>",
        "()V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter$Companion;

.field private static final PREVIEW_CHAR_LIMIT:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;->Companion:Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final convertTextToPreview(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final map(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;
    .locals 4

    const-string v0, "articleApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/core/model/BeaconArticlesSuggestionConverter;->convertTextToPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final map(Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;)Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;
    .locals 2

    const-string v0, "suggestedArticle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final map(Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionApi;)Lcom/helpscout/beacon/internal/core/model/ArticleApi;
    .locals 4

    const-string v0, "articleSuggestionApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionApi;->getSuggestion()Lcom/helpscout/beacon/internal/core/model/SuggestionApi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleSuggestionApi;->isALink()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getPreview()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/SuggestionApi;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid Suggestion data"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
