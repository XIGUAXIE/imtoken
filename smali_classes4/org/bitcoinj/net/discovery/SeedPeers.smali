.class public Lorg/bitcoinj/net/discovery/SeedPeers;
.super Ljava/lang/Object;
.source "SeedPeers.java"

# interfaces
.implements Lorg/bitcoinj/net/discovery/PeerDiscovery;


# instance fields
.field private params:Lorg/bitcoinj/core/NetworkParameters;

.field private pnseedIndex:I

.field private seedAddrs:[I


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getAddrSeeds()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/net/discovery/SeedPeers;-><init>([ILorg/bitcoinj/core/NetworkParameters;)V

    return-void
.end method

.method public constructor <init>([ILorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->seedAddrs:[I

    .line 54
    iput-object p2, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method

.method private allPeers()[Ljava/net/InetSocketAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->seedAddrs:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    .line 99
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->seedAddrs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 100
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->seedAddrs:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lorg/bitcoinj/net/discovery/SeedPeers;->convertAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertAddress(I)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 111
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method private nextPeer()Ljava/net/InetSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->seedAddrs:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    .line 78
    iget v1, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->pnseedIndex:I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->seedAddrs:[I

    iget v2, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->pnseedIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->pnseedIndex:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/bitcoinj/net/discovery/SeedPeers;->convertAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/net/discovery/SeedPeers;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 80
    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0

    .line 76
    :cond_1
    new-instance v0, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    const-string v1, "No IP address seeds configured; unable to find any peers"

    invoke-direct {v0, v1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPeer()Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 67
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/net/discovery/SeedPeers;->nextPeer()Ljava/net/InetSocketAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    .line 91
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/net/discovery/SeedPeers;->allPeers()[Ljava/net/InetSocketAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 89
    :cond_0
    new-instance p3, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Pre-determined peers cannot be filtered by services: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
