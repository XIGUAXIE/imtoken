.class public interface abstract Lcom/helpscout/beacon/internal/domain/model/ArticleUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006R\u0016\u0010\u0005\u001a\u00020\u00028&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
        "",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "title",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;->$$INSTANCE:Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/ArticleUI;->Companion:Lcom/helpscout/beacon/internal/domain/model/ArticleUI$Companion;

    return-void
.end method


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method
