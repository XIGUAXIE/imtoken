.class public Lcom/subgraph/orchid/circuits/CircuitPredictor;
.super Ljava/lang/Object;
.source "CircuitPredictor.java"

# interfaces
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field private static final INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

.field private static final TIMEOUT_MS:J = 0x36ee80L


# instance fields
.field private final portsSeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    const/16 v0, 0x50

    .line 27
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addExitPortRequest(I)V

    .line 28
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addInternalRequest()V

    return-void
.end method

.method private isEntryExpired(Ljava/util/Map$Entry;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/32 v0, 0x36ee80

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeExpiredPorts()V
    .locals 4

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {p0, v3, v0, v1}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->isEntryExpired(Ljava/util/Map$Entry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addExitPortRequest(I)V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addInternalRequest()V
    .locals 1

    .line 38
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addExitPortRequest(I)V

    return-void
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "[Predicted Ports] "

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-eqz p3, :cond_1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 93
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (last seen "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " minutes ago)"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getPredictedPortTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/PredictedPortTarget;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->getPredictedPorts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    new-instance v3, Lcom/subgraph/orchid/circuits/PredictedPortTarget;

    invoke-direct {v3, v2}, Lcom/subgraph/orchid/circuits/PredictedPortTarget;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getPredictedPorts()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->removeExpiredPorts()V

    .line 66
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isInternalPredicted()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->removeExpiredPorts()V

    .line 59
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
