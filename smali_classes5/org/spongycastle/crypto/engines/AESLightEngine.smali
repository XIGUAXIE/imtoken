.class public Lorg/spongycastle/crypto/engines/AESLightEngine;
.super Ljava/lang/Object;
.source "AESLightEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B

.field private static final Si:[B

.field private static final m1:I = -0x7f7f7f80

.field private static final m2:I = 0x7f7f7f7f

.field private static final m3:I = 0x1b

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 38
    fill-array-data v1, :array_0

    sput-object v1, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    new-array v0, v0, [B

    .line 74
    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    const/16 v0, 0x1e

    new-array v0, v0, [I

    .line 110
    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->rcon:[I

    return-void

    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 231
    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    return-void
.end method

.method private static FFmulX(I)I
    .locals 2

    const v0, 0x7f7f7f7f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr p0, v1

    ushr-int/lit8 p0, p0, 0x7

    mul-int/lit8 p0, p0, 0x1b

    xor-int/2addr p0, v0

    return p0
.end method

.method private decryptBlock([[I)V
    .locals 14

    .line 405
    iget v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v0, v2

    .line 406
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    aget-object v4, p1, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    xor-int/2addr v2, v4

    .line 407
    iget v4, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    aget-object v6, p1, v1

    const/4 v7, 0x2

    aget v6, v6, v7

    xor-int/2addr v4, v6

    add-int/lit8 v6, v1, -0x1

    .line 409
    iget v8, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    aget-object v1, p1, v1

    const/4 v9, 0x3

    aget v1, v1, v9

    xor-int/2addr v1, v8

    :goto_0
    if-le v6, v5, :cond_0

    .line 412
    sget-object v8, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v0, 0xff

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v8, v8, v11

    shl-int/lit8 v8, v8, 0x18

    xor-int/2addr v8, v10

    invoke-static {v8}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v8

    aget-object v10, p1, v6

    aget v10, v10, v3

    xor-int/2addr v8, v10

    .line 413
    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v11, v2, 0xff

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v1, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v10, v11

    invoke-static {v10}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v10

    aget-object v11, p1, v6

    aget v11, v11, v5

    xor-int/2addr v10, v11

    .line 414
    sget-object v11, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v12, v4, 0xff

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v1, 0x18

    and-int/lit16 v13, v13, 0xff

    aget-byte v11, v11, v13

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v11, v12

    invoke-static {v11}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v11

    aget-object v12, p1, v6

    aget v12, v12, v7

    xor-int/2addr v11, v12

    .line 415
    sget-object v12, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v1, v4

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v12, v0

    shl-int/lit8 v0, v0, 0x18

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v0

    add-int/lit8 v1, v6, -0x1

    aget-object v2, p1, v6

    aget v2, v2, v9

    xor-int/2addr v0, v2

    .line 416
    sget-object v2, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v4, v8, 0xff

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v4, v6

    shr-int/lit8 v6, v11, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v4, v6

    shr-int/lit8 v6, v10, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v2, v4

    invoke-static {v2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v2

    aget-object v4, p1, v1

    aget v4, v4, v3

    xor-int/2addr v2, v4

    .line 417
    sget-object v4, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v6, v10, 0xff

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v6, v12

    shr-int/lit8 v12, v0, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v6, v12

    shr-int/lit8 v12, v11, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v4, v4, v12

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v4, v6

    invoke-static {v4}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    aget-object v6, p1, v1

    aget v6, v6, v5

    xor-int/2addr v4, v6

    .line 418
    sget-object v6, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v12, v11, 0xff

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v10, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v6, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v6, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x18

    and-int/lit16 v13, v13, 0xff

    aget-byte v6, v6, v13

    shl-int/lit8 v6, v6, 0x18

    xor-int/2addr v6, v12

    invoke-static {v6}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v12, p1, v1

    aget v12, v12, v7

    xor-int/2addr v6, v12

    .line 419
    sget-object v12, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v12, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    xor-int/2addr v0, v11

    shr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v0, v10

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v12, v8

    shl-int/lit8 v8, v8, 0x18

    xor-int/2addr v0, v8

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v0

    add-int/lit8 v8, v1, -0x1

    aget-object v1, p1, v1

    aget v1, v1, v9

    xor-int/2addr v1, v0

    move v0, v2

    move v2, v4

    move v4, v6

    move v6, v8

    goto/16 :goto_0

    .line 422
    :cond_0
    sget-object v8, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v0, 0xff

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v8, v8, v11

    shl-int/lit8 v8, v8, 0x18

    xor-int/2addr v8, v10

    invoke-static {v8}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v8

    aget-object v10, p1, v6

    aget v10, v10, v3

    xor-int/2addr v8, v10

    .line 423
    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v11, v2, 0xff

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v1, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v4, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v10, v11

    invoke-static {v10}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v10

    aget-object v11, p1, v6

    aget v11, v11, v5

    xor-int/2addr v10, v11

    .line 424
    sget-object v11, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v12, v4, 0xff

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v1, 0x18

    and-int/lit16 v13, v13, 0xff

    aget-byte v11, v11, v13

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v11, v12

    invoke-static {v11}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v11

    aget-object v12, p1, v6

    aget v12, v12, v7

    xor-int/2addr v11, v12

    .line 425
    sget-object v12, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v1, v4

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v12, v0

    shl-int/lit8 v0, v0, 0x18

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v0

    aget-object v1, p1, v6

    aget v1, v1, v9

    xor-int/2addr v0, v1

    .line 429
    sget-object v1, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v2, v8, 0xff

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v11, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v10, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v2, v4

    aget-object v4, p1, v3

    aget v4, v4, v3

    xor-int/2addr v2, v4

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v2, v10, 0xff

    .line 430
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v4, v8, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v11, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v2, v4

    aget-object v4, p1, v3

    aget v4, v4, v5

    xor-int/2addr v2, v4

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v2, v11, 0xff

    .line 431
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v4, v10, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v8, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v2, v4

    aget-object v4, p1, v3

    aget v4, v4, v7

    xor-int/2addr v2, v4

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v0, v0, 0xff

    .line 432
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, v11, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v10, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    aget-object p1, p1, v3

    aget p1, p1, v9

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    return-void
.end method

.method private encryptBlock([[I)V
    .locals 14

    .line 373
    iget v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v2, v2, v1

    xor-int/2addr v0, v2

    .line 374
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    xor-int/2addr v2, v3

    .line 375
    iget v3, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    aget-object v5, p1, v1

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v3, v5

    .line 377
    iget v5, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    aget-object v7, p1, v1

    const/4 v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v5, v7

    const/4 v7, 0x1

    .line 378
    :goto_0
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    sub-int/2addr v9, v4

    if-ge v7, v9, :cond_0

    .line 380
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v0, 0xff

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v7

    aget v10, v10, v1

    xor-int/2addr v9, v10

    .line 381
    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v11, v2, 0xff

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v5, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v10, v11

    invoke-static {v10}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v10

    aget-object v11, p1, v7

    aget v11, v11, v4

    xor-int/2addr v10, v11

    .line 382
    sget-object v11, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v12, v3, 0xff

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x18

    and-int/lit16 v13, v13, 0xff

    aget-byte v11, v11, v13

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v11, v12

    invoke-static {v11}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v11

    aget-object v12, p1, v7

    aget v12, v12, v6

    xor-int/2addr v11, v12

    .line 383
    sget-object v12, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v12, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v12, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v5

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v3, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v12, v2

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    aget-object v3, p1, v7

    aget v3, v3, v8

    xor-int/2addr v0, v3

    .line 384
    sget-object v3, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v5, v9, 0xff

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v7, v10, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    shr-int/lit8 v7, v11, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    shr-int/lit8 v7, v0, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v3, v3, v7

    shl-int/lit8 v3, v3, 0x18

    xor-int/2addr v3, v5

    invoke-static {v3}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v3

    aget-object v5, p1, v2

    aget v5, v5, v1

    xor-int/2addr v3, v5

    .line 385
    sget-object v5, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v10, 0xff

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v5, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v7, v12

    shr-int/lit8 v12, v0, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v5, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v7, v12

    shr-int/lit8 v12, v9, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v5, v5, v12

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v5, v7

    invoke-static {v5}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v5

    aget-object v7, p1, v2

    aget v7, v7, v4

    xor-int/2addr v5, v7

    .line 386
    sget-object v7, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v12, v11, 0xff

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v10, 0x18

    and-int/lit16 v13, v13, 0xff

    aget-byte v7, v7, v13

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v7, v12

    invoke-static {v7}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v7

    aget-object v12, p1, v2

    aget v12, v12, v6

    xor-int/2addr v7, v12

    .line 387
    sget-object v12, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v12, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v12, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v0, v9

    shr-int/lit8 v9, v10, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v12, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v0, v9

    shr-int/lit8 v9, v11, 0x18

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v12, v9

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v0, v9

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v0

    add-int/lit8 v9, v2, 0x1

    aget-object v2, p1, v2

    aget v2, v2, v8

    xor-int/2addr v0, v2

    move v2, v5

    move v5, v0

    move v0, v3

    move v3, v7

    move v7, v9

    goto/16 :goto_0

    .line 390
    :cond_0
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v0, 0xff

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v9, v9, v11

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v7

    aget v10, v10, v1

    xor-int/2addr v9, v10

    .line 391
    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v11, v2, 0xff

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v5, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x18

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v10, v11

    invoke-static {v10}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v10

    aget-object v11, p1, v7

    aget v11, v11, v4

    xor-int/2addr v10, v11

    .line 392
    sget-object v11, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v12, v3, 0xff

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x18

    and-int/lit16 v13, v13, 0xff

    aget-byte v11, v11, v13

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v11, v12

    invoke-static {v11}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v11

    aget-object v12, p1, v7

    aget v12, v12, v6

    xor-int/2addr v11, v12

    .line 393
    sget-object v12, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v12, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v12, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v5

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v3, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v12, v2

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    aget-object v3, p1, v7

    aget v3, v3, v8

    xor-int/2addr v0, v3

    .line 397
    sget-object v3, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v5, v9, 0xff

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v7, v10, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    shr-int/lit8 v7, v11, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    shr-int/lit8 v7, v0, 0x18

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v3, v7

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, p1, v2

    aget v1, v7, v1

    xor-int/2addr v1, v5

    iput v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v1, v10, 0xff

    .line 398
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v5, v11, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v1, v5

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v1, v5

    shr-int/lit8 v5, v9, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v1, v5

    aget-object v5, p1, v2

    aget v4, v5, v4

    xor-int/2addr v1, v4

    iput v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v1, v11, 0xff

    .line 399
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v1, v4

    shr-int/lit8 v4, v9, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v1, v4

    shr-int/lit8 v4, v10, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x18

    xor-int/2addr v1, v4

    aget-object v4, p1, v2

    aget v4, v4, v6

    xor-int/2addr v1, v4

    iput v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v0, v0, 0xff

    .line 400
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v9, 0x8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v10, 0x10

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v11, 0x18

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    aget-object p1, p1, v2

    aget p1, p1, v8

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 172
    array-length v2, v1

    const/4 v3, 0x4

    div-int/2addr v2, v3

    const/16 v4, 0x8

    const/4 v5, 0x6

    if-eq v2, v3, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_7

    :cond_0
    mul-int/lit8 v6, v2, 0x4

    .line 175
    array-length v7, v1

    if-ne v6, v7, :cond_7

    add-int/lit8 v6, v2, 0x6

    .line 180
    iput v6, v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v3, v9, v7

    const/4 v10, 0x0

    aput v6, v9, v10

    .line 181
    const-class v6, I

    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 189
    :goto_0
    array-length v12, v1

    if-ge v9, v12, :cond_1

    shr-int/lit8 v12, v11, 0x2

    .line 191
    aget-object v12, v6, v12

    and-int/lit8 v13, v11, 0x3

    aget-byte v14, v1, v9

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v9, 0x1

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/lit8 v15, v9, 0x2

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v15, v9, 0x3

    aget-byte v15, v1, v15

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v14, v15

    aput v14, v12, v13

    add-int/lit8 v9, v9, 0x4

    add-int/2addr v11, v7

    goto :goto_0

    .line 200
    :cond_1
    iget v1, v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/2addr v1, v7

    shl-int/2addr v1, v8

    move v8, v2

    :goto_1
    if-ge v8, v1, :cond_4

    add-int/lit8 v9, v8, -0x1

    shr-int/lit8 v11, v9, 0x2

    .line 203
    aget-object v11, v6, v11

    and-int/lit8 v9, v9, 0x3

    aget v9, v11, v9

    .line 204
    rem-int v11, v8, v2

    if-nez v11, :cond_2

    .line 206
    invoke-static {v9, v4}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v9

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v9

    sget-object v11, Lorg/spongycastle/crypto/engines/AESLightEngine;->rcon:[I

    div-int v12, v8, v2

    sub-int/2addr v12, v7

    aget v11, v11, v12

    xor-int/2addr v9, v11

    goto :goto_2

    :cond_2
    if-le v2, v5, :cond_3

    if-ne v11, v3, :cond_3

    .line 210
    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v9

    :cond_3
    :goto_2
    shr-int/lit8 v11, v8, 0x2

    .line 213
    aget-object v11, v6, v11

    and-int/lit8 v12, v8, 0x3

    sub-int v13, v8, v2

    shr-int/lit8 v14, v13, 0x2

    aget-object v14, v6, v14

    and-int/lit8 v13, v13, 0x3

    aget v13, v14, v13

    xor-int/2addr v9, v13

    aput v9, v11, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-nez p2, :cond_6

    .line 218
    :goto_3
    iget v1, v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    if-ge v7, v1, :cond_6

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_5

    .line 222
    aget-object v2, v6, v7

    aget-object v4, v6, v7

    aget v4, v4, v1

    invoke-static {v4}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    return-object v6

    .line 177
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key length not 128/192/256 bits."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static inv_mcol(I)I
    .locals 4

    .line 148
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    .line 149
    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v1

    .line 150
    invoke-static {v1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v2

    xor-int/2addr p0, v2

    xor-int v3, v0, v1

    xor-int/2addr v2, v3

    xor-int/2addr v0, p0

    const/16 v3, 0x8

    .line 153
    invoke-static {v0, v3}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v0

    xor-int/2addr v0, v2

    xor-int/2addr v1, p0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static mcol(I)I
    .locals 3

    .line 142
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    xor-int v1, p0, v0

    const/16 v2, 0x8

    .line 143
    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private packBlock([BI)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    .line 350
    iget v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 351
    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 352
    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    .line 353
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    .line 355
    iget v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 356
    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 357
    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    .line 358
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    .line 360
    iget v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 361
    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 362
    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    .line 363
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    .line 365
    iget v1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 366
    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 367
    aput-byte v2, p1, p2

    shr-int/lit8 p2, v1, 0x18

    int-to-byte p2, p2

    .line 368
    aput-byte p2, p1, v0

    return-void
.end method

.method private static shift(II)I
    .locals 1

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private static subWord(I)I
    .locals 3

    .line 159
    sget-object v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v0, p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v1

    return p0
.end method

.method private unpackBlock([BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 323
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    .line 324
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .line 325
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    .line 326
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 p2, v1, 0x1

    .line 328
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, p2, 0x1

    .line 329
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .line 330
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    .line 331
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 p2, v1, 0x1

    .line 333
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, p2, 0x1

    .line 334
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .line 335
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    .line 336
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 p2, v1, 0x1

    .line 338
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v1, p2, 0x1

    .line 339
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .line 340
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    .line 341
    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 256
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 258
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->generateWorkingKey([BZ)[[I

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 259
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    return-void

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to AES init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    .line 287
    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    .line 292
    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 297
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 300
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->encryptBlock([[I)V

    .line 301
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 306
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->decryptBlock([[I)V

    .line 307
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    :goto_0
    const/16 p1, 0x10

    return p1

    .line 294
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AES engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
