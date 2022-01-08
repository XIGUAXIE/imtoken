.class public Lcom/lambdaworks/crypto/SCrypt;
.super Ljava/lang/Object;
.source "SCrypt.java"


# static fields
.field private static final native_library_loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/lambdaworks/jni/LibraryLoaders;->loader()Lcom/lambdaworks/jni/LibraryLoader;

    move-result-object v0

    const-string v1, "scrypt"

    const/4 v2, 0x1

    .line 28
    invoke-interface {v0, v1, v2}, Lcom/lambdaworks/jni/LibraryLoader;->load(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lambdaworks/crypto/SCrypt;->native_library_loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static R(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static blockmix_salsa8([BIII)V
    .locals 6

    const/16 v0, 0x40

    new-array v1, v0, [B

    mul-int/lit8 v2, p3, 0x2

    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x40

    add-int/2addr v3, p1

    const/4 v4, 0x0

    .line 132
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    mul-int/lit8 v5, v3, 0x40

    .line 135
    invoke-static {p0, v5, v1, v4, v0}, Lcom/lambdaworks/crypto/SCrypt;->blockxor([BI[BII)V

    .line 136
    invoke-static {v1}, Lcom/lambdaworks/crypto/SCrypt;->salsa20_8([B)V

    add-int/2addr v5, p2

    .line 137
    invoke-static {v1, v4, p0, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_1

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v2, p2

    mul-int/lit8 v3, v1, 0x40

    add-int/2addr v3, p1

    .line 141
    invoke-static {p0, v2, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, p3, :cond_2

    mul-int/lit8 v1, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr v1, p2

    add-int v2, v4, p3

    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v2, p1

    .line 145
    invoke-static {p0, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static blockxor([BI[BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 198
    aget-byte v2, p2, v1

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static integerify([BII)I
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    mul-int/lit8 p2, p2, 0x40

    add-int/2addr p1, p2

    add-int/lit8 p2, p1, 0x0

    .line 207
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x0

    add-int/lit8 v0, p1, 0x1

    .line 208
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x2

    .line 209
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    .line 210
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p2

    return p0
.end method

.method public static salsa20_8([B)V
    .locals 22

    const/16 v0, 0x10

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    const/16 v6, 0x8

    if-ge v4, v0, :cond_0

    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v7, 0x0

    .line 159
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v3

    aput v8, v1, v4

    .line 160
    aget v8, v1, v4

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v6, v9, 0x8

    or-int/2addr v6, v8

    aput v6, v1, v4

    .line 161
    aget v6, v1, v4

    add-int/lit8 v8, v7, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v0

    or-int/2addr v6, v8

    aput v6, v1, v4

    .line 162
    aget v6, v1, v4

    add-int/2addr v7, v5

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x8

    :goto_1
    if-lez v4, :cond_1

    const/4 v7, 0x4

    .line 168
    aget v8, v2, v7

    aget v9, v2, v3

    const/16 v10, 0xc

    aget v11, v2, v10

    add-int/2addr v9, v11

    const/4 v11, 0x7

    invoke-static {v9, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v7

    aget v8, v2, v6

    aget v9, v2, v7

    aget v12, v2, v3

    add-int/2addr v9, v12

    const/16 v12, 0x9

    invoke-static {v9, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v6

    .line 169
    aget v8, v2, v10

    aget v9, v2, v6

    aget v13, v2, v7

    add-int/2addr v9, v13

    const/16 v13, 0xd

    invoke-static {v9, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v10

    aget v8, v2, v3

    aget v9, v2, v10

    aget v14, v2, v6

    add-int/2addr v9, v14

    const/16 v14, 0x12

    invoke-static {v9, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v3

    .line 170
    aget v8, v2, v12

    const/4 v9, 0x5

    aget v15, v2, v9

    const/16 v16, 0x1

    aget v17, v2, v16

    add-int v15, v15, v17

    invoke-static {v15, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v15

    xor-int/2addr v8, v15

    aput v8, v2, v12

    aget v8, v2, v13

    aget v15, v2, v12

    aget v17, v2, v9

    add-int v15, v15, v17

    invoke-static {v15, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v15

    xor-int/2addr v8, v15

    aput v8, v2, v13

    .line 171
    aget v8, v2, v16

    aget v15, v2, v13

    aget v17, v2, v12

    add-int v15, v15, v17

    invoke-static {v15, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v15

    xor-int/2addr v8, v15

    aput v8, v2, v16

    aget v8, v2, v9

    aget v15, v2, v16

    aget v17, v2, v13

    add-int v15, v15, v17

    invoke-static {v15, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v15

    xor-int/2addr v8, v15

    aput v8, v2, v9

    const/16 v8, 0xe

    .line 172
    aget v15, v2, v8

    const/16 v17, 0xa

    aget v18, v2, v17

    const/16 v19, 0x6

    aget v20, v2, v19

    add-int v0, v18, v20

    invoke-static {v0, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v0

    xor-int/2addr v0, v15

    aput v0, v2, v8

    const/4 v0, 0x2

    aget v15, v2, v0

    aget v18, v2, v8

    aget v20, v2, v17

    add-int v10, v18, v20

    invoke-static {v10, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v10

    xor-int/2addr v10, v15

    aput v10, v2, v0

    .line 173
    aget v10, v2, v19

    aget v15, v2, v0

    aget v18, v2, v8

    add-int v15, v15, v18

    invoke-static {v15, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v15

    xor-int/2addr v10, v15

    aput v10, v2, v19

    aget v10, v2, v17

    aget v15, v2, v19

    aget v18, v2, v0

    add-int v15, v15, v18

    invoke-static {v15, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v15

    xor-int/2addr v10, v15

    aput v10, v2, v17

    .line 174
    aget v10, v2, v5

    const/16 v15, 0xf

    aget v18, v2, v15

    const/16 v20, 0xb

    aget v21, v2, v20

    add-int v8, v18, v21

    invoke-static {v8, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v8

    xor-int/2addr v8, v10

    aput v8, v2, v5

    aget v8, v2, v11

    aget v10, v2, v5

    aget v18, v2, v15

    add-int v10, v10, v18

    invoke-static {v10, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v11

    .line 175
    aget v8, v2, v20

    aget v10, v2, v11

    aget v18, v2, v5

    add-int v10, v10, v18

    invoke-static {v10, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v20

    aget v8, v2, v15

    aget v10, v2, v20

    aget v18, v2, v11

    add-int v10, v10, v18

    invoke-static {v10, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v15

    .line 176
    aget v8, v2, v16

    aget v10, v2, v3

    aget v18, v2, v5

    add-int v10, v10, v18

    invoke-static {v10, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v16

    aget v8, v2, v0

    aget v10, v2, v16

    aget v18, v2, v3

    add-int v10, v10, v18

    invoke-static {v10, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v0

    .line 177
    aget v8, v2, v5

    aget v10, v2, v0

    aget v16, v2, v16

    add-int v10, v10, v16

    invoke-static {v10, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v5

    aget v8, v2, v3

    aget v10, v2, v5

    aget v0, v2, v0

    add-int/2addr v10, v0

    invoke-static {v10, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v0

    xor-int/2addr v0, v8

    aput v0, v2, v3

    .line 178
    aget v0, v2, v19

    aget v8, v2, v9

    aget v10, v2, v7

    add-int/2addr v8, v10

    invoke-static {v8, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v8

    xor-int/2addr v0, v8

    aput v0, v2, v19

    aget v0, v2, v11

    aget v8, v2, v19

    aget v10, v2, v9

    add-int/2addr v8, v10

    invoke-static {v8, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v8

    xor-int/2addr v0, v8

    aput v0, v2, v11

    .line 179
    aget v0, v2, v7

    aget v8, v2, v11

    aget v10, v2, v19

    add-int/2addr v8, v10

    invoke-static {v8, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v8

    xor-int/2addr v0, v8

    aput v0, v2, v7

    aget v0, v2, v9

    aget v7, v2, v7

    aget v8, v2, v11

    add-int/2addr v7, v8

    invoke-static {v7, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v7

    xor-int/2addr v0, v7

    aput v0, v2, v9

    .line 180
    aget v0, v2, v20

    aget v7, v2, v17

    aget v8, v2, v12

    add-int/2addr v7, v8

    invoke-static {v7, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v7

    xor-int/2addr v0, v7

    aput v0, v2, v20

    aget v0, v2, v6

    aget v7, v2, v20

    aget v8, v2, v17

    add-int/2addr v7, v8

    invoke-static {v7, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v7

    xor-int/2addr v0, v7

    aput v0, v2, v6

    .line 181
    aget v0, v2, v12

    aget v7, v2, v6

    aget v8, v2, v20

    add-int/2addr v7, v8

    invoke-static {v7, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v7

    xor-int/2addr v0, v7

    aput v0, v2, v12

    aget v0, v2, v17

    aget v7, v2, v12

    aget v8, v2, v6

    add-int/2addr v7, v8

    invoke-static {v7, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v7

    xor-int/2addr v0, v7

    aput v0, v2, v17

    const/16 v0, 0xc

    .line 182
    aget v7, v2, v0

    aget v8, v2, v15

    const/16 v9, 0xe

    aget v10, v2, v9

    add-int/2addr v8, v10

    invoke-static {v8, v11}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v2, v0

    aget v7, v2, v13

    aget v8, v2, v0

    aget v9, v2, v15

    add-int/2addr v8, v9

    invoke-static {v8, v12}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v2, v13

    const/16 v7, 0xe

    .line 183
    aget v8, v2, v7

    aget v9, v2, v13

    aget v0, v2, v0

    add-int/2addr v9, v0

    invoke-static {v9, v13}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v0

    xor-int/2addr v0, v8

    aput v0, v2, v7

    aget v0, v2, v15

    aget v7, v2, v7

    aget v8, v2, v13

    add-int/2addr v7, v8

    invoke-static {v7, v14}, Lcom/lambdaworks/crypto/SCrypt;->R(II)I

    move-result v7

    xor-int/2addr v0, v7

    aput v0, v2, v15

    add-int/lit8 v4, v4, -0x2

    const/16 v0, 0x10

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    const/16 v4, 0x10

    :goto_2
    if-ge v0, v4, :cond_2

    .line 186
    aget v7, v2, v0

    aget v8, v1, v0

    add-int/2addr v7, v8

    aput v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_3

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v4, v2, 0x0

    .line 189
    aget v7, v1, v0

    shr-int/2addr v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v4

    add-int/lit8 v4, v2, 0x1

    .line 190
    aget v7, v1, v0

    shr-int/2addr v7, v6

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v4

    add-int/lit8 v4, v2, 0x2

    .line 191
    aget v7, v1, v0

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v4

    add-int/2addr v2, v5

    .line 192
    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x10

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static scrypt([B[BIIII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    sget-boolean v0, Lcom/lambdaworks/crypto/SCrypt;->native_library_loaded:Z

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/lambdaworks/crypto/SCrypt;->scryptN([B[BIIII)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/lambdaworks/crypto/SCrypt;->scryptJ([B[BIIII)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static scryptJ([B[BIIII)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    const/4 v0, 0x2

    if-lt v6, v0, :cond_3

    add-int/lit8 v0, v6, -0x1

    and-int/2addr v0, v6

    if-nez v0, :cond_3

    const v0, 0xffffff

    .line 83
    div-int v1, v0, v7

    if-gt v6, v1, :cond_2

    .line 84
    div-int/2addr v0, v8

    if-gt v7, v0, :cond_1

    const-string v0, "HmacSHA256"

    .line 86
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v10

    .line 87
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 89
    new-array v11, v9, [B

    mul-int/lit16 v0, v7, 0x80

    mul-int v1, v0, v8

    .line 91
    new-array v12, v1, [B

    mul-int/lit16 v1, v7, 0x100

    .line 92
    new-array v13, v1, [B

    mul-int v0, v0, v6

    .line 93
    new-array v14, v0, [B

    mul-int/lit16 v0, v8, 0x80

    mul-int v0, v0, v7

    const/4 v15, 0x1

    move-object/from16 v1, p1

    .line 96
    invoke-static {v10, v1, v15, v12, v0}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_0

    mul-int/lit16 v0, v5, 0x80

    mul-int v1, v0, v7

    move-object v0, v12

    move/from16 v2, p3

    move/from16 v3, p2

    move-object v4, v14

    move/from16 v16, v5

    move-object v5, v13

    .line 99
    invoke-static/range {v0 .. v5}, Lcom/lambdaworks/crypto/SCrypt;->smix([BIII[B[B)V

    add-int/lit8 v5, v16, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v10, v12, v15, v11, v9}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    return-object v11

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter r is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter N is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be a power of 2 greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native scryptN([B[BIIII)[B
.end method

.method public static smix([BIII[B[B)V
    .locals 5

    mul-int/lit16 v0, p2, 0x80

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, p1, p5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    mul-int v3, v2, v0

    .line 115
    invoke-static {p5, v1, p4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-static {p5, v1, v0, p2}, Lcom/lambdaworks/crypto/SCrypt;->blockmix_salsa8([BIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_1

    .line 120
    invoke-static {p5, v1, p2}, Lcom/lambdaworks/crypto/SCrypt;->integerify([BII)I

    move-result v3

    add-int/lit8 v4, p3, -0x1

    and-int/2addr v3, v4

    mul-int v3, v3, v0

    .line 121
    invoke-static {p4, v3, p5, v1, v0}, Lcom/lambdaworks/crypto/SCrypt;->blockxor([BI[BII)V

    .line 122
    invoke-static {p5, v1, v0, p2}, Lcom/lambdaworks/crypto/SCrypt;->blockmix_salsa8([BIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_1
    invoke-static {p5, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
