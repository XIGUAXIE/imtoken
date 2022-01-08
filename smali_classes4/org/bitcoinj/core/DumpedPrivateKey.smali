.class public Lorg/bitcoinj/core/DumpedPrivateKey;
.super Lorg/bitcoinj/core/VersionedChecksummedBytes;
.source "DumpedPrivateKey.java"


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lorg/bitcoinj/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 71
    iget p2, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->version:I

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDumpedPrivateKeyHeader()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance p2, Lorg/bitcoinj/core/WrongNetworkException;

    iget v0, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->version:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDumpedPrivateKeyHeader()I

    move-result p1

    aput p1, v1, v2

    invoke-direct {p2, v0, v1}, Lorg/bitcoinj/core/WrongNetworkException;-><init>(I[I)V

    throw p2

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    array-length p1, p1

    const/16 p2, 0x20

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    array-length p1, p1

    const/16 p2, 0x21

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Wrong number of bytes for a private key, not 32 or 33"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BZ)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDumpedPrivateKeyHeader()I

    move-result p1

    invoke-static {p2, p3}, Lorg/bitcoinj/core/DumpedPrivateKey;->encode([BZ)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(I[B)V

    return-void
.end method

.method private static encode([BZ)[B
    .locals 5

    .line 55
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Private keys must be 32 bytes"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/16 p1, 0x21

    new-array p1, p1, [B

    .line 61
    invoke-static {p0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v1, p1, v3

    return-object p1
.end method

.method public static fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/DumpedPrivateKey;
    .locals 1
    .param p0    # Lorg/bitcoinj/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/bitcoinj/core/DumpedPrivateKey;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/DumpedPrivateKey;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lorg/bitcoinj/core/DumpedPrivateKey;

    .line 97
    iget v2, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->version:I

    iget v3, p1, Lorg/bitcoinj/core/DumpedPrivateKey;->version:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    iget-object p1, p1, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

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

.method public getKey()Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/core/DumpedPrivateKey;->isPubKeyCompressed()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    iget v1, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPubKeyCompressed()Z
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/DumpedPrivateKey;->bytes:[B

    const/16 v2, 0x20

    aget-byte v0, v0, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
