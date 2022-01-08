.class public Lorg/bitcoinj/net/discovery/TorDiscovery;
.super Ljava/lang/Object;
.source "TorDiscovery.java"

# interfaces
.implements Lorg/bitcoinj/net/discovery/PeerDiscovery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/net/discovery/TorDiscovery$Lookup;
    }
.end annotation


# static fields
.field public static final MINIMUM_ROUTER_COUNT:I = 0x4

.field public static final MINIMUM_ROUTER_LOOKUP_COUNT:I = 0x6

.field public static final RECEIVE_RETRIES:I = 0x3

.field public static final RESOLVE_CNAME:I = 0x0

.field public static final RESOLVE_ERROR:I = 0xf0

.field public static final RESOLVE_IPV4:I = 0x4

.field public static final RESOLVE_IPV6:I = 0x6

.field public static final RESOLVE_STREAM_ID:I = 0x1000

.field public static final ROUTER_LOOKUP_COUNT:I = 0xa

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final hostNames:[Ljava/lang/String;

.field private final netParams:Lorg/bitcoinj/core/NetworkParameters;

.field private final pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

.field private threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final torClient:Lcom/subgraph/orchid/TorClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/bitcoinj/net/discovery/TorDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/discovery/TorDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDnsSeeds()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/bitcoinj/net/discovery/TorDiscovery;-><init>([Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->netParams:Lorg/bitcoinj/core/NetworkParameters;

    .line 85
    iput-object p3, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 86
    invoke-virtual {p3}, Lcom/subgraph/orchid/TorClient;->getConfig()Lcom/subgraph/orchid/TorConfig;

    move-result-object p1

    invoke-virtual {p3}, Lcom/subgraph/orchid/TorClient;->getDirectory()Lcom/subgraph/orchid/Directory;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->create(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/net/discovery/TorDiscovery;)Lcom/subgraph/orchid/TorClient;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->torClient:Lcom/subgraph/orchid/TorClient;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bitcoinj/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/net/discovery/TorDiscovery;->lookup(Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized createThreadPool(I)V
    .locals 2

    monitor-enter p0

    .line 239
    :try_start_0
    new-instance v0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    const-string v1, "Tor DNS discovery"

    invoke-direct {v0, v1}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 239
    invoke-static {p1}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getCircuits(JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 136
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 137
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Set of {} routers is smaller than required minimum {}"

    .line 136
    invoke-static {v0, v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->createThreadPool(I)V

    .line 141
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 143
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/Router;

    .line 144
    iget-object v4, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v5, Lorg/bitcoinj/net/discovery/TorDiscovery$1;

    invoke-direct {v5, p0, v3}, Lorg/bitcoinj/net/discovery/TorDiscovery$1;-><init>(Lorg/bitcoinj/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Router;)V

    invoke-interface {v4, v5}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 150
    new-instance v4, Lorg/bitcoinj/net/discovery/TorDiscovery$2;

    invoke-direct {v4, p0, v1}, Lorg/bitcoinj/net/discovery/TorDiscovery$2;-><init>(Lorg/bitcoinj/net/discovery/TorDiscovery;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p3, 0x0

    .line 168
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 169
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p3, p4

    if-lez p3, :cond_3

    .line 170
    sget-object p4, Lorg/bitcoinj/net/discovery/TorDiscovery;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{} failures "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    const-string p1, "(including timeout) "

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "opening DNS lookup circuits"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 170
    invoke-interface {p4, p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_3
    invoke-direct {p0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->shutdownThreadPool()V

    return-object p2

    :catch_0
    move-exception p1

    .line 175
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 178
    invoke-direct {p0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->shutdownThreadPool()V

    throw p1
.end method

.method private lookup(Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x1000

    invoke-interface {p1, v1, v2, v0}, Lcom/subgraph/orchid/Circuit;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 246
    invoke-interface {v0, p2}, Lcom/subgraph/orchid/RelayCell;->putString(Ljava/lang/String;)V

    .line 247
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Circuit;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 251
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 253
    :cond_0
    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result p1

    if-lez p1, :cond_4

    .line 254
    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result p1

    .line 255
    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result v0

    .line 256
    new-array v0, v0, [B

    .line 257
    invoke-interface {v1, v0}, Lcom/subgraph/orchid/RelayCell;->getByteArray([B)V

    .line 258
    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->getInt()I

    if-eqz p1, :cond_2

    const/16 v2, 0xf0

    if-ge p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 264
    :cond_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 262
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not look up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private lookupAddresses(JLjava/util/concurrent/TimeUnit;Ljava/util/List;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 183
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    array-length v1, v1

    mul-int v0, v0, v1

    invoke-direct {p0, v0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->createThreadPool(I)V

    .line 186
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 187
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Circuit;

    .line 188
    iget-object v3, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 189
    iget-object v6, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v7, Lorg/bitcoinj/net/discovery/TorDiscovery$3;

    invoke-direct {v7, p0, v1, v5}, Lorg/bitcoinj/net/discovery/TorDiscovery$3;-><init>(Lorg/bitcoinj/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    iget-object p4, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/common/util/concurrent/ListeningExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 201
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result p3

    if-nez p3, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 p3, 0x1

    .line 203
    invoke-interface {p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    .line 207
    sget-object p1, Lorg/bitcoinj/net/discovery/TorDiscovery;->log:Lorg/slf4j/Logger;

    const-string p2, "{} DNS lookups timed out"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_4
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 212
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 216
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p2

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/net/discovery/TorDiscovery$Lookup;

    .line 219
    new-instance p4, Ljava/net/InetSocketAddress;

    iget-object v0, p3, Lorg/bitcoinj/net/discovery/TorDiscovery$Lookup;->address:Ljava/net/InetAddress;

    iget-object v1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->netParams:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v1

    invoke-direct {p4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 220
    iget-object p3, p3, Lorg/bitcoinj/net/discovery/TorDiscovery$Lookup;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {p3}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p3

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 223
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-direct {p0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->shutdownThreadPool()V

    return-object p1

    :catch_0
    move-exception p1

    .line 226
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 229
    invoke-direct {p0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->shutdownThreadPool()V

    throw p1
.end method

.method private declared-synchronized shutdownThreadPool()V
    .locals 1

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->hostNames:[Ljava/lang/String;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    .line 106
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 110
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseExitNodeForTargets(Ljava/util/List;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 112
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    :try_start_0
    iget-object p2, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 117
    invoke-virtual {p2}, Lcom/subgraph/orchid/TorClient;->getConfig()Lcom/subgraph/orchid/TorConfig;

    move-result-object p2

    invoke-interface {p2}, Lcom/subgraph/orchid/TorConfig;->getCircuitBuildTimeout()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/bitcoinj/net/discovery/TorDiscovery;->getCircuits(JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 122
    invoke-direct {p0, p3, p4, p5, p1}, Lorg/bitcoinj/net/discovery/TorDiscovery;->lookupAddresses(JLjava/util/concurrent/TimeUnit;Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 p3, 0x4

    if-lt p2, p3, :cond_1

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 127
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-static {p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 129
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/net/InetSocketAddress;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/net/InetSocketAddress;

    return-object p1

    .line 125
    :cond_1
    new-instance p2, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find enough peers via Tor - got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 119
    :cond_2
    new-instance p1, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to open any circuit within "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 131
    new-instance p2, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 104
    :cond_3
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

    .line 102
    :cond_4
    new-instance p1, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    const-string p2, "Unable to find any peers via DNS"

    invoke-direct {p1, p2}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/TorDiscovery;->threadPool:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->shutdownThreadPool()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
