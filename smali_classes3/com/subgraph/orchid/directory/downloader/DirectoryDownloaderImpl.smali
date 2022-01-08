.class public Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;
.super Ljava/lang/Object;
.source "DirectoryDownloaderImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryDownloader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private circuitManager:Lcom/subgraph/orchid/CircuitManager;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

.field private downloadTaskThread:Ljava/lang/Thread;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private isStarted:Z

.field private isStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 39
    iput-object p2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    return-void
.end method

.method private openBridgeCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/subgraph/orchid/Router;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/CircuitManager;->openDirectoryCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object p1
    :try_end_0
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open directory circuit to bridge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitManager;->openDirectoryCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0
    :try_end_0
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v2, "Failed to open directory circuit"

    invoke-direct {v1, v2, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removeUnrequestedDescriptors(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/subgraph/orchid/Descriptor;",
            ">(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Descriptor;

    .line 117
    invoke-interface {v2}, Lcom/subgraph/orchid/Descriptor;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 124
    sget-object p1, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " received descriptor(s) with fingerprints that did not match requested descriptors"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openBridgeCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;)V

    .line 71
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadCurrentConsensus(ZLcom/subgraph/orchid/DirectoryCircuit;)Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object p1

    return-object p1
.end method

.method public downloadCurrentConsensus(ZLcom/subgraph/orchid/DirectoryCircuit;)Lcom/subgraph/orchid/ConsensusDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0, p2, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object p1

    return-object p1
.end method

.method public downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadKeyCertificates(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadKeyCertificates(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0, p2, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 90
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadRouterDescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadRouterDescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0, p2, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->removeUnrequestedDescriptors(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->openCircuit()Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadRouterMicrodescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadRouterMicrodescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0, p2, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 109
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->removeUnrequestedDescriptors(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setCircuitManager(Lcom/subgraph/orchid/CircuitManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    return-void
.end method

.method public declared-synchronized start(Lcom/subgraph/orchid/Directory;)V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStarted:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object p1, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->logger:Ljava/util/logging/Logger;

    const-string v0, "Directory downloader already running"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-direct {v0, v1, p1, p0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/DirectoryDownloader;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    .line 56
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTaskThread:Ljava/lang/Thread;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must set CircuitManager instance with setCircuitManager() before starting."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->isStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTask:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->stop()V

    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;->downloadTaskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
