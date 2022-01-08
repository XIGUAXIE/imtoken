.class public Lcom/subgraph/orchid/crypto/Curve25519;
.super Ljava/lang/Object;
.source "Curve25519.java"


# static fields
.field static basev:[B

.field static minusp:[I


# instance fields
.field final CRYPTO_BYTES:I

.field final CRYPTO_SCALARBYTES:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 38
    fill-array-data v1, :array_0

    sput-object v1, Lcom/subgraph/orchid/crypto/Curve25519;->basev:[B

    new-array v0, v0, [I

    .line 39
    fill-array-data v0, :array_1

    sput-object v0, Lcom/subgraph/orchid/crypto/Curve25519;->minusp:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x13
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 35
    iput v0, p0, Lcom/subgraph/orchid/crypto/Curve25519;->CRYPTO_BYTES:I

    .line 36
    iput v0, p0, Lcom/subgraph/orchid/crypto/Curve25519;->CRYPTO_SCALARBYTES:I

    return-void
.end method

.method static add([II[II[II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    add-int v2, p3, v0

    .line 53
    aget v2, p2, v2

    add-int v3, p5, v0

    aget v3, p4, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, p1, v0

    and-int/lit16 v3, v1, 0xff

    .line 54
    aput v3, p0, v2

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, v2

    .line 58
    aget p2, p2, p3

    add-int/2addr p5, v2

    aget p3, p4, p5

    add-int/2addr p2, p3

    add-int/2addr v1, p2

    add-int/2addr p1, v2

    .line 59
    aput v1, p0, p1

    return-void
.end method

.method public static crypto_scalarmult([B[B[B)I
    .locals 10

    const/16 v0, 0x60

    new-array v0, v0, [I

    const/16 v7, 0x20

    new-array v1, v7, [B

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    .line 449
    aget-byte v3, p1, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_0
    aget-byte p1, v1, v8

    and-int/lit16 p1, p1, 0xf8

    int-to-byte p1, p1

    aput-byte p1, v1, v8

    const/16 p1, 0x1f

    .line 452
    aget-byte v2, v1, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 453
    aget-byte v2, v1, p1

    const/16 v9, 0x40

    or-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v7, :cond_1

    .line 456
    aget-byte v2, p2, p1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 458
    :cond_1
    invoke-static {v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->mainloop([I[B)V

    .line 460
    invoke-static {v0, v7, v0, v7}, Lcom/subgraph/orchid/crypto/Curve25519;->recip([II[II)V

    const/16 v2, 0x40

    const/4 v4, 0x0

    const/16 v6, 0x20

    move-object v1, v0

    move-object v3, v0

    move-object v5, v0

    .line 461
    invoke-static/range {v1 .. v6}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 462
    invoke-static {v0, v9}, Lcom/subgraph/orchid/crypto/Curve25519;->freeze([II)V

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v7, :cond_2

    add-int/lit8 p2, p1, 0x40

    .line 465
    aget p2, v0, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return v8
.end method

.method public static crypto_scalarmult_base([B[B)I
    .locals 1

    .line 43
    sget-object v0, Lcom/subgraph/orchid/crypto/Curve25519;->basev:[B

    .line 44
    invoke-static {p0, p1, v0}, Lcom/subgraph/orchid/crypto/Curve25519;->crypto_scalarmult([B[B[B)I

    move-result p0

    return p0
.end method

.method static freeze([II)V
    .locals 10

    const/16 v0, 0x20

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int v4, p1, v3

    .line 108
    aget v4, p0, v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_0
    sget-object v8, Lcom/subgraph/orchid/crypto/Curve25519;->minusp:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p0

    .line 112
    invoke-static/range {v4 .. v9}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    add-int/lit8 v3, p1, 0x1f

    .line 114
    aget v3, p0, v3

    ushr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    :goto_1
    if-ge v2, v0, :cond_1

    add-int v4, p1, v2

    .line 117
    aget v5, p0, v4

    aget v6, v1, v2

    aget v7, p0, v4

    xor-int/2addr v6, v7

    and-int/2addr v6, v3

    xor-int/2addr v5, v6

    aput v5, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static mainloop([I[B)V
    .locals 27

    const/16 v6, 0x40

    new-array v7, v6, [I

    new-array v8, v6, [I

    new-array v9, v6, [I

    new-array v10, v6, [I

    new-array v11, v6, [I

    new-array v12, v6, [I

    new-array v13, v6, [I

    new-array v14, v6, [I

    new-array v15, v6, [I

    new-array v5, v6, [I

    new-array v4, v6, [I

    const/16 v3, 0x20

    new-array v2, v3, [I

    new-array v1, v3, [I

    new-array v0, v3, [I

    move-object/from16 v16, v5

    new-array v5, v3, [I

    move-object/from16 v17, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 226
    aget v19, p0, v5

    aput v19, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v19, 0x1

    aput v19, v7, v3

    const/16 v5, 0x21

    :goto_1
    if-ge v5, v6, :cond_1

    const/16 v18, 0x0

    .line 231
    aput v18, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    aput v19, v8, v18

    const/4 v5, 0x1

    :goto_2
    if-ge v5, v6, :cond_2

    .line 236
    aput v18, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0xfe

    const/16 v20, 0xfe

    :goto_3
    if-ltz v20, :cond_3

    .line 245
    div-int/lit8 v5, v20, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v21, v20, 0x7

    ushr-int v5, v5, v21

    and-int/lit8 v5, v5, 0x1

    .line 247
    invoke-static {v9, v10, v8, v7, v5}, Lcom/subgraph/orchid/crypto/Curve25519;->select([I[I[I[II)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x20

    move-object v6, v0

    move-object v0, v13

    move-object/from16 v24, v1

    move/from16 v1, v21

    move-object/from16 v25, v2

    move-object v2, v9

    move/from16 v3, v22

    move-object/from16 v21, v4

    move-object v4, v9

    move/from16 v26, v5

    move-object/from16 v22, v7

    const/4 v7, 0x0

    move/from16 v5, v23

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    const/16 v1, 0x20

    const/4 v3, 0x0

    const/16 v5, 0x20

    .line 249
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    const/4 v1, 0x0

    move-object v0, v14

    move-object v2, v10

    move-object v4, v10

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    const/16 v1, 0x20

    .line 251
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    .line 252
    invoke-static {v15, v7, v13, v7}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/16 v5, 0x20

    .line 253
    invoke-static {v15, v5, v13, v5}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v1, 0x0

    const/16 v18, 0x20

    move-object/from16 v0, v16

    move-object v2, v14

    move-object v4, v13

    const/16 v7, 0x20

    move/from16 v5, v18

    .line 254
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    const/16 v1, 0x20

    const/16 v3, 0x20

    const/4 v5, 0x0

    .line 255
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, v21

    move-object/from16 v2, v16

    move-object/from16 v4, v16

    .line 256
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    const/16 v1, 0x20

    .line 257
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    move-object/from16 v5, v21

    move-object/from16 v4, v25

    const/4 v0, 0x0

    .line 258
    invoke-static {v4, v0, v5, v7}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v1, 0x0

    move-object/from16 v0, v24

    move-object v2, v15

    move-object/from16 v21, v4

    move-object v4, v15

    move-object v7, v5

    move/from16 v5, v18

    .line 259
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->sub([II[II[II)V

    move-object/from16 v5, v24

    .line 260
    invoke-static {v6, v5}, Lcom/subgraph/orchid/crypto/Curve25519;->mult121665([I[I)V

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v2, v6

    move/from16 v5, v18

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->add([II[II[II)V

    const/16 v5, 0x20

    move-object v0, v11

    move-object v2, v15

    .line 262
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    const/16 v1, 0x20

    const/4 v5, 0x0

    move-object/from16 v2, v24

    move-object/from16 v4, v17

    .line 263
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    const/4 v5, 0x0

    .line 264
    invoke-static {v12, v5, v7, v5}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    move-object v0, v12

    move-object/from16 v2, v21

    move-object/from16 v4, p0

    const/16 v23, 0x0

    move/from16 v5, v18

    .line 265
    invoke-static/range {v0 .. v5}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    move-object/from16 v0, v22

    move/from16 v1, v26

    .line 266
    invoke-static {v8, v0, v11, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->select([I[I[I[II)V

    add-int/lit8 v20, v20, -0x1

    move-object v4, v7

    move-object/from16 v1, v24

    const/16 v3, 0x20

    const/16 v18, 0x0

    move-object v7, v0

    move-object v0, v6

    const/16 v6, 0x40

    goto/16 :goto_3

    :cond_3
    const/16 v23, 0x0

    const/16 v0, 0x40

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_4

    .line 270
    aget v1, v8, v5

    aput v1, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method static mult([II[II[II)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-gt v3, v1, :cond_0

    add-int v5, p3, v3

    .line 129
    aget v5, p2, v5

    add-int v6, p5, v1

    sub-int/2addr v6, v3

    aget v6, p4, v6

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_1

    add-int v6, p3, v5

    .line 132
    aget v6, p2, v6

    mul-int/lit8 v6, v6, 0x26

    add-int v7, p5, v1

    add-int/2addr v7, v2

    sub-int/2addr v7, v5

    aget v7, p4, v7

    mul-int v6, v6, v7

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v1, p1

    .line 134
    aput v4, p0, v1

    move v1, v3

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p0, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->squeeze([II)V

    return-void
.end method

.method static mult121665([I[I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const v3, 0x1db41

    const/16 v4, 0x1f

    if-ge v1, v4, :cond_0

    .line 147
    aget v4, p1, v1

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    and-int/lit16 v3, v2, 0xff

    .line 148
    aput v3, p0, v1

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    aget p1, p1, v4

    mul-int p1, p1, v3

    add-int/2addr v2, p1

    and-int/lit8 p1, v2, 0x7f

    .line 153
    aput p1, p0, v4

    ushr-int/lit8 p1, v2, 0x7

    mul-int/lit8 p1, p1, 0x13

    :goto_1
    if-ge v0, v4, :cond_1

    .line 158
    aget v1, p0, v0

    add-int/2addr p1, v1

    and-int/lit16 v1, p1, 0xff

    .line 159
    aput v1, p0, v0

    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    aget v1, p0, v0

    add-int/2addr p1, v1

    .line 164
    aput p1, p0, v0

    return-void
.end method

.method static recip([II[II)V
    .locals 17

    const/16 v0, 0x20

    new-array v5, v0, [I

    new-array v12, v0, [I

    new-array v13, v0, [I

    new-array v14, v0, [I

    new-array v15, v0, [I

    new-array v4, v0, [I

    new-array v3, v0, [I

    new-array v2, v0, [I

    new-array v1, v0, [I

    new-array v0, v0, [I

    const/4 v11, 0x0

    move-object/from16 v10, p2

    move/from16 v9, p3

    .line 288
    invoke-static {v5, v11, v10, v9}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 291
    invoke-static {v0, v11, v5, v11}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 294
    invoke-static {v1, v11, v0, v11}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v6, v12

    move-object v8, v1

    move/from16 v9, v16

    move/from16 v11, p3

    .line 298
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v11, v1

    move-object v1, v13

    move-object v10, v2

    move v2, v6

    move-object v9, v3

    move-object v3, v12

    move-object v6, v4

    move v4, v7

    move-object v7, v6

    move v6, v8

    .line 301
    invoke-static/range {v1 .. v6}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    const/4 v1, 0x0

    .line 304
    invoke-static {v11, v1, v13, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v14

    move-object v5, v7

    move v7, v2

    move-object v8, v11

    move-object v2, v9

    move v9, v3

    move-object v3, v10

    move-object v10, v12

    move-object v12, v11

    move v11, v4

    .line 307
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 310
    invoke-static {v12, v1, v14, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 313
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 316
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 319
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 322
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v15

    move-object v8, v12

    move-object v10, v14

    .line 325
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 328
    invoke-static {v12, v1, v15, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 331
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v4, 0x2

    const/4 v6, 0x2

    :goto_0
    const/16 v14, 0xa

    if-ge v6, v14, :cond_0

    .line 336
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 337
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    move-object v8, v0

    move-object v10, v15

    .line 341
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 344
    invoke-static {v12, v1, v5, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 347
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v6, 0x2

    :goto_1
    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    .line 352
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 353
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    move-object v8, v0

    move-object v10, v5

    .line 357
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 360
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 363
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v5, 0x2

    :goto_2
    if-ge v5, v14, :cond_2

    .line 368
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 369
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v8, v12

    move-object v10, v15

    .line 373
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 376
    invoke-static {v12, v1, v2, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 379
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v5, 0x2

    :goto_3
    const/16 v14, 0x32

    if-ge v5, v14, :cond_3

    .line 384
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 385
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object v8, v0

    move-object v10, v2

    .line 389
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 392
    invoke-static {v0, v1, v3, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 395
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    const/4 v5, 0x2

    :goto_4
    const/16 v6, 0x64

    if-ge v5, v6, :cond_4

    .line 400
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 401
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v8, v12

    move-object v10, v3

    .line 405
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 408
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 411
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    :goto_5
    if-ge v4, v14, :cond_5

    .line 416
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 417
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    move-object v8, v0

    move-object v10, v2

    .line 421
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    .line 424
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 427
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 430
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 433
    invoke-static {v12, v1, v0, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    .line 436
    invoke-static {v0, v1, v12, v1}, Lcom/subgraph/orchid/crypto/Curve25519;->square([II[II)V

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object v10, v13

    .line 440
    invoke-static/range {v6 .. v11}, Lcom/subgraph/orchid/crypto/Curve25519;->mult([II[II[II)V

    return-void
.end method

.method static select([I[I[I[II)V
    .locals 3

    add-int/lit8 p4, p4, -0x1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 201
    aget v1, p2, v0

    aget v2, p3, v0

    xor-int/2addr v1, v2

    and-int/2addr v1, p4

    .line 202
    aget v2, p3, v0

    xor-int/2addr v2, v1

    aput v2, p0, v0

    .line 203
    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static square([II[II)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    sub-int v5, v1, v3

    if-ge v3, v5, :cond_0

    add-int v5, p3, v3

    .line 176
    aget v5, p2, v5

    add-int v6, p3, v1

    sub-int/2addr v6, v3

    aget v6, p2, v6

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    move v5, v3

    :goto_2
    add-int/lit8 v6, v1, 0x20

    sub-int/2addr v6, v5

    if-ge v5, v6, :cond_1

    add-int v6, p3, v5

    .line 179
    aget v6, p2, v6

    mul-int/lit8 v6, v6, 0x26

    add-int v7, p3, v1

    add-int/2addr v7, v2

    sub-int/2addr v7, v5

    aget v7, p2, v7

    mul-int v6, v6, v7

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    mul-int/lit8 v4, v4, 0x2

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    .line 185
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    aget v5, p2, v2

    aget v6, p2, v2

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x10

    .line 186
    aget v5, p2, v2

    mul-int/lit8 v5, v5, 0x26

    aget v2, p2, v2

    mul-int v5, v5, v2

    add-int/2addr v4, v5

    :cond_2
    add-int/2addr v1, p1

    .line 189
    aput v4, p0, v1

    move v1, v3

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {p0, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->squeeze([II)V

    return-void
.end method

.method static squeeze([II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1f

    if-ge v1, v3, :cond_0

    add-int v3, p1, v1

    .line 83
    aget v4, p0, v3

    add-int/2addr v2, v4

    and-int/lit16 v4, v2, 0xff

    .line 84
    aput v4, p0, v3

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1f

    .line 88
    aget v4, p0, v1

    add-int/2addr v2, v4

    and-int/lit8 v4, v2, 0x7f

    .line 89
    aput v4, p0, v1

    ushr-int/lit8 v2, v2, 0x7

    mul-int/lit8 v2, v2, 0x13

    :goto_1
    if-ge v0, v3, :cond_1

    add-int v4, p1, v0

    .line 94
    aget v5, p0, v4

    add-int/2addr v2, v5

    and-int/lit16 v5, v2, 0xff

    .line 95
    aput v5, p0, v4

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    aget p1, p0, v1

    add-int/2addr v2, p1

    .line 100
    aput v2, p0, v1

    return-void
.end method

.method static sub([II[II[II)V
    .locals 4

    const/16 v0, 0xda

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    add-int v2, p3, v1

    .line 68
    aget v2, p2, v2

    const v3, 0xff00

    add-int/2addr v2, v3

    add-int v3, p5, v1

    aget v3, p4, v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int v2, p1, v1

    and-int/lit16 v3, v0, 0xff

    .line 69
    aput v3, p0, v2

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, v2

    .line 73
    aget p2, p2, p3

    add-int/2addr p5, v2

    aget p3, p4, p5

    sub-int/2addr p2, p3

    add-int/2addr v0, p2

    add-int/2addr p1, v2

    .line 74
    aput v0, p0, p1

    return-void
.end method
