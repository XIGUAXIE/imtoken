.class public Lorg/bitcoinj/core/VarInt;
.super Ljava/lang/Object;
.source "VarInt.java"


# instance fields
.field private final originallyEncodedSize:I

.field public final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/bitcoinj/core/VarInt;->value:J

    .line 33
    invoke-virtual {p0}, Lorg/bitcoinj/core/VarInt;->getSizeInBytes()I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/core/VarInt;->originallyEncodedSize:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfd

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    int-to-long p1, v0

    .line 45
    iput-wide p1, p0, Lorg/bitcoinj/core/VarInt;->value:J

    .line 46
    iput v2, p0, Lorg/bitcoinj/core/VarInt;->originallyEncodedSize:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 48
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/bitcoinj/core/VarInt;->value:J

    const/4 p1, 0x3

    .line 49
    iput p1, p0, Lorg/bitcoinj/core/VarInt;->originallyEncodedSize:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xfe

    if-ne v0, v1, :cond_2

    add-int/2addr p2, v2

    .line 51
    invoke-static {p1, p2}, Lorg/bitcoinj/core/Utils;->readUint32([BI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bitcoinj/core/VarInt;->value:J

    const/4 p1, 0x5

    .line 52
    iput p1, p0, Lorg/bitcoinj/core/VarInt;->originallyEncodedSize:I

    goto :goto_0

    :cond_2
    add-int/2addr p2, v2

    .line 54
    invoke-static {p1, p2}, Lorg/bitcoinj/core/Utils;->readInt64([BI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bitcoinj/core/VarInt;->value:J

    const/16 p1, 0x9

    .line 55
    iput p1, p0, Lorg/bitcoinj/core/VarInt;->originallyEncodedSize:I

    :goto_0
    return-void
.end method

.method public static sizeOf(J)I
    .locals 4

    const/16 v0, 0x9

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0xfd

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/32 v1, 0xffff

    cmp-long v3, p0, v1

    if-gtz v3, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide v1, 0xffffffffL

    cmp-long v3, p0, v1

    if-gtz v3, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public encode()[B
    .locals 5

    .line 95
    iget-wide v0, p0, Lorg/bitcoinj/core/VarInt;->value:J

    invoke-static {v0, v1}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 108
    iget-wide v3, p0, Lorg/bitcoinj/core/VarInt;->value:J

    invoke-static {v3, v4, v0, v2}, Lorg/bitcoinj/core/Utils;->uint64ToByteArrayLE(J[BI)V

    return-object v0

    :cond_0
    new-array v0, v3, [B

    const/4 v3, -0x2

    aput-byte v3, v0, v1

    .line 103
    iget-wide v3, p0, Lorg/bitcoinj/core/VarInt;->value:J

    invoke-static {v3, v4, v0, v2}, Lorg/bitcoinj/core/Utils;->uint32ToByteArrayLE(J[BI)V

    return-object v0

    :cond_1
    new-array v0, v3, [B

    const/4 v3, -0x3

    aput-byte v3, v0, v1

    .line 99
    iget-wide v3, p0, Lorg/bitcoinj/core/VarInt;->value:J

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, v3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    return-object v0

    :cond_2
    new-array v0, v2, [B

    .line 97
    iget-wide v2, p0, Lorg/bitcoinj/core/VarInt;->value:J

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getOriginalSizeInBytes()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/bitcoinj/core/VarInt;->originallyEncodedSize:I

    return v0
.end method

.method public final getSizeInBytes()I
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/bitcoinj/core/VarInt;->value:J

    invoke-static {v0, v1}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v0

    return v0
.end method
