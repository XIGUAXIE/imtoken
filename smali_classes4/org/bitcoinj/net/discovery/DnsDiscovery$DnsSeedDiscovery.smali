.class public Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;
.super Ljava/lang/Object;
.source "DnsDiscovery.java"

# interfaces
.implements Lorg/bitcoinj/net/discovery/PeerDiscovery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/net/discovery/DnsDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsSeedDiscovery"
.end annotation


# instance fields
.field private final hostname:Ljava/lang/String;

.field private final params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;->hostname:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method


# virtual methods
.method public getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    .line 91
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;->hostname:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 92
    array-length p2, p1

    new-array p2, p2, [Ljava/net/InetSocketAddress;

    const/4 p3, 0x0

    .line 93
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_0

    .line 94
    new-instance p4, Ljava/net/InetSocketAddress;

    aget-object p5, p1, p3

    iget-object v0, p0, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v0

    invoke-direct {p4, p5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    aput-object p4, p2, p3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 89
    :cond_1
    new-instance p3, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "DNS seeds cannot filter by services: "

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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;->hostname:Ljava/lang/String;

    return-object v0
.end method
