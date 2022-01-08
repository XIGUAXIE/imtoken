.class public Lorg/spongycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source "IESEngine.java"


# instance fields
.field private IV:[B

.field V:[B

.field agree:Lorg/spongycastle/crypto/BasicAgreement;

.field cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field forEncryption:Z

.field kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private keyPairGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private keyParser:Lorg/spongycastle/crypto/KeyParser;

.field mac:Lorg/spongycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/spongycastle/crypto/params/IESParameters;

.field privParam:Lorg/spongycastle/crypto/CipherParameters;

.field pubParam:Lorg/spongycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 63
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    .line 64
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    .line 85
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 86
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    .line 87
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 88
    iput-object p4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method private decryptBlock([BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    if-le p3, v0, :cond_8

    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int/2addr v0, v2

    new-array v2, v0, [B

    .line 286
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    .line 287
    new-array v6, v5, [B

    .line 289
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v7, v6, v1, v5}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 291
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 293
    invoke-static {v6, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-static {v6, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :goto_0
    new-array v3, v0, [B

    const/4 v5, 0x0

    :goto_1
    if-eq v5, v0, :cond_3

    .line 306
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v6, v6

    add-int/2addr v6, p2

    add-int/2addr v6, v5

    aget-byte v6, p1, v6

    aget-byte v7, v2, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    .line 315
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    .line 316
    new-array v6, v5, [B

    .line 318
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v7, v6, v1, v5}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 319
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->IV:[B

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v3, v5, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 329
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 332
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    sub-int v2, p3, v2

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v3, v0, [B

    .line 333
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v0

    add-int v7, p2, v2

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int v8, v0, v2

    const/4 v10, 0x0

    move-object v6, p1

    move-object v9, v3

    invoke-virtual/range {v5 .. v10}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 334
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2, v3, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 339
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v2

    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 341
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v7, v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 343
    array-length v7, v2

    mul-int/lit8 v7, v7, 0x8

    invoke-static {v7, v6, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_4
    add-int v7, p2, p3

    .line 349
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v8

    sub-int v8, v7, v8

    invoke-static {p1, v8, v7}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 351
    array-length v8, v7

    new-array v9, v8, [B

    .line 352
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    new-instance v11, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v11, v4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v10, v11}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 353
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v11, v10

    add-int/2addr p2, v11

    array-length v10, v10

    sub-int/2addr p3, v10

    sub-int/2addr p3, v8

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    if-eqz v2, :cond_5

    .line 357
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    array-length p2, v2

    invoke-interface {p1, v2, v1, p2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 359
    :cond_5
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length p1, p1

    if-eqz p1, :cond_6

    .line 361
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {p1, v6, v1, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 363
    :cond_6
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {p1, v9, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 365
    invoke-static {v7, v9}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 372
    invoke-static {v3, v1, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 367
    :cond_7
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "Invalid MAC."

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_8
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "Length of input must be greater than the MAC"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encryptBlock([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 182
    new-array v0, p3, [B

    .line 183
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v3, v2, [B

    add-int v4, p3, v2

    .line 184
    new-array v5, v4, [B

    .line 186
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v6, v5, v1, v4}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 188
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 190
    invoke-static {v5, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-static {v5, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {v5, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    invoke-static {v5, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    :goto_0
    new-array v2, p3, [B

    const/4 v4, 0x0

    :goto_1
    if-eq v4, p3, :cond_3

    add-int v5, p2, v4

    .line 203
    aget-byte v5, p1, v5

    aget-byte v6, v0, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    .line 211
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    .line 212
    new-array v6, v5, [B

    .line 214
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v7, v6, v1, v5}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 215
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->IV:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v6, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v5, v6, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v3, v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 225
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v3, v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 228
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v2, v0, [B

    .line 229
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    .line 230
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {p2, v2, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2

    add-int p3, p1, p2

    move-object v3, v4

    .line 235
    :cond_3
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object p1

    const/4 p2, 0x4

    new-array v0, p2, [B

    .line 237
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v4, v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 239
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x8

    invoke-static {v4, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 244
    :cond_4
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v5, v4, [B

    .line 246
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v7, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 247
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    array-length v6, v2

    invoke-interface {v3, v2, v1, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    if-eqz p1, :cond_5

    .line 250
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    array-length v6, p1

    invoke-interface {v3, p1, v1, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 252
    :cond_5
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length p1, p1

    if-eqz p1, :cond_6

    .line 254
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {p1, v0, v1, p2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 256
    :cond_6
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {p1, v5, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 260
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length p2, p1

    add-int/2addr p2, p3

    add-int/2addr p2, v4

    new-array p2, p2, [B

    .line 261
    array-length v0, p1

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length p1, p1

    invoke-static {v2, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length p1, p1

    add-int/2addr p1, p3

    invoke-static {v5, v1, p2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private extractParams(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 148
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->IV:[B

    .line 151
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/IESParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->IV:[B

    .line 156
    check-cast p1, Lorg/spongycastle/crypto/params/IESParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method

.method public getMac()Lorg/spongycastle/crypto/Mac;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 140
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 141
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyParser:Lorg/spongycastle/crypto/KeyParser;

    .line 143
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->extractParams(Lorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 124
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 125
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    .line 127
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->extractParams(Lorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 106
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 107
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 108
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    .line 110
    invoke-direct {p0, p4}, Lorg/spongycastle/crypto/engines/IESEngine;->extractParams(Lorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 382
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/spongycastle/crypto/EphemeralKeyPair;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 389
    invoke-virtual {v0}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyParser:Lorg/spongycastle/crypto/KeyParser;

    if-eqz v0, :cond_1

    .line 396
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 400
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->keyParser:Lorg/spongycastle/crypto/KeyParser;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/KeyParser;->readKey(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, p3, v0

    add-int/2addr v0, p2

    .line 408
    invoke-static {p1, p2, v0}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    goto :goto_0

    :catch_0
    move-exception p1

    .line 404
    new-instance p2, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to recover ephemeral public key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 413
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 414
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 419
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v1

    if-eqz v2, :cond_2

    .line 421
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 422
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 431
    :cond_2
    new-instance v1, Lorg/spongycastle/crypto/params/KDFParameters;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 432
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 434
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;->encryptBlock([BII)[B

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;->decryptBlock([BII)[B

    move-result-object p1

    :goto_1
    return-object p1
.end method
