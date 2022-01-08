.class public Lorg/spongycastle/crypto/modes/SICBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/SkippingStreamCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 37
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 39
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 40
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method private adjustCounter(J)V
    .locals 8

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    .line 149
    iget v4, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    iget v6, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    :goto_0
    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    add-long/2addr v2, v0

    goto :goto_0

    .line 156
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v0, v0

    mul-long v0, v0, v4

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_2

    :cond_1
    neg-long v4, p1

    .line 160
    iget v6, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iget v6, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    :goto_1
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 164
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->decrementCounter()V

    add-long/2addr v2, v0

    goto :goto_1

    .line 167
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long p1, p1

    mul-long p1, p1, v4

    add-long/2addr v0, p1

    long-to-int p1, v0

    if-ltz p1, :cond_3

    const/4 p1, 0x0

    .line 171
    iput p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_2

    .line 175
    :cond_3
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->decrementCounter()V

    .line 176
    iget p2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    :goto_2
    return-void
.end method

.method private decrementCounter()V
    .locals 4

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 124
    array-length v0, v0

    sub-int/2addr v0, v3

    :goto_0
    if-lez v0, :cond_1

    .line 126
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/4 v1, -0x1

    if-ne v2, v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private incrementCounter()V
    .locals 3

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    .line 97
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    if-ne v3, v0, :cond_1

    .line 101
    iput v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 103
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    :cond_1
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 7

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 208
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 212
    aget-byte v4, v1, v2

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v5, v5, v2

    sub-int/2addr v4, v5

    if-gez v4, :cond_0

    add-int/lit8 v5, v2, -0x1

    .line 216
    aget-byte v6, v1, v5

    sub-int/2addr v6, v3

    int-to-byte v3, v6

    aput-byte v3, v1, v5

    add-int/lit16 v4, v4, 0x100

    :cond_0
    int-to-byte v3, v4

    .line 220
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x8

    .line 223
    invoke-static {v1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 49
    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_1

    .line 51
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 52
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SIC mode requires ParametersWithIV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 82
    iget v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    .line 84
    iget p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 185
    iput v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method public seekTo(J)J
    .locals 0

    .line 199
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public skip(J)J
    .locals 4

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-wide p1
.end method
