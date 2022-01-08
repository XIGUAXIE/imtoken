.class public Lcom/subgraph/orchid/TorClient;
.super Ljava/lang/Object;
.source "TorClient.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/CircuitManager;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private isStarted:Z

.field private isStopped:Z

.field private final readyLatch:Ljava/util/concurrent/CountDownLatch;

.field private final socksListener:Lcom/subgraph/orchid/SocksPortListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/subgraph/orchid/TorClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/TorClient;-><init>(Lcom/subgraph/orchid/DirectoryStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/DirectoryStore;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z

    .line 35
    iput-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z

    .line 44
    invoke-static {}, Lcom/subgraph/orchid/Tor;->isAndroidRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcom/subgraph/orchid/crypto/PRNGFixes;->apply()V

    .line 47
    :cond_0
    invoke-static {}, Lcom/subgraph/orchid/Tor;->createConfig()Lcom/subgraph/orchid/TorConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    .line 48
    invoke-static {v1, p1}, Lcom/subgraph/orchid/Tor;->createDirectory(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/Directory;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    .line 49
    invoke-static {}, Lcom/subgraph/orchid/Tor;->createInitalizationTracker()Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 50
    invoke-direct {p0}, Lcom/subgraph/orchid/TorClient;->createReadyFlagInitializationListener()Lcom/subgraph/orchid/TorInitializationListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->addListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    .line 51
    iget-object p1, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-static {p1, v1}, Lcom/subgraph/orchid/Tor;->createConnectionCache(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/ConnectionCache;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 52
    iget-object p1, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-static {p1, v1}, Lcom/subgraph/orchid/Tor;->createDirectoryDownloader(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    .line 53
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v2, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v3, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v4, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-static {v1, p1, v2, v3, v4}, Lcom/subgraph/orchid/Tor;->createCircuitManager(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/CircuitManager;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    .line 54
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-static {v1, p1}, Lcom/subgraph/orchid/Tor;->createSocksPortListener(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/CircuitManager;)Lcom/subgraph/orchid/SocksPortListener;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    .line 55
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    .line 56
    new-instance p1, Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-direct {p1}, Lcom/subgraph/orchid/dashboard/Dashboard;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    aput-object v1, v2, v0

    invoke-virtual {p1, v2}, Lcom/subgraph/orchid/dashboard/Dashboard;->addRenderables([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/TorClient;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private static createInitalizationListner()Lcom/subgraph/orchid/TorInitializationListener;
    .locals 1

    .line 191
    new-instance v0, Lcom/subgraph/orchid/TorClient$2;

    invoke-direct {v0}, Lcom/subgraph/orchid/TorClient$2;-><init>()V

    return-object v0
.end method

.method private createReadyFlagInitializationListener()Lcom/subgraph/orchid/TorInitializationListener;
    .locals 1

    .line 175
    new-instance v0, Lcom/subgraph/orchid/TorClient$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorClient$1;-><init>(Lcom/subgraph/orchid/TorClient;)V

    return-object v0
.end method

.method private declared-synchronized ensureStarted()V
    .locals 2

    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call start() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 184
    new-instance p0, Lcom/subgraph/orchid/TorClient;

    invoke-direct {p0}, Lcom/subgraph/orchid/TorClient;-><init>()V

    .line 185
    invoke-static {}, Lcom/subgraph/orchid/TorClient;->createInitalizationListner()Lcom/subgraph/orchid/TorInitializationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/TorClient;->addInitializationListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/subgraph/orchid/TorClient;->start()V

    .line 187
    invoke-virtual {p0}, Lcom/subgraph/orchid/TorClient;->enableSocksListener()V

    return-void
.end method

.method private verifyUnlimitedStrengthPolicyInstalled()V
    .locals 4

    const-string v0, "Unlimited Strength Jurisdiction Policy Files are required but not installed."

    :try_start_0
    const-string v1, "AES"

    .line 205
    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    sget-object v1, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    sget-object v0, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    const-string v1, "Skipped check for Unlimited Strength Jurisdiction Policy Files"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 211
    sget-object v1, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "No AES provider found"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addInitializationListener(Lcom/subgraph/orchid/TorInitializationListener;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->addListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    return-void
.end method

.method public disableDashboard()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    :cond_0
    return-void
.end method

.method public enableDashboard()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->startListening()V

    :cond_0
    return-void
.end method

.method public enableDashboard(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->setListeningPort(I)V

    .line 157
    invoke-virtual {p0}, Lcom/subgraph/orchid/TorClient;->enableDashboard()V

    return-void
.end method

.method public enableSocksListener()V
    .locals 1

    const/16 v0, 0x23be

    .line 146
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/TorClient;->enableSocksListener(I)V

    return-void
.end method

.method public enableSocksListener(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/SocksPortListener;->addListeningPort(I)V

    return-void
.end method

.method public getCircuitManager()Lcom/subgraph/orchid/CircuitManager;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    return-object v0
.end method

.method public getConfig()Lcom/subgraph/orchid/TorConfig;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->config:Lcom/subgraph/orchid/TorConfig;

    return-object v0
.end method

.method public getConnectionCache()Lcom/subgraph/orchid/ConnectionCache;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    return-object v0
.end method

.method public getDirectory()Lcom/subgraph/orchid/Directory;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 65
    new-instance v0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;-><init>(Lcom/subgraph/orchid/TorClient;)V

    return-object v0
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

    .line 131
    invoke-direct {p0}, Lcom/subgraph/orchid/TorClient;->ensureStarted()V

    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-interface {v0, p1, p2}, Lcom/subgraph/orchid/CircuitManager;->openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method

.method public removeInitializationListener(Lcom/subgraph/orchid/TorInitializationListener;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->removeListener(Lcom/subgraph/orchid/TorInitializationListener;)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z

    if-nez v0, :cond_2

    .line 78
    sget-object v0, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting Orchid (version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getFullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/subgraph/orchid/TorClient;->verifyUnlimitedStrengthPolicyInstalled()V

    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->start(Lcom/subgraph/orchid/Directory;)V

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitManager;->startBuildingCircuits()V

    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabledByProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->startListening()V

    :cond_1
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 76
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot restart a TorClient instance.  Create a new instance instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 6

    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStarted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->socksListener:Lcom/subgraph/orchid/SocksPortListener;

    invoke-interface {v1}, Lcom/subgraph/orchid/SocksPortListener;->stop()V

    .line 94
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->directoryDownloader:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->stop()V

    .line 98
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-interface {v1, v0}, Lcom/subgraph/orchid/CircuitManager;->stopBuildingCircuits(Z)V

    .line 99
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->close()V

    .line 100
    iget-object v1, p0, Lcom/subgraph/orchid/TorClient;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-interface {v1}, Lcom/subgraph/orchid/ConnectionCache;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    :try_start_2
    iput-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 102
    :try_start_3
    sget-object v2, Lcom/subgraph/orchid/TorClient;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception while shutting down TorClient instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 106
    :goto_1
    monitor-exit p0

    return-void

    .line 104
    :goto_2
    :try_start_4
    iput-boolean v0, p0, Lcom/subgraph/orchid/TorClient;->isStopped:Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitUntilReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public waitUntilReady(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method
