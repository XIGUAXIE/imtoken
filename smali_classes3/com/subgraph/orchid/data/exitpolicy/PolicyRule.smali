.class public Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
.super Ljava/lang/Object;
.source "PolicyRule.java"


# static fields
.field private static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field private final isAcceptRule:Z

.field private final network:Lcom/subgraph/orchid/data/exitpolicy/Network;

.field private final portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;


# direct methods
.method private constructor <init>(Lcom/subgraph/orchid/data/exitpolicy/Network;Lcom/subgraph/orchid/data/exitpolicy/PortRange;Z)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    .line 45
    iput-object p2, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    .line 46
    iput-boolean p3, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule:Z

    return-void
.end method

.method public static createAcceptFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createRule(Ljava/lang/String;Z)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object p0

    return-object p0
.end method

.method public static createRejectFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createRule(Ljava/lang/String;Z)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object p0

    return-object p0
.end method

.method private static createRule(Ljava/lang/String;Z)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    .locals 3

    const-string v0, ":"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 19
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 22
    new-instance p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->parseNetwork(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->parsePortRange(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;-><init>(Lcom/subgraph/orchid/data/exitpolicy/Network;Lcom/subgraph/orchid/data/exitpolicy/PortRange;Z)V

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse exit policy rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseNetwork(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;
    .locals 1

    const-string v0, "*"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;

    return-object p0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/data/exitpolicy/Network;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;

    move-result-object p0

    return-object p0
.end method

.method private static parsePortRange(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;
    .locals 1

    const-string v0, "*"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->ALL_PORTS:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    return-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isAcceptRule()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule:Z

    return v0
.end method

.method public matchesDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/Network;->contains(Lcom/subgraph/orchid/data/IPv4Address;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->rangeContains(I)Z

    move-result p1

    return p1
.end method

.method public matchesPort(I)Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    sget-object v1, Lcom/subgraph/orchid/data/exitpolicy/Network;->ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->rangeContains(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule:Z

    if-eqz v0, :cond_0

    const-string v0, "accept"

    goto :goto_0

    :cond_0
    const-string v0, "reject"

    .line 67
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
