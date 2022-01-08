.class public Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;
.super Ljava/lang/Object;
.source "HMacSP800DRBG.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final RESEED_MAX:J = 0x800000000000L


# instance fields
.field private _K:[B

.field private _V:[B

.field private _entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private _hMac:Lorg/spongycastle/crypto/Mac;

.field private _reseedCounter:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Mac;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/spongycastle/crypto/Mac;)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 41
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 46
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    .line 49
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object p2

    .line 50
    invoke-static {p2, p5, p4}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p2

    .line 52
    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    .line 53
    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    const/4 p3, 0x1

    .line 54
    invoke-static {p1, p3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 56
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    const-wide/16 p1, 0x1

    .line 58
    iput-wide p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not enough entropy for security strength required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by the derivation function"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hmac_DRBG_Update([B)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    :cond_0
    return-void
.end method

.method private hmac_DRBG_Update_Func([BB)V
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/Mac;->update(B)V

    if-eqz p1, :cond_0

    .line 79
    iget-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    array-length v0, p1

    invoke-interface {p2, p1, v3, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 82
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-interface {p1, p2, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 84
    iget-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance p2, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {p2, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 85
    iget-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v0, p2

    invoke-interface {p1, p2, v3, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 87
    iget-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {p1, p2, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 8

    .line 111
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_5

    .line 118
    iget-wide v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide v3, 0x800000000000L

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 125
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->reseed([B)V

    const/4 p2, 0x0

    :cond_1
    if-eqz p2, :cond_2

    .line 132
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 136
    :cond_2
    array-length p3, p1

    new-array v1, p3, [B

    .line 138
    array-length v2, p1

    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v3, v3

    div-int/2addr v2, v3

    .line 140
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 144
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 145
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v5, v6, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 147
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v5

    mul-int v6, v6, v4

    array-length v7, v5

    invoke-static {v5, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_3
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v4

    mul-int v5, v5, v2

    if-ge v5, p3, :cond_4

    .line 152
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    array-length v6, v4

    invoke-interface {v5, v4, v3, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 153
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v4, v5, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 155
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v4

    mul-int v5, v5, v2

    array-length v6, v4

    mul-int v2, v2, v6

    sub-int/2addr p3, v2

    invoke-static {v4, v3, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_4
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 160
    iget-wide p2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr p2, v4

    iput-wide p2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 162
    array-length p2, p1

    invoke-static {v1, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    .line 115
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 262144"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBlockSize()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 175
    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    const-wide/16 v0, 0x1

    .line 179
    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    return-void
.end method
