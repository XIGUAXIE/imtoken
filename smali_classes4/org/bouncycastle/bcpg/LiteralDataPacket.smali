.class public Lorg/bouncycastle/bcpg/LiteralDataPacket;
.super Lorg/bouncycastle/bcpg/InputStreamPacket;


# instance fields
.field fileName:[B

.field format:I

.field modDate:J


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/InputStreamPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->format:I

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->modDate:J

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->format:I

    return v0
.end method

.method public getModificationTime()J
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->modDate:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getRawFileName()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/LiteralDataPacket;->fileName:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
