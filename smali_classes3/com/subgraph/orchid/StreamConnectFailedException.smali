.class public Lcom/subgraph/orchid/StreamConnectFailedException;
.super Ljava/lang/Exception;
.source "StreamConnectFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x7075ab2c27e96b59L


# instance fields
.field private final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    iput p1, p0, Lcom/subgraph/orchid/StreamConnectFailedException;->reason:I

    return-void
.end method

.method private static isRetryableReason(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/subgraph/orchid/StreamConnectFailedException;->reason:I

    return v0
.end method

.method public isReasonRetryable()Z
    .locals 1

    .line 18
    iget v0, p0, Lcom/subgraph/orchid/StreamConnectFailedException;->reason:I

    invoke-static {v0}, Lcom/subgraph/orchid/StreamConnectFailedException;->isRetryableReason(I)Z

    move-result v0

    return v0
.end method
