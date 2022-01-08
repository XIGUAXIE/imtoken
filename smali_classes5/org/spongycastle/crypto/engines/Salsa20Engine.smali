.class public Lorg/spongycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/SkippingStreamCipher;


# static fields
.field public static final DEFAULT_ROUNDS:I = 0x14

.field private static final STATE_SIZE:I = 0x10

.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "expand 32-byte k"

    .line 25
    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const-string v0, "expand 16-byte k"

    .line 26
    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    .line 50
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 35
    iput-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    new-array v1, v1, [I

    .line 36
    iput-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 37
    iput-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    .line 38
    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-lez p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 64
    iput p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'rounds\' must be a positive, even number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private limitExceeded()Z
    .locals 3

    .line 447
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 449
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v0, :cond_1

    .line 451
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method private limitExceeded(I)Z
    .locals 2

    .line 463
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    if-ltz v0, :cond_0

    .line 466
    iget p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez p1, :cond_0

    .line 468
    iget p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private resetLimitCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 440
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 441
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 442
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    return-void
.end method

.method protected static rotl(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static salsaCore(I[I[I)V
    .locals 33

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 340
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 344
    array-length v2, v1

    if-ne v2, v3, :cond_2

    .line 348
    rem-int/lit8 v2, p0, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 353
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 354
    aget v5, v0, v4

    const/4 v6, 0x2

    .line 355
    aget v7, v0, v6

    const/4 v8, 0x3

    .line 356
    aget v9, v0, v8

    const/4 v10, 0x4

    .line 357
    aget v11, v0, v10

    const/4 v12, 0x5

    .line 358
    aget v13, v0, v12

    const/4 v14, 0x6

    .line 359
    aget v15, v0, v14

    const/4 v14, 0x7

    .line 360
    aget v16, v0, v14

    const/16 v17, 0x8

    .line 361
    aget v18, v0, v17

    const/16 v12, 0x9

    .line 362
    aget v19, v0, v12

    const/16 v20, 0xa

    .line 363
    aget v21, v0, v20

    const/16 v22, 0xb

    .line 364
    aget v23, v0, v22

    const/16 v24, 0xc

    .line 365
    aget v25, v0, v24

    const/16 v10, 0xd

    .line 366
    aget v26, v0, v10

    const/16 v27, 0xe

    .line 367
    aget v28, v0, v27

    const/16 v29, 0xf

    .line 368
    aget v30, v0, v29

    move/from16 v31, v30

    move/from16 v30, v28

    move/from16 v28, v26

    move/from16 v26, v25

    move/from16 v25, v23

    move/from16 v23, v21

    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v13

    move v13, v11

    move v11, v9

    move v9, v7

    move v7, v5

    move v5, v3

    move/from16 v3, p0

    :goto_0
    if-lez v3, :cond_0

    add-int v8, v5, v26

    .line 372
    invoke-static {v8, v14}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int/2addr v8, v13

    add-int v13, v8, v5

    .line 373
    invoke-static {v13, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v13

    xor-int v13, v19, v13

    add-int v6, v13, v8

    .line 374
    invoke-static {v6, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int v6, v26, v6

    add-int v4, v6, v13

    const/16 v2, 0x12

    .line 375
    invoke-static {v4, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v4, v5

    add-int v5, v15, v7

    .line 376
    invoke-static {v5, v14}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int v5, v21, v5

    add-int v14, v5, v15

    .line 377
    invoke-static {v14, v12}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v14

    xor-int v14, v28, v14

    add-int v12, v14, v5

    .line 378
    invoke-static {v12, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v12

    xor-int/2addr v7, v12

    add-int v12, v7, v14

    .line 379
    invoke-static {v12, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v12

    xor-int/2addr v12, v15

    add-int v15, v23, v16

    const/4 v2, 0x7

    .line 380
    invoke-static {v15, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int v2, v30, v15

    add-int v15, v2, v23

    const/16 v10, 0x9

    .line 381
    invoke-static {v15, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int/2addr v9, v15

    add-int v10, v9, v2

    const/16 v15, 0xd

    .line 382
    invoke-static {v10, v15}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v10

    xor-int v10, v16, v10

    add-int v15, v10, v9

    const/16 v1, 0x12

    .line 383
    invoke-static {v15, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int v1, v23, v15

    add-int v15, v31, v25

    const/4 v0, 0x7

    .line 384
    invoke-static {v15, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int v0, v11, v15

    add-int v11, v0, v31

    const/16 v15, 0x9

    .line 385
    invoke-static {v11, v15}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v11

    xor-int v11, v18, v11

    add-int v15, v11, v0

    move/from16 v32, v3

    const/16 v3, 0xd

    .line 386
    invoke-static {v15, v3}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int v3, v25, v15

    add-int v15, v3, v11

    move/from16 v19, v14

    const/16 v14, 0x12

    .line 387
    invoke-static {v15, v14}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int v14, v31, v15

    add-int v15, v4, v0

    move/from16 v26, v6

    const/4 v6, 0x7

    .line 389
    invoke-static {v15, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v15

    xor-int/2addr v7, v15

    add-int v6, v7, v4

    const/16 v15, 0x9

    .line 390
    invoke-static {v6, v15}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v9, v6

    add-int v6, v9, v7

    const/16 v15, 0xd

    .line 391
    invoke-static {v6, v15}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v0, v6

    add-int v6, v0, v9

    const/16 v15, 0x12

    .line 392
    invoke-static {v6, v15}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v4, v6

    add-int v6, v12, v8

    const/4 v15, 0x7

    .line 393
    invoke-static {v6, v15}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int v16, v10, v6

    add-int v6, v16, v12

    const/16 v10, 0x9

    .line 394
    invoke-static {v6, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int v18, v11, v6

    add-int v6, v18, v16

    const/16 v10, 0xd

    .line 395
    invoke-static {v6, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v6

    xor-int/2addr v6, v8

    add-int v8, v6, v18

    const/16 v10, 0x12

    .line 396
    invoke-static {v8, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int v15, v12, v8

    add-int v8, v1, v5

    const/4 v10, 0x7

    .line 397
    invoke-static {v8, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int v25, v3, v8

    add-int v3, v25, v1

    const/16 v8, 0x9

    .line 398
    invoke-static {v3, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v3, v13

    add-int v8, v3, v25

    const/16 v10, 0xd

    .line 399
    invoke-static {v8, v10}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v8

    xor-int v21, v5, v8

    add-int v5, v21, v3

    const/16 v8, 0x12

    .line 400
    invoke-static {v5, v8}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int v23, v1, v5

    add-int v1, v14, v2

    const/4 v5, 0x7

    .line 401
    invoke-static {v1, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v26, v26, v1

    add-int v1, v26, v14

    const/16 v5, 0x9

    .line 402
    invoke-static {v1, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v28, v19, v1

    add-int v1, v28, v26

    const/16 v5, 0xd

    .line 403
    invoke-static {v1, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v30, v2, v1

    add-int v1, v30, v28

    const/16 v2, 0x12

    .line 404
    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v1

    xor-int v31, v14, v1

    add-int/lit8 v1, v32, -0x2

    move v11, v0

    move/from16 v19, v3

    move v5, v4

    move v13, v6

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x3

    const/16 v10, 0xd

    const/16 v12, 0x9

    const/4 v14, 0x7

    move-object/from16 v0, p1

    move v3, v1

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 407
    aget v1, p1, v0

    add-int/2addr v5, v1

    aput v5, p2, v0

    const/4 v0, 0x1

    .line 408
    aget v1, p1, v0

    add-int/2addr v7, v1

    aput v7, p2, v0

    const/4 v0, 0x2

    .line 409
    aget v1, p1, v0

    add-int/2addr v9, v1

    aput v9, p2, v0

    const/4 v0, 0x3

    .line 410
    aget v1, p1, v0

    add-int/2addr v11, v1

    aput v11, p2, v0

    const/4 v0, 0x4

    .line 411
    aget v1, p1, v0

    add-int/2addr v13, v1

    aput v13, p2, v0

    const/4 v0, 0x5

    .line 412
    aget v1, p1, v0

    add-int/2addr v15, v1

    aput v15, p2, v0

    const/4 v0, 0x6

    .line 413
    aget v1, p1, v0

    add-int v16, v16, v1

    aput v16, p2, v0

    const/4 v0, 0x7

    .line 414
    aget v1, p1, v0

    add-int v18, v18, v1

    aput v18, p2, v0

    .line 415
    aget v0, p1, v17

    add-int v19, v19, v0

    aput v19, p2, v17

    const/16 v0, 0x9

    .line 416
    aget v1, p1, v0

    add-int v21, v21, v1

    aput v21, p2, v0

    .line 417
    aget v0, p1, v20

    add-int v23, v23, v0

    aput v23, p2, v20

    .line 418
    aget v0, p1, v22

    add-int v25, v25, v0

    aput v25, p2, v22

    .line 419
    aget v0, p1, v24

    add-int v26, v26, v0

    aput v26, p2, v24

    const/16 v0, 0xd

    .line 420
    aget v1, p1, v0

    add-int v28, v28, v1

    aput v28, p2, v0

    .line 421
    aget v0, p1, v27

    add-int v30, v30, v0

    aput v30, p2, v27

    .line 422
    aget v0, p1, v29

    add-int v31, v31, v0

    aput v31, p2, v29

    return-void

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rounds must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 342
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 161
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3

    .line 329
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 330
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 131
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    const-string v1, "Salsa20"

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected getCounter()J
    .locals 7

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v1, v0, v1

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const/16 v3, 0x8

    aget v0, v0, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getPosition()J
    .locals 4

    .line 261
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getCounter()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    mul-long v0, v0, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 85
    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_4

    .line 90
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 92
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 93
    array-length v0, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 99
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    if-nez p2, :cond_1

    .line 102
    iget-boolean p2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p0, p2, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " KeyParameter can not be null for first initialisation"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2

    .line 111
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->reset()V

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Init parameters must contain a KeyParameter (or null for re-init)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes of IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Init parameters must include an IV"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .locals 5

    .line 185
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-eqz v0, :cond_5

    add-int v0, p2, p3

    .line 190
    array-length v1, p1

    if-gt v0, v1, :cond_4

    add-int v0, p5, p3

    .line 195
    array-length v1, p4

    if-gt v0, v1, :cond_3

    .line 200
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, v0, p5

    .line 207
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v4, v0, p2

    aget-byte v4, p1, v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v1, v3, 0x3f

    .line 208
    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 213
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3

    .line 202
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string p2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 267
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    .line 268
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    return-void
.end method

.method protected resetCounter()V
    .locals 3

    .line 280
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    const/16 v3, 0x9

    if-nez v2, :cond_1

    aget v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    .line 174
    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    :cond_2
    return-void
.end method

.method public returnByte(B)B
    .locals 2

    .line 140
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v1, 0x3f

    .line 146
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    :cond_0
    return p1

    .line 142
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v0, "2^70 byte limit per IV; Change IV"

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekTo(J)J
    .locals 0

    .line 254
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 256
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected setKey([B[B)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 287
    array-length v2, p1

    const/16 v3, 0x20

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    array-length v2, p1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires 128 bit or 256 bit key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x1

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v2, v5

    .line 294
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x2

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v2, v5

    .line 295
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x3

    const/16 v6, 0x8

    invoke-static {p1, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v2, v5

    .line 296
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v5, 0xc

    invoke-static {p1, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v2, v0

    .line 300
    array-length v2, p1

    if-ne v2, v3, :cond_2

    .line 302
    sget-object v2, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    goto :goto_1

    .line 307
    :cond_2
    sget-object v2, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    const/4 v4, 0x0

    .line 311
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xb

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v3, v7

    .line 312
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    add-int/lit8 v7, v4, 0x4

    invoke-static {p1, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v3, v5

    .line 313
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xd

    add-int/lit8 v8, v4, 0x8

    invoke-static {p1, v8}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v3, v7

    .line 314
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0xe

    add-int/2addr v4, v5

    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    aput p1, v3, v7

    .line 316
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v2, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, p1, v1

    .line 317
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {v2, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, p1, v3

    .line 318
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-static {v2, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, p1, v3

    .line 319
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {v2, v5}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p1, v3

    .line 323
    :cond_3
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v2, 0x6

    invoke-static {p2, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p1, v2

    .line 324
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x7

    invoke-static {p2, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p2

    aput p2, p1, v1

    return-void
.end method

.method public skip(J)J
    .locals 5

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_3

    .line 226
    iget v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x3f

    iput v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v4, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    :cond_0
    add-long/2addr v2, v0

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, v2, p1

    if-lez v4, :cond_3

    .line 238
    iget v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v4, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->retreatCounter()V

    .line 243
    :cond_2
    iget v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x3f

    iput v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    sub-long/2addr v2, v0

    goto :goto_1

    .line 247
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    return-wide p1
.end method
