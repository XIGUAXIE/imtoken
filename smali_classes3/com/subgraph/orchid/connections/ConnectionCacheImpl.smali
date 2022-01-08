.class public Lcom/subgraph/orchid/connections/ConnectionCacheImpl;
.super Ljava/lang/Object;
.source "ConnectionCacheImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ConnectionCache;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;,
        Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final activeConnections:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/subgraph/orchid/Router;",
            "Ljava/util/concurrent/Future<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final factory:Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private volatile isClosed:Z

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 8

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

    invoke-direct {v0}, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->factory:Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 77
    iput-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 78
    new-instance v2, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;-><init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;Lcom/subgraph/orchid/connections/ConnectionCacheImpl$1;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1388

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/connections/ConnectionSocketFactory;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->factory:Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/TorConfig;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->config:Lcom/subgraph/orchid/TorConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/circuits/TorInitializationTracker;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method private addConnectionFromFuture(Ljava/util/concurrent/Future;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Connection;",
            ">;)V"
        }
    .end annotation

    .line 197
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 201
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private createFutureForIfAbsent(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;-><init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;Lcom/subgraph/orchid/Router;Z)V

    .line 153
    new-instance p2, Ljava/util/concurrent/FutureTask;

    invoke-direct {p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 155
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    return-object p1

    .line 160
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->run()V

    return-object p2
.end method

.method private getFutureFor(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/subgraph/orchid/connections/ConnectionImpl;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->createFutureForIfAbsent(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private printDashboardBanner(Ljava/io/PrintWriter;I)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "[Connection Cache (verbose)]"

    .line 180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "[Connection Cache]"

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 82
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->isClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->isClosed:Z

    .line 86
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 87
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/connections/ConnectionImpl;

    .line 90
    invoke-virtual {v2}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 94
    sget-object v3, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :catch_1
    sget-object v2, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    const-string v3, "Unexpected interruption while closing connection"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->printDashboardBanner(Ljava/io/PrintWriter;I)V

    .line 169
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->getActiveConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Connection;

    .line 170
    invoke-interface {v1}, Lcom/subgraph/orchid/Connection;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    invoke-interface {p1, p2, p3, v1}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getActiveConnections()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Connection;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 190
    invoke-direct {p0, v2, v0}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->addConnectionFromFuture(Ljava/util/concurrent/Future;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getConnectionTo(Lcom/subgraph/orchid/Router;Z)Lcom/subgraph/orchid/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionTimeoutException;,
            Lcom/subgraph/orchid/ConnectionFailedException;,
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->isClosed:Z

    if-nez v0, :cond_4

    .line 116
    sget-object v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->getFutureFor(Lcom/subgraph/orchid/Router;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 120
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Connection;

    .line 121
    invoke-interface {v1}, Lcom/subgraph/orchid/Connection;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p2

    .line 129
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 131
    instance-of v0, p1, Lcom/subgraph/orchid/ConnectionTimeoutException;

    if-nez v0, :cond_3

    .line 133
    instance-of v0, p1, Lcom/subgraph/orchid/ConnectionFailedException;

    if-nez v0, :cond_2

    .line 135
    instance-of v0, p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    if-eqz v0, :cond_1

    .line 136
    check-cast p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    throw p1

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 134
    :cond_2
    check-cast p1, Lcom/subgraph/orchid/ConnectionFailedException;

    throw p1

    .line 132
    :cond_3
    check-cast p1, Lcom/subgraph/orchid/ConnectionTimeoutException;

    throw p1

    .line 127
    :catch_1
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->activeConnections:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ConnectionCache has been closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClosed()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->isClosed:Z

    return v0
.end method
