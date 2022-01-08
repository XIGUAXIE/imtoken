.class public final Lcom/helpscout/beacon/internal/core/util/AndroidDeviceTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/core/util/DeviceTime;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/util/AndroidDeviceTime;",
        "Lcom/helpscout/beacon/internal/core/util/DeviceTime;",
        "Lorg/threeten/bp/LocalDateTime;",
        "getNow",
        "()Lorg/threeten/bp/LocalDateTime;",
        "now",
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
.method public getNow()Lorg/threeten/bp/LocalDateTime;
    .locals 2

    invoke-static {}, Lorg/threeten/bp/LocalDateTime;->now()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    const-string v1, "LocalDateTime.now()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
