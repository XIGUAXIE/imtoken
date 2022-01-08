.class public Lcom/lambdaworks/crypto/SCryptUtil;
.super Ljava/lang/Object;
.source "SCryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    :try_start_0
    const-string v0, "\\$"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 76
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    aget-object v1, p1, v0

    const-string v2, "s0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 80
    aget-object v1, p1, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const/4 v1, 0x3

    .line 81
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/lambdaworks/codec/Base64;->decode([C)[B

    move-result-object v6

    const/4 v1, 0x4

    .line 82
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lcom/lambdaworks/codec/Base64;->decode([C)[B

    move-result-object p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    shr-long v1, v3, v2

    const-wide/32 v9, 0xffff

    and-long/2addr v1, v9

    long-to-double v1, v1

    .line 84
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v7, v1

    long-to-int v1, v3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v8, v2, 0xff

    and-int/lit16 v9, v1, 0xff

    const-string v1, "UTF-8"

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v10, 0x20

    invoke-static/range {v5 .. v10}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object p0

    .line 90
    array-length v1, p1

    array-length v2, p0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 94
    aget-byte v4, p1, v1

    aget-byte v5, p0, v1

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid hashed value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JVM doesn\'t support SHA1PRNG or HMAC_SHA256?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JVM doesn\'t support UTF-8?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static log2(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    ushr-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x100

    if-lt p0, v2, :cond_1

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    :cond_1
    if-lt p0, v1, :cond_2

    ushr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    :cond_2
    const/4 v1, 0x4

    if-lt p0, v1, :cond_3

    ushr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    :cond_3
    ushr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static scrypt(Ljava/lang/String;III)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    :try_start_0
    new-array v7, v0, [B

    const-string v1, "SHA1PRNG"

    .line 45
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v1, "UTF-8"

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v6, 0x20

    move-object v2, v7

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object p0

    .line 49
    invoke-static {p1}, Lcom/lambdaworks/crypto/SCryptUtil;->log2(I)I

    move-result p1

    shl-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    int-to-long p1, p1

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    array-length p3, p0

    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "$s0$"

    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x24

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {v7}, Lcom/lambdaworks/codec/Base64;->encode([B)[C

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p0}, Lcom/lambdaworks/codec/Base64;->encode([B)[C

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 60
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JVM doesn\'t support SHA1PRNG or HMAC_SHA256?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JVM doesn\'t support UTF-8?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
