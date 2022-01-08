.class Lorg/apache/commons/beanutils/WeakFastHashMap;
.super Ljava/util/HashMap;
.source "WeakFastHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;,
        Lorg/apache/commons/beanutils/WeakFastHashMap$Values;,
        Lorg/apache/commons/beanutils/WeakFastHashMap$KeySet;,
        Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private fast:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(IF)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$402(Lorg/apache/commons/beanutils/WeakFastHashMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 314
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    .line 317
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 320
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 321
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 425
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 429
    :try_start_0
    new-instance v1, Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>(Ljava/util/Map;)V

    .line 430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 432
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 430
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected cloneMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 207
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 225
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected createMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-object v0
.end method

.method protected createMap(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1}, Ljava/util/WeakHashMap;-><init>(I)V

    return-object v0
.end method

.method protected createMap(IF)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/WeakHashMap;-><init>(IF)V

    return-object v0
.end method

.method protected createMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 446
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$EntrySet;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 342
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 345
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 348
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v1, :cond_7

    .line 349
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 352
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 354
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 356
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v2

    .line 360
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_6
    return v0

    .line 368
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v1

    .line 369
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 370
    monitor-exit v1

    return v2

    .line 372
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 374
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    .line 376
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 377
    :cond_a
    monitor-exit v1

    return v2

    .line 380
    :cond_b
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 381
    monitor-exit v1

    return v2

    .line 385
    :cond_c
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 386
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 157
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFast()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 399
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 402
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1

    .line 406
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v3}, Ljava/util/Map$Entry;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 411
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 189
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 455
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$KeySet;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 254
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 255
    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    .line 256
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 260
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 261
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 273
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 274
    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 276
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 277
    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    .line 278
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 281
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 295
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 298
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    iput-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    .line 300
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 301
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 304
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 305
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setFast(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    return-void
.end method

.method public size()I
    .locals 2

    .line 173
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 464
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$Values;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap;Lorg/apache/commons/beanutils/WeakFastHashMap$1;)V

    return-object v0
.end method
