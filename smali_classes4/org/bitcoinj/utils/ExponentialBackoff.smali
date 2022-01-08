.class public Lorg/bitcoinj/utils/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/utils/ExponentialBackoff$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/bitcoinj/utils/ExponentialBackoff;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_MILLIS:I = 0x64

.field public static final DEFAULT_MAXIMUM_MILLIS:I = 0x7530

.field public static final DEFAULT_MULTIPLIER:F = 1.1f


# instance fields
.field private backoff:F

.field private final params:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

.field private retryTime:J


# direct methods
.method public constructor <init>(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->params:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    .line 72
    invoke-virtual {p0}, Lorg/bitcoinj/utils/ExponentialBackoff;->trackSuccess()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/utils/ExponentialBackoff;->compareTo(Lorg/bitcoinj/utils/ExponentialBackoff;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/utils/ExponentialBackoff;)I
    .locals 4

    .line 95
    iget-wide v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->retryTime:J

    iget-wide v2, p1, Lorg/bitcoinj/utils/ExponentialBackoff;->retryTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public getRetryTime()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->retryTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExponentialBackoff retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->retryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " backoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->backoff:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackFailure()V
    .locals 5

    .line 83
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->backoff:F

    float-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->retryTime:J

    .line 84
    iget-object v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->params:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    invoke-static {v0}, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->access$100(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)F

    move-result v0

    mul-float v2, v2, v0

    iget-object v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->params:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    invoke-static {v0}, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->access$200(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->backoff:F

    return-void
.end method

.method public final trackSuccess()V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->params:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    invoke-static {v0}, Lorg/bitcoinj/utils/ExponentialBackoff$Params;->access$000(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)F

    move-result v0

    iput v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->backoff:F

    .line 78
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/utils/ExponentialBackoff;->retryTime:J

    return-void
.end method
