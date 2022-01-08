.class public Lcom/subgraph/orchid/socks/Socks4Request;
.super Lcom/subgraph/orchid/socks/SocksRequest;
.source "Socks4Request.java"


# static fields
.field static final SOCKS_COMMAND_CONNECT:I = 0x1

.field static final SOCKS_COMMAND_RESOLV:I = 0xf0

.field private static final SOCKS_STATUS_FAILURE:I = 0x5b

.field private static final SOCKS_STATUS_SUCCESS:I = 0x5a


# instance fields
.field private command:I


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/socks/SocksRequest;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;)V

    return-void
.end method

.method private isVersion4aHostname([B)Z
    .locals 3

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 59
    aget-byte v2, p1, v0

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    aget-byte p1, p1, v2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private sendResponse(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 68
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->socketWrite([B)V

    return-void
.end method


# virtual methods
.method public getCommandCode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks4Request;->command:I

    return v0
.end method

.method public isConnectRequest()Z
    .locals 2

    .line 19
    iget v0, p0, Lcom/subgraph/orchid/socks/Socks4Request;->command:I

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

    .line 39
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readByte()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/socks/Socks4Request;->command:I

    .line 40
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readPortData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->setPortData([B)V

    .line 41
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readIPv4AddressData()[B

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readNullTerminatedString()Ljava/lang/String;

    .line 43
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->isVersion4aHostname([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/subgraph/orchid/socks/Socks4Request;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->setHostname(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->setIPv4AddressData([B)V

    :goto_0
    return-void
.end method

.method public sendConnectionRefused()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->sendError(Z)V

    return-void
.end method

.method public sendError(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/16 p1, 0x5b

    .line 31
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/socks/Socks4Request;->sendResponse(I)V

    return-void
.end method

.method public sendSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/socks/SocksRequestException;
        }
    .end annotation

    const/16 v0, 0x5a

    .line 35
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/socks/Socks4Request;->sendResponse(I)V

    return-void
.end method
