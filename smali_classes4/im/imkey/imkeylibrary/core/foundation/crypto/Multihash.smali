.class public Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;
.super Ljava/lang/Object;
.source "Multihash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;
    }
.end annotation


# static fields
.field private static final hexArray:[C


# instance fields
.field private final hash:[B

.field public final type:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;[B)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    array-length v0, p2

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    .line 49
    array-length v0, p2

    iget v1, p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->length:I

    if-ne v0, v1, :cond_0

    .line 51
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->type:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 52
    iput-object p2, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hash:[B

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect hash length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported hash size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;)V
    .locals 1

    .line 56
    iget-object v0, p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->type:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    iget-object p1, p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hash:[B

    invoke-direct {p0, v0, p1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;-><init>(Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;[B)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 3

    const/4 v0, 0x0

    .line 60
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->lookup(I)Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;-><init>(Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;[B)V

    return-void
.end method

.method public static deserialize(Ljava/io/DataInput;)Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 77
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 78
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->lookup(I)Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    move-result-object v0

    .line 79
    new-array v1, v1, [B

    .line 80
    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 81
    new-instance p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;

    invoke-direct {p0, v0, v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;-><init>(Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;[B)V

    return-object p0
.end method

.method public static fromBase58(Ljava/lang/String;)Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;
    .locals 1

    .line 128
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;

    invoke-static {p0}, Lorg/bitcoinj/core/Base58;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;-><init>([B)V

    return-object v0
.end method

.method public static fromHex(Ljava/lang/String;)Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;
    .locals 4

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x2

    .line 123
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    goto :goto_0

    .line 124
    :cond_0
    new-instance p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;-><init>([B)V

    return-object p0

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Uneven number of hex digits!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private toBytes()[B
    .locals 6

    .line 64
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hash:[B

    array-length v0, v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 65
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->type:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    iget v2, v2, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->index:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 66
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hash:[B

    array-length v4, v2

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    .line 67
    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    instance-of v0, p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->type:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    check-cast p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;

    iget-object v2, p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->type:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hash:[B

    iget-object p1, p1, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 98
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hash:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v1, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->type:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public serialize(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->toBytes()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public toBase58()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHex()Ljava/lang/String;
    .locals 7

    .line 104
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->toBytes()[B

    move-result-object v0

    .line 105
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 106
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 107
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    .line 108
    sget-object v5, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->hexArray:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 109
    aget-char v3, v5, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;->toBase58()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
