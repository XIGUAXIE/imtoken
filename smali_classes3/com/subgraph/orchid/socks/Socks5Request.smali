.class public Lcom/subgraph/orchid/socks/Socks5Request;
.super Lcom/subgraph/orchid/socks/SocksRequest;
.source "Socks5Request.java"


# static fields
.field static final SOCKS5_ADDRESS_HOSTNAME:I = 0x3

.field static final SOCKS5_ADDRESS_IPV4:I = 0x1

.field static final SOCKS5_ADDRESS_IPV6:I = 0x4

.field static final SOCKS5_AUTH_NONE:I = 0x0

.field static final SOCKS5_COMMAND_CONNECT:I = 0x1

.field static final SOCKS5_COMMAND_RESOLV:I = 0xf0

.field static final SOCKS5_COMMAND_RESOLV_PTR:I = 0xf1

.field static final SOCKS5_STATUS_COMMAND_NOT_SUPPORTED:I = 0x7

.field static final SOCKS5_STATUS_CONNECTION_REFUSED:I = 0x5

.field static final SOCKS5_STATUS_FAILURE:I = 0x1

.field static final SOCKS5_STATUS_SUCCESS:I = 0x0

.field static final SOCKS5_VERSION:I = 0x5


# instance fields
.field private addressBytes:[B

.field private addressType:I

.field private command:I

.field private portBytes:[B


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/socks/SocksRequest;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V

    const/4 p1, 0x0

    new-array p2, p1, [B

    .line 24
    iput-object p2, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    new-array p1, p1, [B

    .line 25
    iput-object p1, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    return-void
.end method

.method private addressBytesToHostname()Ljava/lang/String;
    .locals 4

    .line 40
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 44
    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v1, "SOCKS 4 request is not a hostname request"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processAuthentication()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 109
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/socks/Socks5Request;->sendAuthenticationResponse(I)V

    return v4

    :cond_2
    const/16 v0, 0xff

    .line 112
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->sendAuthenticationResponse(I)V

    return v1
.end method

.method private readAddressBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 126
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readIPv6AddressData()[B

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readHostnameData()[B

    move-result-object v0

    return-object v0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readIPv4AddressData()[B

    move-result-object v0

    return-object v0
.end method

.method private readHostnameData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 140
    new-array v1, v1, [B

    int-to-byte v2, v0

    const/4 v3, 0x0

    .line 141
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 142
    invoke-virtual {p0, v1, v2, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->readAll([BII)V

    return-object v1
.end method

.method private sendAuthenticationResponse(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 122
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->socketWrite([B)V

    return-void
.end method

.method private sendResponse(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    array-length v1, v0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 89
    new-array v1, v1, [B

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 90
    aput-byte v3, v1, v4

    int-to-byte p1, p1

    const/4 v3, 0x1

    .line 91
    aput-byte p1, v1, v3

    const/4 p1, 0x2

    .line 92
    aput-byte v4, v1, p1

    .line 93
    iget p1, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput-byte p1, v1, v3

    .line 94
    array-length p1, v0

    invoke-static {v0, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object p1, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    iget-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    array-length v0, v0

    add-int/2addr v0, v2

    array-length v2, p1

    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/socks/Socks5Request;->socketWrite([B)V

    return-void
.end method


# virtual methods
.method public getCommandCode()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->command:I

    return v0
.end method

.method public isConnectRequest()Z
    .locals 2

    .line 32
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->command:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public readRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->processAuthentication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->command:I

    .line 58
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    .line 59
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readByte()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    .line 60
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readAddressBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    .line 61
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->readPortData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    .line 62
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytes:[B

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->setIPv4AddressData([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/Socks5Request;->addressBytesToHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->setHostname(Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/Socks5Request;->portBytes:[B

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->setPortData([B)V

    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0

    .line 55
    :cond_2
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    invoke-direct {v0}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>()V

    throw v0

    .line 52
    :cond_3
    new-instance v0, Lcom/subgraph/orchid/socks/SocksRequestException;

    const-string v1, "Failed to negotiate authentication"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/socks/SocksRequestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendConnectionRefused()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 72
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    return-void
.end method

.method public sendError(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 77
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 79
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    :goto_0
    return-void
.end method

.method public sendSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks5Request;->sendResponse(I)V

    return-void
.end method
