.class public Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;
.super Ljava/lang/Object;
.source "CircuitNodeChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 0.1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final configNodeFilter:Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 24
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    .line 25
    new-instance p2, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;-><init>(Lcom/subgraph/orchid/TorConfig;)V

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->configNodeFilter:Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

    return-void
.end method

.method private calculateWeight(ZDD)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double p2, p2, v2

    div-double/2addr p4, p2

    sub-double/2addr v0, p4

    const-wide/16 p1, 0x0

    cmpg-double p3, v0, p1

    if-gtz p3, :cond_1

    return-wide p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseNodeByBandwidthWeights(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseNodeByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method private chooseNodeByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;

    invoke-direct {v0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    .line 130
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getRouterBandwidthBytes(Lcom/subgraph/orchid/Router;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 132
    invoke-virtual {v0, v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->addRouterUnknown(Lcom/subgraph/orchid/Router;)V

    goto :goto_0

    :cond_0
    long-to-double v3, v3

    .line 134
    invoke-virtual {v0, v2, v3, v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->addRouter(Lcom/subgraph/orchid/Router;D)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->fixUnknownValues()V

    .line 138
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isTotalBandwidthZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_2
    iget-object p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result p2

    .line 144
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/Router;

    return-object p1

    .line 147
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->computeFinalWeights(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)V

    .line 148
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->chooseRandomRouterByWeight()Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method private chooseNodeByBandwidthWeights(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->computeWeightedBandwidths(Ljava/util/List;Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->chooseRandomRouterByWeight()Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method private computeFinalWeights(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)V
    .locals 11

    .line 155
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_EXIT:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 156
    :goto_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalExitBandwidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v7

    move-object v3, p0

    .line 155
    invoke-direct/range {v3 .. v8}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->calculateWeight(ZDD)D

    move-result-wide v3

    .line 157
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    if-ne p2, v0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 158
    :goto_1
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalGuardBandwidth()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v9

    move-object v5, p0

    .line 157
    invoke-direct/range {v5 .. v10}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->calculateWeight(ZDD)D

    move-result-wide v0

    .line 160
    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->adjustWeights(DD)V

    return-void
.end method

.method private computeWeightedBandwidths(Ljava/util/List;Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Lcom/subgraph/orchid/ConsensusDocument;",
            "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
            ")",
            "Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;"
        }
    .end annotation

    .line 114
    invoke-static {p2, p3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->create(Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;

    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->isValid()Z

    move-result p3

    if-nez p3, :cond_0

    .line 116
    sget-object p1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->logger:Ljava/util/logging/Logger;

    const-string p2, "Got invalid bandwidth weights. Falling back to old selection method"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    new-instance p3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;

    invoke-direct {p3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    .line 121
    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->calculateWeightedBandwidth(Lcom/subgraph/orchid/Router;)D

    move-result-wide v1

    .line 122
    invoke-virtual {p3, v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->addRouter(Lcom/subgraph/orchid/Router;D)V

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method private getFilteredRouters(Lcom/subgraph/orchid/circuits/path/RouterFilter;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/path/RouterFilter;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p0, p2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getUsableRouters(Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 72
    invoke-interface {p1, v1}, Lcom/subgraph/orchid/circuits/path/RouterFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getRouterBandwidthBytes(Lcom/subgraph/orchid/Router;)J
    .locals 2

    .line 176
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->hasBandwidth()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 179
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getEstimatedBandwidth()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->kbToBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private kbToBytes(J)J
    .locals 3

    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    :goto_0
    return-wide p1
.end method


# virtual methods
.method public chooseDirectory()Lcom/subgraph/orchid/Router;
    .locals 2

    .line 39
    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$1;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;)V

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getFilteredRouters(Lcom/subgraph/orchid/circuits/path/RouterFilter;Z)Ljava/util/List;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_DIR:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getRandomDirectoryAuthority()Lcom/subgraph/orchid/DirectoryServer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public chooseExitNode(Ljava/util/List;)Lcom/subgraph/orchid/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->configNodeFilter:Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filterExitCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 35
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_EXIT:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method public chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p2, v0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getFilteredRouters(Lcom/subgraph/orchid/circuits/path/RouterFilter;Z)Ljava/util/List;

    move-result-object p2

    .line 61
    invoke-direct {p0, p2, p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseByBandwidth(Ljava/util/List;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method getUsableRouters(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->getAllRouters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    .line 82
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isHibernating()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    .line 85
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->getCurrentDescriptor()Lcom/subgraph/orchid/Descriptor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
