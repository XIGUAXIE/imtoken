.class public Lorg/bitcoinj/core/Pong;
.super Lorg/bitcoinj/core/Message;
.source "Pong.java"


# instance fields
.field private nonce:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/bitcoinj/core/Message;-><init>()V

    .line 38
    iput-wide p1, p0, Lorg/bitcoinj/core/Pong;->nonce:J

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

    .line 30
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

    .line 49
    iget-wide v0, p0, Lorg/bitcoinj/core/Pong;->nonce:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    return-void
.end method

.method public getNonce()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/bitcoinj/core/Pong;->nonce:J

    return-wide v0
.end method

.method protected parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/bitcoinj/core/Pong;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/Pong;->nonce:J

    const/16 v0, 0x8

    .line 44
    iput v0, p0, Lorg/bitcoinj/core/Pong;->length:I

    return-void
.end method
