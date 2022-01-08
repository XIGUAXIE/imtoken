.class public Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;
.super Ljava/lang/Object;
.source "MultiplexingDiscovery.java"

# interfaces
.implements Lorg/bitcoinj/net/discovery/PeerDiscovery;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final netParams:Lorg/bitcoinj/core/NetworkParameters;

.field protected final seeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/net/discovery/PeerDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field private volatile vThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/net/discovery/PeerDiscovery;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->netParams:Lorg/bitcoinj/core/NetworkParameters;

    .line 81
    iput-object p2, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->seeds:Ljava/util/List;

    return-void
.end method

.method public static forServices(Lorg/bitcoinj/core/NetworkParameters;J)Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;
    .locals 8

    .line 58
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getHttpSeeds()[Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    new-instance v3, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v3}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 62
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 63
    new-instance v7, Lorg/bitcoinj/net/discovery/HttpDiscovery;

    invoke-direct {v7, p0, v6, v3}, Lorg/bitcoinj/net/discovery/HttpDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-nez v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getDnsSeeds()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_1

    aget-object v1, p1, v2

    .line 70
    new-instance v3, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;

    invoke-direct {v3, p0, v1}, Lorg/bitcoinj/net/discovery/DnsDiscovery$DnsSeedDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;

    invoke-direct {p1, p0, v0}, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method protected createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->seeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    const-string v2, "Multiplexing discovery"

    invoke-direct {v1, v2}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    move-object v9, p0

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    .line 86
    invoke-virtual {p0}, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->vThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 88
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    iget-object v1, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->seeds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/bitcoinj/net/discovery/PeerDiscovery;

    .line 90
    new-instance v14, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;

    move-object v1, v14

    move-object v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;-><init>(Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;Lorg/bitcoinj/net/discovery/PeerDiscovery;JJLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->vThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0, v10, v11, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 99
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 100
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 101
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    sget-object v0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->log:Lorg/slf4j/Logger;

    const-string v4, "Seed {}: timed out"

    iget-object v5, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->seeds:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 107
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetSocketAddress;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    .line 109
    sget-object v4, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->log:Lorg/slf4j/Logger;

    const-string v5, "Seed {}: failed to look up: {}"

    iget-object v6, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->seeds:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v6, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 118
    iget-object v0, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->vThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 119
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetSocketAddress;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    iget-object v1, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->vThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object v0

    .line 115
    :cond_3
    :try_start_3
    new-instance v0, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No peer discovery returned any results in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms. Check internet connection?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 121
    :try_start_4
    new-instance v1, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :goto_3
    iget-object v1, v9, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->vThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->vThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
