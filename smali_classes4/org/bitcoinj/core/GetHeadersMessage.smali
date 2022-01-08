.class public Lorg/bitcoinj/core/GetHeadersMessage;
.super Lorg/bitcoinj/core/GetBlocksMessage;
.source "GetHeadersMessage.java"


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0
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

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/GetBlocksMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/core/Sha256Hash;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/GetBlocksMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/GetHeadersMessage;

    .line 52
    iget-wide v2, p0, Lorg/bitcoinj/core/GetHeadersMessage;->version:J

    iget-wide v4, p1, Lorg/bitcoinj/core/GetHeadersMessage;->version:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/GetHeadersMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    iget-object v3, p1, Lorg/bitcoinj/core/GetHeadersMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/GetHeadersMessage;->locator:Ljava/util/List;

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lorg/bitcoinj/core/GetHeadersMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/GetHeadersMessage;->locator:Ljava/util/List;

    iget-object p1, p1, Lorg/bitcoinj/core/GetHeadersMessage;->locator:Ljava/util/List;

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

.method public hashCode()I
    .locals 3

    .line 58
    iget-wide v0, p0, Lorg/bitcoinj/core/GetHeadersMessage;->version:J

    long-to-int v1, v0

    const v0, 0x9fc1370

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bitcoinj/core/GetHeadersMessage;->stopHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lorg/bitcoinj/core/GetHeadersMessage;->locator:Ljava/util/List;

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getheaders: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/GetHeadersMessage;->locator:Ljava/util/List;

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
