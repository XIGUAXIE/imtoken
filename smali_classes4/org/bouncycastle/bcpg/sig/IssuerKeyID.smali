.class public Lorg/bouncycastle/bcpg/sig/IssuerKeyID;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    invoke-static {p2, p3}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->keyIDToBytes(J)[B

    move-result-object p2

    const/16 p3, 0x10

    invoke-direct {p0, p3, p1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZ[B)V

    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZ[B)V

    return-void
.end method

.method protected static keyIDToBytes(J)[B
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, 0x38

    shr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    shr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    long-to-int p1, p0

    int-to-byte p0, p1

    const/4 p1, 0x7

    aput-byte p0, v1, p1

    return-object v1
.end method


# virtual methods
.method public getKeyID()J
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;->data:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
