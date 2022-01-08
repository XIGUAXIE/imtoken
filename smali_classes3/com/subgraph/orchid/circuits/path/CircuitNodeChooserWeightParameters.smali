.class Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;
.super Ljava/lang/Object;
.source "CircuitNodeChooserWeightParameters.java"


# static fields
.field private static final ONE:Ljava/lang/String; = "one"

.field private static final VAR_COUNT:I = 0x8

.field private static final VAR_WD:I = 0x3

.field private static final VAR_WDB:I = 0x7

.field private static final VAR_WE:I = 0x2

.field private static final VAR_WEB:I = 0x6

.field private static final VAR_WG:I = 0x0

.field private static final VAR_WGB:I = 0x4

.field private static final VAR_WM:I = 0x1

.field private static final VAR_WMB:I = 0x5

.field private static final ZERO:Ljava/lang/String; = "zero"


# instance fields
.field private final isValid:Z

.field private final vars:[D


# direct methods
.method private constructor <init>([DZ)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    .line 89
    iput-boolean p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->isValid:Z

    return-void
.end method

.method private calculateWeight(ZZZ)D
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWdb()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWd()D

    move-result-wide v0

    mul-double p1, p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWd()D

    move-result-wide p1

    :goto_0
    return-wide p1

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWgb()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWg()D

    move-result-wide v0

    mul-double p1, p1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWg()D

    move-result-wide p1

    :goto_1
    return-wide p1

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWeb()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWe()D

    move-result-wide v0

    mul-double p1, p1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWe()D

    move-result-wide p1

    :goto_2
    return-wide p1

    :cond_5
    if-eqz p3, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWmb()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWm()D

    move-result-wide v0

    mul-double p1, p1, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getWm()D

    move-result-wide p1

    :goto_3
    return-wide p1
.end method

.method static create(Lcom/subgraph/orchid/ConsensusDocument;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [D

    .line 22
    invoke-interface {p0}, Lcom/subgraph/orchid/ConsensusDocument;->getWeightScaleParameter()I

    move-result v2

    int-to-long v2, v2

    .line 23
    invoke-static {p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->getTagsForWeightRule(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)[Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p0, v2, v3, p1, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->populateVars(Lcom/subgraph/orchid/ConsensusDocument;J[Ljava/lang/String;[D)Z

    move-result p0

    if-nez p0, :cond_0

    .line 25
    new-instance p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;

    new-array p1, v0, [D

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;-><init>([DZ)V

    return-object p0

    .line 27
    :cond_0
    new-instance p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;-><init>([DZ)V

    return-object p0
.end method

.method static getTagsForWeightRule(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;)[Ljava/lang/String;
    .locals 10

    .line 54
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters$1;->$SwitchMap$com$subgraph$orchid$circuits$path$CircuitNodeChooser$WeightRule:[I

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v2, "one"

    const-string v3, "one"

    const-string v4, "one"

    const-string v5, "one"

    const-string v6, "one"

    const-string v7, "one"

    const-string v8, "one"

    const-string v9, "one"

    .line 76
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled WeightRule type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "Wbe"

    const-string v2, "Wbm"

    const-string v3, "Wbd"

    const-string v4, "Wbg"

    const-string v5, "one"

    const-string v6, "one"

    const-string v7, "one"

    const-string v8, "one"

    .line 71
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "Wee"

    const-string v1, "Wem"

    const-string v2, "Wed"

    const-string v3, "Weg"

    const-string v4, "Wgb"

    const-string v5, "Wmb"

    const-string v6, "Web"

    const-string v7, "Wdb"

    .line 66
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "Wmg"

    const-string v1, "Wmm"

    const-string v2, "Wme"

    const-string v3, "Wmd"

    const-string v4, "Wgb"

    const-string v5, "Wmb"

    const-string v6, "Web"

    const-string v7, "Wdb"

    .line 61
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "Wgg"

    const-string v1, "Wgm"

    const-string v2, "zero"

    const-string v3, "Wgd"

    const-string v4, "Wgb"

    const-string v5, "Wmb"

    const-string v6, "Web"

    const-string v7, "Wdb"

    .line 56
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static populateVars(Lcom/subgraph/orchid/ConsensusDocument;J[Ljava/lang/String;[D)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 33
    aget-object v2, p3, v1

    invoke-static {p0, p1, p2, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->tagToVarValue(Lcom/subgraph/orchid/ConsensusDocument;JLjava/lang/String;)D

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 34
    aget-wide v2, p4, v1

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    return v0

    .line 37
    :cond_0
    aget-wide v2, p4, v1

    long-to-double v4, p1

    div-double/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static tagToVarValue(Lcom/subgraph/orchid/ConsensusDocument;JLjava/lang/String;)D
    .locals 0

    const-string p1, "zero"

    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-string p1, "one"

    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    .line 49
    :cond_1
    invoke-interface {p0, p3}, Lcom/subgraph/orchid/ConsensusDocument;->getBandwidthWeight(Ljava/lang/String;)I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method


# virtual methods
.method calculateWeightedBandwidth(Lcom/subgraph/orchid/Router;)D
    .locals 6

    .line 126
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getEstimatedBandwidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->kbToBytes(J)J

    move-result-wide v0

    .line 128
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isBadExit()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 129
    :goto_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v5

    .line 130
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getDirectoryPort()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 127
    :goto_1
    invoke-direct {p0, v2, v5, v3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->calculateWeight(ZZZ)D

    move-result-wide v2

    long-to-double v0, v0

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v0

    return-wide v2
.end method

.method getWd()D
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x3

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getWdb()D
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x7

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getWe()D
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getWeb()D
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x6

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getWg()D
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getWgb()D
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getWm()D
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getWmb()D
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->vars:[D

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method isValid()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooserWeightParameters;->isValid:Z

    return v0
.end method

.method kbToBytes(J)J
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
