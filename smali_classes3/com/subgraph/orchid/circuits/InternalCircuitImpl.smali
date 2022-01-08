.class public Lcom/subgraph/orchid/circuits/InternalCircuitImpl;
.super Lcom/subgraph/orchid/circuits/CircuitImpl;
.source "InternalCircuitImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/InternalCircuit;
.implements Lcom/subgraph/orchid/DirectoryCircuit;
.implements Lcom/subgraph/orchid/HiddenServiceCircuit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;
    }
.end annotation


# instance fields
.field private ntorEnabled:Z

.field private type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;


# direct methods
.method protected constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

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

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 26
    sget-object p2, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    .line 27
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->ntorEnabled:Z

    return-void
.end method

.method private cannibalizeTo(Lcom/subgraph/orchid/Router;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->ntorEnabled:Z

    invoke-direct {v0, p0, v1}, Lcom/subgraph/orchid/circuits/CircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Z)V

    .line 53
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->extendTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot cannibalize internal circuit with type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cannibalizeToDirectory(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->cannibalizeTo(Lcom/subgraph/orchid/Router;)V

    .line 73
    sget-object p1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_DIRECTORY:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    return-object p0
.end method

.method public cannibalizeToIntroductionPoint(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Circuit;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->cannibalizeTo(Lcom/subgraph/orchid/Router;)V

    .line 43
    sget-object p1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_INTRODUCTION:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    return-object p0
.end method

.method protected choosePathForCircuit(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;
    .locals 0
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

    .line 37
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseInternalPath()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public connectHiddenService(Lcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->appendNode(Lcom/subgraph/orchid/CircuitNode;)V

    .line 83
    sget-object p1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_CIRCUIT:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    return-object p0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot connect hidden service from internal circuit type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getCircuitTypeLabel()Ljava/lang/String;
    .locals 2

    .line 105
    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$1;->$SwitchMap$com$subgraph$orchid$circuits$InternalCircuitImpl$InternalType:[I

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "(null)"

    return-object v0

    :cond_0
    const-string v0, "Internal"

    return-object v0

    :cond_1
    const-string v0, "HS Introduction"

    return-object v0

    :cond_2
    const-string v0, "HS Directory"

    return-object v0

    :cond_3
    const-string v0, "Hidden Service"

    return-object v0
.end method

.method public openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .line 57
    iget-object p3, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_DIRECTORY:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-ne p3, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->createNewStream()Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object p3

    .line 62
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/subgraph/orchid/circuits/StreamImpl;->openDirectory(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p0, p3}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot open directory stream on internal circuit with type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openStream(IJ)Lcom/subgraph/orchid/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_CIRCUIT:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->createNewStream()Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object v0

    :try_start_0
    const-string v1, ""

    .line 94
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/subgraph/orchid/circuits/StreamImpl;->openExit(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot open stream to hidden service from internal circuit type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
