.class public Lorg/bitcoinj/core/AddressMessage;
.super Lorg/bitcoinj/core/Message;
.source "AddressMessage.java"


# static fields
.field private static final MAX_ADDRESSES:J = 0x400L


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/PeerAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v4

    const/4 v3, 0x0

    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v4

    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 48
    invoke-direct/range {p0 .. p5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 60
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method


# virtual methods
.method public addAddress(Lorg/bitcoinj/core/PeerAddress;)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lorg/bitcoinj/core/AddressMessage;->unCache()V

    .line 107
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/PeerAddress;->setParent(Lorg/bitcoinj/core/Message;)V

    .line 108
    iget-object v0, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/bitcoinj/core/AddressMessage;->getMessageSize()I

    goto :goto_0

    .line 112
    :cond_0
    iget v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    invoke-virtual {p1}, Lorg/bitcoinj/core/PeerAddress;->getMessageSize()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    :goto_0
    return-void
.end method

.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v1, Lorg/bitcoinj/core/VarInt;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v1}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    iget-object v0, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/PeerAddress;

    .line 94
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/PeerAddress;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/PeerAddress;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected parse()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/bitcoinj/core/AddressMessage;->readVarInt()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    long-to-int v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 79
    new-instance v3, Lorg/bitcoinj/core/PeerAddress;

    iget-object v7, p0, Lorg/bitcoinj/core/AddressMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v8, p0, Lorg/bitcoinj/core/AddressMessage;->payload:[B

    iget v9, p0, Lorg/bitcoinj/core/AddressMessage;->cursor:I

    iget v10, p0, Lorg/bitcoinj/core/AddressMessage;->protocolVersion:I

    iget-object v12, p0, Lorg/bitcoinj/core/AddressMessage;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    move-object v6, v3

    move-object v11, p0

    invoke-direct/range {v6 .. v12}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;)V

    .line 80
    iget-object v4, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget v4, p0, Lorg/bitcoinj/core/AddressMessage;->cursor:I

    invoke-virtual {v3}, Lorg/bitcoinj/core/PeerAddress;->getMessageSize()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lorg/bitcoinj/core/AddressMessage;->cursor:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->getSizeInBytes()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    .line 85
    iget v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    iget-object v1, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/bitcoinj/core/AddressMessage;->protocolVersion:I

    const/16 v3, 0x7aaa

    if-le v2, v3, :cond_1

    const/16 v2, 0x1e

    goto :goto_1

    :cond_1
    const/16 v2, 0x1a

    :goto_1
    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    return-void

    .line 76
    :cond_2
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    const-string v1, "Address message too large."

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAddress(I)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/bitcoinj/core/AddressMessage;->unCache()V

    .line 117
    iget-object v0, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/PeerAddress;

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/PeerAddress;->setParent(Lorg/bitcoinj/core/Message;)V

    .line 119
    iget v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/bitcoinj/core/AddressMessage;->getMessageSize()I

    goto :goto_0

    .line 122
    :cond_0
    iget v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    invoke-virtual {p1}, Lorg/bitcoinj/core/PeerAddress;->getMessageSize()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/bitcoinj/core/AddressMessage;->length:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/AddressMessage;->addresses:Ljava/util/List;

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
