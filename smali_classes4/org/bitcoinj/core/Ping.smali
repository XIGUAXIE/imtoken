.class public Lorg/bitcoinj/core/Ping;
.super Lorg/bitcoinj/core/Message;
.source "Ping.java"


# instance fields
.field private hasNonce:Z

.field private nonce:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/bitcoinj/core/Message;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/bitcoinj/core/Ping;->hasNonce:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/bitcoinj/core/Message;-><init>()V

    .line 39
    iput-wide p1, p0, Lorg/bitcoinj/core/Ping;->nonce:J

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lorg/bitcoinj/core/Ping;->hasNonce:Z

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lorg/bitcoinj/core/Ping;->hasNonce:Z

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lorg/bitcoinj/core/Ping;->nonce:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method public getNonce()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lorg/bitcoinj/core/Ping;->nonce:J

    return-wide v0
.end method

.method public hasNonce()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/bitcoinj/core/Ping;->hasNonce:Z

    return v0
.end method

.method protected parse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Ping;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bitcoinj/core/Ping;->nonce:J

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lorg/bitcoinj/core/Ping;->hasNonce:Z
    :try_end_0
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    iput-boolean v0, p0, Lorg/bitcoinj/core/Ping;->hasNonce:Z

    .line 65
    :goto_0
    iget-boolean v1, p0, Lorg/bitcoinj/core/Ping;->hasNonce:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lorg/bitcoinj/core/Ping;->length:I

    return-void
.end method
