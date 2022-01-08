.class public Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;
.super Ljava/lang/Object;
.source "CramerShoupCoreEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private forEncryption:Z

.field private key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

.field private label:Ljava/lang/String;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    return-void
.end method

.method private generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    .line 283
    sget-object v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 0

    .line 291
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 4

    .line 117
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for Cramer Shoup cipher."

    if-gt p3, v0, :cond_5

    .line 121
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 128
    array-length v0, p1

    if-eq p3, v0, :cond_3

    .line 130
    :cond_2
    new-array v0, p3, [B

    const/4 v3, 0x0

    .line 132
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 139
    :cond_3
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 140
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_4

    return-object p2

    .line 142
    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .locals 4

    .line 150
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 152
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 154
    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 156
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    .line 158
    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 163
    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v0

    new-array v1, v0, [B

    .line 167
    array-length v3, p1

    sub-int/2addr v0, v3

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 174
    :cond_1
    aget-byte v0, p1, v2

    if-nez v0, :cond_2

    .line 176
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    .line 178
    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2
    return-object p1
.end method

.method public decryptBlock(Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;)Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    instance-of v1, v0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    if-eqz v1, :cond_2

    .line 245
    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    .line 247
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 249
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getH()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 250
    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->getU1()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 251
    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 252
    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->getU2()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 253
    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 254
    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->getE()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 255
    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 256
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 259
    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 261
    :cond_0
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 262
    invoke-interface {v2, v3, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 264
    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 265
    iget-object v3, p1, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p1, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 269
    iget-object v3, p1, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p1, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 275
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;

    const-string v0, "Sorry, that ciphertext is not correct"

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public encryptBlock(Ljava/math/BigInteger;)Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .locals 9

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    instance-of v2, v0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    if-eqz v2, :cond_2

    .line 194
    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    .line 195
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 196
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v3

    .line 197
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v4

    .line 199
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    .line 201
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v6

    if-nez v6, :cond_0

    return-object v1

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v2, v1}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 210
    invoke-virtual {v3, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 211
    invoke-virtual {v4, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 212
    invoke-virtual {v5, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 214
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getH()Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    .line 215
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 216
    array-length v7, v6

    const/4 v8, 0x0

    invoke-interface {v5, v6, v8, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 217
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 218
    array-length v7, v6

    invoke-interface {v5, v6, v8, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 219
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 220
    array-length v7, v6

    invoke-interface {v5, v6, v8, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 221
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 223
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 224
    array-length v7, v6

    invoke-interface {v5, v6, v8, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 226
    :cond_1
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v6, v6, [B

    .line 227
    invoke-interface {v5, v6, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 228
    new-instance v5, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 230
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getC()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 232
    new-instance v1, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;

    invoke-direct {v1, v3, v4, p1, v0}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_2
    return-object v1
.end method

.method public getInputBlockSize()I
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 82
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 84
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 88
    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 105
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 107
    div-int/lit8 v0, v0, 0x8

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 111
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 53
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 55
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 57
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    .line 58
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_0

    .line 62
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    const/4 p2, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    .line 66
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    return-void
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 40
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    return-void
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    return-object p2
.end method
