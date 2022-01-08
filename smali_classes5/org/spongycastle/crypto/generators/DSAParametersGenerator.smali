.class public Lorg/spongycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 25
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 26
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 27
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    .line 195
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 196
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 200
    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 201
    invoke-virtual {v1, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 0

    .line 331
    invoke-static {p0, p1, p2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 6

    .line 338
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const-string v0, "6767656E"

    .line 339
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 342
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    .line 343
    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    array-length p3, p3

    array-length v4, v0

    invoke-static {v0, v5, v3, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x3

    int-to-byte p3, p4

    .line 345
    aput-byte p3, v3, v1

    .line 347
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    new-array p3, p3, [B

    const/4 p4, 0x1

    :goto_0
    const/high16 v0, 0x10000

    if-ge p4, v0, :cond_1

    .line 350
    invoke-static {v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 351
    invoke-static {p0, v3, p3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 352
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 353
    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 354
    sget-object v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v5, v1, [B

    .line 122
    iget v6, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v7, v6, -0x1

    div-int/lit16 v7, v7, 0xa0

    .line 123
    div-int/lit8 v6, v6, 0x8

    new-array v8, v6, [B

    .line 125
    iget-object v9, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    instance-of v9, v9, Lorg/spongycastle/crypto/digests/SHA1Digest;

    if-eqz v9, :cond_6

    .line 132
    :cond_0
    :goto_0
    iget-object v9, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    iget-object v9, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v9, v2, v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    const/4 v9, 0x0

    .line 135
    invoke-static {v2, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-static {v4}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 137
    iget-object v10, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v10, v4, v4}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    const/4 v10, 0x0

    :goto_1
    if-eq v10, v1, :cond_1

    .line 141
    aget-byte v11, v3, v10

    aget-byte v12, v4, v10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 144
    :cond_1
    aget-byte v10, v5, v9

    or-int/lit8 v10, v10, -0x80

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    const/16 v10, 0x13

    .line 145
    aget-byte v11, v5, v10

    const/4 v12, 0x1

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 147
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v12, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 149
    iget v11, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v11

    .line 155
    invoke-static {v11}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    const/4 v13, 0x0

    :goto_2
    const/16 v14, 0x1000

    if-ge v13, v14, :cond_0

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v7, :cond_3

    .line 161
    invoke-static {v11}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 162
    iget-object v15, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v15, v11, v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v15, v14, 0x14

    sub-int v15, v6, v15

    .line 163
    invoke-static {v3, v9, v8, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 166
    :cond_3
    invoke-static {v11}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 167
    iget-object v14, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v14, v11, v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    mul-int/lit8 v14, v7, 0x14

    sub-int v14, v6, v14

    rsub-int/lit8 v15, v14, 0x14

    .line 168
    invoke-static {v3, v15, v8, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    aget-byte v14, v8, v9

    or-int/lit8 v14, v14, -0x80

    int-to-byte v14, v14

    aput-byte v14, v8, v9

    .line 172
    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v12, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 174
    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 176
    sget-object v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    iget v15, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v14, v15, :cond_4

    goto :goto_4

    .line 183
    :cond_4
    iget v14, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v1, v14}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 185
    iget-object v3, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v10, v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 187
    new-instance v4, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v5, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v5, v2, v13}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v4, v1, v10, v3, v5}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v4

    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0x14

    goto :goto_2

    .line 127
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 16

    move-object/from16 v0, p0

    .line 217
    iget-object v1, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 218
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    .line 226
    iget v3, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 227
    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 230
    iget v4, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v5, v4, -0x1

    div-int/2addr v5, v2

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .line 233
    rem-int/2addr v4, v2

    .line 235
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    .line 239
    :cond_0
    :goto_0
    iget-object v8, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 242
    invoke-static {v1, v3, v7}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 244
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v9, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v10, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 247
    sget-object v9, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v10, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 251
    iget v9, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v9

    .line 262
    iget v10, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v10, v10, 0x4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_0

    .line 269
    sget-object v13, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-gt v14, v5, :cond_3

    .line 272
    invoke-static {v9}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 273
    invoke-static {v1, v9, v7}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 275
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    if-ne v14, v5, :cond_2

    .line 278
    sget-object v6, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 281
    :cond_2
    invoke-virtual {v11, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v2

    const/4 v6, 0x1

    goto :goto_2

    .line 285
    :cond_3
    sget-object v6, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v11, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 288
    invoke-virtual {v8, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 291
    sget-object v13, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 294
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    iget v13, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v11, v13, :cond_4

    goto :goto_3

    .line 301
    :cond_4
    iget v11, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 305
    iget v2, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v2, :cond_5

    .line 307
    invoke-static {v1, v6, v8, v3, v2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 310
    new-instance v2, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v4, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    iget v5, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v4, v3, v12, v5}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v2, v6, v8, v1, v4}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    .line 314
    :cond_5
    iget-object v1, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v6, v8, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 316
    new-instance v2, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v4, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v4, v3, v12}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v6, v8, v1, v4}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method private static getDefaultN(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method private static hash(Lorg/spongycastle/crypto/Digest;[B[B)V
    .locals 2

    .line 365
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 366
    invoke-interface {p0, p2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static inc([B)V
    .locals 2

    .line 376
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 378
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 379
    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 55
    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 56
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 57
    iput p2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 58
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 3

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 80
    iget p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/16 v0, 0x400

    if-lt p1, v0, :cond_7

    const/16 v1, 0xc00

    if-gt p1, v1, :cond_7

    rem-int/lit16 v2, p1, 0x400

    if-nez v2, :cond_7

    if-ne p1, v0, :cond_1

    .line 84
    iget p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 160 for L = 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    :goto_0
    iget p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/16 v0, 0x800

    const/16 v2, 0x100

    if-ne p1, v0, :cond_3

    iget p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 224 or 256 for L = 2048"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    :goto_1
    iget p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-ne p1, v1, :cond_5

    iget p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    if-ne p1, v2, :cond_4

    goto :goto_2

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 256 for L = 3072"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    if-lt p1, v0, :cond_6

    return-void

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Digest output size too small for value of N"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
