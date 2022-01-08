.class public Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;
.super Ljava/lang/Object;
.source "BandwidthWeightedRouters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 0.1

.field private static final MAX_SCALE:J = 0x1fffffffffffffffL


# instance fields
.field private isScaled:Z

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private totalExitBw:D

.field private totalGuardBw:D

.field private totalNonExitBw:D

.field private unknownCount:I

.field private final weightedRouters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method private adjustTotals(Lcom/subgraph/orchid/Router;D)V
    .locals 2

    .line 63
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    goto :goto_0

    .line 66
    :cond_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalNonExitBw:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalNonExitBw:D

    .line 68
    :goto_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalGuardBw:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalGuardBw:D

    :cond_1
    return-void
.end method

.method private chooseFirstElementAboveRandom(J)Lcom/subgraph/orchid/Router;
    .locals 9

    .line 143
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 144
    invoke-static {v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$300(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)J

    move-result-wide v5

    add-long/2addr v1, v5

    cmp-long v5, v1, p1

    if-lez v5, :cond_0

    .line 146
    invoke-static {v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    const-wide v3, 0x7fffffffffffffffL

    move-wide v7, v3

    move-object v3, p1

    move-wide p1, v7

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 152
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    invoke-static {p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v3
.end method

.method private fixUnknownValues(JJ)V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 103
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$000(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v3

    invoke-interface {v3}, Lcom/subgraph/orchid/Router;->isFast()Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide v3, p1

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    long-to-double v3, v3

    .line 105
    invoke-static {v1, v3, v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$202(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    .line 106
    invoke-static {v1, v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$002(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;Z)Z

    .line 107
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    invoke-direct {p0, v1, v3, v4}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->adjustTotals(Lcom/subgraph/orchid/Router;D)V

    goto :goto_0

    .line 110
    :cond_2
    iput v2, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    .line 111
    iput-boolean v2, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    return-void
.end method

.method private getScaledTotal()J
    .locals 5

    .line 174
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->scaleRouterWeights()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 178
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 179
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$300(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private getWeightedTotal()D
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 160
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$200(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private scaleRouterWeights()V
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getWeightedTotal()D

    move-result-wide v0

    const-wide/high16 v2, 0x43c0000000000000L    # 2.305843009213694E18

    div-double/2addr v2, v0

    .line 167
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 168
    invoke-virtual {v1, v2, v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->scaleBandwidth(D)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    return-void
.end method


# virtual methods
.method addRouter(Lcom/subgraph/orchid/Router;D)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    new-instance v1, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    invoke-direct {v1, p1, p2, p3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;-><init>(Lcom/subgraph/orchid/Router;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->adjustTotals(Lcom/subgraph/orchid/Router;D)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isScaled:Z

    return-void
.end method

.method addRouterUnknown(Lcom/subgraph/orchid/Router;)V
    .locals 3

    .line 74
    new-instance v0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;-><init>(Lcom/subgraph/orchid/Router;D)V

    const/4 p1, 0x1

    .line 75
    invoke-static {v0, p1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$002(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;Z)Z

    .line 76
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    return-void
.end method

.method adjustWeights(DD)V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    .line 128
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v2

    .line 129
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$200(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)D

    move-result-wide v2

    mul-double v4, p1, p3

    mul-double v2, v2, v4

    invoke-static {v1, v2, v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$202(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$200(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)D

    move-result-wide v2

    mul-double v2, v2, p3

    invoke-static {v1, v2, v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$202(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$200(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)D

    move-result-wide v2

    mul-double v2, v2, p1

    invoke-static {v1, v2, v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$202(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;D)D

    goto :goto_0

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->scaleRouterWeights()V

    return-void
.end method

.method chooseRandomRouterByWeight()Lcom/subgraph/orchid/Router;
    .locals 5

    .line 115
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getScaledTotal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;->access$100(Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters$WeightedRouter;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v2, v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->nextLong(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->chooseFirstElementAboveRandom(J)Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0
.end method

.method fixUnknownValues()V
    .locals 5

    .line 89
    iget v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->isTotalBandwidthZero()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x9c40

    const-wide/16 v2, 0x4e20

    .line 93
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->fixUnknownValues(JJ)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    sub-int/2addr v0, v1

    .line 96
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-long v0, v1

    .line 97
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->fixUnknownValues(JJ)V

    :goto_0
    return-void
.end method

.method getRouterCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->weightedRouters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getTotalBandwidth()D
    .locals 4

    .line 50
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    iget-wide v2, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalNonExitBw:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method getTotalExitBandwidth()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalExitBw:D

    return-wide v0
.end method

.method getTotalGuardBandwidth()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->totalGuardBw:D

    return-wide v0
.end method

.method getUnknownCount()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->unknownCount:I

    return v0
.end method

.method isTotalBandwidthZero()Z
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/BandwidthWeightedRouters;->getTotalBandwidth()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
