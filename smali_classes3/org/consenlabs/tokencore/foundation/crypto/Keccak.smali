.class public Lorg/consenlabs/tokencore/foundation/crypto/Keccak;
.super Ljava/lang/Object;
.source "Keccak.java"


# static fields
.field private static final MAX_STATE_SIZE:I = 0x640

.field private static final MAX_STATE_SIZE_WORDS:I = 0x19

.field private static final RC:[J


# instance fields
.field private digestSizeBits:I

.field private padded:Z

.field private rateBits:I

.field private rateSizeBits:I

.field private state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    .line 457
    fill-array-data v0, :array_0

    sput-object v0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->RC:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    .line 11
    iput-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    .line 16
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->reset(I)V

    return-void
.end method

.method public constructor <init>(Lorg/consenlabs/tokencore/foundation/crypto/Keccak;)V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    .line 11
    iput-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    .line 20
    iget-object v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v0, p1, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    .line 22
    iget v0, p1, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    .line 23
    iget v0, p1, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSizeBits:I

    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSizeBits:I

    .line 24
    iget-boolean p1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->padded:Z

    iput-boolean p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->padded:Z

    return-void
.end method

.method private digest(I)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digest(IZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private digest(IZ)Ljava/nio/ByteBuffer;
    .locals 0

    if-eqz p2, :cond_0

    .line 228
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 229
    :goto_0
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digest(Ljava/nio/ByteBuffer;)V

    .line 230
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method private digest(Ljava/nio/ByteBuffer;)V
    .locals 12

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    .line 258
    iget v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    .line 260
    iget-boolean v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->padded:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 261
    invoke-direct {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->pad()V

    const/4 v2, 0x1

    .line 262
    iput-boolean v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->padded:Z

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v2, 0x7

    if-gtz v3, :cond_d

    ushr-int/lit8 v2, v2, 0x3

    and-int/lit8 v3, v2, 0x7

    if-lez v3, :cond_5

    rsub-int/lit8 v5, v3, 0x8

    if-le v5, v0, :cond_2

    move v5, v0

    :cond_2
    ushr-int/lit8 v6, v2, 0x3

    .line 275
    aget-wide v6, v1, v6

    sub-int v8, v0, v5

    add-int v9, v2, v5

    shl-int/lit8 v0, v3, 0x3

    shl-int/lit8 v2, v5, 0x3

    add-int v3, v2, v0

    :cond_3
    ushr-long v10, v6, v0

    long-to-int v2, v10

    int-to-byte v2, v2

    .line 281
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x8

    if-lt v0, v3, :cond_3

    if-gtz v8, :cond_4

    shl-int/lit8 p1, v9, 0x3

    .line 285
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    :cond_4
    move v0, v8

    move v2, v9

    .line 291
    :cond_5
    :goto_0
    iget v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    ushr-int/lit8 v3, v3, 0x6

    ushr-int/lit8 v2, v2, 0x3

    ushr-int/lit8 v5, v0, 0x3

    if-lez v5, :cond_a

    .line 296
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    .line 298
    :try_start_0
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_6
    if-lt v2, v3, :cond_7

    .line 301
    invoke-direct {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->squeeze()V

    const/4 v2, 0x0

    :cond_7
    sub-int v7, v3, v2

    if-le v7, v5, :cond_8

    move v7, v5

    :cond_8
    sub-int/2addr v5, v7

    add-int/2addr v7, v2

    .line 310
    :cond_9
    aget-wide v8, v1, v2

    invoke-virtual {p1, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v7, :cond_9

    if-gtz v5, :cond_6

    .line 315
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    and-int/lit8 v0, v0, 0x7

    if-gtz v0, :cond_a

    shl-int/lit8 p1, v2, 0x6

    .line 319
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    :catchall_0
    move-exception v0

    .line 315
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 316
    throw v0

    :cond_a
    if-lt v2, v3, :cond_b

    .line 325
    invoke-direct {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->squeeze()V

    const/4 v2, 0x0

    .line 328
    :cond_b
    aget-wide v5, v1, v2

    shl-int/lit8 v0, v0, 0x3

    :cond_c
    ushr-long v7, v5, v4

    long-to-int v1, v7

    int-to-byte v1, v1

    .line 332
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x8

    if-lt v4, v0, :cond_c

    shl-int/lit8 p1, v2, 0x6

    or-int/2addr p1, v0

    .line 335
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    .line 267
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot digest while in bit-mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private digest([BII)V
    .locals 0

    .line 249
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digest(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private digestArray(I)[B
    .locals 2

    .line 239
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 240
    invoke-direct {p0, v0, v1, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digest([BII)V

    return-object v0
.end method

.method private digestSize()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSizeBits:I

    ushr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static keccak([J)V
    .locals 41

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 364
    :goto_0
    aget-wide v2, p0, v0

    const/4 v4, 0x5

    aget-wide v5, p0, v4

    xor-long/2addr v2, v5

    const/16 v5, 0xa

    aget-wide v6, p0, v5

    xor-long/2addr v2, v6

    const/16 v6, 0xf

    aget-wide v7, p0, v6

    xor-long/2addr v2, v7

    const/16 v7, 0x14

    aget-wide v8, p0, v7

    xor-long/2addr v2, v8

    const/4 v8, 0x1

    .line 365
    aget-wide v9, p0, v8

    const/4 v11, 0x6

    aget-wide v12, p0, v11

    xor-long/2addr v9, v12

    const/16 v12, 0xb

    aget-wide v13, p0, v12

    xor-long/2addr v9, v13

    const/16 v13, 0x10

    aget-wide v14, p0, v13

    xor-long/2addr v9, v14

    const/16 v14, 0x15

    aget-wide v15, p0, v14

    xor-long/2addr v9, v15

    const/4 v15, 0x2

    .line 366
    aget-wide v16, p0, v15

    const/16 v18, 0x7

    aget-wide v19, p0, v18

    xor-long v16, v16, v19

    const/16 v19, 0xc

    aget-wide v19, p0, v19

    xor-long v16, v16, v19

    const/16 v19, 0x11

    aget-wide v19, p0, v19

    xor-long v16, v16, v19

    const/16 v19, 0x16

    aget-wide v19, p0, v19

    xor-long v16, v16, v19

    const/16 v19, 0x3

    .line 367
    aget-wide v20, p0, v19

    const/16 v22, 0x8

    aget-wide v23, p0, v22

    xor-long v20, v20, v23

    const/16 v23, 0xd

    aget-wide v23, p0, v23

    xor-long v20, v20, v23

    const/16 v23, 0x12

    aget-wide v24, p0, v23

    xor-long v20, v20, v24

    const/16 v24, 0x17

    aget-wide v25, p0, v24

    xor-long v20, v20, v25

    const/16 v25, 0x4

    .line 368
    aget-wide v26, p0, v25

    const/16 v28, 0x9

    aget-wide v29, p0, v28

    xor-long v26, v26, v29

    const/16 v29, 0xe

    aget-wide v30, p0, v29

    xor-long v26, v26, v30

    const/16 v30, 0x13

    aget-wide v31, p0, v30

    xor-long v26, v26, v31

    const/16 v5, 0x18

    aget-wide v32, p0, v5

    xor-long v26, v26, v32

    shl-long v32, v2, v8

    const/16 v34, 0x3f

    ushr-long v35, v2, v34

    xor-long v32, v32, v35

    xor-long v32, v32, v20

    shl-long v35, v9, v8

    ushr-long v37, v9, v34

    xor-long v35, v35, v37

    xor-long v35, v35, v26

    shl-long v37, v16, v8

    ushr-long v39, v16, v34

    xor-long v37, v37, v39

    xor-long v2, v37, v2

    shl-long v37, v20, v8

    ushr-long v20, v20, v34

    xor-long v20, v37, v20

    xor-long v9, v20, v9

    shl-long v20, v26, v8

    ushr-long v26, v26, v34

    xor-long v20, v20, v26

    xor-long v16, v20, v16

    .line 377
    aget-wide v20, p0, v0

    xor-long v20, v20, v35

    aput-wide v20, p0, v0

    .line 378
    aget-wide v20, p0, v8

    xor-long v20, v20, v2

    shl-long v26, v20, v8

    ushr-long v20, v20, v34

    or-long v20, v26, v20

    .line 380
    aget-wide v26, p0, v11

    xor-long v26, v26, v2

    const/16 v34, 0x2c

    shl-long v37, v26, v34

    ushr-long v26, v26, v7

    or-long v26, v37, v26

    .line 381
    aput-wide v26, p0, v8

    .line 382
    aget-wide v26, p0, v28

    xor-long v26, v26, v32

    shl-long v37, v26, v7

    ushr-long v26, v26, v34

    or-long v26, v37, v26

    .line 383
    aput-wide v26, p0, v11

    const/16 v26, 0x16

    .line 384
    aget-wide v26, p0, v26

    xor-long v26, v26, v9

    const/16 v34, 0x3d

    shl-long v37, v26, v34

    ushr-long v26, v26, v19

    or-long v26, v37, v26

    .line 385
    aput-wide v26, p0, v28

    .line 387
    aget-wide v26, p0, v29

    xor-long v26, v26, v32

    const/16 v34, 0x16

    const/16 v37, 0x27

    shl-long v37, v26, v37

    const/16 v39, 0x19

    ushr-long v26, v26, v39

    or-long v26, v37, v26

    .line 388
    aput-wide v26, p0, v34

    .line 389
    aget-wide v26, p0, v7

    xor-long v26, v26, v35

    shl-long v37, v26, v23

    const/16 v34, 0x2e

    ushr-long v26, v26, v34

    or-long v26, v37, v26

    .line 390
    aput-wide v26, p0, v29

    .line 391
    aget-wide v26, p0, v15

    xor-long v26, v26, v9

    const/16 v34, 0x3e

    shl-long v37, v26, v34

    ushr-long v26, v26, v15

    or-long v26, v37, v26

    .line 392
    aput-wide v26, p0, v7

    const/16 v7, 0xc

    .line 393
    aget-wide v26, p0, v7

    xor-long v26, v26, v9

    const/16 v7, 0x2b

    shl-long v37, v26, v7

    ushr-long v26, v26, v14

    or-long v26, v37, v26

    .line 394
    aput-wide v26, p0, v15

    const/16 v7, 0xd

    .line 395
    aget-wide v26, p0, v7

    xor-long v26, v26, v16

    const/16 v7, 0xc

    const/16 v34, 0x19

    shl-long v37, v26, v34

    const/16 v34, 0x27

    ushr-long v26, v26, v34

    or-long v26, v37, v26

    .line 396
    aput-wide v26, p0, v7

    .line 398
    aget-wide v26, p0, v30

    xor-long v26, v26, v32

    const/16 v7, 0xd

    shl-long v37, v26, v22

    const/16 v34, 0x38

    ushr-long v26, v26, v34

    or-long v26, v37, v26

    .line 399
    aput-wide v26, p0, v7

    .line 400
    aget-wide v26, p0, v24

    xor-long v26, v26, v16

    const/16 v7, 0x38

    shl-long v37, v26, v7

    ushr-long v26, v26, v22

    or-long v26, v37, v26

    .line 401
    aput-wide v26, p0, v30

    .line 402
    aget-wide v26, p0, v6

    xor-long v26, v26, v35

    const/16 v7, 0x29

    shl-long v37, v26, v7

    ushr-long v26, v26, v24

    or-long v26, v37, v26

    .line 403
    aput-wide v26, p0, v24

    .line 404
    aget-wide v26, p0, v25

    xor-long v26, v26, v32

    const/16 v7, 0x1b

    shl-long v37, v26, v7

    const/16 v7, 0x25

    ushr-long v26, v26, v7

    or-long v26, v37, v26

    .line 405
    aput-wide v26, p0, v6

    .line 406
    aget-wide v26, p0, v5

    xor-long v26, v26, v32

    shl-long v32, v26, v29

    const/16 v7, 0x32

    ushr-long v26, v26, v7

    or-long v26, v32, v26

    .line 407
    aput-wide v26, p0, v25

    .line 409
    aget-wide v24, p0, v14

    xor-long v24, v24, v2

    shl-long v26, v24, v15

    const/16 v7, 0x3e

    ushr-long v24, v24, v7

    or-long v24, v26, v24

    .line 410
    aput-wide v24, p0, v5

    .line 411
    aget-wide v24, p0, v22

    xor-long v24, v24, v16

    const/16 v7, 0x37

    shl-long v26, v24, v7

    ushr-long v24, v24, v28

    or-long v24, v26, v24

    .line 412
    aput-wide v24, p0, v14

    .line 413
    aget-wide v24, p0, v13

    xor-long v24, v24, v2

    const/16 v7, 0x2d

    shl-long v26, v24, v7

    ushr-long v24, v24, v30

    or-long v24, v26, v24

    .line 414
    aput-wide v24, p0, v22

    .line 415
    aget-wide v24, p0, v4

    xor-long v24, v24, v35

    const/16 v7, 0x24

    shl-long v26, v24, v7

    const/16 v7, 0x1c

    ushr-long v24, v24, v7

    or-long v24, v26, v24

    .line 416
    aput-wide v24, p0, v13

    .line 417
    aget-wide v24, p0, v19

    xor-long v24, v24, v16

    shl-long v26, v24, v7

    const/16 v7, 0x24

    ushr-long v24, v24, v7

    or-long v24, v26, v24

    .line 418
    aput-wide v24, p0, v4

    .line 420
    aget-wide v24, p0, v23

    xor-long v15, v24, v16

    shl-long v13, v15, v14

    const/16 v7, 0x2b

    ushr-long/2addr v15, v7

    or-long/2addr v13, v15

    .line 421
    aput-wide v13, p0, v19

    const/16 v7, 0x11

    .line 422
    aget-wide v13, p0, v7

    xor-long/2addr v13, v9

    shl-long v6, v13, v6

    const/16 v15, 0x31

    ushr-long/2addr v13, v15

    or-long/2addr v6, v13

    .line 423
    aput-wide v6, p0, v23

    .line 424
    aget-wide v6, p0, v12

    xor-long/2addr v2, v6

    const/16 v6, 0x11

    const/16 v7, 0xa

    shl-long v13, v2, v7

    const/16 v7, 0x36

    ushr-long/2addr v2, v7

    or-long/2addr v2, v13

    .line 425
    aput-wide v2, p0, v6

    .line 426
    aget-wide v2, p0, v18

    xor-long/2addr v2, v9

    shl-long v6, v2, v11

    const/16 v9, 0x3a

    ushr-long/2addr v2, v9

    or-long/2addr v2, v6

    .line 427
    aput-wide v2, p0, v12

    const/16 v2, 0xa

    .line 428
    aget-wide v6, p0, v2

    xor-long v6, v6, v35

    shl-long v9, v6, v19

    const/16 v3, 0x3d

    ushr-long/2addr v6, v3

    or-long/2addr v6, v9

    .line 429
    aput-wide v6, p0, v18

    .line 430
    aput-wide v20, p0, v2

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, v2, 0x0

    .line 435
    aget-wide v6, p0, v3

    add-int/lit8 v9, v2, 0x1

    .line 436
    aget-wide v10, p0, v9

    add-int/lit8 v12, v2, 0x2

    .line 437
    aget-wide v13, p0, v12

    add-int/lit8 v15, v2, 0x3

    move/from16 v17, v1

    .line 438
    aget-wide v0, p0, v15

    add-int/lit8 v18, v2, 0x4

    .line 439
    aget-wide v4, p0, v18

    move/from16 v22, v9

    not-long v8, v10

    and-long/2addr v8, v13

    xor-long/2addr v8, v6

    .line 440
    aput-wide v8, p0, v3

    not-long v8, v13

    and-long/2addr v8, v0

    xor-long/2addr v8, v10

    .line 441
    aput-wide v8, p0, v22

    not-long v8, v0

    and-long/2addr v8, v4

    xor-long/2addr v8, v13

    .line 442
    aput-wide v8, p0, v12

    not-long v8, v4

    and-long/2addr v8, v6

    xor-long/2addr v0, v8

    .line 443
    aput-wide v0, p0, v15

    not-long v0, v6

    and-long/2addr v0, v10

    xor-long/2addr v0, v4

    .line 444
    aput-wide v0, p0, v18

    const/4 v0, 0x5

    add-int/2addr v2, v0

    const/16 v1, 0x19

    if-lt v2, v1, :cond_1

    const/4 v1, 0x0

    .line 450
    aget-wide v2, p0, v1

    sget-object v0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->RC:[J

    aget-wide v4, v0, v17

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    const/4 v3, 0x1

    add-int/lit8 v0, v17, 0x1

    const/16 v4, 0x18

    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    move v1, v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    move/from16 v1, v17

    const/4 v0, 0x0

    const/4 v4, 0x5

    const/16 v5, 0x18

    const/4 v8, 0x1

    goto :goto_1
.end method

.method private pad()V
    .locals 5

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    .line 343
    invoke-direct {p0, v0, v1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->updateBits(JI)V

    .line 344
    iget v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    iget v4, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    if-lt v3, v4, :cond_0

    .line 345
    iget-object v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->keccak([J)V

    const/4 v3, 0x0

    .line 346
    iput v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    .line 348
    :cond_0
    iget v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    .line 349
    invoke-direct {p0, v0, v1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->updateBits(JI)V

    .line 350
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->keccak([J)V

    return-void
.end method

.method private rateSizeBitsFor(I)I
    .locals 3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x120

    if-eq p1, v0, :cond_2

    const/16 v0, 0x180

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    const/16 p1, 0x240

    return p1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid digestSizeBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u2284 { 128, 224, 256, 288, 384, 512 }"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p1, 0x340

    return p1

    :cond_2
    const/16 p1, 0x400

    return p1

    :cond_3
    const/16 p1, 0x440

    return p1

    :cond_4
    const/16 p1, 0x480

    return p1

    :cond_5
    const/16 p1, 0x540

    return p1
.end method

.method private reset(I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBitsFor(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->reset(II)V

    return-void
.end method

.method private reset(II)V
    .locals 5

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    const/16 v1, 0x640

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_1

    and-int/lit8 v0, p1, 0x3f

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    .line 79
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    .line 80
    iput p2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSizeBits:I

    .line 81
    iput-boolean v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->padded:Z

    return-void

    .line 73
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rateSizebits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rateSizebits + digestSizeBits * 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " + "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " * 2 != "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private squeeze()V
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->keccak([J)V

    return-void
.end method

.method private update(Ljava/nio/ByteBuffer;)V
    .locals 12

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-boolean v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->padded:Z

    if-nez v1, :cond_d

    .line 104
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    and-int/lit8 v2, v1, 0x7

    if-gtz v2, :cond_c

    .line 108
    iget-object v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    ushr-int/lit8 v1, v1, 0x3

    and-int/lit8 v3, v1, 0x7

    if-lez v3, :cond_4

    rsub-int/lit8 v4, v3, 0x8

    if-le v4, v0, :cond_1

    move v4, v0

    :cond_1
    ushr-int/lit8 v5, v1, 0x3

    .line 118
    aget-wide v6, v2, v5

    add-int v8, v1, v4

    sub-int v9, v0, v4

    shl-int/lit8 v0, v3, 0x3

    shl-int/lit8 v1, v4, 0x3

    add-int v3, v0, v1

    .line 124
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v10, v1

    shl-long/2addr v10, v0

    xor-long/2addr v6, v10

    add-int/lit8 v0, v0, 0x8

    if-lt v0, v3, :cond_2

    .line 127
    aput-wide v6, v2, v5

    if-lez v9, :cond_3

    shl-int/lit8 p1, v8, 0x3

    .line 130
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    :cond_3
    move v1, v8

    move v0, v9

    :cond_4
    ushr-int/lit8 v1, v1, 0x3

    .line 136
    iget v3, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    ushr-int/lit8 v3, v3, 0x6

    ushr-int/lit8 v4, v0, 0x3

    const/4 v5, 0x0

    if-lez v4, :cond_9

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    .line 142
    :try_start_0
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_5
    if-lt v1, v3, :cond_6

    .line 145
    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->keccak([J)V

    const/4 v1, 0x0

    :cond_6
    sub-int v7, v3, v1

    if-le v7, v4, :cond_7

    move v7, v4

    :cond_7
    sub-int/2addr v4, v7

    add-int/2addr v7, v1

    .line 154
    :cond_8
    aget-wide v8, v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    xor-long/2addr v8, v10

    aput-wide v8, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v7, :cond_8

    if-gtz v4, :cond_5

    .line 159
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    and-int/lit8 v0, v0, 0x7

    if-gtz v0, :cond_9

    shl-int/lit8 p1, v1, 0x6

    .line 163
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    :catchall_0
    move-exception v0

    .line 159
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 160
    throw v0

    :cond_9
    if-lt v1, v3, :cond_a

    .line 169
    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->keccak([J)V

    const/4 v1, 0x0

    .line 172
    :cond_a
    aget-wide v3, v2, v1

    shl-int/lit8 v0, v0, 0x3

    .line 176
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long/2addr v6, v5

    xor-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x8

    if-lt v5, v0, :cond_b

    .line 179
    aput-wide v3, v2, v1

    shl-int/lit8 p1, v1, 0x6

    or-int/2addr p1, v0

    .line 181
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    .line 106
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot update while in bit-mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot update while padded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateBits(JI)V
    .locals 11

    const/16 v0, 0x40

    if-ltz p3, :cond_6

    if-gt p3, v0, :cond_6

    if-gtz p3, :cond_0

    return-void

    .line 191
    :cond_0
    iget-boolean v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->padded:Z

    if-nez v1, :cond_5

    .line 194
    iget-object v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->state:[J

    .line 195
    iget v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    and-int/lit8 v3, v2, 0x3f

    const-wide/16 v4, -0x1

    if-lez v3, :cond_3

    sub-int/2addr v0, v3

    if-le v0, p3, :cond_1

    move v0, p3

    :cond_1
    ushr-int/lit8 v6, v2, 0x6

    .line 202
    aget-wide v7, v1, v6

    ushr-long v9, v4, v0

    and-long/2addr v9, p1

    shl-long/2addr v9, v3

    xor-long/2addr v7, v9

    aput-wide v7, v1, v6

    add-int/2addr v2, v0

    sub-int/2addr p3, v0

    if-gtz p3, :cond_2

    .line 206
    iput v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    :cond_2
    ushr-long/2addr p1, v0

    .line 211
    :cond_3
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    if-lt v2, v0, :cond_4

    .line 212
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->keccak([J)V

    const/4 v2, 0x0

    :cond_4
    ushr-int/lit8 v0, v2, 0x6

    .line 215
    aget-wide v6, v1, v0

    ushr-long v3, v4, p3

    and-long/2addr p1, v3

    xor-long/2addr p1, v6

    aput-wide p1, v1, v0

    add-int/2addr v2, p3

    .line 216
    iput v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateBits:I

    return-void

    .line 192
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot update while padded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid valueBits: 0 < "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method digest()Ljava/nio/ByteBuffer;
    .locals 1

    .line 220
    invoke-direct {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digest(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public digest([B)V
    .locals 0

    .line 245
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digest(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public digestArray()[B
    .locals 1

    .line 235
    invoke-direct {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public rateSize()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    ushr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public reset()V
    .locals 2

    .line 41
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->rateSizeBits:I

    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSizeBits:I

    invoke-direct {p0, v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->reset(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keccak-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digestSizeBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    const/16 p1, 0x8

    .line 85
    invoke-direct {p0, v0, v1, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->updateBits(JI)V

    return-void
.end method

.method public update([B)V
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method update([BII)V
    .locals 0

    .line 93
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method
