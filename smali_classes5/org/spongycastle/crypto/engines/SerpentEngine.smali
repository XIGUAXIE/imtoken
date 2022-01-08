.class public Lorg/spongycastle/crypto/engines/SerpentEngine;
.super Ljava/lang/Object;
.source "SerpentEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field static final PHI:I = -0x61c88647

.field static final ROUNDS:I = 0x20


# instance fields
.field private X0:I

.field private X1:I

.field private X2:I

.field private X3:I

.field private encrypting:Z

.field private wKey:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LT()V
    .locals 5

    .line 758
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    .line 759
    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v1

    .line 760
    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v2, v0

    xor-int/2addr v2, v1

    .line 761
    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v1

    shl-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    .line 763
    invoke-direct {p0, v2, v4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v2, 0x7

    .line 764
    invoke-direct {p0, v3, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v3

    iput v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 765
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v4

    xor-int/2addr v0, v3

    const/4 v3, 0x5

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 766
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    shl-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2

    .line 264
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private decryptBlock([BI[BI)V
    .locals 3

    .line 351
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 352
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    .line 353
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    .line 354
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    const/16 v1, 0xc

    add-int/2addr p2, v1

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result p1

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 356
    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 357
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x7c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x7d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x7e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x7f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 358
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 359
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x78

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x79

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x7a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x7b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 360
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 361
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x74

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x75

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x76

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x77

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 362
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 363
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x70

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x71

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x72

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x73

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 364
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 365
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x6c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x6d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x6e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x6f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 366
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 367
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x68

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x69

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x6a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x6b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 368
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 369
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x64

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x65

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x66

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x67

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 370
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 371
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x60

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x61

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x62

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x63

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 372
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 373
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x5c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x5d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x5e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x5f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 374
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 375
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x58

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x59

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x5a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x5b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 376
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 377
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x54

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x55

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x56

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x57

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 378
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 379
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x50

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x51

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x52

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x53

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 380
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 381
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x4c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x4d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x4e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x4f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 382
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 383
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x48

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x49

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x4a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x4b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 384
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 385
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x44

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x45

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x46

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x47

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 386
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 387
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x40

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x41

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x42

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x43

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 388
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 389
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x3c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x3d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x3e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x3f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 390
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 391
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x38

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x39

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x3a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x3b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 392
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 393
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x34

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x35

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x36

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x37

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 394
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 395
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x30

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x31

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x32

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x33

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 396
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 397
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x2c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x2d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x2e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x2f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 398
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 399
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x28

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x29

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x2a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x2b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 400
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 401
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x24

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x25

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x26

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x27

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 402
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 403
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x20

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x21

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x22

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x23

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 404
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 405
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x1c

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x1d

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x1e

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x1f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 406
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 407
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x18

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x19

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x1a

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x1b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 408
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 409
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x14

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x15

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x16

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x17

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 410
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 411
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x10

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x11

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0x12

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0x13

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 412
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 413
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget v0, p2, v1

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0xd

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0xe

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0xf

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 414
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 415
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x8

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0x9

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0xa

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/16 v0, 0xb

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 416
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 417
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x4

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v0, 0x5

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/4 v0, 0x6

    aget v0, p2, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    const/4 v0, 0x7

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    .line 418
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 420
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x3

    aget p2, p2, v0

    xor-int/2addr p1, p2

    invoke-direct {p0, p1, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 421
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x2

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, p1, p3, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 422
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, p1, p3, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 423
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/2addr p4, v1

    invoke-direct {p0, p1, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 4

    .line 293
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    add-int/lit8 v0, p2, 0x4

    .line 294
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    add-int/lit8 v0, p2, 0x8

    .line 295
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/16 v0, 0xc

    add-int/2addr p2, v0

    .line 296
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    .line 298
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x0

    aget v1, p2, v1

    xor-int/2addr p1, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/4 v3, 0x3

    aget p2, p2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p2, v3

    invoke-direct {p0, p1, v1, v2, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 299
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 p2, 0x4

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/4 v3, 0x7

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 300
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x8

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0xb

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 301
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget p2, p1, v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0xf

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 302
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x10

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x11

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x12

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x13

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 303
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x14

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x15

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x16

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x17

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 304
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x18

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x19

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x1a

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x1b

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 305
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x1c

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x1d

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x1e

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x1f

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 306
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x20

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x21

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x22

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x23

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 307
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x24

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x25

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x26

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x27

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 308
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x28

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x29

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x2a

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x2b

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 309
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x2c

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x2d

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x2e

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x2f

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 310
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x30

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x31

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x32

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x33

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 311
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x34

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x35

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x36

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x37

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 312
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x38

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x39

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x3a

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x3b

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 313
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x3c

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x3d

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x3e

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x3f

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 314
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x40

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x41

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x42

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x43

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 315
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x44

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x45

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x46

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x47

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 316
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x48

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x49

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x4a

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x4b

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 317
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x4c

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x4d

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x4e

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x4f

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 318
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x50

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x51

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x52

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x53

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 319
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x54

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x55

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x56

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x57

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 320
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x58

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x59

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x5a

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x5b

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 321
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x5c

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x5d

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x5e

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x5f

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 322
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x60

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x61

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x62

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x63

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 323
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x64

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x65

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x66

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x67

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 324
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x68

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x69

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x6a

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x6b

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 325
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x6c

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x6d

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x6e

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x6f

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 326
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x70

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x71

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x72

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x73

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 327
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x74

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x75

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x76

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x77

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 328
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x78

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x79

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x7a

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x7b

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    .line 329
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x7c

    aget p2, p1, p2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p2, v1

    const/16 v1, 0x7d

    aget v1, p1, v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    const/16 v2, 0x7e

    aget v2, p1, v2

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    const/16 v3, 0x7f

    aget p1, p1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, v3

    invoke-direct {p0, p2, v1, v2, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 331
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x83

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, p2

    invoke-direct {p0, p1, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 332
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x82

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, p1, p3, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 333
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x81

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, p1, p3, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 334
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x80

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    add-int/2addr p4, v0

    invoke-direct {p0, p1, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    return-void
.end method

.method private ib0(IIII)V
    .locals 3

    not-int v0, p1

    xor-int/2addr p2, p1

    or-int v1, v0, p2

    xor-int/2addr v1, p4

    xor-int/2addr p3, v1

    xor-int v2, p2, p3

    .line 474
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr p2, p4

    xor-int/2addr p2, v0

    and-int p4, v2, p2

    xor-int/2addr p4, v1

    .line 476
    iput p4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr p1, v1

    or-int/2addr p4, p3

    xor-int/2addr p1, p4

    .line 477
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p2, p3

    xor-int/2addr p1, p2

    .line 478
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private ib1(IIII)V
    .locals 1

    xor-int/2addr p4, p2

    and-int v0, p2, p4

    xor-int/2addr p1, v0

    xor-int v0, p4, p1

    xor-int/2addr p3, v0

    .line 505
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr p4, p1

    xor-int/2addr p2, p4

    or-int p4, p3, p2

    xor-int/2addr p1, p4

    .line 508
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    not-int p1, p1

    xor-int/2addr p2, p3

    xor-int p3, p1, p2

    .line 511
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr p1, p2

    xor-int/2addr p1, v0

    .line 512
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib2(IIII)V
    .locals 3

    xor-int v0, p2, p4

    not-int v1, v0

    xor-int v2, p1, p3

    xor-int/2addr p3, v0

    and-int/2addr p2, p3

    xor-int/2addr p2, v2

    .line 542
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr p1, v1

    xor-int/2addr p1, p4

    or-int/2addr p1, v2

    xor-int/2addr p1, v0

    .line 546
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    not-int p3, p3

    or-int/2addr p1, p2

    xor-int p2, p3, p1

    .line 549
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    and-int p2, p4, p3

    xor-int/2addr p1, v2

    xor-int/2addr p1, p2

    .line 550
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib3(IIII)V
    .locals 3

    or-int v0, p1, p2

    xor-int v1, p2, p3

    and-int/2addr p2, v1

    xor-int/2addr p1, p2

    xor-int p2, p3, p1

    or-int p3, p4, p1

    xor-int v2, v1, p3

    .line 585
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr p3, v1

    xor-int/2addr p3, p4

    xor-int/2addr p2, p3

    .line 588
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int p2, v0, p3

    and-int p3, v2, p2

    xor-int/2addr p1, p3

    .line 591
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p2, v2

    xor-int/2addr p1, p2

    .line 592
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    return-void
.end method

.method private ib4(IIII)V
    .locals 2

    or-int v0, p3, p4

    and-int/2addr v0, p1

    xor-int/2addr p2, v0

    and-int v0, p1, p2

    xor-int/2addr p3, v0

    xor-int v0, p4, p3

    .line 625
    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    not-int p1, p1

    and-int/2addr p3, v0

    xor-int/2addr p3, p2

    .line 628
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v1, v0, p1

    xor-int/2addr p4, v1

    xor-int/2addr p3, p4

    .line 631
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr p2, p4

    xor-int/2addr p1, v0

    xor-int/2addr p1, p2

    .line 632
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib5(IIII)V
    .locals 5

    not-int v0, p3

    and-int v1, p2, v0

    xor-int/2addr v1, p4

    and-int v2, p1, v1

    xor-int v3, p2, v0

    xor-int/2addr v3, v2

    .line 666
    iput v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr v3, p2

    and-int v4, p1, v3

    xor-int/2addr v1, v4

    .line 669
    iput v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr p4, p1

    xor-int/2addr v0, v3

    xor-int/2addr v0, p4

    .line 672
    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr p2, p4

    xor-int/2addr p1, p3

    or-int/2addr p1, v2

    xor-int/2addr p1, p2

    .line 673
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib6(IIII)V
    .locals 3

    not-int v0, p1

    xor-int/2addr p1, p2

    xor-int v1, p3, p1

    or-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int v2, v1, p3

    .line 706
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    and-int v2, v1, p3

    xor-int/2addr p1, v2

    or-int v2, p2, p1

    xor-int/2addr p3, v2

    .line 710
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr p2, p3

    xor-int/2addr p1, p2

    .line 712
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int p1, p4, v0

    xor-int/2addr p2, v1

    xor-int/2addr p1, p2

    .line 713
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private ib7(IIII)V
    .locals 4

    and-int v0, p1, p2

    or-int/2addr v0, p3

    or-int v1, p1, p2

    and-int/2addr v1, p4

    xor-int v2, v0, v1

    .line 744
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    not-int v3, p4

    xor-int/2addr p2, v1

    xor-int v1, v2, v3

    or-int/2addr v1, p2

    xor-int/2addr v1, p1

    .line 748
    iput v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, p3

    or-int p3, p4, v1

    xor-int/2addr p2, p3

    .line 749
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int p3, v0, v1

    and-int/2addr p1, v2

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    .line 750
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    return-void
.end method

.method private inverseLT()V
    .locals 5

    .line 774
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v2, 0x7

    shl-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 775
    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    const/4 v3, 0x5

    invoke-direct {p0, v1, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v1

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v1, v3

    .line 776
    invoke-direct {p0, v3, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v2

    .line 777
    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v3

    xor-int/2addr v2, v0

    shl-int/lit8 v4, v1, 0x3

    xor-int/2addr v2, v4

    .line 778
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v2, v3, v1

    xor-int/2addr v2, v0

    .line 779
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v2, 0x3

    .line 780
    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0xd

    .line 781
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private makeWorkingKey([B)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 131
    array-length v2, p1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 133
    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v7

    aput v7, v1, v5

    add-int/lit8 v2, v2, -0x4

    move v5, v6

    goto :goto_0

    :cond_0
    if-nez v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    .line 138
    invoke-direct {p0, p1, v4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result p1

    aput p1, v1, v5

    const/16 p1, 0x8

    const/4 v5, 0x1

    if-ge v2, p1, :cond_1

    .line 141
    aput v5, v1, v2

    :cond_1
    const/16 v2, 0x84

    new-array v6, v2, [I

    const/16 v7, 0x8

    :goto_1
    const v8, -0x61c88647

    const/16 v9, 0xb

    if-ge v7, v0, :cond_2

    add-int/lit8 v10, v7, -0x8

    .line 160
    aget v11, v1, v10

    add-int/lit8 v12, v7, -0x5

    aget v12, v1, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x3

    aget v12, v1, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x1

    aget v12, v1, v12

    xor-int/2addr v11, v12

    xor-int/2addr v8, v11

    xor-int/2addr v8, v10

    invoke-direct {p0, v8, v9}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 163
    :cond_2
    invoke-static {v1, p1, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    :goto_2
    if-ge v1, v2, :cond_3

    add-int/lit8 v7, v1, -0x8

    .line 170
    aget v7, v6, v7

    add-int/lit8 v10, v1, -0x5

    aget v10, v6, v10

    xor-int/2addr v7, v10

    add-int/lit8 v10, v1, -0x3

    aget v10, v6, v10

    xor-int/2addr v7, v10

    add-int/lit8 v10, v1, -0x1

    aget v10, v6, v10

    xor-int/2addr v7, v10

    xor-int/2addr v7, v8

    xor-int/2addr v7, v1

    invoke-direct {p0, v7, v9}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_3
    aget v1, v6, v4

    aget v2, v6, v5

    const/4 v7, 0x2

    aget v8, v6, v7

    const/4 v10, 0x3

    aget v11, v6, v10

    invoke-direct {p0, v1, v2, v8, v11}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 177
    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v6, v4

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v6, v5

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v6, v7

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v6, v10

    .line 178
    aget v1, v6, v3

    const/4 v2, 0x5

    aget v4, v6, v2

    const/4 v5, 0x6

    aget v7, v6, v5

    const/4 v8, 0x7

    aget v10, v6, v8

    invoke-direct {p0, v1, v4, v7, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 179
    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v6, v3

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v6, v2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v6, v5

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v6, v8

    .line 180
    aget v1, v6, p1

    const/16 v2, 0x9

    aget v3, v6, v2

    const/16 v4, 0xa

    aget v5, v6, v4

    aget v7, v6, v9

    invoke-direct {p0, v1, v3, v5, v7}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 181
    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v6, p1

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput p1, v6, v2

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput p1, v6, v4

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput p1, v6, v9

    const/16 p1, 0xc

    .line 182
    aget v1, v6, p1

    const/16 v2, 0xd

    aget v3, v6, v2

    const/16 v4, 0xe

    aget v5, v6, v4

    const/16 v7, 0xf

    aget v8, v6, v7

    invoke-direct {p0, v1, v3, v5, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 183
    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v6, p1

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput p1, v6, v2

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput p1, v6, v4

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput p1, v6, v7

    .line 184
    aget p1, v6, v0

    const/16 v1, 0x11

    aget v2, v6, v1

    const/16 v3, 0x12

    aget v4, v6, v3

    const/16 v5, 0x13

    aget v7, v6, v5

    invoke-direct {p0, p1, v2, v4, v7}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 185
    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput p1, v6, v0

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput p1, v6, v1

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput p1, v6, v3

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput p1, v6, v5

    const/16 p1, 0x14

    .line 186
    aget v0, v6, p1

    const/16 v1, 0x15

    aget v1, v6, v1

    const/16 v2, 0x16

    aget v2, v6, v2

    const/16 v3, 0x17

    aget v3, v6, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 187
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x15

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x16

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x17

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x18

    .line 188
    aget p1, v6, p1

    const/16 v0, 0x19

    aget v0, v6, v0

    const/16 v1, 0x1a

    aget v1, v6, v1

    const/16 v2, 0x1b

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x18

    .line 189
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x19

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x1a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x1b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x1c

    .line 190
    aget p1, v6, p1

    const/16 v0, 0x1d

    aget v0, v6, v0

    const/16 v1, 0x1e

    aget v1, v6, v1

    const/16 v2, 0x1f

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x1c

    .line 191
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x1d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x1e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x1f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x20

    .line 192
    aget p1, v6, p1

    const/16 v0, 0x21

    aget v0, v6, v0

    const/16 v1, 0x22

    aget v1, v6, v1

    const/16 v2, 0x23

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x20

    .line 193
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x21

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x22

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x23

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x24

    .line 194
    aget p1, v6, p1

    const/16 v0, 0x25

    aget v0, v6, v0

    const/16 v1, 0x26

    aget v1, v6, v1

    const/16 v2, 0x27

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 p1, 0x24

    .line 195
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x25

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x26

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x27

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x28

    .line 196
    aget p1, v6, p1

    const/16 v0, 0x29

    aget v0, v6, v0

    const/16 v1, 0x2a

    aget v1, v6, v1

    const/16 v2, 0x2b

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 p1, 0x28

    .line 197
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x29

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x2a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x2b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x2c

    .line 198
    aget p1, v6, p1

    const/16 v0, 0x2d

    aget v0, v6, v0

    const/16 v1, 0x2e

    aget v1, v6, v1

    const/16 v2, 0x2f

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 p1, 0x2c

    .line 199
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x2d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x2e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x2f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x30

    .line 200
    aget p1, v6, p1

    const/16 v0, 0x31

    aget v0, v6, v0

    const/16 v1, 0x32

    aget v1, v6, v1

    const/16 v2, 0x33

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 p1, 0x30

    .line 201
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x31

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x32

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x33

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x34

    .line 202
    aget p1, v6, p1

    const/16 v0, 0x35

    aget v0, v6, v0

    const/16 v1, 0x36

    aget v1, v6, v1

    const/16 v2, 0x37

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 p1, 0x34

    .line 203
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x35

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x36

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x37

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x38

    .line 204
    aget p1, v6, p1

    const/16 v0, 0x39

    aget v0, v6, v0

    const/16 v1, 0x3a

    aget v1, v6, v1

    const/16 v2, 0x3b

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x38

    .line 205
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x39

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x3a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x3b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x3c

    .line 206
    aget p1, v6, p1

    const/16 v0, 0x3d

    aget v0, v6, v0

    const/16 v1, 0x3e

    aget v1, v6, v1

    const/16 v2, 0x3f

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x3c

    .line 207
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x3d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x3e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x3f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x40

    .line 208
    aget p1, v6, p1

    const/16 v0, 0x41

    aget v0, v6, v0

    const/16 v1, 0x42

    aget v1, v6, v1

    const/16 v2, 0x43

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x40

    .line 209
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x41

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x42

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x43

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x44

    .line 210
    aget p1, v6, p1

    const/16 v0, 0x45

    aget v0, v6, v0

    const/16 v1, 0x46

    aget v1, v6, v1

    const/16 v2, 0x47

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 p1, 0x44

    .line 211
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x45

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x46

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x47

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x48

    .line 212
    aget p1, v6, p1

    const/16 v0, 0x49

    aget v0, v6, v0

    const/16 v1, 0x4a

    aget v1, v6, v1

    const/16 v2, 0x4b

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 p1, 0x48

    .line 213
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x49

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x4a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x4b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x4c

    .line 214
    aget p1, v6, p1

    const/16 v0, 0x4d

    aget v0, v6, v0

    const/16 v1, 0x4e

    aget v1, v6, v1

    const/16 v2, 0x4f

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 p1, 0x4c

    .line 215
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x4d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x4e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x4f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x50

    .line 216
    aget p1, v6, p1

    const/16 v0, 0x51

    aget v0, v6, v0

    const/16 v1, 0x52

    aget v1, v6, v1

    const/16 v2, 0x53

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 p1, 0x50

    .line 217
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x51

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x52

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x53

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x54

    .line 218
    aget p1, v6, p1

    const/16 v0, 0x55

    aget v0, v6, v0

    const/16 v1, 0x56

    aget v1, v6, v1

    const/16 v2, 0x57

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 p1, 0x54

    .line 219
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x55

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x56

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x57

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x58

    .line 220
    aget p1, v6, p1

    const/16 v0, 0x59

    aget v0, v6, v0

    const/16 v1, 0x5a

    aget v1, v6, v1

    const/16 v2, 0x5b

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x58

    .line 221
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x59

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x5a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x5b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x5c

    .line 222
    aget p1, v6, p1

    const/16 v0, 0x5d

    aget v0, v6, v0

    const/16 v1, 0x5e

    aget v1, v6, v1

    const/16 v2, 0x5f

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x5c

    .line 223
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x5d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x5e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x5f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x60

    .line 224
    aget p1, v6, p1

    const/16 v0, 0x61

    aget v0, v6, v0

    const/16 v1, 0x62

    aget v1, v6, v1

    const/16 v2, 0x63

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x60

    .line 225
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x61

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x62

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x63

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x64

    .line 226
    aget p1, v6, p1

    const/16 v0, 0x65

    aget v0, v6, v0

    const/16 v1, 0x66

    aget v1, v6, v1

    const/16 v2, 0x67

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 p1, 0x64

    .line 227
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x65

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x66

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x67

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x68

    .line 228
    aget p1, v6, p1

    const/16 v0, 0x69

    aget v0, v6, v0

    const/16 v1, 0x6a

    aget v1, v6, v1

    const/16 v2, 0x6b

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 p1, 0x68

    .line 229
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x69

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x6a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x6b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x6c

    .line 230
    aget p1, v6, p1

    const/16 v0, 0x6d

    aget v0, v6, v0

    const/16 v1, 0x6e

    aget v1, v6, v1

    const/16 v2, 0x6f

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 p1, 0x6c

    .line 231
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x6d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x6e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x6f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x70

    .line 232
    aget p1, v6, p1

    const/16 v0, 0x71

    aget v0, v6, v0

    const/16 v1, 0x72

    aget v1, v6, v1

    const/16 v2, 0x73

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 p1, 0x70

    .line 233
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x71

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x72

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x73

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x74

    .line 234
    aget p1, v6, p1

    const/16 v0, 0x75

    aget v0, v6, v0

    const/16 v1, 0x76

    aget v1, v6, v1

    const/16 v2, 0x77

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 p1, 0x74

    .line 235
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x75

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x76

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x77

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x78

    .line 236
    aget p1, v6, p1

    const/16 v0, 0x79

    aget v0, v6, v0

    const/16 v1, 0x7a

    aget v1, v6, v1

    const/16 v2, 0x7b

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x78

    .line 237
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x79

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x7a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x7b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x7c

    .line 238
    aget p1, v6, p1

    const/16 v0, 0x7d

    aget v0, v6, v0

    const/16 v1, 0x7e

    aget v1, v6, v1

    const/16 v2, 0x7f

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x7c

    .line 239
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x7d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x7e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x7f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    const/16 p1, 0x80

    .line 240
    aget p1, v6, p1

    const/16 v0, 0x81

    aget v0, v6, v0

    const/16 v1, 0x82

    aget v1, v6, v1

    const/16 v2, 0x83

    aget v2, v6, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x80

    .line 241
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v6, p1

    const/16 p1, 0x81

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v6, p1

    const/16 p1, 0x82

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v6, p1

    const/16 p1, 0x83

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v6, p1

    return-object v6

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must be a multiple of 4 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rotateLeft(II)I
    .locals 1

    shl-int v0, p1, p2

    neg-int p2, p2

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private rotateRight(II)I
    .locals 1

    ushr-int v0, p1, p2

    neg-int p2, p2

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private sb0(IIII)V
    .locals 3

    xor-int v0, p1, p4

    xor-int v1, p3, v0

    xor-int v2, p2, v1

    and-int/2addr p4, p1

    xor-int/2addr p4, v2

    .line 457
    iput p4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr p2, v0

    xor-int/2addr p1, p2

    or-int p2, p3, p1

    xor-int/2addr p2, v2

    .line 459
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int p2, v1, p1

    and-int/2addr p2, p4

    not-int p3, v1

    xor-int/2addr p3, p2

    .line 461
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    not-int p1, p1

    xor-int/2addr p1, p2

    .line 462
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private sb1(IIII)V
    .locals 1

    not-int v0, p1

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    xor-int/2addr p1, p3

    xor-int p3, p4, p1

    .line 488
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    or-int/2addr p4, v0

    xor-int/2addr p2, p4

    xor-int/2addr p3, v0

    and-int p4, p1, p2

    xor-int/2addr p4, p3

    .line 491
    iput p4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p2, p1

    xor-int/2addr p4, p2

    .line 493
    iput p4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr p2, p3

    xor-int/2addr p1, p2

    .line 494
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private sb2(IIII)V
    .locals 4

    not-int v0, p1

    xor-int v1, p2, p4

    and-int v2, p3, v0

    xor-int/2addr v2, v1

    .line 523
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int v3, p3, v0

    xor-int/2addr p3, v2

    and-int/2addr p2, p3

    xor-int p3, v3, p2

    .line 527
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    or-int/2addr p2, p4

    or-int/2addr v2, v3

    and-int/2addr p2, v2

    xor-int/2addr p1, p2

    .line 528
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int p2, v1, p3

    or-int p3, p4, v0

    xor-int/2addr p1, p3

    xor-int/2addr p1, p2

    .line 529
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    return-void
.end method

.method private sb3(IIII)V
    .locals 3

    xor-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr p1, p4

    xor-int/2addr p3, p4

    and-int v2, v0, p1

    or-int/2addr v1, v2

    xor-int v2, p3, v1

    .line 564
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr p1, p2

    xor-int/2addr p1, v1

    and-int v1, p3, p1

    xor-int/2addr v0, v1

    .line 568
    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v0, v2

    xor-int/2addr p1, v0

    .line 570
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int p1, p2, p4

    xor-int p2, p3, v0

    xor-int/2addr p1, p2

    .line 571
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    return-void
.end method

.method private sb4(IIII)V
    .locals 2

    xor-int v0, p1, p4

    and-int/2addr p4, v0

    xor-int/2addr p3, p4

    or-int p4, p2, p3

    xor-int v1, v0, p4

    .line 604
    iput v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    not-int p2, p2

    or-int v1, v0, p2

    xor-int/2addr v1, p3

    .line 607
    iput v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr v1, p1

    xor-int/2addr p2, v0

    and-int/2addr p4, p2

    xor-int/2addr p4, v1

    .line 611
    iput p4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr p1, p3

    and-int/2addr p2, p4

    xor-int/2addr p1, p2

    .line 612
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    return-void
.end method

.method private sb5(IIII)V
    .locals 3

    not-int v0, p1

    xor-int v1, p1, p2

    xor-int/2addr p1, p4

    xor-int/2addr p3, v0

    or-int v2, v1, p1

    xor-int/2addr p3, v2

    .line 645
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    and-int/2addr p4, p3

    xor-int v2, v1, p3

    xor-int/2addr v2, p4

    .line 648
    iput v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr p3, v0

    or-int v0, v1, p4

    xor-int/2addr p1, p3

    xor-int p3, v0, p1

    .line 652
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr p2, p4

    and-int/2addr p1, v2

    xor-int/2addr p1, p2

    .line 653
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    return-void
.end method

.method private sb6(IIII)V
    .locals 2

    not-int v0, p1

    xor-int/2addr p1, p4

    xor-int v1, p2, p1

    or-int/2addr v0, p1

    xor-int/2addr p3, v0

    xor-int/2addr p2, p3

    .line 686
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr p1, p2

    xor-int/2addr p1, p4

    and-int p2, p3, p1

    xor-int/2addr p2, v1

    .line 690
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr p1, p3

    xor-int/2addr p2, p1

    .line 692
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    not-int p2, p3

    and-int/2addr p1, v1

    xor-int/2addr p1, p2

    .line 693
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    return-void
.end method

.method private sb7(IIII)V
    .locals 2

    xor-int v0, p2, p3

    and-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int v1, p1, p3

    or-int/2addr p4, v0

    and-int/2addr p4, v1

    xor-int/2addr p2, p4

    .line 727
    iput p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr p2, p3

    and-int/2addr p1, v1

    xor-int/2addr p1, v0

    .line 730
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p2, v1

    and-int p4, p1, p2

    xor-int/2addr p3, p4

    .line 733
    iput p3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    not-int p2, p2

    and-int/2addr p1, p3

    xor-int/2addr p1, p2

    .line 734
    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    .line 273
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 274
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 275
    aput-byte v1, p2, v0

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 276
    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 44
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 46
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->encrypting:Z

    .line 47
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->makeWorkingKey([B)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to Serpent init - "

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

.method public final processBlock([BI[BI)I
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    .line 88
    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    .line 93
    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 98
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->encrypting:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->encryptBlock([BI[BI)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->decryptBlock([BI[BI)V

    :goto_0
    const/16 p1, 0x10

    return p1

    .line 95
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Serpent not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
