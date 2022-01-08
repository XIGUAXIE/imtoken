.class public Lcom/subgraph/orchid/directory/DescriptorCacheData;
.super Ljava/lang/Object;
.source "DescriptorCacheData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/subgraph/orchid/Descriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EXPIRY_PERIOD:J = 0x240c8400L


# instance fields
.field private final allDescriptors:Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final descriptorMap:Ljava/util/Map;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    return-void
.end method

.method private getExpiredSet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 77
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/Descriptor;

    .line 78
    invoke-direct {p0, v4, v0, v1}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->isExpired(Lcom/subgraph/orchid/Descriptor;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private isExpired(Lcom/subgraph/orchid/Descriptor;J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)Z"
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getLastListed()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getLastListed()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr p2, v2

    cmp-long p1, v0, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method declared-synchronized addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 42
    monitor-exit p0

    return p1

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/Descriptor;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 46
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized cleanExpired()I
    .locals 5

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->getExpiredSet()Ljava/util/Set;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 58
    monitor-exit p0

    return v2

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->clear()V

    .line 63
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/Descriptor;

    .line 64
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v3}, Lcom/subgraph/orchid/Descriptor;->getBodyLength()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, v3}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized findByDigest(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->descriptorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/Descriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getAllDescriptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCacheData;->allDescriptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
