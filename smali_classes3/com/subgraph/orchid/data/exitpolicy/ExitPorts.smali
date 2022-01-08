.class public Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
.super Ljava/lang/Object;
.source "ExitPorts.java"


# instance fields
.field private final areAcceptPorts:Z

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/exitpolicy/PortRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->ranges:Ljava/util/List;

    .line 27
    iput-boolean p1, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->areAcceptPorts:Z

    return-void
.end method

.method public static createAcceptExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    .locals 2

    .line 12
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;-><init>(Z)V

    .line 13
    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->parsePortRanges(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createRejectExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    .locals 2

    .line 18
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;-><init>(Z)V

    .line 19
    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->parsePortRanges(Ljava/lang/String;)V

    return-object v0
.end method

.method private parsePortRanges(Ljava/lang/String;)V
    .locals 4

    const-string v0, ","

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 50
    iget-object v3, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->ranges:Ljava/util/List;

    invoke-static {v2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptsPort(I)Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->areAcceptPorts:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->contains(I)Z

    move-result p1

    return p1

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->contains(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public areAcceptPorts()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->areAcceptPorts:Z

    return v0
.end method

.method public contains(I)Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    .line 42
    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->rangeContains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
