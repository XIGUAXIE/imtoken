.class public Lcom/subgraph/orchid/circuits/CircuitBuildTask;
.super Ljava/lang/Object;
.source "CircuitBuildTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private connection:Lcom/subgraph/orchid/Connection;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

.field private final extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;-><init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;Lcom/subgraph/orchid/ConnectionCache;ZLcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    .line 32
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    .line 33
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 34
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    .line 35
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getCircuit()Lcom/subgraph/orchid/circuits/CircuitImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 36
    new-instance p2, Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getCircuit()Lcom/subgraph/orchid/circuits/CircuitImpl;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Lcom/subgraph/orchid/circuits/CircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Z)V

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    return-void
.end method

.method private buildCircuit(Lcom/subgraph/orchid/Router;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/TorException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->notifyInitialization()V

    .line 103
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createFastTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V

    const/4 p1, 0x1

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPathLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPathElement(I)Lcom/subgraph/orchid/Router;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->extendTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V

    .line 111
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->notifyDone()V

    return-void
.end method

.method private circuitBuildFailed(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->circuitBuildFailed(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildFailed()V

    .line 90
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Connection;->removeCircuit(Lcom/subgraph/orchid/Circuit;)V

    :cond_0
    return-void
.end method

.method private connectionFailed(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->connectionFailed(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildFailed()V

    return-void
.end method

.method private notifyDone()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    :cond_0
    return-void
.end method

.method private notifyInitialization()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    :cond_1
    return-void
.end method

.method private openEntryNodeConnection(Lcom/subgraph/orchid/Router;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionTimeoutException;,
            Lcom/subgraph/orchid/ConnectionFailedException;,
            Lcom/subgraph/orchid/ConnectionHandshakeException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->isDirectoryCircuit()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/ConnectionCache;->getConnectionTo(Lcom/subgraph/orchid/Router;Z)Lcom/subgraph/orchid/Connection;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->bindToConnection(Lcom/subgraph/orchid/Connection;)V

    .line 98
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connection:Lcom/subgraph/orchid/Connection;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->connectionCompleted(Lcom/subgraph/orchid/Connection;)V

    return-void
.end method

.method private pathToString(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;)Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPath()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, ","

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "]"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, " : "

    const/4 v1, 0x0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildStart()V

    .line 43
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->choosePath()V

    .line 44
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening a new circuit to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    invoke-direct {p0, v4}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->pathToString(Lcom/subgraph/orchid/circuits/CircuitCreationRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->creationRequest:Lcom/subgraph/orchid/circuits/CircuitCreationRequest;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/circuits/CircuitCreationRequest;->getPathElement(I)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 48
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->openEntryNodeConnection(Lcom/subgraph/orchid/Router;)V

    .line 49
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->buildCircuit(Lcom/subgraph/orchid/Router;)V

    .line 50
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->notifyCircuitBuildCompleted()V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/subgraph/orchid/ConnectionFailedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/subgraph/orchid/ConnectionHandshakeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception while building circuit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 61
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "Circuit building thread interrupted"

    .line 59
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->circuitBuildFailed(Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v2

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handshake error connecting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/subgraph/orchid/ConnectionHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionFailed(Ljava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection failed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/subgraph/orchid/ConnectionFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :catch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout connecting to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitBuildTask;->connectionFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
