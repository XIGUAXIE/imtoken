.class public abstract Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0008\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0001\u0002\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;",
        "",
        "",
        "getAvatarOverlapPercentage",
        "()Ljava/lang/Float;",
        "avatarOverlapPercentage",
        "<init>",
        "()V",
        "AdaptiveMode",
        "SimpleMode",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAvatarOverlapPercentage()Ljava/lang/Float;
.end method
