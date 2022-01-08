.class public Lcom/subgraph/orchid/circuits/CircuitIO;
.super Ljava/lang/Object;
.source "CircuitIO.java"

# interfaces
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field private static final CIRCUIT_BUILD_TIMEOUT_MS:J = 0x7530L

.field private static final CIRCUIT_RELAY_RESPONSE_TIMEOUT:J = 0x4e20L

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private final circuitId:I

.field private final connection:Lcom/subgraph/orchid/Connection;

.field private final controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/subgraph/orchid/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private isClosed:Z

.field private isMarkedForClose:Z

.field private final relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/subgraph/orchid/RelayCell;",
            ">;"
        }
    .end annotation
.end field

.field private final relaySendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final streamLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final streamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/subgraph/orchid/circuits/StreamImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Lcom/subgraph/orchid/Connection;I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stream"

    .line 41
    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "relaySend"

    .line 42
    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relaySendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 49
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    .line 50
    iput p3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    .line 52
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 53
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    return-void
.end method

.method private closeCircuit()V
    .locals 3

    .line 270
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing circuit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendDestroyCell(I)V

    .line 272
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Connection;->removeCircuit(Lcom/subgraph/orchid/Circuit;)V

    .line 273
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->setStateDestroyed()V

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isClosed:Z

    return-void
.end method

.method private decryptRelayCell(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getNodeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/CircuitNode;

    .line 77
    invoke-interface {v1, p1}, Lcom/subgraph/orchid/CircuitNode;->decryptBackwardCell(Lcom/subgraph/orchid/Cell;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {v1, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->createFromCell(Lcom/subgraph/orchid/CircuitNode;Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;

    move-result-object p1

    return-object p1

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    .line 82
    new-instance p1, Lcom/subgraph/orchid/TorException;

    const-string v0, "Could not decrypt relay cell"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getLogLevelForCell(Lcom/subgraph/orchid/RelayCell;)Ljava/util/logging/Level;
    .locals 1

    .line 223
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 228
    sget-object p1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p1

    .line 226
    :cond_0
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p1
.end method

.method private getReceiveTimeout()J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isBuilding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->remainingBuildTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4e20

    return-wide v0
.end method

.method private logRelayCell(Ljava/lang/String;Lcom/subgraph/orchid/RelayCell;)V
    .locals 3

    .line 215
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/circuits/CircuitIO;->getLogLevelForCell(Lcom/subgraph/orchid/RelayCell;)Ljava/util/logging/Level;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 219
    :cond_0
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method private processCircuitSendme(Lcom/subgraph/orchid/RelayCell;)V
    .locals 0

    .line 288
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    invoke-interface {p1}, Lcom/subgraph/orchid/CircuitNode;->incrementSendWindow()V

    return-void
.end method

.method private processDestroyCell(I)V
    .locals 3

    .line 124
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DESTROY cell received ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->errorToDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    return-void
.end method

.method private processRelayDataCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 3

    .line 167
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->decrementDeliverWindow()V

    .line 169
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->considerSendingSendme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 170
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/subgraph/orchid/circuits/CircuitIO;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendRelayCellTo(Lcom/subgraph/orchid/RelayCell;Lcom/subgraph/orchid/CircuitNode;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/StreamImpl;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/StreamImpl;->addInputCell(Lcom/subgraph/orchid/RelayCell;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private remainingBuildTime()J
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getMillisecondsElapsedSinceCreated()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x7530

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v0

    return-wide v4

    :cond_1
    :goto_0
    return-wide v2
.end method


# virtual methods
.method createNewStream(Z)Lcom/subgraph/orchid/circuits/StreamImpl;
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->nextStreamId()I

    move-result v0

    .line 313
    new-instance v1, Lcom/subgraph/orchid/circuits/StreamImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/subgraph/orchid/circuits/StreamImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Lcom/subgraph/orchid/CircuitNode;IZ)V

    .line 314
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;
    .locals 2

    .line 190
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    invoke-direct {v0, p3, v1, p2, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    return-object v0
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x10

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getActiveStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Stream;

    .line 348
    invoke-interface {p1, p2, p3, v1}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method deliverControlCell(Lcom/subgraph/orchid/Cell;)V
    .locals 2

    .line 116
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 117
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->processDestroyCell(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method deliverRelayCell(Lcom/subgraph/orchid/Cell;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->updateDirtyTimestamp()V

    .line 131
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->decryptRelayCell(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;

    move-result-object p1

    const-string v0, "Dispatching: "

    .line 132
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->logRelayCell(Ljava/lang/String;Lcom/subgraph/orchid/RelayCell;)V

    .line 133
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getStreamId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->processRelayDataCell(Lcom/subgraph/orchid/RelayCell;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->processCircuitSendme(Lcom/subgraph/orchid/RelayCell;)V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->processRelayDataCell(Lcom/subgraph/orchid/RelayCell;)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    .line 161
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'forward\' direction relay cell type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    :pswitch_3
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method dequeueRelayResponseCell()Lcom/subgraph/orchid/RelayCell;
    .locals 4

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getReceiveTimeout()J

    move-result-wide v0

    .line 68
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relayCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/RelayCell;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return-object v0
.end method

.method destroyCircuit()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 294
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 297
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->setStateDestroyed()V

    .line 298
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Connection;->removeCircuit(Lcom/subgraph/orchid/Circuit;)V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/StreamImpl;

    .line 301
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamImpl;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getActiveStreams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Stream;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 337
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getCircuitId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    return v0
.end method

.method getConnection()Lcom/subgraph/orchid/Connection;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    return-object v0
.end method

.method isMarkedForClose()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 263
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method markForClose()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 248
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 251
    :try_start_1
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z

    .line 252
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->closeCircuit()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 254
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method receiveControlCellResponse()Lcom/subgraph/orchid/Cell;
    .locals 4

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getReceiveTimeout()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->controlCellResponseQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Cell;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return-object v0
.end method

.method removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/StreamImpl;->getStreamId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->closeCircuit()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 328
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->streamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method sendCell(Lcom/subgraph/orchid/Cell;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isBuilding()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->updateDirtyTimestamp()V

    .line 238
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Connection;->sendCell(Lcom/subgraph/orchid/Cell;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    :goto_0
    return-void
.end method

.method sendDestroyCell(I)V
    .locals 3

    .line 278
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->circuitId:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 279
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 281
    :try_start_0
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->connection:Lcom/subgraph/orchid/Connection;

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Connection;->sendCell(Lcom/subgraph/orchid/Cell;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitIO;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection IO error sending DESTROY cell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/ConnectionIOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method sendRelayCellTo(Lcom/subgraph/orchid/RelayCell;Lcom/subgraph/orchid/CircuitNode;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relaySendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "Sending:     "

    .line 196
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->logRelayCell(Ljava/lang/String;Lcom/subgraph/orchid/RelayCell;)V

    .line 197
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->setLength()V

    .line 198
    invoke-interface {p2, p1}, Lcom/subgraph/orchid/CircuitNode;->updateForwardDigest(Lcom/subgraph/orchid/RelayCell;)V

    .line 199
    invoke-interface {p2}, Lcom/subgraph/orchid/CircuitNode;->getForwardDigestBytes()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/RelayCell;->setDigest([B)V

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/CircuitNode;->encryptForwardCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 201
    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->getPreviousNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 205
    invoke-interface {p2}, Lcom/subgraph/orchid/CircuitNode;->waitForSendWindowAndDecrement()V

    .line 207
    :cond_1
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendCell(Lcom/subgraph/orchid/Cell;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relaySendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitIO;->relaySendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
