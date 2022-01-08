.class public Lorg/bitcoinj/core/VersionedChecksummedBytes;
.super Ljava/lang/Object;
.source "VersionedChecksummedBytes.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lorg/bitcoinj/core/VersionedChecksummedBytes;",
        ">;"
    }
.end annotation


# instance fields
.field protected bytes:[B

.field protected final version:I


# direct methods
.method protected constructor <init>(I[B)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    iput p1, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    .line 51
    iput-object p2, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lorg/bitcoinj/core/Base58;->decodeChecked(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 42
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 43
    iput v1, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    .line 44
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    .line 45
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionedChecksummedBytes;->clone()Lorg/bitcoinj/core/VersionedChecksummedBytes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/core/VersionedChecksummedBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/VersionedChecksummedBytes;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lorg/bitcoinj/core/VersionedChecksummedBytes;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/VersionedChecksummedBytes;->compareTo(Lorg/bitcoinj/core/VersionedChecksummedBytes;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/core/VersionedChecksummedBytes;)I
    .locals 2

    .line 106
    iget v0, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    iget v1, p1, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes;->lexicographicalComparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    iget-object p1, p1, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/VersionedChecksummedBytes;

    .line 84
    iget v2, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    iget v3, p1, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    iget-object p1, p1, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

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

.method public getVersion()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    iget v1, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

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

.method public final toBase58()Ljava/lang/String;
    .locals 6

    .line 61
    iget-object v0, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x4

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 62
    iget v4, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->version:I

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    .line 63
    array-length v4, v0

    invoke-static {v0, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v0, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    array-length v0, v0

    add-int/2addr v0, v2

    invoke-static {v1, v5, v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([BII)[B

    move-result-object v0

    .line 65
    iget-object v4, p0, Lorg/bitcoinj/core/VersionedChecksummedBytes;->bytes:[B

    array-length v4, v4

    add-int/2addr v4, v2

    invoke-static {v0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {v1}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionedChecksummedBytes;->toBase58()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
