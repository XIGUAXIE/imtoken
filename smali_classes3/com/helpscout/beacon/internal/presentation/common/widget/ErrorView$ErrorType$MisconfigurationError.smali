.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;
.super Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MisconfigurationError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;",
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
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
