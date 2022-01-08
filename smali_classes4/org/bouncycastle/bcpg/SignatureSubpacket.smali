.class public Lorg/bouncycastle/bcpg/SignatureSubpacket;
.super Ljava/lang/Object;


# instance fields
.field critical:Z

.field protected data:[B

.field type:I


# direct methods
.method protected constructor <init>(IZ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->type:I

    iput-boolean p2, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->critical:Z

    iput-object p3, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->data:[B

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_0
    const/16 v2, 0x20bf

    const/16 v3, 0xff

    if-gt v0, v2, :cond_1

    add-int/lit16 v0, v0, -0xc0

    shr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-byte v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :goto_2
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->critical:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->type:I

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_2
    iget v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->type:I

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->data:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->type:I

    return v0
.end method

.method public isCritical()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacket;->critical:Z

    return v0
.end method
