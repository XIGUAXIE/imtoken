.class public Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;
.super Ljava/lang/Object;
.source "CTRSP800DRBG.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final AES_MAX_BITS_REQUEST:I = 0x40000

.field private static final AES_RESEED_MAX:J = 0x800000000000L

.field private static final K_BITS:[B

.field private static final TDEA_MAX_BITS_REQUEST:I = 0x1000

.field private static final TDEA_RESEED_MAX:J = 0x80000000L


# instance fields
.field private _Key:[B

.field private _V:[B

.field private _engine:Lorg/spongycastle/crypto/BlockCipher;

.field private _entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private _isTDEA:Z

.field private _keySizeInBits:I

.field private _reseedCounter:J

.field private _seedLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

    .line 148
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    .line 45
    iput-object p4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 46
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    .line 48
    iput p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    .line 49
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    iput v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    .line 50
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/spongycastle/crypto/BlockCipher;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    const/16 v0, 0x100

    if-gt p3, v0, :cond_2

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->getMaxSecurityStrength(Lorg/spongycastle/crypto/BlockCipher;I)I

    move-result p1

    if-lt p1, p3, :cond_1

    .line 62
    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result p1

    if-lt p1, p3, :cond_0

    .line 67
    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object p1

    .line 69
    invoke-direct {p0, p1, p6, p5}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Instantiate_algorithm([B[B[B)V

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not enough entropy for security strength required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by block cipher and key size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by the derivation function"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private BCC([B[B[B[B)V
    .locals 6

    .line 285
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 286
    new-array v1, v0, [B

    .line 287
    array-length v2, p4

    div-int/2addr v2, v0

    .line 289
    new-array v3, v0, [B

    .line 291
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object p2

    invoke-direct {v5, p2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 p2, 0x1

    invoke-interface {v4, p2, v5}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 293
    iget-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v4, 0x0

    invoke-interface {p2, p3, v4, v1, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v2, :cond_0

    mul-int p3, p2, v0

    .line 297
    invoke-direct {p0, v3, v1, p4, p3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->XOR([B[B[BI)V

    .line 298
    iget-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p3, v3, v4, v1, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    array-length p2, p1

    invoke-static {v1, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private Block_Cipher_df([BI)[B
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 212
    iget-object v2, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    .line 213
    array-length v3, v1

    .line 214
    div-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, v3, 0x8

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v6, v2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 217
    div-int/2addr v6, v2

    mul-int v6, v6, v2

    .line 218
    new-array v6, v6, [B

    const/4 v8, 0x0

    .line 219
    invoke-direct {v0, v6, v3, v8}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    const/4 v9, 0x4

    .line 220
    invoke-direct {v0, v6, v4, v9}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    const/16 v4, 0x8

    .line 221
    invoke-static {v1, v8, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, -0x80

    .line 222
    aput-byte v1, v6, v5

    .line 225
    iget v1, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    div-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    new-array v5, v3, [B

    .line 226
    new-array v9, v2, [B

    .line 228
    new-array v10, v2, [B

    .line 231
    div-int/2addr v1, v4

    new-array v4, v1, [B

    .line 232
    sget-object v11, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    invoke-static {v11, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    :goto_0
    mul-int v12, v11, v2

    mul-int/lit8 v13, v12, 0x8

    .line 234
    iget v14, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    mul-int/lit8 v15, v2, 0x8

    add-int/2addr v14, v15

    if-ge v13, v14, :cond_1

    .line 236
    invoke-direct {v0, v10, v11, v8}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    .line 237
    invoke-direct {v0, v9, v4, v10, v6}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->BCC([B[B[B[B)V

    sub-int v13, v3, v12

    if-le v13, v2, :cond_0

    move v13, v2

    .line 243
    :cond_0
    invoke-static {v9, v8, v5, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 247
    :cond_1
    new-array v3, v2, [B

    .line 248
    invoke-static {v5, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    invoke-static {v5, v1, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    div-int/lit8 v1, p2, 0x2

    new-array v5, v1, [B

    .line 254
    iget-object v6, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v9, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0, v4}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v4

    invoke-direct {v9, v4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v6, v7, v9}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    const/4 v4, 0x0

    :goto_1
    mul-int v6, v4, v2

    if-ge v6, v1, :cond_3

    .line 258
    iget-object v7, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, v3, v8, v3, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int v7, v1, v6

    if-le v7, v2, :cond_2

    move v7, v2

    .line 264
    :cond_2
    invoke-static {v3, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method private CTR_DRBG_Instantiate_algorithm([B[B[B)V
    .locals 0

    .line 75
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p1

    .line 76
    iget p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object p1

    .line 78
    iget-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    .line 80
    iget p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    new-array p3, p3, [B

    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    .line 81
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    .line 84
    invoke-direct {p0, p1, p3, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    const-wide/16 p1, 0x1

    .line 86
    iput-wide p1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    return-void
.end method

.method private CTR_DRBG_Reseed_algorithm(Lorg/spongycastle/crypto/prng/EntropySource;[B)V
    .locals 1

    .line 118
    invoke-interface {p1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    .line 120
    iget p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object p1

    .line 122
    iget-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    const-wide/16 p1, 0x1

    .line 124
    iput-wide p1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    return-void
.end method

.method private CTR_DRBG_Update([B[B[B)V
    .locals 8

    .line 91
    array-length v0, p1

    new-array v1, v0, [B

    .line 92
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    .line 95
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    .line 97
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    mul-int v6, v5, v3

    .line 98
    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 100
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    .line 101
    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, p3, v4, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int v7, v0, v6

    if-le v7, v3, :cond_0

    move v7, v3

    .line 106
    :cond_0
    invoke-static {v2, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0, v1, p1, v1, v4}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->XOR([B[B[BI)V

    .line 112
    array-length p1, p2

    invoke-static {v1, v4, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    array-length p1, p2

    array-length p2, p3

    invoke-static {v1, p1, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private XOR([B[B[BI)V
    .locals 3

    const/4 v0, 0x0

    .line 129
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 131
    aget-byte v1, p2, v0

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addOneTo([B)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 138
    :goto_0
    array-length v3, p1

    if-gt v1, v3, :cond_1

    .line 140
    array-length v3, p1

    sub-int/2addr v3, v1

    aget-byte v3, p1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/2addr v3, v2

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 142
    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyIntToByteArray([BII)V
    .locals 2

    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 306
    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 307
    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 308
    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, 0x3

    int-to-byte p2, p2

    .line 309
    aput-byte p2, p1, p3

    return-void
.end method

.method private getMaxSecurityStrength(Lorg/spongycastle/crypto/BlockCipher;I)I
    .locals 1

    .line 415
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/spongycastle/crypto/BlockCipher;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    if-ne p2, v0, :cond_0

    const/16 p1, 0x70

    return p1

    .line 419
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private isTDEA(Lorg/spongycastle/crypto/BlockCipher;)Z
    .locals 2

    .line 410
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TDEA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private padKey([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    .line 456
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    add-int/lit8 v0, p4, 0x1

    .line 457
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xfc

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    .line 458
    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p2, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf8

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    .line 459
    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    .line 460
    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p2, 0x4

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xe0

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    .line 461
    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p2, 0x5

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xc0

    ushr-int/lit8 v3, v3, 0x5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    .line 462
    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, 0x6

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0x80

    ushr-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    .line 463
    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    :goto_0
    if-gt p4, v0, :cond_0

    .line 467
    aget-byte p1, p3, p4

    and-int/lit16 p2, p1, 0xfe

    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x3

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x4

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x5

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x6

    xor-int/2addr v1, v2

    shr-int/lit8 p1, p1, 0x7

    xor-int/2addr p1, v1

    xor-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    .line 468
    aput-byte p1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method expandKey([B)[B
    .locals 3

    .line 429
    iget-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 434
    invoke-direct {p0, p1, v1, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    const/4 v1, 0x7

    const/16 v2, 0x8

    .line 435
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    const/16 v1, 0xe

    const/16 v2, 0x10

    .line 436
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public generate([B[BZ)I
    .locals 6

    .line 333
    iget-boolean v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 335
    iget-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v4, 0x80000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x200

    .line 340
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 4096"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :cond_2
    iget-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v4, 0x800000000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    return v1

    :cond_3
    const v0, 0x8000

    .line 352
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_0
    if-eqz p3, :cond_4

    .line 360
    iget-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-direct {p0, p3, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm(Lorg/spongycastle/crypto/prng/EntropySource;[B)V

    const/4 p2, 0x0

    :cond_4
    if-eqz p2, :cond_5

    .line 366
    iget p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object p2

    .line 367
    iget-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, p2, p3, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    goto :goto_1

    .line 371
    :cond_5
    iget p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    new-array p2, p2, [B

    .line 374
    :goto_1
    iget-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length p3, p3

    new-array v0, p3, [B

    .line 376
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    :goto_2
    array-length v3, p1

    div-int/2addr v3, p3

    if-ge v2, v3, :cond_7

    .line 380
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    .line 382
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-interface {v3, v4, v1, v0, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 384
    array-length v3, p1

    mul-int v4, v2, p3

    sub-int/2addr v3, v4

    if-le v3, p3, :cond_6

    move v3, p3

    goto :goto_3

    :cond_6
    array-length v3, p1

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int v5, v5, v2

    sub-int/2addr v3, v5

    .line 388
    :goto_3
    invoke-static {v0, v1, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 391
    :cond_7
    iget-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, p2, p3, v0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 393
    iget-wide p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 395
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    return p1

    .line 354
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 262144"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBlockSize()I
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm(Lorg/spongycastle/crypto/prng/EntropySource;[B)V

    return-void
.end method
