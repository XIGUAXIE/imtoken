.class public Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(ZLjava/util/Date;)V
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->timeToBytes(Ljava/util/Date;)[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZ[B)V

    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZ[B)V

    return-void
.end method

.method protected static timeToBytes(Ljava/util/Date;)[B
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const/16 p0, 0x18

    shr-long v3, v1, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x0

    aput-byte p0, v0, v3

    const/16 p0, 0x10

    shr-long v3, v1, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x1

    aput-byte p0, v0, v3

    const/16 p0, 0x8

    shr-long v3, v1, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x2

    aput-byte p0, v0, v3

    long-to-int p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getTime()Ljava/util/Date;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->data:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->data:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;->data:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method
