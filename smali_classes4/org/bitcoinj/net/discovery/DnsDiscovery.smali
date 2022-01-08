.class public Lorg/bitcoinj/net/discovery/DnsDiscovery;
.super Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;
.source "DnsDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDnsSeeds()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/net/discovery/DnsDiscovery;-><init>([Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 55
    invoke-static {p2, p1}, Lorg/bitcoinj/net/discovery/DnsDiscovery;->buildDiscoveries(Lorg/bitcoinj/core/NetworkParameters;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)V

    return-void
.end method

.method private static buildDiscoveries(Lorg/bitcoinj/core/NetworkParameters;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/net/discovery/PeerDiscovery;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 61
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 62
    new-instance v4, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;

    invoke-direct {v4, p0, v3}, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    const-string v0, "os.name"

    .line 70
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DNS seed lookups"

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    invoke-direct {v0, v1}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/DnsDiscovery;->seeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Lorg/bitcoinj/utils/DaemonThreadFactory;

    invoke-direct {v2, v1}, Lorg/bitcoinj/utils/DaemonThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
