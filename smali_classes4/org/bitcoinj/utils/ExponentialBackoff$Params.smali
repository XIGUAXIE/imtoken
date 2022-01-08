.class public Lorg/bitcoinj/utils/ExponentialBackoff$Params;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/ExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private final initial:F

.field private final maximum:F

.field private final multiplier:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 64
    iput v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->initial:F

    const v0, 0x3f8ccccd    # 1.1f

    .line 65
    iput v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->multiplier:F

    const v0, 0x46ea6000    # 30000.0f

    .line 66
    iput v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->maximum:F

    return-void
.end method

.method public constructor <init>(JFJ)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "multiplier must be greater than 1.0"

    .line 52
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmp-long v2, p4, p1

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "maximum must not be less than initial"

    .line 53
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    long-to-float p1, p1

    .line 55
    iput p1, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->initial:F

    .line 56
    iput p3, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->multiplier:F

    long-to-float p1, p4

    .line 57
    iput p1, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->maximum:F

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)F
    .locals 0

    .line 41
    iget p0, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->initial:F

    return p0
.end method

.method static synthetic access$100(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)F
    .locals 0

    .line 41
    iget p0, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->multiplier:F

    return p0
.end method

.method static synthetic access$200(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)F
    .locals 0

    .line 41
    iget p0, p0, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->maximum:F

    return p0
.end method
