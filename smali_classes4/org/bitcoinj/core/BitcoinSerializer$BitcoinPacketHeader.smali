.class public Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;
.super Ljava/lang/Object;
.source "BitcoinSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/BitcoinSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitcoinPacketHeader"
.end annotation


# static fields
.field public static final HEADER_LENGTH:I = 0x14


# instance fields
.field public final checksum:[B

.field public final command:Ljava/lang/String;

.field public final header:[B

.field public final size:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 354
    iput-object v0, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    .line 355
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 361
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    aget-byte v0, v0, p1

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    if-ge p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    new-array v0, p1, [B

    .line 363
    iget-object v3, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    invoke-static {v3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p1, "US-ASCII"

    .line 364
    invoke-static {v0, p1}, Lorg/bitcoinj/core/Utils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->command:Ljava/lang/String;

    .line 367
    iget-object p1, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    invoke-static {p1, v1}, Lorg/bitcoinj/core/Utils;->readUint32([BI)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    const/16 v0, 0x10

    const/high16 v1, 0x2000000

    if-gt p1, v1, :cond_1

    if-ltz p1, :cond_1

    const/4 p1, 0x4

    new-array v1, p1, [B

    .line 374
    iput-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    .line 376
    iget-object v3, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->header:[B

    invoke-static {v3, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 371
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message size too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
