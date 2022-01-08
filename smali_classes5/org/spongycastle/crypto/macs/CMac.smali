.class public Lorg/spongycastle/crypto/macs/CMac;
.super Ljava/lang/Object;
.source "CMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static final CONSTANT_128:B = -0x79t

.field private static final CONSTANT_64:B = 0x1bt


# instance fields
.field private L:[B

.field private Lu:[B

.field private Lu2:[B

.field private ZEROES:[B

.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 55
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/macs/CMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_3

    .line 77
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    if-gt p2, v0, :cond_2

    .line 84
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Block size must be either 64 or 128 bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 91
    div-int/2addr p2, v1

    iput p2, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    .line 93
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    .line 95
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    .line 97
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/CMac;->ZEROES:[B

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    return-void

    .line 79
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC size must be less or equal to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MAC size must be multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static doubleLu([B)[B
    .locals 4

    .line 122
    array-length v0, p0

    new-array v0, v0, [B

    .line 123
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/macs/CMac;->shiftLeft([B[B)I

    move-result v1

    .line 124
    array-length v2, p0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    const/16 v2, -0x79

    goto :goto_0

    :cond_0
    const/16 v2, 0x1b

    :goto_0
    and-int/lit16 v2, v2, 0xff

    .line 129
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget-byte v3, v0, p0

    rsub-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x3

    ushr-int v1, v2, v1

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method private static shiftLeft([B[B)I
    .locals 4

    .line 109
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 113
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 114
    aput-byte v1, p1, v0

    ushr-int/lit8 v1, v2, 0x7

    and-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 217
    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    if-ne v1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu:[B

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v0}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;->addPadding([BI)I

    .line 224
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu2:[B

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 227
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 229
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    aget-byte v4, v3, v2

    aget-byte v5, v0, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CMac;->reset()V

    .line 238
    iget p1, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 136
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/macs/CMac;->validate(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 141
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/CMac;->ZEROES:[B

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->L:[B

    .line 142
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 143
    iget-object p1, p0, Lorg/spongycastle/crypto/macs/CMac;->L:[B

    invoke-static {p1}, Lorg/spongycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu:[B

    .line 144
    invoke-static {p1}, Lorg/spongycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/CMac;->Lu2:[B

    .line 146
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CMac;->reset()V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 249
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 251
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    .line 168
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 171
    iput v3, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 6

    if-ltz p3, :cond_1

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 186
    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_0

    .line 190
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 194
    iput v5, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_0
    if-le p3, v0, :cond_0

    .line 200
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v1, p1, p2, v2, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget p1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/macs/CMac;->bufOff:I

    return-void

    .line 181
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method validate(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 153
    instance-of p1, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CMac mode only permits key to be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
