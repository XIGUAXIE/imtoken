.class public Lcom/subgraph/orchid/circuits/CircuitCreationTask;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_CIRCUIT_DIRTINESS:I = 0x12c

.field private static final MAX_PENDING_CIRCUITS:I = 0x4

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

.field private final internalBuildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

.field private final lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

.field private notEnoughDirectoryInformationWarningCounter:I

.field private final pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

.field private final predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    .line 49
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->config:Lcom/subgraph/orchid/TorConfig;

    .line 50
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->directory:Lcom/subgraph/orchid/Directory;

    .line 51
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 52
    iput-object p5, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 53
    iput-object p6, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 54
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    const-string p1, "CircuitCreationTask worker"

    .line 55
    invoke-static {p1}, Lcom/subgraph/orchid/Threading;->newPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    .line 56
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->createCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    .line 57
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->createInternalCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->internalBuildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    .line 58
    new-instance p1, Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-direct {p1}, Lcom/subgraph/orchid/circuits/CircuitPredictor;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 27
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/circuits/CircuitCreationTask;Lcom/subgraph/orchid/Circuit;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitOpenedHandler(Lcom/subgraph/orchid/Circuit;)V

    return-void
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildCircuitIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    return-object p0
.end method

.method private assignPendingStreamsToActiveCircuits()V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingExitStreams()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getRandomlyOrderedListOfExitCircuits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/ExitCircuit;

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 84
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-direct {p0, v2, v4}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->attemptHandleStreamRequest(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private attemptHandleStreamRequest(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)Z
    .locals 1

    .line 92
    invoke-interface {p1, p2}, Lcom/subgraph/orchid/ExitCircuit;->canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->reserveRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchExitStreamTask(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private buildCircuitIfNeeded()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-interface {v0}, Lcom/subgraph/orchid/ConnectionCache;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    const-string v1, "Not building circuits, because connection cache is closed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingExitStreams()Ljava/util/List;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->getPredictedPortTargets()Ljava/util/List;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .line 154
    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I

    move-result v4

    if-nez v4, :cond_1

    .line 155
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/PredictedPortTarget;

    const/4 v3, 0x1

    .line 159
    invoke-direct {p0, v1, v3}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 160
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_4
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildCircuitToHandleExitTargets(Ljava/util/List;)V

    return-void
.end method

.method private buildCircuitToHandleExitTargets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->haveMinimumRouterInfo()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingCircuitCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    return-void

    .line 207
    :cond_2
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building new circuit to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pending streams and predicted ports"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 211
    :cond_3
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchBuildTaskForTargets(Ljava/util/List;)V

    return-void
.end method

.method private checkCircuitsForCreation()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->haveMinimumRouterInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    const-string v1, "Cannot build circuits because we don\'t have enough directory information"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->notEnoughDirectoryInformationWarningCounter:I

    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->lastNewCircuit:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getNewCircuitPeriod()J

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildCircuitIfNeeded()V

    .line 141
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->maybeBuildInternalCircuit()V

    return-void
.end method

.method private checkExpiredPendingCircuits()V
    .locals 0

    return-void
.end method

.method private circuitOpenedHandler(Lcom/subgraph/orchid/Circuit;)V
    .locals 3

    .line 257
    instance-of v0, p1, Lcom/subgraph/orchid/ExitCircuit;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    check-cast p1, Lcom/subgraph/orchid/ExitCircuit;

    .line 261
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingExitStreams()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .line 263
    invoke-interface {p1, v1}, Lcom/subgraph/orchid/ExitCircuit;->canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->reserveRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchExitStreamTask(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I
    .locals 1

    .line 184
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;ZLcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V

    .line 195
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1
.end method

.method private createCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;
    .locals 1

    .line 228
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    return-object v0
.end method

.method private createInternalCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;
    .locals 1

    .line 270
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    return-object v0
.end method

.method private expireOldCircuits()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    new-instance v1, Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;

    invoke-direct {v1, p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCircuitsByFilter(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;)Ljava/util/Set;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Circuit;

    .line 115
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing idle dirty circuit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 116
    check-cast v1, Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->markForClose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private launchBuildTaskForInternalCircuit()V
    .locals 5

    .line 175
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    const-string v1, "Launching new internal circuit"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    .line 177
    new-instance v1, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->internalBuildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/CircuitBuildHandler;Z)V

    .line 178
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;Z)V

    .line 179
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->incrementPendingInternalCircuitCount()V

    return-void
.end method

.method private launchBuildTaskForTargets(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseExitNodeForTargets(Ljava/util/List;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    if-nez p1, :cond_0

    .line 217
    sget-object p1, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->logger:Ljava/util/logging/Logger;

    const-string v0, "Failed to select suitable exit node for targets"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->createNewExitCircuit(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/ExitCircuit;

    move-result-object p1

    .line 222
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->pathChooser:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->buildHandler:Lcom/subgraph/orchid/CircuitBuildHandler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/CircuitBuildHandler;Z)V

    .line 223
    new-instance p1, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    .line 224
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private launchExitStreamTask(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;

    invoke-direct {v0, p1, p2}, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;-><init>(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V

    .line 104
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private maybeBuildInternalCircuit()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->isInternalPredicted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getNeededCleanCircuitCount(Z)I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->launchBuildTaskForInternalCircuit()V

    :cond_0
    return-void
.end method


# virtual methods
.method getCircuitPredictor()Lcom/subgraph/orchid/circuits/CircuitPredictor;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    return-object v0
.end method

.method predictPort(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->predictor:Lcom/subgraph/orchid/circuits/CircuitPredictor;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addExitPortRequest(I)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->expireOldCircuits()V

    .line 68
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->assignPendingStreamsToActiveCircuits()V

    .line 69
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->checkExpiredPendingCircuits()V

    .line 70
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->checkCircuitsForCreation()V

    return-void
.end method
