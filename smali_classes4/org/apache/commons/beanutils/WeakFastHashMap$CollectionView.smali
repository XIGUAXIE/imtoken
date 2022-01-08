.class abstract Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;
.super Ljava/lang/Object;
.source "WeakFastHashMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WeakFastHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/WeakFastHashMap;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 652
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 656
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 508
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->createMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$402(Lorg/apache/commons/beanutils/WeakFastHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 511
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 514
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 515
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

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 586
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 591
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 599
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 600
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 634
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract get(Ljava/util/Map;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 2

    .line 642
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 647
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 576
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 579
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 581
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 660
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView$CollectionViewIterator;-><init>(Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;)V

    return-object v0
.end method

.method protected abstract iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TE;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 520
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 523
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 524
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v2, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$402(Lorg/apache/commons/beanutils/WeakFastHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 525
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 529
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 530
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 538
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    .line 539
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v2, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$402(Lorg/apache/commons/beanutils/WeakFastHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 540
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 541
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 543
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 544
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 545
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 553
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    .line 554
    iget-object v2, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v2, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$402(Lorg/apache/commons/beanutils/WeakFastHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 555
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 560
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public size()I
    .locals 2

    .line 565
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 570
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 616
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 619
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 621
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$300(Lorg/apache/commons/beanutils/WeakFastHashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->this$0:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-static {v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->access$400(Lorg/apache/commons/beanutils/WeakFastHashMap;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
