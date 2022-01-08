.class public Lorg/bitcoinj/core/GetBlocksMessage;
.super Lorg/bitcoinj/core/Message;
.source "GetBlocksMessage.java"


# instance fields
.field protected locator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field protected stopHash:Lorg/bitcoinj/core/Sha256Hash;

.field protected version:J


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 39
    iget p1, p0, Lorg/bitcoinj/core/GetBlocksMessage;->protocolVersion:I

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->version:J

    .line 40
    iput-object p2, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lorg/bitcoinj/core/GetBlocksMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

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

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v1, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 83
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 84
    iget-object v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Sha256Hash;

    .line 86
    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/GetBlocksMessage;

    .line 97
    iget-wide v2, p0, Lorg/bitcoinj/core/GetBlocksMessage;->version:J

    iget-wide v4, p1, Lorg/bitcoinj/core/GetBlocksMessage;->version:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/GetBlocksMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    iget-object v3, p1, Lorg/bitcoinj/core/GetBlocksMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    .line 98
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    iget-object p1, p1, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLocator()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    return-object v0
.end method

.method public getStopHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-wide v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->version:J

    long-to-int v1, v0

    const v0, 0x4913045c    # 602181.75f

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bitcoinj/core/GetBlocksMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->offset:I

    iput v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->cursor:I

    .line 51
    invoke-virtual {p0}, Lorg/bitcoinj/core/GetBlocksMessage;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->version:J

    .line 52
    invoke-virtual {p0}, Lorg/bitcoinj/core/GetBlocksMessage;->readVarInt()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x1f4

    if-gt v1, v0, :cond_1

    .line 55
    iget v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->cursor:I

    iget v2, p0, Lorg/bitcoinj/core/GetBlocksMessage;->offset:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->length:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v2, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-virtual {p0}, Lorg/bitcoinj/core/GetBlocksMessage;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/GetBlocksMessage;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/GetBlocksMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    return-void

    .line 54
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of locators cannot be > 500, received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getblocks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/GetBlocksMessage;->locator:Ljava/util/List;

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
