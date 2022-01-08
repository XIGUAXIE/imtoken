.class public final Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;
.super Ljava/lang/Object;
.source "TweetNaclFast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/crypto/nacl/TweetNaclFast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "poly1305"
.end annotation


# instance fields
.field private buffer:[B

.field private fin:I

.field private h:[I

.field private leftover:I

.field private pad:[I

.field private r:[I


# direct methods
.method public constructor <init>([B)V
    .locals 18

    move-object/from16 v0, p0

    .line 578
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 579
    iput-object v2, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->buffer:[B

    const/16 v2, 0xa

    new-array v3, v2, [I

    .line 580
    iput-object v3, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->r:[I

    new-array v4, v2, [I

    .line 581
    iput-object v4, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    const/16 v4, 0x8

    new-array v5, v4, [I

    .line 582
    iput-object v5, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->pad:[I

    const/4 v6, 0x0

    .line 583
    iput v6, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    .line 584
    iput v6, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->fin:I

    .line 588
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v7, v9

    and-int/lit16 v9, v7, 0x1fff

    aput v9, v3, v6

    const/4 v9, 0x2

    .line 589
    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x3

    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    or-int/2addr v10, v12

    const/16 v12, 0xd

    ushr-int/2addr v7, v12

    shl-int/lit8 v13, v10, 0x3

    or-int/2addr v7, v13

    and-int/lit16 v7, v7, 0x1fff

    aput v7, v3, v8

    const/4 v7, 0x4

    .line 590
    aget-byte v13, p1, v7

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x5

    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v13, v15

    ushr-int/2addr v10, v2

    shl-int/lit8 v15, v13, 0x6

    or-int/2addr v10, v15

    and-int/lit16 v10, v10, 0x1f03

    aput v10, v3, v9

    const/4 v10, 0x6

    .line 591
    aget-byte v15, p1, v10

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x7

    aget-byte v9, p1, v16

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v9, v15

    ushr-int/lit8 v13, v13, 0x7

    shl-int/lit8 v15, v9, 0x9

    or-int/2addr v13, v15

    and-int/lit16 v13, v13, 0x1fff

    aput v13, v3, v11

    .line 592
    aget-byte v13, p1, v4

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x9

    aget-byte v11, p1, v15

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v4

    or-int/2addr v11, v13

    ushr-int/2addr v9, v7

    shl-int/lit8 v13, v11, 0xc

    or-int/2addr v9, v13

    and-int/lit16 v9, v9, 0xff

    aput v9, v3, v7

    ushr-int/lit8 v9, v11, 0x1

    and-int/lit16 v9, v9, 0x1ffe

    aput v9, v3, v14

    .line 594
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v9, 0xb

    aget-byte v13, p1, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v4

    or-int/2addr v2, v13

    const/16 v13, 0xe

    ushr-int/2addr v11, v13

    shl-int/lit8 v17, v2, 0x2

    or-int v11, v11, v17

    and-int/lit16 v11, v11, 0x1fff

    aput v11, v3, v10

    const/16 v11, 0xc

    .line 595
    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    or-int/2addr v11, v12

    ushr-int/2addr v2, v9

    shl-int/lit8 v9, v11, 0x5

    or-int/2addr v2, v9

    and-int/lit16 v2, v2, 0x1f81

    aput v2, v3, v16

    .line 596
    aget-byte v2, p1, v13

    and-int/lit16 v2, v2, 0xff

    const/16 v9, 0xf

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v2, v9

    ushr-int/lit8 v9, v11, 0x8

    shl-int/lit8 v11, v2, 0x8

    or-int/2addr v9, v11

    and-int/lit16 v9, v9, 0x1fff

    aput v9, v3, v4

    ushr-int/2addr v2, v14

    and-int/lit8 v2, v2, 0x7f

    aput v2, v3, v15

    .line 599
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x11

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v5, v6

    const/16 v1, 0x12

    .line 600
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x13

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v5, v8

    const/16 v1, 0x14

    .line 601
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x15

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v5, v2

    const/16 v1, 0x16

    .line 602
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x17

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v5, v2

    const/16 v1, 0x18

    .line 603
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x19

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v5, v7

    const/16 v1, 0x1a

    .line 604
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1b

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v5, v14

    const/16 v1, 0x1c

    .line 605
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v5, v10

    const/16 v1, 0x1e

    .line 606
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1f

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v5, v16

    return-void
.end method


# virtual methods
.method public blocks([BII)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;
    .locals 42

    move-object/from16 v0, p0

    .line 610
    iget v1, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->fin:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    .line 614
    :goto_0
    iget-object v3, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v4, v3, v2

    const/4 v5, 0x1

    .line 615
    aget v6, v3, v5

    const/4 v7, 0x2

    .line 616
    aget v8, v3, v7

    const/4 v9, 0x3

    .line 617
    aget v10, v3, v9

    const/4 v11, 0x4

    .line 618
    aget v12, v3, v11

    const/4 v13, 0x5

    .line 619
    aget v14, v3, v13

    const/4 v15, 0x6

    .line 620
    aget v16, v3, v15

    const/16 v17, 0x7

    .line 621
    aget v18, v3, v17

    const/16 v19, 0x8

    .line 622
    aget v20, v3, v19

    const/16 v21, 0x9

    .line 623
    aget v3, v3, v21

    .line 625
    iget-object v15, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->r:[I

    aget v23, v15, v2

    .line 626
    aget v24, v15, v5

    .line 627
    aget v25, v15, v7

    .line 628
    aget v26, v15, v9

    .line 629
    aget v27, v15, v11

    .line 630
    aget v28, v15, v13

    const/16 v22, 0x6

    .line 631
    aget v29, v15, v22

    .line 632
    aget v30, v15, v17

    .line 633
    aget v31, v15, v19

    .line 634
    aget v15, v15, v21

    move/from16 v32, v18

    move/from16 v33, v20

    move/from16 v18, v14

    move/from16 v20, v16

    move v14, v10

    move/from16 v16, v12

    move v10, v6

    move v12, v8

    move v6, v3

    move v8, v4

    move/from16 v3, p2

    move/from16 v4, p3

    :goto_1
    const/16 v9, 0x10

    if-lt v4, v9, :cond_1

    add-int/lit8 v34, v3, 0x0

    .line 637
    aget-byte v7, p1, v34

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v34, v3, 0x1

    aget-byte v5, p1, v34

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    and-int/lit16 v7, v5, 0x1fff

    add-int/2addr v8, v7

    add-int/lit8 v7, v3, 0x2

    .line 638
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v34, v3, 0x3

    aget-byte v9, p1, v34

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    ushr-int/lit8 v5, v5, 0xd

    shl-int/lit8 v9, v7, 0x3

    or-int/2addr v5, v9

    and-int/lit16 v5, v5, 0x1fff

    add-int/2addr v10, v5

    add-int/lit8 v5, v3, 0x4

    .line 639
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v9, v3, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    ushr-int/lit8 v7, v7, 0xa

    shl-int/lit8 v9, v5, 0x6

    or-int/2addr v7, v9

    and-int/lit16 v7, v7, 0x1fff

    add-int/2addr v12, v7

    add-int/lit8 v7, v3, 0x6

    .line 640
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v3, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    ushr-int/lit8 v5, v5, 0x7

    shl-int/lit8 v9, v7, 0x9

    or-int/2addr v5, v9

    and-int/lit16 v5, v5, 0x1fff

    add-int/2addr v14, v5

    add-int/lit8 v5, v3, 0x8

    .line 641
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v9, v3, 0x9

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    ushr-int/2addr v7, v11

    shl-int/lit8 v9, v5, 0xc

    or-int/2addr v7, v9

    and-int/lit16 v7, v7, 0x1fff

    add-int v16, v16, v7

    ushr-int/lit8 v7, v5, 0x1

    and-int/lit16 v7, v7, 0x1fff

    add-int v18, v18, v7

    add-int/lit8 v7, v3, 0xa

    .line 643
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v3, 0xb

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    ushr-int/lit8 v5, v5, 0xe

    shl-int/lit8 v9, v7, 0x2

    or-int/2addr v5, v9

    and-int/lit16 v5, v5, 0x1fff

    add-int v20, v20, v5

    add-int/lit8 v5, v3, 0xc

    .line 644
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v9, v3, 0xd

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    ushr-int/lit8 v7, v7, 0xb

    shl-int/lit8 v9, v5, 0x5

    or-int/2addr v7, v9

    and-int/lit16 v7, v7, 0x1fff

    add-int v32, v32, v7

    add-int/lit8 v7, v3, 0xe

    .line 645
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v3, 0xf

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    ushr-int/lit8 v5, v5, 0x8

    shl-int/lit8 v9, v7, 0x8

    or-int/2addr v5, v9

    and-int/lit16 v5, v5, 0x1fff

    add-int v33, v33, v5

    ushr-int/lit8 v5, v7, 0x5

    or-int/2addr v5, v1

    add-int/2addr v6, v5

    mul-int v5, v8, v23

    add-int/2addr v5, v2

    mul-int/lit8 v7, v15, 0x5

    mul-int v9, v10, v7

    add-int/2addr v5, v9

    mul-int/lit8 v9, v31, 0x5

    mul-int v34, v12, v9

    add-int v5, v5, v34

    mul-int/lit8 v34, v30, 0x5

    mul-int v35, v14, v34

    add-int v5, v5, v35

    mul-int/lit8 v35, v29, 0x5

    mul-int v36, v16, v35

    add-int v5, v5, v36

    ushr-int/lit8 v36, v5, 0xd

    and-int/lit16 v5, v5, 0x1fff

    mul-int/lit8 v37, v28, 0x5

    mul-int v38, v18, v37

    add-int v5, v5, v38

    mul-int/lit8 v38, v27, 0x5

    mul-int v39, v20, v38

    add-int v5, v5, v39

    mul-int/lit8 v39, v26, 0x5

    mul-int v40, v32, v39

    add-int v5, v5, v40

    mul-int/lit8 v40, v25, 0x5

    mul-int v41, v33, v40

    add-int v5, v5, v41

    mul-int/lit8 v41, v24, 0x5

    mul-int v41, v41, v6

    add-int v5, v5, v41

    ushr-int/lit8 v41, v5, 0xd

    add-int v36, v36, v41

    and-int/lit16 v5, v5, 0x1fff

    mul-int v41, v8, v24

    add-int v36, v36, v41

    mul-int v41, v10, v23

    add-int v36, v36, v41

    mul-int v41, v12, v7

    add-int v36, v36, v41

    mul-int v41, v14, v9

    add-int v36, v36, v41

    mul-int v41, v16, v34

    add-int v13, v36, v41

    ushr-int/lit8 v36, v13, 0xd

    and-int/lit16 v13, v13, 0x1fff

    mul-int v41, v18, v35

    add-int v13, v13, v41

    mul-int v41, v20, v37

    add-int v13, v13, v41

    mul-int v41, v32, v38

    add-int v13, v13, v41

    mul-int v41, v33, v39

    add-int v13, v13, v41

    mul-int v40, v40, v6

    add-int v13, v13, v40

    ushr-int/lit8 v40, v13, 0xd

    add-int v36, v36, v40

    and-int/lit16 v13, v13, 0x1fff

    mul-int v40, v8, v25

    add-int v36, v36, v40

    mul-int v40, v10, v24

    add-int v36, v36, v40

    mul-int v40, v12, v23

    add-int v36, v36, v40

    mul-int v40, v14, v7

    add-int v36, v36, v40

    mul-int v40, v16, v9

    add-int v11, v36, v40

    ushr-int/lit8 v36, v11, 0xd

    and-int/lit16 v11, v11, 0x1fff

    mul-int v40, v18, v34

    add-int v11, v11, v40

    mul-int v40, v20, v35

    add-int v11, v11, v40

    mul-int v40, v32, v37

    add-int v11, v11, v40

    mul-int v40, v33, v38

    add-int v11, v11, v40

    mul-int v39, v39, v6

    add-int v11, v11, v39

    ushr-int/lit8 v39, v11, 0xd

    add-int v36, v36, v39

    and-int/lit16 v11, v11, 0x1fff

    mul-int v39, v8, v26

    add-int v36, v36, v39

    mul-int v39, v10, v25

    add-int v36, v36, v39

    mul-int v39, v12, v24

    add-int v36, v36, v39

    mul-int v39, v14, v23

    add-int v36, v36, v39

    mul-int v39, v16, v7

    add-int v2, v36, v39

    ushr-int/lit8 v36, v2, 0xd

    and-int/lit16 v2, v2, 0x1fff

    mul-int v39, v18, v9

    add-int v2, v2, v39

    mul-int v39, v20, v34

    add-int v2, v2, v39

    mul-int v39, v32, v35

    add-int v2, v2, v39

    mul-int v39, v33, v37

    add-int v2, v2, v39

    mul-int v38, v38, v6

    add-int v2, v2, v38

    ushr-int/lit8 v38, v2, 0xd

    add-int v36, v36, v38

    and-int/lit16 v2, v2, 0x1fff

    mul-int v38, v8, v27

    add-int v36, v36, v38

    mul-int v38, v10, v26

    add-int v36, v36, v38

    mul-int v38, v12, v25

    add-int v36, v36, v38

    mul-int v38, v14, v24

    add-int v36, v36, v38

    mul-int v38, v16, v23

    move/from16 v39, v1

    add-int v1, v36, v38

    ushr-int/lit8 v36, v1, 0xd

    and-int/lit16 v1, v1, 0x1fff

    mul-int v38, v18, v7

    add-int v1, v1, v38

    mul-int v38, v20, v9

    add-int v1, v1, v38

    mul-int v38, v32, v34

    add-int v1, v1, v38

    mul-int v38, v33, v35

    add-int v1, v1, v38

    mul-int v37, v37, v6

    add-int v1, v1, v37

    ushr-int/lit8 v37, v1, 0xd

    add-int v36, v36, v37

    and-int/lit16 v1, v1, 0x1fff

    mul-int v37, v8, v28

    add-int v36, v36, v37

    mul-int v37, v10, v27

    add-int v36, v36, v37

    mul-int v37, v12, v26

    add-int v36, v36, v37

    mul-int v37, v14, v25

    add-int v36, v36, v37

    mul-int v37, v16, v24

    move/from16 v38, v1

    add-int v1, v36, v37

    ushr-int/lit8 v36, v1, 0xd

    and-int/lit16 v1, v1, 0x1fff

    mul-int v37, v18, v23

    add-int v1, v1, v37

    mul-int v37, v20, v7

    add-int v1, v1, v37

    mul-int v37, v32, v9

    add-int v1, v1, v37

    mul-int v37, v33, v34

    add-int v1, v1, v37

    mul-int v35, v35, v6

    add-int v1, v1, v35

    ushr-int/lit8 v35, v1, 0xd

    add-int v36, v36, v35

    and-int/lit16 v1, v1, 0x1fff

    mul-int v35, v8, v29

    add-int v36, v36, v35

    mul-int v35, v10, v28

    add-int v36, v36, v35

    mul-int v35, v12, v27

    add-int v36, v36, v35

    mul-int v35, v14, v26

    add-int v36, v36, v35

    mul-int v35, v16, v25

    move/from16 v37, v1

    add-int v1, v36, v35

    ushr-int/lit8 v35, v1, 0xd

    and-int/lit16 v1, v1, 0x1fff

    mul-int v36, v18, v24

    add-int v1, v1, v36

    mul-int v36, v20, v23

    add-int v1, v1, v36

    mul-int v36, v32, v7

    add-int v1, v1, v36

    mul-int v36, v33, v9

    add-int v1, v1, v36

    mul-int v34, v34, v6

    add-int v1, v1, v34

    ushr-int/lit8 v34, v1, 0xd

    add-int v35, v35, v34

    and-int/lit16 v1, v1, 0x1fff

    mul-int v34, v8, v30

    add-int v35, v35, v34

    mul-int v34, v10, v29

    add-int v35, v35, v34

    mul-int v34, v12, v28

    add-int v35, v35, v34

    mul-int v34, v14, v27

    add-int v35, v35, v34

    mul-int v34, v16, v26

    move/from16 v36, v1

    add-int v1, v35, v34

    ushr-int/lit8 v34, v1, 0xd

    and-int/lit16 v1, v1, 0x1fff

    mul-int v35, v18, v25

    add-int v1, v1, v35

    mul-int v35, v20, v24

    add-int v1, v1, v35

    mul-int v35, v32, v23

    add-int v1, v1, v35

    mul-int v35, v33, v7

    add-int v1, v1, v35

    mul-int v9, v9, v6

    add-int/2addr v1, v9

    ushr-int/lit8 v9, v1, 0xd

    add-int v34, v34, v9

    and-int/lit16 v1, v1, 0x1fff

    mul-int v9, v8, v31

    add-int v34, v34, v9

    mul-int v9, v10, v30

    add-int v34, v34, v9

    mul-int v9, v12, v29

    add-int v34, v34, v9

    mul-int v9, v14, v28

    add-int v34, v34, v9

    mul-int v9, v16, v27

    add-int v9, v34, v9

    ushr-int/lit8 v34, v9, 0xd

    and-int/lit16 v9, v9, 0x1fff

    mul-int v35, v18, v26

    add-int v9, v9, v35

    mul-int v35, v20, v25

    add-int v9, v9, v35

    mul-int v35, v32, v24

    add-int v9, v9, v35

    mul-int v35, v33, v23

    add-int v9, v9, v35

    mul-int v7, v7, v6

    add-int/2addr v9, v7

    ushr-int/lit8 v7, v9, 0xd

    add-int v34, v34, v7

    and-int/lit16 v7, v9, 0x1fff

    mul-int v8, v8, v15

    add-int v34, v34, v8

    mul-int v10, v10, v31

    add-int v34, v34, v10

    mul-int v12, v12, v30

    add-int v34, v34, v12

    mul-int v14, v14, v29

    add-int v34, v34, v14

    mul-int v16, v16, v28

    add-int v8, v34, v16

    ushr-int/lit8 v9, v8, 0xd

    and-int/lit16 v8, v8, 0x1fff

    mul-int v18, v18, v27

    add-int v8, v8, v18

    mul-int v20, v20, v26

    add-int v8, v8, v20

    mul-int v32, v32, v25

    add-int v8, v8, v32

    mul-int v33, v33, v24

    add-int v8, v8, v33

    mul-int v6, v6, v23

    add-int/2addr v8, v6

    ushr-int/lit8 v6, v8, 0xd

    add-int/2addr v9, v6

    and-int/lit16 v6, v8, 0x1fff

    shl-int/lit8 v8, v9, 0x2

    add-int/2addr v8, v9

    const/4 v9, 0x0

    or-int/2addr v8, v9

    add-int/2addr v8, v5

    or-int/lit8 v5, v8, 0x0

    and-int/lit16 v8, v5, 0x1fff

    ushr-int/lit8 v5, v5, 0xd

    add-int v10, v13, v5

    const/16 v5, 0x10

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x10

    move/from16 v32, v1

    move v14, v2

    move/from16 v33, v7

    move v12, v11

    move/from16 v20, v36

    move/from16 v18, v37

    move/from16 v16, v38

    move/from16 v1, v39

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v11, 0x4

    const/4 v13, 0x5

    goto/16 :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 810
    iget-object v1, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aput v8, v1, v9

    const/4 v2, 0x1

    .line 811
    aput v10, v1, v2

    const/4 v2, 0x2

    .line 812
    aput v12, v1, v2

    const/4 v2, 0x3

    .line 813
    aput v14, v1, v2

    const/4 v2, 0x4

    .line 814
    aput v16, v1, v2

    const/4 v2, 0x5

    .line 815
    aput v18, v1, v2

    const/4 v2, 0x6

    .line 816
    aput v20, v1, v2

    .line 817
    aput v32, v1, v17

    .line 818
    aput v33, v1, v19

    .line 819
    aput v6, v1, v21

    return-object v0
.end method

.method public finish([BI)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 828
    iget v3, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    const/16 v4, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 830
    iget-object v7, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->buffer:[B

    add-int/lit8 v8, v3, 0x1

    aput-byte v5, v7, v3

    :goto_0
    if-ge v8, v4, :cond_0

    .line 831
    iget-object v3, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->buffer:[B

    aput-byte v6, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 832
    :cond_0
    iput v5, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->fin:I

    .line 833
    iget-object v3, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->buffer:[B

    invoke-virtual {v0, v3, v6, v4}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->blocks([BII)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;

    .line 836
    :cond_1
    iget-object v3, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v7, v3, v5

    ushr-int/lit8 v7, v7, 0xd

    .line 837
    aget v8, v3, v5

    and-int/lit16 v8, v8, 0x1fff

    aput v8, v3, v5

    const/4 v3, 0x2

    const/4 v8, 0x2

    :goto_1
    if-ge v8, v1, :cond_2

    .line 839
    iget-object v9, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v10, v9, v8

    add-int/2addr v10, v7

    aput v10, v9, v8

    .line 840
    aget v7, v9, v8

    ushr-int/lit8 v7, v7, 0xd

    .line 841
    aget v10, v9, v8

    and-int/lit16 v10, v10, 0x1fff

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 843
    :cond_2
    iget-object v8, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v9, v8, v6

    const/4 v10, 0x5

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v9, v7

    aput v9, v8, v6

    .line 844
    aget v7, v8, v6

    ushr-int/lit8 v7, v7, 0xd

    .line 845
    aget v9, v8, v6

    and-int/lit16 v9, v9, 0x1fff

    aput v9, v8, v6

    .line 846
    aget v9, v8, v5

    add-int/2addr v9, v7

    aput v9, v8, v5

    .line 847
    aget v7, v8, v5

    ushr-int/lit8 v7, v7, 0xd

    .line 848
    aget v9, v8, v5

    and-int/lit16 v9, v9, 0x1fff

    aput v9, v8, v5

    .line 849
    aget v9, v8, v3

    add-int/2addr v9, v7

    aput v9, v8, v3

    .line 851
    aget v7, v8, v6

    add-int/2addr v7, v10

    aput v7, v2, v6

    .line 852
    aget v7, v2, v6

    ushr-int/lit8 v7, v7, 0xd

    .line 853
    aget v8, v2, v6

    and-int/lit16 v8, v8, 0x1fff

    aput v8, v2, v6

    const/4 v8, 0x1

    :goto_2
    if-ge v8, v1, :cond_3

    .line 855
    iget-object v9, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v9, v9, v8

    add-int/2addr v9, v7

    aput v9, v2, v8

    .line 856
    aget v7, v2, v8

    ushr-int/lit8 v7, v7, 0xd

    .line 857
    aget v9, v2, v8

    and-int/lit16 v9, v9, 0x1fff

    aput v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/16 v8, 0x9

    .line 859
    aget v9, v2, v8

    add-int/lit16 v9, v9, -0x2000

    aput v9, v2, v8

    aget v9, v2, v8

    const v11, 0xffff

    and-int/2addr v9, v11

    aput v9, v2, v8

    xor-int/2addr v7, v5

    sub-int/2addr v7, v5

    and-int/2addr v7, v11

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_4

    .line 875
    aget v12, v2, v9

    and-int/2addr v12, v7

    aput v12, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    not-int v7, v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_5

    .line 877
    iget-object v12, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v13, v12, v9

    and-int/2addr v13, v7

    aget v14, v2, v9

    or-int/2addr v13, v14

    aput v13, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 879
    :cond_5
    iget-object v2, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v7, v2, v6

    aget v9, v2, v5

    shl-int/lit8 v9, v9, 0xd

    or-int/2addr v7, v9

    and-int/2addr v7, v11

    aput v7, v2, v6

    .line 880
    aget v7, v2, v5

    const/4 v9, 0x3

    ushr-int/2addr v7, v9

    aget v12, v2, v3

    shl-int/lit8 v1, v12, 0xa

    or-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v2, v5

    .line 881
    aget v1, v2, v3

    const/4 v7, 0x6

    ushr-int/2addr v1, v7

    aget v12, v2, v9

    const/4 v13, 0x7

    shl-int/2addr v12, v13

    or-int/2addr v1, v12

    and-int/2addr v1, v11

    aput v1, v2, v3

    .line 882
    aget v1, v2, v9

    ushr-int/2addr v1, v8

    const/4 v12, 0x4

    aget v14, v2, v12

    shl-int/2addr v14, v12

    or-int/2addr v1, v14

    and-int/2addr v1, v11

    aput v1, v2, v9

    .line 883
    aget v1, v2, v12

    ushr-int/lit8 v1, v1, 0xc

    aget v14, v2, v10

    shl-int/2addr v14, v5

    or-int/2addr v1, v14

    aget v14, v2, v7

    shl-int/lit8 v14, v14, 0xe

    or-int/2addr v1, v14

    and-int/2addr v1, v11

    aput v1, v2, v12

    .line 884
    aget v1, v2, v7

    ushr-int/2addr v1, v3

    aget v14, v2, v13

    shl-int/lit8 v14, v14, 0xb

    or-int/2addr v1, v14

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 885
    aget v1, v2, v13

    ushr-int/2addr v1, v10

    const/16 v14, 0x8

    aget v15, v2, v14

    shl-int/2addr v15, v14

    or-int/2addr v1, v15

    and-int/2addr v1, v11

    aput v1, v2, v7

    .line 886
    aget v1, v2, v14

    ushr-int/2addr v1, v14

    aget v8, v2, v8

    shl-int/2addr v8, v10

    or-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v2, v13

    .line 888
    aget v1, v2, v6

    iget-object v8, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->pad:[I

    aget v8, v8, v6

    add-int/2addr v1, v8

    and-int v8, v1, v11

    .line 889
    aput v8, v2, v6

    const/4 v2, 0x1

    :goto_5
    if-ge v2, v14, :cond_6

    .line 891
    iget-object v8, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v15, v8, v2

    iget-object v13, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->pad:[I

    aget v13, v13, v2

    add-int/2addr v15, v13

    or-int/lit8 v13, v15, 0x0

    ushr-int/2addr v1, v4

    add-int/2addr v13, v1

    or-int/lit8 v1, v13, 0x0

    and-int v13, v1, v11

    .line 892
    aput v13, v8, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x7

    goto :goto_5

    :cond_6
    add-int/lit8 v1, p2, 0x0

    .line 895
    iget-object v2, v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->h:[I

    aget v4, v2, v6

    ushr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, p2, 0x1

    .line 896
    aget v4, v2, v6

    ushr-int/2addr v4, v14

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, p2, 0x2

    .line 897
    aget v4, v2, v5

    ushr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, p2, 0x3

    .line 898
    aget v4, v2, v5

    ushr-int/2addr v4, v14

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, p2, 0x4

    .line 899
    aget v4, v2, v3

    ushr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, p2, 0x5

    .line 900
    aget v3, v2, v3

    ushr-int/2addr v3, v14

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x6

    .line 901
    aget v3, v2, v9

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x7

    .line 902
    aget v3, v2, v9

    ushr-int/2addr v3, v14

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x8

    .line 903
    aget v3, v2, v12

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x9

    .line 904
    aget v3, v2, v12

    ushr-int/2addr v3, v14

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0xa

    .line 905
    aget v3, v2, v10

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0xb

    .line 906
    aget v3, v2, v10

    ushr-int/2addr v3, v14

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0xc

    .line 907
    aget v3, v2, v7

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0xd

    .line 908
    aget v3, v2, v7

    ushr-int/2addr v3, v14

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0xe

    const/4 v3, 0x7

    .line 909
    aget v4, v2, v3

    ushr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v1, p2, 0xf

    .line 910
    aget v2, v2, v3

    ushr-int/2addr v2, v14

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    return-object v0
.end method

.method public update([BII)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;
    .locals 7

    .line 918
    iget v0, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_3

    rsub-int/lit8 v0, v0, 0x10

    if-le v0, p3, :cond_0

    move v0, p3

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 923
    iget-object v4, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->buffer:[B

    iget v5, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    add-int/2addr v5, v3

    add-int v6, p2, v3

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    .line 926
    iget v3, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    if-ge v3, v2, :cond_2

    return-object p0

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->buffer:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->blocks([BII)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;

    .line 930
    iput v1, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    :cond_3
    if-lt p3, v2, :cond_4

    .line 934
    rem-int/lit8 v0, p3, 0x10

    sub-int v0, p3, v0

    .line 935
    invoke-virtual {p0, p1, p2, v0}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->blocks([BII)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :cond_4
    if-eqz p3, :cond_6

    :goto_1
    if-ge v1, p3, :cond_5

    .line 942
    iget-object v0, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->buffer:[B

    iget v2, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    add-int/2addr v2, v1

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 943
    :cond_5
    iget p1, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->leftover:I

    :cond_6
    return-object p0
.end method
