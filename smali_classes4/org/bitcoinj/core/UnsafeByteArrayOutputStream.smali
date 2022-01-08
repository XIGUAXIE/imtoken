.class public Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "UnsafeByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 36
    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .line 118
    iget v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    iget v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->copyOf([BI)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public write(I)V
    .locals 3

    .line 50
    iget v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 51
    iget-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    iget-object v2, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Utils;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    iget v2, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 55
    iput v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    return-void
.end method

.method public write([BII)V
    .locals 3

    if-ltz p2, :cond_2

    .line 68
    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    if-nez p3, :cond_0

    return-void

    .line 74
    :cond_0
    iget v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    .line 75
    iget-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    iget-object v2, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Utils;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    .line 78
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    iget v2, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    return-void

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->buf:[B

    iget v1, p0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
