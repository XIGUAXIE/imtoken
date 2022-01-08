.class public abstract Lorg/bitcoinj/core/MessageSerializer;
.super Ljava/lang/Object;
.source "MessageSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deserialize(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract deserializeHeader(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract deserializePayload(Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract isParseRetainMode()Z
.end method

.method public abstract makeAddressMessage([BI)Lorg/bitcoinj/core/AddressMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract makeAlertMessage([B)Lorg/bitcoinj/core/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public final makeBlock([B)Lorg/bitcoinj/core/Block;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 72
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bitcoinj/core/MessageSerializer;->makeBlock([BII)Lorg/bitcoinj/core/Block;

    move-result-object p1

    return-object p1
.end method

.method public final makeBlock([BI)Lorg/bitcoinj/core/Block;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0, p2}, Lorg/bitcoinj/core/MessageSerializer;->makeBlock([BII)Lorg/bitcoinj/core/Block;

    move-result-object p1

    return-object p1
.end method

.method public abstract makeBlock([BII)Lorg/bitcoinj/core/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract makeBloomFilter([B)Lorg/bitcoinj/core/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract makeFilteredBlock([B)Lorg/bitcoinj/core/FilteredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract makeInventoryMessage([BI)Lorg/bitcoinj/core/InventoryMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public final makeTransaction([B)Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([BI)Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    return-object p1
.end method

.method public final makeTransaction([BI)Lorg/bitcoinj/core/Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([BII[B)Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    return-object p1
.end method

.method public abstract makeTransaction([BII[B)Lorg/bitcoinj/core/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract seekPastMagicBytes(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/lang/String;[BLjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract serialize(Lorg/bitcoinj/core/Message;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method
