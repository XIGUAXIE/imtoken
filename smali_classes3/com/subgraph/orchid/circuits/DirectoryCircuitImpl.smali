.class public Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;
.super Lcom/subgraph/orchid/circuits/CircuitImpl;
.source "DirectoryCircuitImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryCircuit;


# direct methods
.method protected constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
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

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    return-void
.end method


# virtual methods
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

    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->prechosenPath:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->prechosenPath:Ljava/util/List;

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseDirectoryPath()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getCircuitTypeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Directory"

    return-object v0
.end method

.method public openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p3}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->createNewStream(Z)Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object p3

    .line 22
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/subgraph/orchid/circuits/StreamImpl;->openDirectory(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p0, p3}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/DirectoryCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1
.end method
