.class public Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
.super Ljava/lang/Object;
.source "CircuitManagerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitManager;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;,
        Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;
    }
.end annotation


# static fields
.field private static final OPEN_DIRECTORY_STREAM_RETRY_COUNT:I = 0x5

.field private static final OPEN_DIRECTORY_STREAM_TIMEOUT:I = 0x2710


# instance fields
.field private final activeCircuits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/circuits/CircuitImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

.field private final cleanInternalCircuits:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/subgraph/orchid/InternalCircuit;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final hiddenServiceManager:Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private isBuilding:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

.field private final pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

.field private pendingInternalCircuitCount:I

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private requestedInternalCircuitCount:I

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 8

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    .line 60
    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    const-string v1, "CircuitManager worker"

    .line 63
    invoke-static {v1}, Lcom/subgraph/orchid/Threading;->newSingleThreadScheduledPool(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v1, "circuitManager"

    .line 68
    invoke-static {v1}, Lcom/subgraph/orchid/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isBuilding:Z

    .line 73
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 74
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->directory:Lcom/subgraph/orchid/Directory;

    .line 75
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 76
    invoke-static {p1, p3}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->create(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    .line 77
    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getUseEntryGuards()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getUseBridges()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    new-instance v1, Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/DirectoryDownloader;Lcom/subgraph/orchid/Directory;)V

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->enableEntryGuards(Lcom/subgraph/orchid/circuits/guards/EntryGuards;)V

    .line 80
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/circuits/PendingExitStreams;-><init>(Lcom/subgraph/orchid/TorConfig;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    .line 81
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    .line 82
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    .line 83
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    .line 84
    new-instance p4, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {p4}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 86
    iput-object p5, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 87
    new-instance p4, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    invoke-direct {p4, p1, p3, p0}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->hiddenServiceManager:Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    .line 89
    invoke-virtual {p2, p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->setCircuitManager(Lcom/subgraph/orchid/CircuitManager;)V

    return-void
.end method

.method private maybeRejectInternalAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getClientRejectInternalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting stream target with internal address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeRejectInternalAddress(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 237
    invoke-static {p1}, Lcom/subgraph/orchid/data/IPv4Address;->isValidIPv4AddressString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {p1}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->maybeRejectInternalAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    :cond_0
    return-void
.end method

.method private purposeToEventCode(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x32

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    :goto_0
    return p1

    :cond_2
    if-eqz p2, :cond_3

    const/16 p1, 0x28

    goto :goto_1

    :cond_3
    const/16 p1, 0x23

    :goto_1
    return p1

    :cond_4
    if-eqz p2, :cond_5

    const/16 p1, 0x19

    goto :goto_2

    :cond_5
    const/16 p1, 0x14

    :goto_2
    return p1
.end method

.method private tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z
    .locals 4

    .line 437
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;)V

    .line 438
    new-instance v2, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    invoke-direct {v2, v3, p1, v0, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/CircuitBuildHandler;Z)V

    .line 439
    new-instance p1, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    iget-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result v3

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    :cond_0
    invoke-direct {p1, v2, p2, v3, v1}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 440
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->run()V

    .line 441
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isSuccessful()Z

    move-result p1

    return p1
.end method

.method private validateHostname(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->maybeRejectInternalAddress(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".onion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v0, ".exit addresses are not supported"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v0, "Hidden services not supported"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method addActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    :try_start_1
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isBuilding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    .line 137
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->destroyCircuit()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    .line 130
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method addCleanInternalCircuit(Lcom/subgraph/orchid/InternalCircuit;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v0

    .line 388
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    .line 389
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 391
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createNewExitCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/ExitCircuit;
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createExitCircuit(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/ExitCircuit;

    move-result-object p1

    return-object p1
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-interface {p1, p2, p3, v0}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->getCircuitPredictor()Lcom/subgraph/orchid/circuits/CircuitPredictor;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    const-string v0, "[Circuit Manager]"

    .line 341
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Circuit;

    .line 344
    invoke-interface {p1, p2, p3, v1}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method decrementPendingInternalCircuitCount()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v0

    .line 382
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    .line 383
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getActiveCircuitCount()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;",
            ")",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter v2

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/circuits/CircuitImpl;

    if-eqz p1, :cond_1

    .line 186
    invoke-interface {p1, v2}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;->filter(Lcom/subgraph/orchid/Circuit;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 183
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic getCleanInternalCircuit()Lcom/subgraph/orchid/Circuit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    return-object v0
.end method

.method public getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v0

    .line 351
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/InternalCircuit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :try_start_1
    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    throw v1

    :catchall_1
    move-exception v1

    .line 359
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method getNeededCleanCircuitCount(Z)I
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 365
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->requestedInternalCircuitCount:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-gez p1, :cond_1

    .line 367
    monitor-exit v0

    return v1

    .line 369
    :cond_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 371
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getPendingCircuitCount()I
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingCircuits()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getPendingCircuits()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPendingExitStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/StreamExitRequest;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->getUnreservedPendingRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRandomlyOrderedListOfExitCircuits()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/ExitCircuit;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$2;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Circuit;

    .line 203
    instance-of v3, v2, Lcom/subgraph/orchid/ExitCircuit;

    if-eqz v3, :cond_0

    .line 204
    check-cast v2, Lcom/subgraph/orchid/ExitCircuit;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 209
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/ExitCircuit;

    .line 210
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v4, v0}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v4

    .line 211
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method incrementPendingInternalCircuitCount()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->cleanInternalCircuits:Ljava/util/Queue;

    monitor-enter v0

    .line 376
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingInternalCircuitCount:I

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isNtorEnabled()Z
    .locals 3

    .line 395
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$3;->$SwitchMap$com$subgraph$orchid$TorConfig$AutoBoolValue:[I

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getUseNTorHandshake()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUseNTorHandshake() returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v2}, Lcom/subgraph/orchid/TorConfig;->getUseNTorHandshake()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_2
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabledInConsensus()Z

    move-result v0

    return v0
.end method

.method isNtorEnabledInConsensus()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->getUseNTorHandshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openDirectoryCircuit()Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 292
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createDirectoryCircuit(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v1

    const/4 v2, 0x1

    .line 293
    invoke-direct {p0, v1, v2, v2}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    const-string v1, "Could not create circuit for directory stream"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openDirectoryCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/DirectoryCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 413
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createDirectoryCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 414
    invoke-direct {p0, p1, v0, v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 415
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v0, "Could not create directory circuit for path"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openDirectoryStream()Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->openDirectoryStream(I)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    return-object v0
.end method

.method public openDirectoryStream(I)Lcom/subgraph/orchid/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->purposeToEventCode(IZ)I

    move-result v1

    const/4 v2, 0x1

    .line 265
    invoke-direct {p0, p1, v2}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->purposeToEventCode(IZ)I

    move-result p1

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->openDirectoryCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v3

    if-lez v1, :cond_0

    .line 271
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v4, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    :cond_0
    const-wide/16 v4, 0x2710

    .line 274
    :try_start_0
    invoke-interface {v3, v4, v5, v2}, Lcom/subgraph/orchid/DirectoryCircuit;->openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;

    move-result-object v4

    if-lez p1, :cond_1

    .line 276
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v5, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V
    :try_end_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v4

    .line 283
    :catch_0
    invoke-interface {v3}, Lcom/subgraph/orchid/DirectoryCircuit;->markForClose()V

    goto :goto_0

    .line 280
    :catch_1
    invoke-interface {v3}, Lcom/subgraph/orchid/DirectoryCircuit;->markForClose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_2
    new-instance p1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v0, "Retry count exceeded opening directory stream"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openExitCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/ExitCircuit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/ExitCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 421
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createExitCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/ExitCircuit;

    move-result-object p1

    const/4 v0, 0x0

    .line 422
    invoke-direct {p0, p1, v0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 423
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v0, "Could not create exit circuit for path"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openExitStreamTo(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->maybeRejectInternalAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 251
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictPort(I)V

    .line 252
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStream(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method

.method public openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    const-string v0, ".onion"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->hiddenServiceManager:Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->validateHostname(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictPort(I)V

    .line 224
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->pendingExitStreams:Lcom/subgraph/orchid/circuits/PendingExitStreams;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStream(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method

.method public openInternalCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/InternalCircuit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/InternalCircuit;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 429
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createInternalCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/InternalCircuit;

    move-result-object p1

    const/4 v0, 0x0

    .line 430
    invoke-direct {p0, p1, v0, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->tryOpenCircuit(Lcom/subgraph/orchid/Circuit;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 431
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v0, "Could not create internal circuit for path"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startBuildingCircuits()V
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 95
    :try_start_0
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isBuilding:Z

    .line 96
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->circuitCreationTask:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopBuildingCircuits(Z)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 105
    :try_start_0
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isBuilding:Z

    .line 106
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    monitor-enter p1

    .line 114
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->activeCircuits:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 117
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->destroyCircuit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 115
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 108
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
