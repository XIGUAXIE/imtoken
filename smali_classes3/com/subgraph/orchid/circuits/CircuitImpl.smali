.class public abstract Lcom/subgraph/orchid/circuits/CircuitImpl;
.super Ljava/lang/Object;
.source "CircuitImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Circuit;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field protected static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private io:Lcom/subgraph/orchid/circuits/CircuitIO;

.field private final nodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/CircuitNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final prechosenPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lcom/subgraph/orchid/circuits/CircuitStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->nodeList:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 75
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->prechosenPath:Ljava/util/List;

    .line 76
    new-instance p1, Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-direct {p1}, Lcom/subgraph/orchid/circuits/CircuitStatus;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    return-void
.end method

.method static createDirectoryCircuit(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 2

    .line 44
    new-instance v0, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    return-object v0
.end method

.method static createDirectoryCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/DirectoryCircuit;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    return-object v0
.end method

.method static createExitCircuit(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/ExitCircuit;
    .locals 1

    .line 36
    new-instance v0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/Router;)V

    return-object v0
.end method

.method static createExitCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/ExitCircuit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/ExitCircuit;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    return-object v0
.end method

.method static createInternalCircuitTo(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)Lcom/subgraph/orchid/InternalCircuit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/InternalCircuit;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public appendNode(Lcom/subgraph/orchid/CircuitNode;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->nodeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method bindToConnection(Lcom/subgraph/orchid/Connection;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    if-nez v0, :cond_0

    .line 93
    invoke-interface {p1, p0}, Lcom/subgraph/orchid/Connection;->bindCircuit(Lcom/subgraph/orchid/Circuit;)I

    move-result v0

    .line 94
    new-instance v1, Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-direct {v1, p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitIO;-><init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Lcom/subgraph/orchid/Connection;I)V

    iput-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Circuit already bound to a connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method choosePath(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->prechosenPath:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->prechosenPath:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->choosePathForCircuit(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected abstract choosePathForCircuit(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation
.end method

.method protected createNewStream()Lcom/subgraph/orchid/circuits/StreamImpl;
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->createNewStream(Z)Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object v0

    return-object v0
.end method

.method protected createNewStream(Z)Lcom/subgraph/orchid/circuits/StreamImpl;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->createNewStream(Z)Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object p1

    return-object p1
.end method

.method public createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/subgraph/orchid/circuits/CircuitIO;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object p1

    return-object p1
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-interface {p1, p2, p3, v0}, Lcom/subgraph/orchid/dashboard/DashboardRenderer;->renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public deliverControlCell(Lcom/subgraph/orchid/Cell;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->deliverControlCell(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method public deliverRelayCell(Lcom/subgraph/orchid/Cell;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->deliverRelayCell(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method public destroyCircuit()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->destroyCircuit()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->removeActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V

    return-void
.end method

.method public getActiveStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Stream;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getActiveStreams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCircuitId()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getCircuitId()I

    move-result v0

    return v0
.end method

.method getCircuitLength()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getCircuitTypeLabel()Ljava/lang/String;
.end method

.method public getConnection()Lcom/subgraph/orchid/Connection;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->getConnection()Lcom/subgraph/orchid/Connection;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v1, "Circuit is not connected."

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->nodeList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/CircuitNode;

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v1, "getFinalCircuitNode() called on empty circuit"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/CircuitNode;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->nodeList:Ljava/util/List;

    return-object v0
.end method

.method public getSecondsDirty()I
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getMillisecondsDirty()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method getStatus()Lcom/subgraph/orchid/circuits/CircuitStatus;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    return-object v0
.end method

.method public isClean()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isDirty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isMarkedForClose()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->isMarkedForClose()Z

    move-result v0

    return v0
.end method

.method public isPending()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isBuilding()Z

    move-result v0

    return v0
.end method

.method public markForClose()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->markForClose()V

    :cond_0
    return-void
.end method

.method notifyCircuitBuildCompleted()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->setStateOpen()V

    .line 147
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->updateCreatedTimestamp()V

    return-void
.end method

.method notifyCircuitBuildFailed()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->setStateFailed()V

    .line 142
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->removeActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V

    return-void
.end method

.method notifyCircuitBuildStart()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isUnconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->updateCreatedTimestamp()V

    .line 136
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->setStateBuilding()V

    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->addActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only connect UNCONNECTED circuits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected pathToString()Ljava/lang/String;
    .locals 5

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->nodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/CircuitNode;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const-string v3, ","

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .line 245
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_2

    .line 247
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_1

    .line 249
    instance-of v0, p1, Lcom/subgraph/orchid/StreamConnectFailedException;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Lcom/subgraph/orchid/StreamConnectFailedException;

    throw p1

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 248
    :cond_1
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    throw p1

    .line 246
    :cond_2
    check-cast p1, Ljava/lang/InterruptedException;

    throw p1
.end method

.method receiveControlCellResponse()Lcom/subgraph/orchid/Cell;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->receiveControlCellResponse()Lcom/subgraph/orchid/Cell;

    move-result-object v0

    return-object v0
.end method

.method public receiveRelayCell()Lcom/subgraph/orchid/RelayCell;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitIO;->dequeueRelayResponseCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    return-object v0
.end method

.method public removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    return-void
.end method

.method sendCell(Lcom/subgraph/orchid/Cell;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendCell(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method public sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendRelayCellTo(Lcom/subgraph/orchid/RelayCell;Lcom/subgraph/orchid/CircuitNode;)V

    return-void
.end method

.method public sendRelayCellToFinalNode(Lcom/subgraph/orchid/RelayCell;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->io:Lcom/subgraph/orchid/circuits/CircuitIO;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/subgraph/orchid/circuits/CircuitIO;->sendRelayCellTo(Lcom/subgraph/orchid/RelayCell;Lcom/subgraph/orchid/CircuitNode;)V

    return-void
.end method

.method setStateDestroyed()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->setStateDestroyed()V

    .line 228
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0, p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->removeActiveCircuit(Lcom/subgraph/orchid/circuits/CircuitImpl;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Circuit ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitTypeLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitImpl;->status:Lcom/subgraph/orchid/circuits/CircuitStatus;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->pathToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
