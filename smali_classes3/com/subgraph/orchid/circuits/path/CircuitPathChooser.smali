.class public Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
.super Ljava/lang/Object;
.source "CircuitPathChooser.java"


# instance fields
.field private final directory:Lcom/subgraph/orchid/Directory;

.field private entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

.field private final nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

.field private useEntryGuards:Z


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    .line 33
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    return-void
.end method

.method private areInSameSlash16(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)Z
    .locals 1

    .line 150
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object p1

    .line 151
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object p2

    .line 153
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result p1

    const/high16 v0, -0x10000

    and-int/2addr p1, v0

    invoke-virtual {p2}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result p2

    and-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private countTargetSupport(Lcom/subgraph/orchid/Router;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)I"
        }
    .end annotation

    .line 187
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    .line 188
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->routerSupportsTarget(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static create(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
    .locals 2

    .line 22
    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    new-instance v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-direct {v1, p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;)V

    return-object v0
.end method

.method private excludeChosenRouterAndRelated(Lcom/subgraph/orchid/Router;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getAllRouters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 122
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->areInSameSlash16(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getFamilyMembers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2, v1}, Lcom/subgraph/orchid/Directory;->getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getFamilyMembers()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->isFamilyMember(Ljava/util/Collection;Lcom/subgraph/orchid/Router;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private filterForExitTargets(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 162
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 164
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 165
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/Router;

    .line 166
    invoke-direct {p0, v4, p2}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->countTargetSupport(Lcom/subgraph/orchid/Router;Ljava/util/List;)I

    move-result v4

    aput v4, v0, v2

    .line 167
    aget v4, v0, v2

    if-le v4, v3, :cond_1

    .line 168
    aget v3, v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-object p1

    .line 176
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 178
    aget v2, v0, v1

    if-ne v2, v3, :cond_4

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object p2
.end method

.method private getUsableExitRouters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getUsableRouters(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    .line 112
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isBadExit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isFamilyMember(Ljava/util/Collection;Lcom/subgraph/orchid/Router;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/subgraph/orchid/Router;",
            ")Z"
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1, v0}, Lcom/subgraph/orchid/Directory;->getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private routerSupportsTarget(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z
    .locals 1

    .line 196
    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->isAddressTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result p1

    return p1

    .line 199
    :cond_0
    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public chooseDirectoryPath()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->isUsingBridges()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 46
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v3, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->chooseRandomGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v2, [Lcom/subgraph/orchid/Router;

    aput-object v0, v2, v1

    .line 50
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to choose bridge for directory request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v0

    new-array v2, v2, [Lcom/subgraph/orchid/Router;

    aput-object v0, v2, v1

    .line 53
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public chooseEntryNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->chooseRandomGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v2, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;

    invoke-direct {v2, p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method public chooseExitNodeForTargets(Ljava/util/List;)Lcom/subgraph/orchid/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->getUsableExitRouters()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->filterForExitTargets(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseExitNode(Ljava/util/List;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method public chooseInternalPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseMiddleNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->choosePathWithFinal(Lcom/subgraph/orchid/Router;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method chooseMiddleNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_MID:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v2, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$2;

    invoke-direct {v2, p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$2;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method public choosePathWithExit(Lcom/subgraph/orchid/Router;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
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

    .line 63
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->choosePathWithFinal(Lcom/subgraph/orchid/Router;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public choosePathWithFinal(Lcom/subgraph/orchid/Router;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
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

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->excludeChosenRouterAndRelated(Lcom/subgraph/orchid/Router;Ljava/util/Set;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseMiddleNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, v1, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->excludeChosenRouterAndRelated(Lcom/subgraph/orchid/Router;Ljava/util/Set;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseEntryNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/subgraph/orchid/Router;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;

    const-string v0, "Failed to select suitable entry node"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;

    const-string v0, "Failed to select suitable middle node"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableEntryGuards(Lcom/subgraph/orchid/circuits/guards/EntryGuards;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    return-void
.end method
