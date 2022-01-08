.class Lorg/bitcoinj/core/PeerGroup$10;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$mode:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 1348
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iput-object p2, p0, Lorg/bitcoinj/core/PeerGroup$10;->val$mode:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    iput-object p3, p0, Lorg/bitcoinj/core/PeerGroup$10;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 8

    .line 1359
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1361
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$2000(Lorg/bitcoinj/core/PeerGroup;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 1364
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$100(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/FilterMerger;

    move-result-object v0

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v2}, Lorg/bitcoinj/core/PeerGroup;->access$2100(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/net/FilterMerger;->calculate(Lcom/google/common/collect/ImmutableList;)Lorg/bitcoinj/net/FilterMerger$Result;

    move-result-object v0

    .line 1366
    sget-object v2, Lorg/bitcoinj/core/PeerGroup$17;->$SwitchMap$org$bitcoinj$core$PeerGroup$FilterRecalculateMode:[I

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$10;->val$mode:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v3}, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    if-eq v2, v1, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1377
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1368
    :cond_5
    iget-boolean v2, v0, Lorg/bitcoinj/net/FilterMerger$Result;->changed:Z

    :goto_0
    if-eqz v2, :cond_8

    .line 1380
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v2}, Lorg/bitcoinj/core/PeerGroup;->access$2200(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Peer;

    .line 1384
    iget-object v5, v0, Lorg/bitcoinj/net/FilterMerger$Result;->filter:Lorg/bitcoinj/core/BloomFilter;

    iget-object v6, p0, Lorg/bitcoinj/core/PeerGroup$10;->val$mode:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    sget-object v7, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND_FOR_REFRESH:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4, v5, v6}, Lorg/bitcoinj/core/Peer;->setBloomFilter(Lorg/bitcoinj/core/BloomFilter;Z)V

    goto :goto_1

    .line 1388
    :cond_7
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, v1, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz v1, :cond_8

    .line 1389
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, v1, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v1}, Lorg/bitcoinj/core/AbstractBlockChain;->resetFalsePositiveEstimate()V

    .line 1392
    :cond_8
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-wide v2, v0, Lorg/bitcoinj/net/FilterMerger$Result;->earliestKeyTimeSecs:J

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/PeerGroup;->setFastCatchupTimeSecs(J)V

    .line 1393
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v1}, Lorg/bitcoinj/core/PeerGroup;->access$2300(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 1394
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup$10;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v2}, Lorg/bitcoinj/core/PeerGroup;->access$2300(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$10;->val$mode:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$10;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, v0, Lorg/bitcoinj/net/FilterMerger$Result;->filter:Lorg/bitcoinj/core/BloomFilter;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 1395
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 1352
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup$10;->go()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1354
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Exception when trying to recalculate Bloom filter"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
