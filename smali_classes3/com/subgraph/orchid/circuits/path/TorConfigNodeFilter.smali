.class public Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;
.super Ljava/lang/Object;
.source "TorConfigNodeFilter.java"


# static fields
.field private static final ENTRY_NODES_FILTER:Ljava/lang/String; = "EntryNodes"

.field private static final EXCLUDE_EXIT_NODES_FILTER:Ljava/lang/String; = "ExcludeExitNodes"

.field private static final EXCLUDE_NODES_FILTER:Ljava/lang/String; = "ExcludeNodes"

.field private static final EXIT_NODES_FILTER:Ljava/lang/String; = "ExitNodes"


# instance fields
.field private final filters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    .line 26
    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getExcludeNodes()Ljava/util/List;

    move-result-object v1

    const-string v2, "ExcludeNodes"

    invoke-static {v0, v2, v1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getExcludeExitNodes()Ljava/util/List;

    move-result-object v1

    const-string v2, "ExcludeExitNodes"

    invoke-static {v0, v2, v1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getEntryNodes()Ljava/util/List;

    move-result-object v1

    const-string v2, "EntryNodes"

    invoke-static {v0, v2, v1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getExitNodes()Ljava/util/List;

    move-result-object p1

    const-string v1, "ExitNodes"

    invoke-static {v0, v1, p1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 33
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createFromStrings(Ljava/util/List;)Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method filterExitCandidates(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 42
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isExitNodeIncluded(Lcom/subgraph/orchid/Router;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method isExcludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method isExitNodeIncluded(Lcom/subgraph/orchid/Router;)Z
    .locals 1

    const-string v0, "ExitNodes"

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isIncludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExcludeExitNodes"

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isExcludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ExcludeNodes"

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isExcludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isIncludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
