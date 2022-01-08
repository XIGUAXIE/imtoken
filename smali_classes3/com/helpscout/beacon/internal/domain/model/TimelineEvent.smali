.class public abstract Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;,
        Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;,
        Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$BeaconOpened;,
        Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;,
        Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00042\u00020\u0001:\u0005\u0005\u0006\u0007\u0004\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0004\t\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
        "",
        "<init>",
        "()V",
        "Companion",
        "ArticleViewed",
        "BeaconOpened",
        "ChatStarted",
        "Search",
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Search;",
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;",
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$BeaconOpened;",
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ChatStarted;",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;

.field private static final URL:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.helpscout.beacon"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;->Companion:Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;-><init>()V

    return-void
.end method
