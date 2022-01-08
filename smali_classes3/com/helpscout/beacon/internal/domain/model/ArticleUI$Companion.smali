.class public final Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/domain/model/ArticleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;",
        "",
        "Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;",
        "from",
        "Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;",
        "fromArticleSearch",
        "(Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;)Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;",
        "Lcom/helpscout/beacon/internal/core/model/ArticleApi;",
        "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
        "fromApi",
        "(Lcom/helpscout/beacon/internal/core/model/ArticleApi;)Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;->$$INSTANCE:Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromApi(Lcom/helpscout/beacon/internal/core/model/ArticleApi;)Lcom/helpscout/beacon/internal/domain/model/ArticleUI;
    .locals 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$CustomLink;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final fromArticleSearch(Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;)Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;
    .locals 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ArticleApi$ArticleDocPreview;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
