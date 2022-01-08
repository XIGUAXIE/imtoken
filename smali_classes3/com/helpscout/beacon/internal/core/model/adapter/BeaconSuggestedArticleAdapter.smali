.class public final Lcom/helpscout/beacon/internal/core/model/adapter/BeaconSuggestedArticleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/adapter/BeaconSuggestedArticleAdapter;",
        "",
        "Lcom/helpscout/beacon/model/SerializableSuggestedArticle;",
        "serializableArticle",
        "Lcom/helpscout/beacon/model/SuggestedArticle;",
        "fromJson",
        "(Lcom/helpscout/beacon/model/SerializableSuggestedArticle;)Lcom/helpscout/beacon/model/SuggestedArticle;",
        "suggestedArticle",
        "toJson",
        "(Lcom/helpscout/beacon/model/SuggestedArticle;)Lcom/helpscout/beacon/model/SerializableSuggestedArticle;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Lcom/helpscout/beacon/model/SerializableSuggestedArticle;)Lcom/helpscout/beacon/model/SuggestedArticle;
    .locals 5
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    const-string v0, "serializableArticle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;->component2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;->component3()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    new-instance p1, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;

    invoke-direct {p1, v0}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_7

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_7

    new-instance v0, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;

    invoke-direct {v0, p1, v1}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_4

    :cond_7
    new-instance p1, Lcom/helpscout/beacon/model/SuggestedArticle$InvalidArticle;

    invoke-direct {p1}, Lcom/helpscout/beacon/model/SuggestedArticle$InvalidArticle;-><init>()V

    :goto_4
    return-object p1
.end method

.method public final toJson(Lcom/helpscout/beacon/model/SuggestedArticle;)Lcom/helpscout/beacon/model/SerializableSuggestedArticle;
    .locals 3
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    const-string v0, "suggestedArticle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;

    check-cast p1, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithUrl;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;

    check-cast p1, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1, v1}, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;

    invoke-direct {v0, v1, v1, v1}, Lcom/helpscout/beacon/model/SerializableSuggestedArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
