.class public abstract Lcom/subgraph/orchid/socks/SocksRequest;
.super Ljava/lang/Object;
.source "SocksRequest.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private addressData:[B

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private hostname:Ljava/lang/String;

.field private lastWarningTimestamp:J

.field private port:I

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/subgraph/orchid/socks/SocksRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/socks/SocksRequest;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->lastWarningTimestamp:J

    .line 24
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    .line 25
    iput-object p2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    return-void
.end method

.method private logUnsafeSOCKS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getWarnUnsafeSocks()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeSocks()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksRequest;->testRateLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/subgraph/orchid/socks/SocksRequest;->logger:Ljava/util/logging/Logger;

    const-string v1, "Your application is giving Orchid only an IP address.  Applications that do DNS resolves themselves may leak information. Consider using Socks4a (e.g. via privoxy or socat) instead.  For more information please see https://wiki.torproject.org/TheOnionRouter/TorFAQ#SOCKSAndDNS"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeSocks()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 100
    :cond_2
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    const-string v1, "Rejecting unsafe SOCKS request"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private testRateLimit()Z
    .locals 5

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-wide v2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->lastWarningTimestamp:J

    sub-long v2, v0, v2

    .line 86
    iput-wide v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->lastWarningTimestamp:J

    const-wide/16 v0, 0x1388

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public abstract getCommandCode()I
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scrubbed]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    const-string v1, ":"

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHostname()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isConnectRequest()Z
.end method

.method protected readAll([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 155
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([BII)V

    return-void
.end method

.method protected readAll([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {p1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 168
    new-instance p2, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    return-void
.end method

.method protected readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 147
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readIPv4AddressData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 116
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([B)V

    return-object v0
.end method

.method protected readIPv6AddressData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 122
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([B)V

    return-object v0
.end method

.method protected readNullTerminatedString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 128
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    int-to-char v1, v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readPortData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0, v1, v2, v0}, Lcom/subgraph/orchid/socks/SocksRequest;->readAll([BII)V

    return-object v1
.end method

.method public abstract readRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method abstract sendConnectionRefused()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method abstract sendError(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method abstract sendSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation
.end method

.method protected setHostname(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->hostname:Ljava/lang/String;

    return-void
.end method

.method protected setIPv4AddressData([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksRequest;->logUnsafeSOCKS()V

    .line 71
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 73
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->addressData:[B

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/data/IPv4Address;

    invoke-direct {p1, v2}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-void

    .line 72
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {p1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw p1
.end method

.method protected setPortData([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 63
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 65
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/subgraph/orchid/socks/SocksRequest;->port:I

    return-void

    .line 64
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {p1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw p1
.end method

.method protected socketWrite([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 176
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
