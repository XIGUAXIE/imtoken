.class public final Lcom/pusher/client/crypto/nacl/TweetNaclFast;
.super Ljava/lang/Object;
.source "TweetNaclFast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;,
        Lcom/pusher/client/crypto/nacl/TweetNaclFast$SecretBox;
    }
.end annotation


# static fields
.field private static final sigma:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 469
    fill-array-data v0, :array_0

    sput-object v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->sigma:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static core_hsalsa20([B[B[B[B)V
    .locals 28

    const/4 v0, 0x0

    .line 302
    aget-byte v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p3, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v5, p3, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v7, p3, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x18

    shl-int/2addr v7, v8

    or-int/2addr v1, v7

    .line 303
    aget-byte v7, p2, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v7, v9

    aget-byte v9, p2, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    or-int/2addr v7, v9

    aget-byte v9, p2, v5

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    or-int/2addr v7, v9

    const/4 v9, 0x4

    .line 304
    aget-byte v10, p2, v9

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x5

    aget-byte v12, p2, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    or-int/2addr v10, v12

    const/4 v12, 0x6

    aget-byte v13, p2, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v10, v13

    const/4 v13, 0x7

    aget-byte v14, p2, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v10, v14

    .line 305
    aget-byte v14, p2, v4

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x9

    aget-byte v5, p2, v15

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    or-int/2addr v5, v14

    const/16 v14, 0xa

    aget-byte v15, p2, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v5, v15

    const/16 v15, 0xb

    aget-byte v14, p2, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v5, v14

    const/16 v14, 0xc

    .line 306
    aget-byte v15, p2, v14

    and-int/lit16 v15, v15, 0xff

    const/16 v17, 0xd

    aget-byte v14, p2, v17

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v4

    or-int/2addr v14, v15

    const/16 v15, 0xe

    aget-byte v3, p2, v15

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v3, v14

    const/16 v14, 0xf

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v3, v14

    .line 307
    aget-byte v14, p3, v9

    and-int/lit16 v14, v14, 0xff

    aget-byte v15, p3, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v14, v15

    aget-byte v15, p3, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v14, v15

    aget-byte v15, p3, v13

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v14, v15

    .line 308
    aget-byte v15, p1, v0

    and-int/lit16 v15, v15, 0xff

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v0, v15

    const/4 v15, 0x2

    aget-byte v2, p1, v15

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v15, p1, v2

    and-int/lit16 v2, v15, 0xff

    shl-int/2addr v2, v8

    or-int/2addr v0, v2

    .line 309
    aget-byte v2, p1, v9

    and-int/lit16 v2, v2, 0xff

    aget-byte v15, p1, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v2, v15

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v2, v15

    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v2, v15

    .line 310
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x9

    aget-byte v13, p1, v16

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v4

    or-int/2addr v13, v15

    const/16 v15, 0xa

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    const/16 v13, 0xb

    aget-byte v15, p1, v13

    and-int/lit16 v13, v15, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v12, v13

    const/16 v13, 0xc

    .line 311
    aget-byte v15, p1, v13

    and-int/lit16 v13, v15, 0xff

    aget-byte v15, p1, v17

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v13, v15

    const/16 v15, 0xe

    aget-byte v11, p1, v15

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v6

    or-int/2addr v11, v13

    const/16 v13, 0xf

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v11, v13

    .line 312
    aget-byte v13, p3, v4

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x9

    aget-byte v9, p3, v15

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v9, v13

    const/16 v13, 0xa

    aget-byte v15, p3, v13

    and-int/lit16 v13, v15, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v9, v13

    const/16 v13, 0xb

    aget-byte v15, p3, v13

    and-int/lit16 v13, v15, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v9, v13

    .line 313
    aget-byte v13, p2, v6

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x11

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v13, v15

    const/16 v15, 0x12

    aget-byte v4, p2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v4, v13

    const/16 v13, 0x13

    aget-byte v15, p2, v13

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v4, v15

    const/16 v15, 0x14

    .line 314
    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v21, 0x15

    aget-byte v13, p2, v21

    and-int/lit16 v13, v13, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v15

    const/16 v15, 0x16

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v13, v15

    const/16 v15, 0x17

    aget-byte v6, p2, v15

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v6, v13

    .line 315
    aget-byte v13, p2, v8

    and-int/lit16 v13, v13, 0xff

    const/16 v23, 0x19

    aget-byte v15, p2, v23

    and-int/lit16 v15, v15, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v13, v15

    const/16 v15, 0x1a

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v21, 0x10

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v13, v15

    const/16 v15, 0x1b

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v13, v15

    const/16 v15, 0x1c

    .line 316
    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v25, 0x1d

    aget-byte v8, p2, v25

    and-int/lit16 v8, v8, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v15

    const/16 v15, 0x1e

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v21, 0x10

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v8, v15

    const/16 v15, 0x1f

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v25, 0x18

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v8, v15

    move/from16 v25, v0

    const/16 v15, 0xc

    .line 317
    aget-byte v0, p3, v15

    and-int/lit16 v0, v0, 0xff

    aget-byte v15, p3, v17

    and-int/lit16 v15, v15, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v0, v15

    move/from16 v26, v1

    const/16 v15, 0xe

    aget-byte v1, p3, v15

    and-int/lit16 v1, v1, 0xff

    const/16 v15, 0x10

    shl-int/2addr v1, v15

    or-int/2addr v0, v1

    const/16 v1, 0xf

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v15, 0x18

    shl-int/2addr v1, v15

    or-int/2addr v0, v1

    move/from16 p2, v2

    move/from16 v1, v26

    const/4 v15, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v15, v2, :cond_0

    add-int v2, v1, v6

    const/16 v19, 0x0

    or-int/lit8 v2, v2, 0x0

    shl-int/lit8 v26, v2, 0x7

    ushr-int/lit8 v2, v2, 0x19

    or-int v2, v26, v2

    xor-int/2addr v2, v3

    add-int v3, v2, v1

    or-int/lit8 v3, v3, 0x0

    shl-int/lit8 v26, v3, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v3, v3, 0x17

    or-int v3, v26, v3

    xor-int/2addr v3, v12

    add-int v12, v3, v2

    or-int/lit8 v12, v12, 0x0

    shl-int/lit8 v26, v12, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v12, v12, 0x13

    or-int v12, v26, v12

    xor-int/2addr v6, v12

    add-int v12, v6, v3

    or-int/lit8 v12, v12, 0x0

    shl-int/lit8 v26, v12, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v12, v12, 0xe

    or-int v12, v26, v12

    xor-int/2addr v1, v12

    add-int v12, v14, v7

    or-int/lit8 v12, v12, 0x0

    shl-int/lit8 v26, v12, 0x7

    ushr-int/lit8 v12, v12, 0x19

    or-int v12, v26, v12

    xor-int/2addr v11, v12

    add-int v12, v11, v14

    or-int/lit8 v12, v12, 0x0

    shl-int/lit8 v26, v12, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v12, v12, 0x17

    or-int v12, v26, v12

    xor-int/2addr v12, v13

    add-int v13, v12, v11

    or-int/lit8 v13, v13, 0x0

    shl-int/lit8 v26, v13, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v13, v13, 0x13

    or-int v13, v26, v13

    xor-int/2addr v7, v13

    add-int v13, v7, v12

    or-int/lit8 v13, v13, 0x0

    shl-int/lit8 v26, v13, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v13, v13, 0xe

    or-int v13, v26, v13

    xor-int/2addr v13, v14

    add-int v14, v9, v25

    or-int/lit8 v14, v14, 0x0

    shl-int/lit8 v26, v14, 0x7

    ushr-int/lit8 v14, v14, 0x19

    or-int v14, v26, v14

    xor-int/2addr v8, v14

    add-int v14, v8, v9

    or-int/lit8 v14, v14, 0x0

    shl-int/lit8 v26, v14, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v14, v14, 0x17

    or-int v14, v26, v14

    xor-int/2addr v10, v14

    add-int v14, v10, v8

    or-int/lit8 v14, v14, 0x0

    shl-int/lit8 v26, v14, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v14, v14, 0x13

    or-int v14, v26, v14

    xor-int v14, v25, v14

    add-int v25, v14, v10

    or-int/lit8 v25, v25, 0x0

    shl-int/lit8 v26, v25, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v25, v25, 0xe

    or-int v25, v26, v25

    xor-int v9, v9, v25

    add-int v25, v0, v4

    or-int/lit8 v25, v25, 0x0

    shl-int/lit8 v26, v25, 0x7

    ushr-int/lit8 v25, v25, 0x19

    or-int v25, v26, v25

    xor-int v5, v5, v25

    add-int v25, v5, v0

    or-int/lit8 v25, v25, 0x0

    shl-int/lit8 v26, v25, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v25, v25, 0x17

    or-int v25, v26, v25

    xor-int v25, p2, v25

    add-int v26, v25, v5

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v26, v26, 0x13

    or-int v26, v27, v26

    xor-int v4, v4, v26

    add-int v26, v4, v25

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v26, v26, 0xe

    or-int v26, v27, v26

    xor-int v0, v0, v26

    add-int v26, v1, v5

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x7

    ushr-int/lit8 v26, v26, 0x19

    or-int v26, v27, v26

    xor-int v7, v7, v26

    add-int v26, v7, v1

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v26, v26, 0x17

    or-int v26, v27, v26

    xor-int v10, v10, v26

    add-int v26, v10, v7

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v26, v26, 0x13

    or-int v26, v27, v26

    xor-int v5, v5, v26

    add-int v26, v5, v10

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v26, v26, 0xe

    or-int v26, v27, v26

    xor-int v1, v1, v26

    add-int v26, v13, v2

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x7

    ushr-int/lit8 v26, v26, 0x19

    or-int v26, v27, v26

    xor-int v14, v14, v26

    add-int v26, v14, v13

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v26, v26, 0x17

    or-int v26, v27, v26

    xor-int v25, v25, v26

    add-int v26, v25, v14

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v26, v26, 0x13

    or-int v26, v27, v26

    xor-int v2, v2, v26

    add-int v26, v2, v25

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v26, v26, 0xe

    or-int v26, v27, v26

    xor-int v13, v13, v26

    add-int v26, v9, v11

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x7

    ushr-int/lit8 v26, v26, 0x19

    or-int v26, v27, v26

    xor-int v4, v4, v26

    add-int v26, v4, v9

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v26, v26, 0x17

    or-int v26, v27, v26

    xor-int v3, v3, v26

    add-int v26, v3, v4

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v26, v26, 0x13

    or-int v26, v27, v26

    xor-int v11, v11, v26

    add-int v26, v11, v3

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v26, v26, 0xe

    or-int v26, v27, v26

    xor-int v9, v9, v26

    add-int v26, v0, v8

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x7

    ushr-int/lit8 v26, v26, 0x19

    or-int v26, v27, v26

    xor-int v6, v6, v26

    add-int v26, v6, v0

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x9

    const/16 v24, 0x17

    ushr-int/lit8 v26, v26, 0x17

    or-int v26, v27, v26

    xor-int v12, v12, v26

    add-int v26, v12, v6

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0xd

    const/16 v22, 0x13

    ushr-int/lit8 v26, v26, 0x13

    or-int v26, v27, v26

    xor-int v8, v8, v26

    add-int v26, v8, v12

    or-int/lit8 v26, v26, 0x0

    shl-int/lit8 v27, v26, 0x12

    const/16 v18, 0xe

    ushr-int/lit8 v26, v26, 0xe

    or-int v26, v27, v26

    xor-int v0, v0, v26

    add-int/lit8 v15, v15, 0x2

    move/from16 p2, v25

    move/from16 v25, v14

    move v14, v13

    move v13, v12

    move v12, v3

    move v3, v2

    goto/16 :goto_0

    :cond_0
    ushr-int/lit8 v2, v1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 397
    aput-byte v2, p0, v3

    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    .line 398
    aput-byte v2, p0, v3

    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    .line 399
    aput-byte v2, p0, v3

    const/16 v2, 0x18

    ushr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 400
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v14, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 402
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    .line 403
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v14, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x6

    .line 404
    aput-byte v1, p0, v2

    const/16 v1, 0x18

    ushr-int/lit8 v2, v14, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x7

    .line 405
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v9, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x8

    .line 407
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v9, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x9

    .line 408
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v9, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xa

    .line 409
    aput-byte v1, p0, v2

    const/16 v1, 0x18

    ushr-int/lit8 v2, v9, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xb

    .line 410
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v0, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xc

    .line 412
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 413
    aput-byte v1, p0, v17

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xe

    .line 414
    aput-byte v1, p0, v2

    const/16 v1, 0xf

    const/16 v2, 0x18

    ushr-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 415
    aput-byte v0, p0, v1

    ushr-int/lit8 v0, v25, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v1, 0x10

    .line 417
    aput-byte v0, p0, v1

    const/16 v0, 0x11

    ushr-int/lit8 v1, v25, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 418
    aput-byte v1, p0, v0

    ushr-int/lit8 v0, v25, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v1, 0x12

    .line 419
    aput-byte v0, p0, v1

    const/16 v0, 0x18

    ushr-int/lit8 v1, v25, 0x18

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    const/16 v1, 0x13

    .line 420
    aput-byte v0, p0, v1

    const/16 v0, 0x14

    ushr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 422
    aput-byte v1, p0, v0

    const/16 v0, 0x15

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 423
    aput-byte v1, p0, v0

    const/16 v0, 0x16

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 424
    aput-byte v1, p0, v0

    const/16 v0, 0x18

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x17

    .line 425
    aput-byte v1, p0, v2

    ushr-int/lit8 v1, v12, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 427
    aput-byte v1, p0, v0

    ushr-int/lit8 v0, v12, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 428
    aput-byte v0, p0, v23

    const/16 v0, 0x1a

    ushr-int/lit8 v1, v12, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 429
    aput-byte v1, p0, v0

    const/16 v0, 0x1b

    const/16 v1, 0x18

    ushr-int/lit8 v2, v12, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 430
    aput-byte v1, p0, v0

    const/16 v0, 0x1c

    ushr-int/lit8 v1, v11, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 432
    aput-byte v1, p0, v0

    const/16 v0, 0x1d

    ushr-int/lit8 v1, v11, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 433
    aput-byte v1, p0, v0

    const/16 v0, 0x1e

    ushr-int/lit8 v1, v11, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 434
    aput-byte v1, p0, v0

    const/16 v0, 0x1f

    const/16 v1, 0x18

    ushr-int/lit8 v1, v11, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 435
    aput-byte v1, p0, v0

    return-void
.end method

.method private static core_salsa20([B[B[B[B)V
    .locals 43

    const/4 v0, 0x0

    .line 104
    aget-byte v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p3, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v5, p3, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v7, p3, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x18

    shl-int/2addr v7, v8

    or-int/2addr v1, v7

    .line 105
    aget-byte v7, p2, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v7, v9

    aget-byte v9, p2, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    or-int/2addr v7, v9

    aget-byte v9, p2, v5

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    or-int/2addr v7, v9

    const/4 v9, 0x4

    .line 106
    aget-byte v10, p2, v9

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x5

    aget-byte v12, p2, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    or-int/2addr v10, v12

    const/4 v12, 0x6

    aget-byte v13, p2, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v10, v13

    const/4 v13, 0x7

    aget-byte v14, p2, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v10, v14

    .line 107
    aget-byte v14, p2, v4

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x9

    aget-byte v5, p2, v15

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    or-int/2addr v5, v14

    const/16 v14, 0xa

    aget-byte v15, p2, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v5, v15

    const/16 v15, 0xb

    aget-byte v14, p2, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v5, v14

    const/16 v14, 0xc

    .line 108
    aget-byte v15, p2, v14

    and-int/lit16 v15, v15, 0xff

    const/16 v17, 0xd

    aget-byte v14, p2, v17

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v4

    or-int/2addr v14, v15

    const/16 v15, 0xe

    aget-byte v3, p2, v15

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v3, v14

    const/16 v14, 0xf

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v8

    or-int/2addr v3, v14

    .line 109
    aget-byte v14, p3, v9

    and-int/lit16 v14, v14, 0xff

    aget-byte v15, p3, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v14, v15

    aget-byte v15, p3, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v14, v15

    aget-byte v15, p3, v13

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v14, v15

    .line 110
    aget-byte v15, p1, v0

    and-int/lit16 v15, v15, 0xff

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v0, v15

    const/4 v15, 0x2

    aget-byte v2, p1, v15

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v15, p1, v2

    and-int/lit16 v2, v15, 0xff

    shl-int/2addr v2, v8

    or-int/2addr v0, v2

    .line 111
    aget-byte v2, p1, v9

    and-int/lit16 v2, v2, 0xff

    aget-byte v15, p1, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v2, v15

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v2, v15

    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v2, v15

    .line 112
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x9

    aget-byte v13, p1, v16

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v4

    or-int/2addr v13, v15

    const/16 v15, 0xa

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    const/16 v13, 0xb

    aget-byte v15, p1, v13

    and-int/lit16 v13, v15, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v12, v13

    const/16 v13, 0xc

    .line 113
    aget-byte v15, p1, v13

    and-int/lit16 v13, v15, 0xff

    aget-byte v15, p1, v17

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v13, v15

    const/16 v15, 0xe

    aget-byte v11, p1, v15

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v6

    or-int/2addr v11, v13

    const/16 v13, 0xf

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v11, v13

    .line 114
    aget-byte v13, p3, v4

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x9

    aget-byte v9, p3, v15

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v9, v13

    const/16 v13, 0xa

    aget-byte v15, p3, v13

    and-int/lit16 v13, v15, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v9, v13

    const/16 v13, 0xb

    aget-byte v15, p3, v13

    and-int/lit16 v13, v15, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v9, v13

    .line 115
    aget-byte v13, p2, v6

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x11

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v13, v15

    const/16 v15, 0x12

    aget-byte v4, p2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v4, v13

    const/16 v13, 0x13

    aget-byte v15, p2, v13

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v4, v15

    const/16 v15, 0x14

    .line 116
    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v22, 0x15

    aget-byte v13, p2, v22

    and-int/lit16 v13, v13, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v15

    const/16 v15, 0x16

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    or-int/2addr v13, v15

    const/16 v15, 0x17

    aget-byte v6, p2, v15

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v6, v13

    .line 117
    aget-byte v13, p2, v8

    and-int/lit16 v13, v13, 0xff

    const/16 v24, 0x19

    aget-byte v15, p2, v24

    and-int/lit16 v15, v15, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v13, v15

    const/16 v15, 0x1a

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v22, 0x10

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v13, v15

    const/16 v15, 0x1b

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v13, v15

    const/16 v15, 0x1c

    .line 118
    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v26, 0x1d

    aget-byte v8, p2, v26

    and-int/lit16 v8, v8, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v15

    const/16 v15, 0x1e

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v22, 0x10

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v8, v15

    const/16 v15, 0x1f

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v26, 0x18

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v8, v15

    move/from16 p2, v8

    const/16 v15, 0xc

    .line 119
    aget-byte v8, p3, v15

    and-int/lit16 v8, v8, 0xff

    aget-byte v15, p3, v17

    and-int/lit16 v15, v15, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v8, v15

    move/from16 v26, v13

    const/16 v15, 0xe

    aget-byte v13, p3, v15

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x10

    shl-int/2addr v13, v15

    or-int/2addr v8, v13

    const/16 v13, 0xf

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x18

    shl-int/2addr v13, v15

    or-int/2addr v8, v13

    move/from16 v40, p2

    move/from16 v32, v0

    move v15, v1

    move/from16 v33, v2

    move/from16 v30, v3

    move/from16 v37, v4

    move/from16 v29, v5

    move/from16 v38, v6

    move/from16 v27, v7

    move/from16 p3, v8

    move/from16 v41, p3

    move/from16 v36, v9

    move/from16 v28, v10

    move/from16 v35, v11

    move/from16 v34, v12

    move/from16 v31, v14

    move/from16 v39, v26

    const/4 v13, 0x0

    :goto_0
    const/16 v8, 0x14

    if-ge v13, v8, :cond_0

    add-int v8, v15, v38

    const/16 v20, 0x0

    or-int/lit8 v8, v8, 0x0

    shl-int/lit8 v42, v8, 0x7

    ushr-int/lit8 v8, v8, 0x19

    or-int v8, v42, v8

    xor-int v8, v30, v8

    add-int v30, v8, v15

    or-int/lit8 v30, v30, 0x0

    shl-int/lit8 v42, v30, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v30, v30, 0x17

    or-int v30, v42, v30

    xor-int v30, v34, v30

    add-int v34, v30, v8

    or-int/lit8 v34, v34, 0x0

    shl-int/lit8 v42, v34, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v34, v34, 0x13

    or-int v34, v42, v34

    xor-int v34, v38, v34

    add-int v38, v34, v30

    or-int/lit8 v38, v38, 0x0

    shl-int/lit8 v42, v38, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v38, v38, 0xe

    or-int v38, v42, v38

    xor-int v15, v15, v38

    add-int v38, v31, v27

    or-int/lit8 v38, v38, 0x0

    shl-int/lit8 v42, v38, 0x7

    ushr-int/lit8 v38, v38, 0x19

    or-int v38, v42, v38

    xor-int v35, v35, v38

    add-int v38, v35, v31

    or-int/lit8 v38, v38, 0x0

    shl-int/lit8 v42, v38, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v38, v38, 0x17

    or-int v38, v42, v38

    xor-int v38, v39, v38

    add-int v39, v38, v35

    or-int/lit8 v39, v39, 0x0

    shl-int/lit8 v42, v39, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v39, v39, 0x13

    or-int v39, v42, v39

    xor-int v27, v27, v39

    add-int v39, v27, v38

    or-int/lit8 v39, v39, 0x0

    shl-int/lit8 v42, v39, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v39, v39, 0xe

    or-int v39, v42, v39

    xor-int v31, v31, v39

    add-int v39, v36, v32

    or-int/lit8 v39, v39, 0x0

    shl-int/lit8 v42, v39, 0x7

    ushr-int/lit8 v39, v39, 0x19

    or-int v39, v42, v39

    xor-int v39, v40, v39

    add-int v40, v39, v36

    or-int/lit8 v40, v40, 0x0

    shl-int/lit8 v42, v40, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v40, v40, 0x17

    or-int v40, v42, v40

    xor-int v28, v28, v40

    add-int v40, v28, v39

    or-int/lit8 v40, v40, 0x0

    shl-int/lit8 v42, v40, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v40, v40, 0x13

    or-int v40, v42, v40

    xor-int v32, v32, v40

    add-int v40, v32, v28

    or-int/lit8 v40, v40, 0x0

    shl-int/lit8 v42, v40, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v40, v40, 0xe

    or-int v40, v42, v40

    xor-int v36, v36, v40

    add-int v40, v41, v37

    or-int/lit8 v40, v40, 0x0

    shl-int/lit8 v42, v40, 0x7

    ushr-int/lit8 v40, v40, 0x19

    or-int v40, v42, v40

    xor-int v29, v29, v40

    add-int v40, v29, v41

    or-int/lit8 v40, v40, 0x0

    shl-int/lit8 v42, v40, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v40, v40, 0x17

    or-int v40, v42, v40

    xor-int v33, v33, v40

    add-int v40, v33, v29

    or-int/lit8 v40, v40, 0x0

    shl-int/lit8 v42, v40, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v40, v40, 0x13

    or-int v40, v42, v40

    xor-int v37, v37, v40

    add-int v40, v37, v33

    or-int/lit8 v40, v40, 0x0

    shl-int/lit8 v42, v40, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v40, v40, 0xe

    or-int v40, v42, v40

    xor-int v40, v41, v40

    add-int v41, v15, v29

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x7

    ushr-int/lit8 v41, v41, 0x19

    or-int v41, v42, v41

    xor-int v27, v27, v41

    add-int v41, v27, v15

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v41, v41, 0x17

    or-int v41, v42, v41

    xor-int v28, v28, v41

    add-int v41, v28, v27

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v41, v41, 0x13

    or-int v41, v42, v41

    xor-int v29, v29, v41

    add-int v41, v29, v28

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v41, v41, 0xe

    or-int v41, v42, v41

    xor-int v15, v15, v41

    add-int v41, v31, v8

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x7

    ushr-int/lit8 v41, v41, 0x19

    or-int v41, v42, v41

    xor-int v32, v32, v41

    add-int v41, v32, v31

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v41, v41, 0x17

    or-int v41, v42, v41

    xor-int v33, v33, v41

    add-int v41, v33, v32

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v41, v41, 0x13

    or-int v41, v42, v41

    xor-int v8, v8, v41

    add-int v41, v8, v33

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v41, v41, 0xe

    or-int v41, v42, v41

    xor-int v31, v31, v41

    add-int v41, v36, v35

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x7

    ushr-int/lit8 v41, v41, 0x19

    or-int v41, v42, v41

    xor-int v37, v37, v41

    add-int v41, v37, v36

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v41, v41, 0x17

    or-int v41, v42, v41

    xor-int v30, v30, v41

    add-int v41, v30, v37

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v41, v41, 0x13

    or-int v41, v42, v41

    xor-int v35, v35, v41

    add-int v41, v35, v30

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v41, v41, 0xe

    or-int v41, v42, v41

    xor-int v36, v36, v41

    add-int v41, v40, v39

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x7

    ushr-int/lit8 v41, v41, 0x19

    or-int v41, v42, v41

    xor-int v34, v34, v41

    add-int v41, v34, v40

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x9

    const/16 v25, 0x17

    ushr-int/lit8 v41, v41, 0x17

    or-int v41, v42, v41

    xor-int v38, v38, v41

    add-int v41, v38, v34

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0xd

    const/16 v23, 0x13

    ushr-int/lit8 v41, v41, 0x13

    or-int v41, v42, v41

    xor-int v39, v39, v41

    add-int v41, v39, v38

    or-int/lit8 v41, v41, 0x0

    shl-int/lit8 v42, v41, 0x12

    const/16 v19, 0xe

    ushr-int/lit8 v41, v41, 0xe

    or-int v41, v42, v41

    xor-int v41, v40, v41

    add-int/lit8 v13, v13, 0x2

    move/from16 v40, v39

    move/from16 v39, v38

    move/from16 v38, v34

    move/from16 v34, v30

    move/from16 v30, v8

    goto/16 :goto_0

    :cond_0
    const/16 v20, 0x0

    add-int/2addr v15, v1

    or-int/lit8 v1, v15, 0x0

    add-int v27, v27, v7

    or-int/lit8 v7, v27, 0x0

    add-int v28, v28, v10

    or-int/lit8 v8, v28, 0x0

    add-int v29, v29, v5

    or-int/lit8 v5, v29, 0x0

    add-int v30, v30, v3

    or-int/lit8 v3, v30, 0x0

    add-int v31, v31, v14

    or-int/lit8 v10, v31, 0x0

    add-int v32, v32, v0

    or-int/lit8 v0, v32, 0x0

    add-int v33, v33, v2

    or-int/lit8 v2, v33, 0x0

    add-int v34, v34, v12

    or-int/lit8 v12, v34, 0x0

    add-int v35, v35, v11

    or-int/lit8 v11, v35, 0x0

    add-int v36, v36, v9

    or-int/lit8 v9, v36, 0x0

    add-int v37, v37, v4

    or-int/lit8 v4, v37, 0x0

    add-int v38, v38, v6

    or-int/lit8 v6, v38, 0x0

    add-int v39, v39, v26

    or-int/lit8 v13, v39, 0x0

    add-int v40, v40, p2

    or-int/lit8 v14, v40, 0x0

    add-int v41, v41, p3

    or-int/lit8 v15, v41, 0x0

    move/from16 p2, v15

    ushr-int/lit8 v15, v1, 0x0

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    .line 215
    aput-byte v15, p0, v20

    ushr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    const/16 v20, 0x1

    .line 216
    aput-byte v15, p0, v20

    ushr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    const/16 v18, 0x2

    .line 217
    aput-byte v15, p0, v18

    const/16 v15, 0x18

    ushr-int/2addr v1, v15

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v15, 0x3

    .line 218
    aput-byte v1, p0, v15

    ushr-int/lit8 v1, v7, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v15, 0x4

    .line 220
    aput-byte v1, p0, v15

    ushr-int/lit8 v1, v7, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v15, 0x5

    .line 221
    aput-byte v1, p0, v15

    ushr-int/lit8 v1, v7, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v15, 0x6

    .line 222
    aput-byte v1, p0, v15

    const/16 v1, 0x18

    ushr-int/2addr v7, v1

    and-int/lit16 v1, v7, 0xff

    int-to-byte v1, v1

    const/4 v7, 0x7

    .line 223
    aput-byte v1, p0, v7

    ushr-int/lit8 v1, v8, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v7, 0x8

    .line 225
    aput-byte v1, p0, v7

    ushr-int/lit8 v1, v8, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v7, 0x9

    .line 226
    aput-byte v1, p0, v7

    ushr-int/lit8 v1, v8, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v7, 0xa

    .line 227
    aput-byte v1, p0, v7

    const/16 v1, 0x18

    ushr-int/lit8 v7, v8, 0x18

    and-int/lit16 v1, v7, 0xff

    int-to-byte v1, v1

    const/16 v7, 0xb

    .line 228
    aput-byte v1, p0, v7

    ushr-int/lit8 v1, v5, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v7, 0xc

    .line 230
    aput-byte v1, p0, v7

    ushr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 231
    aput-byte v1, p0, v17

    ushr-int/lit8 v1, v5, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v7, 0xe

    .line 232
    aput-byte v1, p0, v7

    const/16 v1, 0xf

    const/16 v7, 0x18

    ushr-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 233
    aput-byte v5, p0, v1

    ushr-int/lit8 v1, v3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v5, 0x10

    .line 235
    aput-byte v1, p0, v5

    const/16 v1, 0x11

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 236
    aput-byte v5, p0, v1

    ushr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v5, 0x12

    .line 237
    aput-byte v1, p0, v5

    const/16 v1, 0x18

    ushr-int/2addr v3, v1

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    const/16 v3, 0x13

    .line 238
    aput-byte v1, p0, v3

    const/16 v1, 0x14

    ushr-int/lit8 v3, v10, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 240
    aput-byte v3, p0, v1

    const/16 v1, 0x15

    ushr-int/lit8 v3, v10, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 241
    aput-byte v3, p0, v1

    const/16 v1, 0x16

    ushr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 242
    aput-byte v3, p0, v1

    const/16 v1, 0x18

    ushr-int/lit8 v3, v10, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/16 v5, 0x17

    .line 243
    aput-byte v3, p0, v5

    ushr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 245
    aput-byte v3, p0, v1

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 246
    aput-byte v1, p0, v24

    const/16 v1, 0x1a

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 247
    aput-byte v3, p0, v1

    const/16 v1, 0x1b

    const/16 v3, 0x18

    ushr-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 248
    aput-byte v0, p0, v1

    const/16 v0, 0x1c

    ushr-int/lit8 v1, v2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 250
    aput-byte v1, p0, v0

    const/16 v0, 0x1d

    ushr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 251
    aput-byte v1, p0, v0

    const/16 v0, 0x1e

    ushr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 252
    aput-byte v1, p0, v0

    const/16 v0, 0x1f

    const/16 v1, 0x18

    ushr-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 253
    aput-byte v1, p0, v0

    const/16 v0, 0x20

    ushr-int/lit8 v1, v12, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 255
    aput-byte v1, p0, v0

    const/16 v0, 0x21

    ushr-int/lit8 v1, v12, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 256
    aput-byte v1, p0, v0

    const/16 v0, 0x22

    ushr-int/lit8 v1, v12, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 257
    aput-byte v1, p0, v0

    const/16 v0, 0x23

    const/16 v1, 0x18

    ushr-int/lit8 v2, v12, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 258
    aput-byte v1, p0, v0

    const/16 v0, 0x24

    ushr-int/lit8 v1, v11, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 260
    aput-byte v1, p0, v0

    const/16 v0, 0x25

    ushr-int/lit8 v1, v11, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 261
    aput-byte v1, p0, v0

    const/16 v0, 0x26

    ushr-int/lit8 v1, v11, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 262
    aput-byte v1, p0, v0

    const/16 v0, 0x27

    const/16 v1, 0x18

    ushr-int/lit8 v2, v11, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 263
    aput-byte v1, p0, v0

    const/16 v0, 0x28

    ushr-int/lit8 v1, v9, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 265
    aput-byte v1, p0, v0

    const/16 v0, 0x29

    ushr-int/lit8 v1, v9, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 266
    aput-byte v1, p0, v0

    const/16 v0, 0x2a

    ushr-int/lit8 v1, v9, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 267
    aput-byte v1, p0, v0

    const/16 v0, 0x2b

    const/16 v1, 0x18

    ushr-int/lit8 v2, v9, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 268
    aput-byte v1, p0, v0

    const/16 v0, 0x2c

    ushr-int/lit8 v1, v4, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 270
    aput-byte v1, p0, v0

    const/16 v0, 0x2d

    ushr-int/lit8 v1, v4, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 271
    aput-byte v1, p0, v0

    const/16 v0, 0x2e

    ushr-int/lit8 v1, v4, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 272
    aput-byte v1, p0, v0

    const/16 v0, 0x2f

    const/16 v1, 0x18

    ushr-int/lit8 v2, v4, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 273
    aput-byte v1, p0, v0

    const/16 v0, 0x30

    ushr-int/lit8 v1, v6, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 275
    aput-byte v1, p0, v0

    const/16 v0, 0x31

    ushr-int/lit8 v1, v6, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 276
    aput-byte v1, p0, v0

    const/16 v0, 0x32

    ushr-int/lit8 v1, v6, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 277
    aput-byte v1, p0, v0

    const/16 v0, 0x33

    const/16 v1, 0x18

    ushr-int/lit8 v2, v6, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 278
    aput-byte v1, p0, v0

    const/16 v0, 0x34

    ushr-int/lit8 v1, v13, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 280
    aput-byte v1, p0, v0

    const/16 v0, 0x35

    ushr-int/lit8 v1, v13, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 281
    aput-byte v1, p0, v0

    const/16 v0, 0x36

    ushr-int/lit8 v1, v13, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 282
    aput-byte v1, p0, v0

    const/16 v0, 0x37

    const/16 v1, 0x18

    ushr-int/lit8 v2, v13, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 283
    aput-byte v1, p0, v0

    const/16 v0, 0x38

    ushr-int/lit8 v1, v14, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 285
    aput-byte v1, p0, v0

    const/16 v0, 0x39

    ushr-int/lit8 v1, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 286
    aput-byte v1, p0, v0

    const/16 v0, 0x3a

    ushr-int/lit8 v1, v14, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 287
    aput-byte v1, p0, v0

    const/16 v0, 0x3b

    const/16 v1, 0x18

    ushr-int/lit8 v2, v14, 0x18

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 288
    aput-byte v1, p0, v0

    const/16 v0, 0x3c

    ushr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 290
    aput-byte v1, p0, v0

    const/16 v0, 0x3d

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 291
    aput-byte v1, p0, v0

    const/16 v0, 0x3e

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 292
    aput-byte v1, p0, v0

    const/16 v0, 0x3f

    const/16 v1, 0x18

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 293
    aput-byte v1, p0, v0

    return-void
.end method

.method public static crypto_core_hsalsa20([B[B[B[B)I
    .locals 0

    .line 459
    invoke-static {p0, p1, p2, p3}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->core_hsalsa20([B[B[B[B)V

    const/4 p0, 0x0

    return p0
.end method

.method public static crypto_core_salsa20([B[B[B[B)I
    .locals 0

    .line 447
    invoke-static {p0, p1, p2, p3}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->core_salsa20([B[B[B[B)V

    const/4 p0, 0x0

    return p0
.end method

.method private static crypto_onetimeauth([BI[BII[B)I
    .locals 1

    .line 957
    new-instance v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;

    invoke-direct {v0, p5}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;-><init>([B)V

    .line 958
    invoke-virtual {v0, p2, p3, p4}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->update([BII)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;

    .line 959
    invoke-virtual {v0, p0, p1}, Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;->finish([BI)Lcom/pusher/client/crypto/nacl/TweetNaclFast$poly1305;

    const/4 p0, 0x0

    return p0
.end method

.method private static crypto_onetimeauth_verify([BI[BII[B)I
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 976
    invoke-static/range {v1 .. v6}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_onetimeauth([BI[BII[B)I

    const/4 p2, 0x0

    .line 977
    invoke-static {p0, p1, v0, p2}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_verify_16([BI[BI)I

    move-result p0

    return p0
.end method

.method public static crypto_secretbox_open([B[BI[B[B)I
    .locals 18

    move/from16 v0, p2

    const/16 v1, 0x20

    new-array v8, v1, [B

    const/4 v9, -0x1

    if-ge v0, v1, :cond_0

    return v9

    :cond_0
    const/4 v3, 0x0

    const-wide/16 v4, 0x20

    move-object v2, v8

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 985
    invoke-static/range {v2 .. v7}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_stream([BIJ[B[B)I

    const/16 v3, 0x10

    const/16 v5, 0x20

    add-int/lit8 v6, v0, -0x20

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    move-object v7, v8

    .line 986
    invoke-static/range {v2 .. v7}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_onetimeauth_verify([BI[BII[B)I

    move-result v1

    if-eqz v1, :cond_1

    return v9

    :cond_1
    const/4 v11, 0x0

    const/4 v13, 0x0

    int-to-long v14, v0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    .line 987
    invoke-static/range {v10 .. v17}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_stream_xor([BI[BIJ[B[B)I

    const/4 v0, 0x0

    return v0
.end method

.method public static crypto_stream([BIJ[B[B)I
    .locals 7

    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 541
    sget-object v0, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->sigma:[B

    invoke-static {v6, p4, p5, v0}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_core_hsalsa20([B[B[B[B)I

    const/16 p5, 0x8

    new-array v5, p5, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int/lit8 v1, v0, 0x10

    .line 543
    aget-byte v1, p4, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    .line 544
    invoke-static/range {v1 .. v6}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_stream_salsa20([BIJ[B[B)I

    move-result p0

    return p0
.end method

.method public static crypto_stream_salsa20([BIJ[B[B)I
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/16 v2, 0x40

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 513
    aput-byte v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 514
    aget-byte v6, p4, v5

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const-wide/16 v7, 0x40

    cmp-long p4, p2, v7

    if-ltz p4, :cond_4

    .line 516
    sget-object p4, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->sigma:[B

    invoke-static {v3, v1, p5, p4}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_core_salsa20([B[B[B[B)I

    const/4 p4, 0x0

    :goto_3
    if-ge p4, v2, :cond_2

    add-int v5, p1, p4

    .line 517
    aget-byte v9, v3, p4

    aput-byte v9, p0, v5

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_2
    const/4 p4, 0x1

    const/16 v5, 0x8

    :goto_4
    if-ge v5, v0, :cond_3

    .line 520
    aget-byte v9, v1, v5

    and-int/lit16 v9, v9, 0xff

    add-int/2addr p4, v9

    or-int/2addr p4, v4

    and-int/lit16 v9, p4, 0xff

    int-to-byte v9, v9

    .line 521
    aput-byte v9, v1, v5

    ushr-int/2addr p4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    sub-long/2addr p2, v7

    add-int/lit8 p1, p1, 0x40

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long p4, p2, v5

    if-lez p4, :cond_5

    .line 528
    sget-object p4, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->sigma:[B

    invoke-static {v3, v1, p5, p4}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_core_salsa20([B[B[B[B)I

    const/4 p4, 0x0

    :goto_5
    int-to-long v0, p4

    cmp-long p5, v0, p2

    if-gez p5, :cond_5

    add-int p5, p1, p4

    .line 529
    aget-byte v0, v3, p4

    aput-byte v0, p0, p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_5
    return v4
.end method

.method private static crypto_stream_salsa20_xor([BI[BIJ[B[B)I
    .locals 17

    move-object/from16 v0, p7

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/16 v3, 0x40

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 483
    aput-byte v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x8

    if-ge v6, v7, :cond_1

    .line 484
    aget-byte v7, p6, v6

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move/from16 v6, p1

    move/from16 v8, p3

    move-wide/from16 v9, p4

    :goto_2
    const-wide/16 v11, 0x40

    cmp-long v13, v9, v11

    if-ltz v13, :cond_4

    .line 486
    sget-object v13, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->sigma:[B

    invoke-static {v4, v2, v0, v13}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_core_salsa20([B[B[B[B)I

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v3, :cond_2

    add-int v14, v6, v13

    add-int v15, v8, v13

    .line 487
    aget-byte v15, p2, v15

    aget-byte v16, v4, v13

    xor-int v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, p0, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v13, 0x1

    const/16 v14, 0x8

    :goto_4
    if-ge v14, v1, :cond_3

    .line 490
    aget-byte v15, v2, v14

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v13, v15

    or-int/2addr v13, v5

    and-int/lit16 v15, v13, 0xff

    int-to-byte v15, v15

    .line 491
    aput-byte v15, v2, v14

    ushr-int/2addr v13, v7

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    sub-long/2addr v9, v11

    add-int/lit8 v6, v6, 0x40

    add-int/lit8 v8, v8, 0x40

    goto :goto_2

    :cond_4
    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-lez v1, :cond_5

    .line 499
    sget-object v1, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->sigma:[B

    invoke-static {v4, v2, v0, v1}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_core_salsa20([B[B[B[B)I

    const/4 v0, 0x0

    :goto_5
    int-to-long v1, v0

    cmp-long v3, v1, v9

    if-gez v3, :cond_5

    add-int v1, v6, v0

    add-int v2, v8, v0

    .line 500
    aget-byte v2, p2, v2

    aget-byte v3, v4, v0

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return v5
.end method

.method public static crypto_stream_xor([BI[BIJ[B[B)I
    .locals 10

    move-object/from16 v0, p6

    const/16 v1, 0x20

    new-array v9, v1, [B

    .line 559
    sget-object v1, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->sigma:[B

    move-object/from16 v2, p7

    invoke-static {v9, v0, v2, v1}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_core_hsalsa20([B[B[B[B)I

    const/16 v1, 0x8

    new-array v8, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x10

    .line 561
    aget-byte v3, v0, v3

    aput-byte v3, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    .line 562
    invoke-static/range {v2 .. v9}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->crypto_stream_salsa20_xor([BI[BIJ[B[B)I

    move-result v0

    return v0
.end method

.method private static crypto_verify_16([BI[BI)I
    .locals 1

    const/16 v0, 0x10

    .line 100
    invoke-static {p0, p1, p2, p3, v0}, Lcom/pusher/client/crypto/nacl/TweetNaclFast;->vn([BI[BII)I

    move-result p0

    return p0
.end method

.method private static vn([BI[BII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v2, v0, p1

    .line 92
    aget-byte v2, p0, v2

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 p0, v1, 0x8

    and-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
