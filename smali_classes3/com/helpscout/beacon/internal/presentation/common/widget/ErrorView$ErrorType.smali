.class public abstract Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$ArticleDetailError;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$NoResults;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$GeneralError;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;",
        "",
        "<init>",
        "()V",
        "ArticleDetailError",
        "BeaconViewStateError",
        "GeneralError",
        "MisconfigurationError",
        "NoResults",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$ArticleDetailError;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$NoResults;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$GeneralError;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;",
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

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;-><init>()V

    return-void
.end method
