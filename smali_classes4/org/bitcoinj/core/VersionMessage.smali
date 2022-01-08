.class public Lorg/bitcoinj/core/VersionMessage;
.super Lorg/bitcoinj/core/Message;
.source "VersionMessage.java"


# static fields
.field public static final BITCOINJ_VERSION:Ljava/lang/String; = "0.14.7"

.field public static final LIBRARY_SUBVER:Ljava/lang/String; = "/bitcoinj:0.14.7/"

.field public static final NODE_BITCOIN_CASH:I = 0x20

.field public static final NODE_GETUTXOS:I = 0x2

.field public static final NODE_NETWORK:I = 0x1


# instance fields
.field public bestHeight:J

.field public clientVersion:I

.field public localServices:J

.field public myAddr:Lorg/bitcoinj/core/PeerAddress;

.field public relayTxesBeforeFilter:Z

.field public subVer:Ljava/lang/String;

.field public theirAddr:Lorg/bitcoinj/core/PeerAddress;

.field public time:J


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;I)V
    .locals 6

    .line 96
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 97
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, 0x7f

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 106
    new-instance v3, Lorg/bitcoinj/core/PeerAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Lorg/bitcoinj/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    iput-object v3, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    .line 107
    new-instance v3, Lorg/bitcoinj/core/PeerAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result p1

    invoke-direct {v3, v0, p1, v2}, Lorg/bitcoinj/core/PeerAddress;-><init>(Ljava/net/InetAddress;II)V

    iput-object v3, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "/bitcoinj:0.14.7/"

    .line 111
    iput-object p1, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    int-to-long p1, p2

    .line 112
    iput-wide p1, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    .line 113
    iput-boolean v1, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    const/16 p1, 0x55

    .line 115
    iput p1, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    .line 116
    iget p1, p0, Lorg/bitcoinj/core/VersionMessage;->protocolVersion:I

    const/16 p2, 0x7aaa

    if-le p1, p2, :cond_0

    .line 117
    iget p1, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    .line 118
    :cond_0
    iget p1, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    iget-object p2, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result p2

    iget-object v0, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method

.method private static checkSubVerComponent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/"

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "name contains invalid characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appendToSubVer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    invoke-static {p1}, Lorg/bitcoinj/core/VersionMessage;->checkSubVerComponent(Ljava/lang/String;)V

    .line 264
    invoke-static {p2}, Lorg/bitcoinj/core/VersionMessage;->checkSubVerComponent(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 266
    invoke-static {p3}, Lorg/bitcoinj/core/VersionMessage;->checkSubVerComponent(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    aput-object p3, v5, v2

    const-string p1, "%s:%s(%s)/"

    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_0
    iget-object p3, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    const-string p1, "%s:%s/"

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 158
    iget-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 159
    iget-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 160
    iget-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 161
    iget-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    shr-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/PeerAddress;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 166
    iget-object v0, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/PeerAddress;->bitcoinSerialize(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    .line 175
    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 176
    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 178
    iget-object v0, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 179
    new-instance v1, Lorg/bitcoinj/core/VarInt;

    array-length v2, v0

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v1}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 180
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 182
    iget-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 183
    iget-boolean v0, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :catch_0
    move-exception p1

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public duplicate()Lorg/bitcoinj/core/VersionMessage;
    .locals 4

    .line 231
    new-instance v0, Lorg/bitcoinj/core/VersionMessage;

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-wide v2, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    long-to-int v3, v2

    invoke-direct {v0, v1, v3}, Lorg/bitcoinj/core/VersionMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;I)V

    .line 232
    iget v1, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    iput v1, v0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    .line 233
    iget-wide v1, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    iput-wide v1, v0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    .line 234
    iget-wide v1, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    iput-wide v1, v0, Lorg/bitcoinj/core/VersionMessage;->time:J

    .line 235
    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    iput-object v1, v0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    .line 236
    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    iput-object v1, v0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    .line 237
    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    iput-object v1, v0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 238
    iget-boolean v1, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    iput-boolean v1, v0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/VersionMessage;

    .line 199
    iget-wide v2, p1, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    iget-wide v4, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p1, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    iget v3, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p1, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    iget-wide v4, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p1, Lorg/bitcoinj/core/VersionMessage;->time:J

    iget-wide v4, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p1, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    iget-object v3, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    iget-object v3, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    .line 204
    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/PeerAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    iget-object v3, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    .line 205
    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/PeerAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p1, p1, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    iget-boolean v2, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hasBlockChain()Z
    .locals 5

    .line 191
    iget-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 211
    iget-wide v1, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 211
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBloomFilteringSupported()Z
    .locals 3

    .line 290
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v2, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->BLOOM_FILTER:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGetUTXOsSupported()Z
    .locals 5

    .line 295
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    const v1, 0x11172

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPingPongSupported()Z
    .locals 3

    .line 282
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v2, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->PONG:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->readUint32()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    .line 124
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    .line 125
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    .line 126
    new-instance v0, Lorg/bitcoinj/core/PeerAddress;

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, p0, Lorg/bitcoinj/core/VersionMessage;->payload:[B

    iget v3, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BII)V

    iput-object v0, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    .line 127
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerAddress;->getMessageSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    .line 128
    new-instance v0, Lorg/bitcoinj/core/PeerAddress;

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, p0, Lorg/bitcoinj/core/VersionMessage;->payload:[B

    iget v3, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BII)V

    iput-object v0, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    .line 129
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    iget-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerAddress;->getMessageSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    .line 133
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->readUint64()Ljava/math/BigInteger;

    :try_start_0
    const-string v0, ""

    .line 136
    iput-object v0, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 137
    iput-wide v0, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    .line 139
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->hasMoreBytes()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 151
    :goto_0
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/VersionMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    return-void

    .line 142
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->readStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->hasMoreBytes()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->readUint32()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    .line 147
    invoke-virtual {p0}, Lorg/bitcoinj/core/VersionMessage;->hasMoreBytes()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/VersionMessage;->readBytes(I)[B

    move-result-object v1

    aget-byte v1, v1, v4

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    iget v0, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/VersionMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    return-void

    :catchall_0
    move-exception v0

    iget v1, p0, Lorg/bitcoinj/core/VersionMessage;->cursor:I

    iget v2, p0, Lorg/bitcoinj/core/VersionMessage;->offset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/bitcoinj/core/VersionMessage;->length:I

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "client version: "

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "local services: "

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time:           "

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/VersionMessage;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "my addr:        "

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/core/VersionMessage;->myAddr:Lorg/bitcoinj/core/PeerAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "their addr:     "

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/core/VersionMessage;->theirAddr:Lorg/bitcoinj/core/PeerAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sub version:    "

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "best height:    "

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay tx relay: "

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
