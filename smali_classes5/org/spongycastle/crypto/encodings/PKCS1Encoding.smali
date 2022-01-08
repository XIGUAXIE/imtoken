.class public Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.spongycastle.pkcs1.strict"


# instance fields
.field private engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 61
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 62
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 63
    iput p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 79
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result p1

    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 81
    iput-object p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 82
    array-length p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    return-void
.end method

.method private static checkPkcs1Encoding([BI)I
    .locals 6

    const/4 v0, 0x0

    .line 238
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 243
    array-length v1, p0

    const/4 v2, 0x1

    add-int/2addr p1, v2

    sub-int/2addr v1, p1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    .line 249
    aget-byte v4, p0, v3

    shr-int/lit8 v5, v4, 0x1

    or-int/2addr v4, v5

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v4, v5

    shr-int/lit8 v5, v4, 0x4

    or-int/2addr v4, v5

    and-int/2addr v4, v2

    sub-int/2addr v4, v2

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, p1

    aget-byte p0, p0, v1

    or-int/2addr p0, v0

    shr-int/lit8 p1, p0, 0x1

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x2

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x4

    or-int/2addr p0, p1

    and-int/2addr p0, v2

    sub-int/2addr p0, v2

    not-int p0, p0

    return p0
.end method

.method private decodeBlock([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 353
    iget v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 354
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object p1

    return-object p1

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    .line 359
    array-length p2, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result p3

    if-lt p2, p3, :cond_b

    const/4 p2, 0x0

    .line 364
    aget-byte p3, p1, p2

    .line 366
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const-string v2, "unknown block type"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 370
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne p3, v3, :cond_a

    .line 381
    :goto_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz v0, :cond_4

    array-length v0, p1

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 383
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "block incorrect size"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 391
    :goto_2
    array-length v2, p1

    if-eq v0, v2, :cond_8

    .line 393
    aget-byte v2, p1, v0

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-ne p3, v3, :cond_7

    if-ne v2, v1, :cond_6

    goto :goto_3

    .line 401
    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "block padding incorrect"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    add-int/2addr v0, v3

    .line 407
    array-length p3, p1

    if-gt v0, p3, :cond_9

    const/16 p3, 0xa

    if-lt v0, p3, :cond_9

    .line 412
    array-length p3, p1

    sub-int/2addr p3, v0

    new-array v1, p3, [B

    .line 414
    invoke-static {p1, v0, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 409
    :cond_9
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "no data in block"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_a
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_b
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "block truncated"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decodeBlockOrRandom([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 285
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    .line 292
    iget-object p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez p2, :cond_0

    .line 294
    iget p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array p2, p2, [B

    .line 295
    iget-object p3, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 308
    :cond_0
    array-length p3, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v0

    if-lt p3, v0, :cond_4

    .line 317
    iget-boolean p3, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz p3, :cond_2

    array-length p3, p1

    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "block incorrect size"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_2
    :goto_0
    iget p3, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {p1, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result p3

    .line 331
    iget v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 332
    :goto_1
    iget v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v1, v2, :cond_3

    .line 334
    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    aget-byte v2, p1, v3

    not-int v3, p3

    and-int/2addr v2, v3

    aget-byte v3, p2, v1

    and-int/2addr v3, p3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    .line 310
    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "block truncated"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "sorry, this method is only for decryption, not for signing"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encodeBlock([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_3

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v1, v0, [B

    .line 191
    iget-boolean v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 193
    aput-byte v4, v1, v3

    const/4 v2, 0x1

    :goto_0
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_2

    const/4 v5, -0x1

    .line 197
    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x2

    .line 204
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    :goto_1
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_2

    .line 212
    :goto_2
    aget-byte v5, v1, v2

    if-nez v5, :cond_1

    .line 214
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sub-int v2, v0, p3

    add-int/lit8 v4, v2, -0x1

    .line 219
    aput-byte v3, v1, v4

    .line 220
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1, v1, v3, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 186
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private useStrict()Z
    .locals 2

    .line 93
    new-instance v0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lorg/spongycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "true"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 138
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 152
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 115
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 119
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 120
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 125
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 128
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 130
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result p2

    iput-boolean p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 131
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object p1

    return-object p1
.end method
