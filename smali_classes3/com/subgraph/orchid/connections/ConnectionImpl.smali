.class public Lcom/subgraph/orchid/connections/ConnectionImpl;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Connection;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field private static final CONNECTION_IDLE_TIMEOUT:I = 0x493e0

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x1388

.field private static final connectionClosedSentinel:Lcom/subgraph/orchid/Cell;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/subgraph/orchid/Circuit;",
            ">;"
        }
    .end annotation
.end field

.field private final circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final connectionControlCells:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/subgraph/orchid/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private currentId:I

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private input:Ljava/io/InputStream;

.field private volatile isClosed:Z

.field private isConnected:Z

.field private final isDirectoryConnection:Z

.field private final lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

.field private output:Ljava/io/OutputStream;

.field private final outputLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final readCellsThread:Ljava/lang/Thread;

.field private final router:Lcom/subgraph/orchid/Router;

.field private final socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 50
    invoke-static {v0, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionClosedSentinel:Lcom/subgraph/orchid/Cell;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljavax/net/ssl/SSLSocket;Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/circuits/TorInitializationTracker;Z)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    const-string v1, "connect"

    .line 66
    invoke-static {v1}, Lcom/subgraph/orchid/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "circuits"

    .line 67
    invoke-static {v1}, Lcom/subgraph/orchid/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "output"

    .line 68
    invoke-static {v1}, Lcom/subgraph/orchid/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->outputLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 74
    iput-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    .line 75
    iput-object p3, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    .line 77
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->createReadCellsRunnable()Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->readCellsThread:Ljava/lang/Thread;

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 79
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    .line 80
    iput-object p4, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 81
    iput-boolean p5, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isDirectoryConnection:Z

    .line 82
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializeCurrentCircuitId()V

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/connections/ConnectionImpl;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->readCellsLoop()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 46
    sget-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private connectSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_1

    .line 156
    iget-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isDirectoryConnection:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 157
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    .line 159
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->routerToSocketAddress(Lcom/subgraph/orchid/Router;)Ljava/net/SocketAddress;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 165
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_3

    .line 166
    iget-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isDirectoryConnection:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    .line 167
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x55

    .line 169
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private createReadCellsRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 225
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionImpl$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/connections/ConnectionImpl$1;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;)V

    return-object v0
.end method

.method private doConnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectSocket()V

    .line 146
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0, p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->createHandshake(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)Lcom/subgraph/orchid/connections/ConnectionHandshake;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->input:Ljava/io/InputStream;

    .line 148
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->output:Ljava/io/OutputStream;

    .line 149
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->readCellsThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 150
    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->runHandshake()V

    .line 151
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->updateLastActivity()V

    return-void
.end method

.method private getIdleMilliseconds()J
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 342
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private incrementNextId()V
    .locals 3

    .line 113
    iget v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    const v2, 0xffff

    if-le v0, v2, :cond_0

    .line 115
    iput v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    :cond_0
    return-void
.end method

.method private initializeCurrentCircuitId()V
    .locals 2

    .line 86
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    const v1, 0xffff

    .line 87
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    return-void
.end method

.method private notifyCircuitsLinkClosed()V
    .locals 0

    return-void
.end method

.method private processCell(Lcom/subgraph/orchid/Cell;)V
    .locals 2

    .line 264
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->updateLastActivity()V

    .line 265
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->processRelayCell(Lcom/subgraph/orchid/Cell;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0x82

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_2
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->processControlCell(Lcom/subgraph/orchid/Cell;)V

    :goto_0
    return-void
.end method

.method private processControlCell(Lcom/subgraph/orchid/Cell;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCircuitId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Circuit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Circuit;->deliverControlCell(Lcom/subgraph/orchid/Cell;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 313
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private processRelayCell(Lcom/subgraph/orchid/Cell;)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCircuitId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Circuit;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not deliver relay cell for circuit id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCircuitId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on connection "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Circuit not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Circuit;->deliverRelayCell(Lcom/subgraph/orchid/Cell;)V

    return-void

    :catchall_0
    move-exception p1

    .line 301
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private readCellsLoop()V
    .locals 5

    .line 237
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->recvCell()Lcom/subgraph/orchid/Cell;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->processCell(Lcom/subgraph/orchid/Cell;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Tor exception reading and processing cells: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 241
    :catch_1
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionClosedSentinel:Lcom/subgraph/orchid/Cell;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->notifyCircuitsLinkClosed()V

    :cond_0
    return-void
.end method

.method private recvCell()Lcom/subgraph/orchid/Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->input:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readFromInputStream(Ljava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 205
    iget-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    if-nez v1, :cond_0

    .line 206
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException reading cell from connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 209
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/ConnectionIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :catch_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 203
    new-instance v0, Lcom/subgraph/orchid/ConnectionIOException;

    invoke-direct {v0}, Lcom/subgraph/orchid/ConnectionIOException;-><init>()V

    throw v0
.end method

.method private routerToSocketAddress(Lcom/subgraph/orchid/Router;)Ljava/net/SocketAddress;
    .locals 2

    .line 175
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/IPv4Address;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result p1

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1
.end method

.method private updateLastActivity()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->lastActivity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method


# virtual methods
.method public bindCircuit(Lcom/subgraph/orchid/Circuit;)I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 101
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    iget v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->incrementNextId()V

    goto :goto_0

    .line 103
    :cond_0
    iget v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->currentId:I

    .line 104
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->incrementNextId()V

    .line 105
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method closeSocket()V
    .locals 4

    .line 215
    :try_start_0
    sget-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    .line 217
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionFailedException;,
            Lcom/subgraph/orchid/ConnectionTimeoutException;,
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->doConnect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/subgraph/orchid/ConnectionHandshakeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 138
    :try_start_2
    iput-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v0

    .line 136
    :try_start_3
    new-instance v1, Lcom/subgraph/orchid/ConnectionFailedException;

    invoke-virtual {v0}, Lcom/subgraph/orchid/ConnectionIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 134
    throw v0

    .line 131
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 132
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v1, "Handshake interrupted"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    .line 129
    new-instance v1, Lcom/subgraph/orchid/ConnectionFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :catch_4
    new-instance v0, Lcom/subgraph/orchid/ConnectionTimeoutException;

    invoke-direct {v0}, Lcom/subgraph/orchid/ConnectionTimeoutException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 140
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 362
    :try_start_0
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_0

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  [Connection router="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " circuits="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " idle="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getIdleMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "s"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "]"

    .line 372
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 364
    iget-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getRouter()Lcom/subgraph/orchid/Router;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    return-object v0
.end method

.method idleCloseCheck()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 324
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getIdleMilliseconds()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on idle timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->isClosed:Z

    return v0
.end method

.method readConnectionControlCell()Lcom/subgraph/orchid/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->connectionControlCells:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Cell;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :catch_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 259
    new-instance v0, Lcom/subgraph/orchid/ConnectionIOException;

    invoke-direct {v0}, Lcom/subgraph/orchid/ConnectionIOException;-><init>()V

    throw v0
.end method

.method public removeCircuit(Lcom/subgraph/orchid/Circuit;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->getCircuitId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->circuitsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public sendCell(Lcom/subgraph/orchid/Cell;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->updateLastActivity()V

    .line 184
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->outputLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->output:Ljava/io/OutputStream;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->outputLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    :try_start_1
    sget-object v0, Lcom/subgraph/orchid/connections/ConnectionImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException writing cell to connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->closeSocket()V

    .line 191
    new-instance v0, Lcom/subgraph/orchid/ConnectionIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->outputLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 181
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/ConnectionIOException;

    const-string v0, "Cannot send cell because connection is not connected"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/connections/ConnectionImpl;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
