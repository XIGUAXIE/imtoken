.class public abstract Lorg/bitcoinj/core/EmptyMessage;
.super Lorg/bitcoinj/core/Message;
.source "EmptyMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/bitcoinj/core/Message;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lorg/bitcoinj/core/EmptyMessage;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lorg/bitcoinj/core/EmptyMessage;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lorg/bitcoinj/core/EmptyMessage;->length:I

    return-void
.end method


# virtual methods
.method public bitcoinSerialize()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected parse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    return-void
.end method
