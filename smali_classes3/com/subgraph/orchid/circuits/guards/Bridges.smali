.class public Lcom/subgraph/orchid/circuits/guards/Bridges;
.super Ljava/lang/Object;
.source "Bridges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final bridgeRouters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bridgesInitialized:Z

.field private bridgesInitializing:Z

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

.field private final lock:Ljava/lang/Object;

.field private outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryDownloader;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->config:Lcom/subgraph/orchid/TorConfig;

    .line 83
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

    .line 84
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    .line 85
    new-instance p1, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {p1}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 86
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    .line 87
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 20
    sget-object v0, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/circuits/guards/Bridges;)Lcom/subgraph/orchid/DirectoryDownloader;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/Set;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$502(Lcom/subgraph/orchid/circuits/guards/Bridges;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    return p1
.end method

.method private createBridgeFromLine(Lcom/subgraph/orchid/config/TorConfigBridgeLine;)Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;
    .locals 3

    .line 157
    new-instance v0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;-><init>(Lcom/subgraph/orchid/data/IPv4Address;I)V

    .line 158
    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    :cond_0
    return-object v0
.end method

.method private createDownloadTasks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getBridges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/config/TorConfigBridgeLine;

    .line 142
    new-instance v3, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/guards/Bridges;->createBridgeFromLine(Lcom/subgraph/orchid/config/TorConfigBridgeLine;)Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;-><init>(Lcom/subgraph/orchid/circuits/guards/Bridges;Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCandidates(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/BridgeRouter;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgeRouters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/BridgeRouter;

    .line 118
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private hasCandidates(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)Z"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->getCandidates(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private initializeBridges()V
    .locals 3

    .line 126
    sget-object v0, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    const-string v1, "Initializing bridges..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitializing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->directoryDownloader:Lcom/subgraph/orchid/DirectoryDownloader;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitializing:Z

    .line 135
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->startAllDownloadTasks()V

    .line 136
    monitor-exit v0

    return-void

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot download bridge descriptors because DirectoryDownload instance not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startAllDownloadTasks()V
    .locals 3

    .line 148
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->createDownloadTasks()Ljava/util/List;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->outstandingDownloadTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 151
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method chooseRandomBridge(Ljava/util/Set;)Lcom/subgraph/orchid/BridgeRouter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/BridgeRouter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitializing:Z

    if-nez v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->initializeBridges()V

    .line 96
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->bridgesInitialized:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->hasCandidates(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->getCandidates(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    sget-object p1, Lcom/subgraph/orchid/circuits/guards/Bridges;->logger:Ljava/util/logging/Logger;

    const-string v1, "Bridges enabled but no usable bridges configured"

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 102
    monitor-exit v0

    return-object p1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/BridgeRouter;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
