.class public Lcom/lambdaworks/crypto/PBKDF;
.super Ljava/lang/Object;
.source "PBKDF.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pbkdf2(Ljavax/crypto/Mac;[BI[BI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 50
    invoke-virtual/range {p0 .. p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v3

    int-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    .line 52
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    int-to-double v8, v3

    mul-double v6, v6, v8

    cmpl-double v10, v4, v6

    if-gtz v10, :cond_4

    .line 56
    new-array v6, v3, [B

    .line 57
    new-array v7, v3, [B

    .line 58
    array-length v10, v1

    add-int/lit8 v10, v10, 0x4

    new-array v10, v10, [B

    div-double/2addr v4, v8

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v5, v4, -0x1

    mul-int v5, v5, v3

    sub-int/2addr v2, v5

    .line 63
    array-length v5, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v10, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    const/4 v9, 0x1

    :goto_0
    if-gt v9, v4, :cond_3

    .line 66
    array-length v11, v1

    add-int/2addr v11, v8

    shr-int/lit8 v12, v9, 0x18

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 67
    array-length v11, v1

    add-int/2addr v11, v5

    shr-int/lit8 v12, v9, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 68
    array-length v11, v1

    add-int/lit8 v11, v11, 0x2

    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 69
    array-length v11, v1

    add-int/lit8 v11, v11, 0x3

    shr-int/lit8 v12, v9, 0x0

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 71
    invoke-virtual {v0, v10}, Ljavax/crypto/Mac;->update([B)V

    .line 72
    invoke-virtual {v0, v6, v8}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 73
    invoke-static {v6, v8, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v11, p2

    const/4 v12, 0x1

    :goto_1
    if-ge v12, v11, :cond_1

    .line 76
    invoke-virtual {v0, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 77
    invoke-virtual {v0, v6, v8}, Ljavax/crypto/Mac;->doFinal([BI)V

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_0

    .line 80
    aget-byte v14, v7, v13

    aget-byte v15, v6, v13

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v9, -0x1

    mul-int v12, v12, v3

    move-object/from16 v13, p3

    if-ne v9, v4, :cond_2

    move v14, v2

    goto :goto_3

    :cond_2
    move v14, v3

    .line 84
    :goto_3
    invoke-static {v7, v8, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 53
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Requested key length too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pbkdf2(Ljava/lang/String;[B[BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 32
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 33
    new-array p0, p4, [B

    .line 34
    invoke-static {v0, p2, p3, p0, p4}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    return-object p0
.end method
