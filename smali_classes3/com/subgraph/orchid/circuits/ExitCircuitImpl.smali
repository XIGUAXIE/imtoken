.class public Lcom/subgraph/orchid/circuits/ExitCircuitImpl;
.super Lcom/subgraph/orchid/circuits/CircuitImpl;
.source "ExitCircuitImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ExitCircuit;


# instance fields
.field private final exitRouter:Lcom/subgraph/orchid/Router;

.field private final failedExitRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/Router;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V

    .line 30
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    .line 31
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/Router;

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 58
    monitor-exit v0

    return v2

    .line 60
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->isMarkedForClose()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 66
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->isAddressTarget()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result p1

    return p1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(I)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public canHandleExitToPort(I)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(I)Z

    move-result p1

    return p1
.end method

.method protected choosePathForCircuit(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;
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
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->exitRouter:Lcom/subgraph/orchid/Router;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->choosePathWithExit(Lcom/subgraph/orchid/Router;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getCircuitTypeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Exit"

    return-object v0
.end method

.method public openExitStream(Lcom/subgraph/orchid/data/IPv4Address;IJ)Lcom/subgraph/orchid/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->openExitStream(Ljava/lang/String;IJ)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method

.method public openExitStream(Ljava/lang/String;IJ)Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->createNewStream()Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/subgraph/orchid/circuits/StreamImpl;->openExit(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method

.method public recordFailedExitTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/ExitCircuitImpl;->failedExitRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
