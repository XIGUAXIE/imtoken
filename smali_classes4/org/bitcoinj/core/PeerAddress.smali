.class public Lorg/bitcoinj/core/PeerAddress;
.super Lorg/bitcoinj/core/ChildMessage;
.source "PeerAddress.java"


# static fields
.field static final MESSAGE_SIZE:I = 0x1e


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private hostname:Ljava/lang/String;

.field private port:I

.field private services:Ljava/math/BigInteger;

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/bitcoinj/core/ChildMessage;-><init>()V

    .line 136
    iput-object p1, p0, Lorg/bitcoinj/core/PeerAddress;->hostname:Ljava/lang/String;

    .line 137
    iput p2, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    .line 138
    sget-object p1, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->getBitcoinProtocolVersion()I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/core/PeerAddress;->protocolVersion:I

    .line 139
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1

    .line 102
    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/params/MainNetParams;->getPort()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/core/PeerAddress;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    .line 87
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->getBitcoinProtocolVersion()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/bitcoinj/core/ChildMessage;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    iput-object p1, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    .line 76
    iput p2, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    .line 77
    iput p3, p0, Lorg/bitcoinj/core/PeerAddress;->protocolVersion:I

    .line 78
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    const/16 p1, 0x7aaa

    if-le p3, p1, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    const/16 p1, 0x1a

    .line 79
    :goto_0
    iput p1, p0, Lorg/bitcoinj/core/PeerAddress;->length:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    sget-object v1, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->getBitcoinProtocolVersion()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lorg/bitcoinj/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 147
    iput-object p2, p0, Lorg/bitcoinj/core/PeerAddress;->hostname:Ljava/lang/String;

    .line 148
    iput p3, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    .line 149
    sget-object p2, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/core/PeerAddress;->protocolVersion:I

    .line 150
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;)V
    .locals 1

    .line 110
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;I)V
    .locals 1

    .line 94
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lorg/bitcoinj/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetSocketAddress;)V
    .locals 1

    .line 128
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BII)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/high16 v7, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 68
    invoke-direct/range {v0 .. v7}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method public static localhost(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/PeerAddress;
    .locals 3

    .line 154
    new-instance v0, Lorg/bitcoinj/core/PeerAddress;

    const-string v1, "127.0.0.1"

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;I)V

    return-object v0
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget v0, p0, Lorg/bitcoinj/core/PeerAddress;->protocolVersion:I

    const/16 v1, 0x7aaa

    if-lt v0, v1, :cond_0

    .line 163
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    .line 164
    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 168
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 169
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 171
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xa

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    const/16 v0, 0xb

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 176
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 178
    iget v0, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 179
    iget v0, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/PeerAddress;

    .line 262
    iget-object v2, p1, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    iget-object v3, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lorg/bitcoinj/core/PeerAddress;->port:I

    iget v3, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p1, Lorg/bitcoinj/core/PeerAddress;->time:J

    iget-wide v4, p0, Lorg/bitcoinj/core/PeerAddress;->time:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object p1, p1, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAddr()Ljava/net/InetAddress;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    return v0
.end method

.method public getServices()Ljava/math/BigInteger;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 214
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 241
    iget-wide v0, p0, Lorg/bitcoinj/core/PeerAddress;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/bitcoinj/core/PeerAddress;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 189
    iget v0, p0, Lorg/bitcoinj/core/PeerAddress;->protocolVersion:I

    const/16 v1, 0x7aaa

    if-le v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->readUint32()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/core/PeerAddress;->time:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    .line 192
    iput-wide v2, p0, Lorg/bitcoinj/core/PeerAddress;->time:J

    .line 193
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->readUint64()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    const/16 v0, 0x10

    .line 194
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/PeerAddress;->readBytes(I)[B

    move-result-object v0

    .line 196
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->payload:[B

    iget v2, p0, Lorg/bitcoinj/core/PeerAddress;->cursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bitcoinj/core/PeerAddress;->cursor:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lorg/bitcoinj/core/PeerAddress;->payload:[B

    iget v3, p0, Lorg/bitcoinj/core/PeerAddress;->cursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bitcoinj/core/PeerAddress;->cursor:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    .line 202
    iget v0, p0, Lorg/bitcoinj/core/PeerAddress;->protocolVersion:I

    if-le v0, v1, :cond_1

    const/16 v0, 0x1e

    goto :goto_1

    :cond_1
    const/16 v0, 0x1a

    :goto_1
    iput v0, p0, Lorg/bitcoinj/core/PeerAddress;->length:I

    return-void

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAddr(Ljava/net/InetAddress;)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->unCache()V

    .line 219
    iput-object p1, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 227
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->unCache()V

    .line 228
    iput p1, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    return-void
.end method

.method public setServices(Ljava/math/BigInteger;)V
    .locals 0

    .line 236
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->unCache()V

    .line 237
    iput-object p1, p0, Lorg/bitcoinj/core/PeerAddress;->services:Ljava/math/BigInteger;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 245
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerAddress;->unCache()V

    .line 246
    iput-wide p1, p0, Lorg/bitcoinj/core/PeerAddress;->time:J

    return-void
.end method

.method public toSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 274
    iget v1, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    iget v2, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 251
    iget-object v0, p0, Lorg/bitcoinj/core/PeerAddress;->hostname:Ljava/lang/String;

    const-string v1, "]:"

    const-string v2, "["

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bitcoinj/core/PeerAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
