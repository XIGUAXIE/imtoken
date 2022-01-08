.class public Lcom/subgraph/orchid/circuits/PendingExitStreams;
.super Ljava/lang/Object;
.source "PendingExitStreams.java"


# instance fields
.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final lock:Ljava/lang/Object;

.field private final pendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/circuits/StreamExitRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->config:Lcom/subgraph/orchid/TorConfig;

    .line 23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    return-void
.end method

.method private handleRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 53
    :goto_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getStream()Lcom/subgraph/orchid/Stream;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 61
    :catch_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->resetForRetry()V

    goto :goto_0

    .line 59
    :catch_1
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->resetForRetry()V

    goto :goto_0
.end method

.method private openExitStreamByRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getCircuitStreamTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getCircuitStreamTimeout()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->setStreamTimeout(J)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->handleRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v1

    :catchall_1
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method


# virtual methods
.method getUnreservedPendingRequests()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/StreamExitRequest;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->pendingRequests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .line 70
    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method openExitStream(Lcom/subgraph/orchid/data/IPv4Address;I)Lcom/subgraph/orchid/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;-><init>(Ljava/lang/Object;Lcom/subgraph/orchid/data/IPv4Address;I)V

    .line 28
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStreamByRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method

.method openExitStream(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/PendingExitStreams;->lock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 33
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/PendingExitStreams;->openExitStreamByRequest(Lcom/subgraph/orchid/circuits/StreamExitRequest;)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method
