.class public Lorg/bitcoinj/core/UTXO;
.super Ljava/lang/Object;
.source "UTXO.java"


# instance fields
.field private address:Ljava/lang/String;

.field private coinbase:Z

.field private hash:Lorg/bitcoinj/core/Sha256Hash;

.field private height:I

.field private index:J

.field private script:Lorg/bitcoinj/script/Script;

.field private value:Lorg/bitcoinj/core/Coin;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 92
    invoke-static {v1, v2}, Lorg/bitcoinj/core/Utils;->readInt64([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/UTXO;->value:Lorg/bitcoinj/core/Coin;

    .line 94
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    .line 96
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    .line 98
    new-array v3, v1, [B

    .line 99
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 101
    new-instance v1, Lorg/bitcoinj/script/Script;

    invoke-direct {v1, v3}, Lorg/bitcoinj/script/Script;-><init>([B)V

    iput-object v1, p0, Lorg/bitcoinj/core/UTXO;->script:Lorg/bitcoinj/script/Script;

    const/16 v1, 0x20

    new-array v3, v1, [B

    .line 104
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 106
    invoke-static {v3}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/UTXO;->hash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 v1, 0x4

    new-array v3, v1, [B

    .line 109
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 111
    invoke-static {v3, v2}, Lorg/bitcoinj/core/Utils;->readUint32([BI)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/bitcoinj/core/UTXO;->index:J

    .line 113
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 114
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v1

    .line 115
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 116
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/UTXO;->height:I

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 119
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 120
    aget-byte p1, v1, v2

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lorg/bitcoinj/core/UTXO;->coinbase:Z

    return-void

    .line 110
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 105
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 100
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 91
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/bitcoinj/core/UTXO;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 59
    iput-wide p2, p0, Lorg/bitcoinj/core/UTXO;->index:J

    .line 60
    iput-object p4, p0, Lorg/bitcoinj/core/UTXO;->value:Lorg/bitcoinj/core/Coin;

    .line 61
    iput p5, p0, Lorg/bitcoinj/core/UTXO;->height:I

    .line 62
    iput-object p7, p0, Lorg/bitcoinj/core/UTXO;->script:Lorg/bitcoinj/script/Script;

    .line 63
    iput-boolean p6, p0, Lorg/bitcoinj/core/UTXO;->coinbase:Z

    const-string p1, ""

    .line 64
    iput-object p1, p0, Lorg/bitcoinj/core/UTXO;->address:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct/range {p0 .. p7}, Lorg/bitcoinj/core/UTXO;-><init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;)V

    .line 85
    iput-object p8, p0, Lorg/bitcoinj/core/UTXO;->address:Ljava/lang/String;

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

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/UTXO;

    .line 173
    invoke-virtual {p0}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

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

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/bitcoinj/core/UTXO;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/bitcoinj/core/UTXO;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/bitcoinj/core/UTXO;->height:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lorg/bitcoinj/core/UTXO;->index:J

    return-wide v0
.end method

.method public getScript()Lorg/bitcoinj/script/Script;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bitcoinj/core/UTXO;->script:Lorg/bitcoinj/script/Script;

    return-object v0
.end method

.method public getValue()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/bitcoinj/core/UTXO;->value:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCoinbase()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/bitcoinj/core/UTXO;->coinbase:Z

    return v0
.end method

.method public serializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/bitcoinj/core/UTXO;->value:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 179
    iget-object v0, p0, Lorg/bitcoinj/core/UTXO;->script:Lorg/bitcoinj/script/Script;

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    .line 180
    array-length v1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 181
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 182
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 183
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 184
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 186
    iget-object v0, p0, Lorg/bitcoinj/core/UTXO;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 187
    iget-wide v0, p0, Lorg/bitcoinj/core/UTXO;->index:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 189
    iget v0, p0, Lorg/bitcoinj/core/UTXO;->height:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 190
    iget v0, p0, Lorg/bitcoinj/core/UTXO;->height:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 191
    iget v0, p0, Lorg/bitcoinj/core/UTXO;->height:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 192
    iget v0, p0, Lorg/bitcoinj/core/UTXO;->height:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 194
    iget-boolean v1, p0, Lorg/bitcoinj/core/UTXO;->coinbase:Z

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 160
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/bitcoinj/core/UTXO;->value:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bitcoinj/core/UTXO;->hash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/bitcoinj/core/UTXO;->index:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Stored TxOut of %s (%s:%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
