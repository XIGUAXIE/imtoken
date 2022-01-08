.class public Lorg/bitcoinj/crypto/PBKDF2SHA512;
.super Ljava/lang/Object;
.source "PBKDF2SHA512.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static F(Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "HmacSHA512"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 76
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_2

    if-nez v4, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    invoke-static {p3}, Lorg/bitcoinj/crypto/PBKDF2SHA512;->INT(I)[B

    move-result-object v3

    .line 82
    array-length v5, v0

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 84
    array-length v6, v0

    invoke-static {v0, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v0, v0

    array-length v6, v3

    invoke-static {v3, v2, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-virtual {p0, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    move-object v3, v0

    goto :goto_2

    .line 91
    :cond_0
    invoke-virtual {p0, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 92
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    const/4 v5, 0x0

    .line 94
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 95
    aget-byte v6, v0, v5

    aget-byte v7, v3, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static INT(I)[B
    .locals 2

    const/4 v0, 0x4

    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static derive(Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 8

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x14

    int-to-double v2, p3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    .line 49
    :try_start_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    int-to-double v6, v1

    mul-double v4, v4, v6

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_1

    div-double/2addr v2, v6

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_0

    .line 56
    invoke-static {p0, p1, p2, v2}, Lorg/bitcoinj/crypto/PBKDF2SHA512;->F(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-array p0, p3, [B

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 50
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "derived key too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
