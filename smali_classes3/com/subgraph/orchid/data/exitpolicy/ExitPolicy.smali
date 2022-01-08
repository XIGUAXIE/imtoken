.class public Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;
.super Ljava/lang/Object;
.source "ExitPolicy.java"


# instance fields
.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptsDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 3

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0, p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsPort(I)Z

    move-result p1

    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    .line 31
    invoke-virtual {v1, p1, p2}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->matchesDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public acceptsPort(I)Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    .line 40
    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->matchesPort(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public acceptsTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z
    .locals 1

    .line 20
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->isAddressTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result p1

    return p1

    .line 23
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsPort(I)Z

    move-result p1

    return p1
.end method

.method public addAcceptRule(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createAcceptFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRejectRule(Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createRejectFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
