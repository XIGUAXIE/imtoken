.class Lorg/bitcoinj/core/PeerGroup$6;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MIN_PEER_DISCOVERY_INTERVAL:J = 0x3e8L


# instance fields
.field private firstRun:Z

.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lorg/bitcoinj/core/PeerGroup$6;->firstRun:Z

    return-void
.end method


# virtual methods
.method public go()V
    .locals 8

    .line 517
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$600(Lorg/bitcoinj/core/PeerGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    .line 521
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v2, v2, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    .line 526
    :try_start_0
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$700(Lorg/bitcoinj/core/PeerGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$800(Lorg/bitcoinj/core/PeerGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->firstRun:Z

    if-eqz v3, :cond_1

    .line 527
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Localhost peer detected, trying to use it instead of P2P discovery"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0, v2}, Lorg/bitcoinj/core/PeerGroup;->access$902(Lorg/bitcoinj/core/PeerGroup;I)I

    .line 529
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->connectToLocalHost()Lorg/bitcoinj/core/Peer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 536
    iput-boolean v2, p0, Lorg/bitcoinj/core/PeerGroup$6;->firstRun:Z

    .line 537
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 533
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$1000(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/PriorityQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$400(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v5}, Lorg/bitcoinj/core/PeerGroup;->access$1000(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/PriorityQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {v3}, Lorg/bitcoinj/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v3, v5, v0

    if-gtz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    xor-int/2addr v3, v4

    .line 536
    iput-boolean v2, p0, Lorg/bitcoinj/core/PeerGroup$6;->firstRun:Z

    .line 537
    iget-object v5, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v5, v5, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v3, :cond_3

    .line 544
    :try_start_2
    iget-object v5, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v5}, Lorg/bitcoinj/core/PeerGroup;->discoverPeers()I

    move-result v5
    :try_end_2
    .catch Lorg/bitcoinj/net/discovery/PeerDiscoveryException; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v5, :cond_3

    goto :goto_1

    :catch_0
    move-exception v4

    .line 546
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "Peer discovery failure"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v4, 0x0

    .line 552
    :goto_1
    iget-object v5, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v5, v5, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz v3, :cond_5

    if-eqz v4, :cond_4

    .line 557
    :try_start_3
    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$1100(Lorg/bitcoinj/core/PeerGroup;)I

    move-result v3

    iget-object v4, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v4}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 558
    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$1200(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/utils/ExponentialBackoff;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/utils/ExponentialBackoff;->trackSuccess()V

    goto :goto_2

    .line 560
    :cond_4
    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$1200(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/utils/ExponentialBackoff;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/utils/ExponentialBackoff;->trackFailure()V

    .line 564
    :cond_5
    :goto_2
    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$1000(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/PriorityQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 565
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v2}, Lorg/bitcoinj/core/PeerGroup;->access$1100(Lorg/bitcoinj/core/PeerGroup;)I

    move-result v2

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v3}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 566
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v2}, Lorg/bitcoinj/core/PeerGroup;->access$1200(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/utils/ExponentialBackoff;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 567
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Peer discovery didn\'t provide us any more peers, will try again in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v2, v2, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v0, v1, v3}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 591
    :cond_6
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 577
    :cond_7
    :try_start_4
    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v3}, Lorg/bitcoinj/core/PeerGroup;->access$1000(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/PriorityQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/PeerAddress;

    .line 578
    iget-object v4, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v4}, Lorg/bitcoinj/core/PeerGroup;->access$1300(Lorg/bitcoinj/core/PeerGroup;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lorg/bitcoinj/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-nez v4, :cond_7

    .line 579
    :cond_8
    iget-object v4, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v4}, Lorg/bitcoinj/core/PeerGroup;->access$400(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {v4}, Lorg/bitcoinj/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v4

    .line 581
    iget-object v6, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v6}, Lorg/bitcoinj/core/PeerGroup;->access$1200(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/utils/ExponentialBackoff;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/utils/ExponentialBackoff;->getRetryTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_a

    sub-long/2addr v4, v0

    .line 584
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Waiting {} msec before next connect attempt {}"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-nez v3, :cond_9

    const-string v6, ""

    goto :goto_3

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-interface {v0, v1, v2, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1000(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v4, v5, v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 591
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 589
    :cond_a
    :try_start_5
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v1}, Lorg/bitcoinj/core/PeerGroup;->access$1400(Lorg/bitcoinj/core/PeerGroup;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v1}, Lorg/bitcoinj/core/PeerGroup;->connectTo(Lorg/bitcoinj/core/PeerAddress;ZI)Lorg/bitcoinj/core/Peer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 591
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 593
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1100(Lorg/bitcoinj/core/PeerGroup;)I

    move-result v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v1}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 594
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-interface {v0, p0}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 591
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, v1, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    .line 536
    iput-boolean v2, p0, Lorg/bitcoinj/core/PeerGroup$6;->firstRun:Z

    .line 537
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$6;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, v1, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 3

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup$6;->go()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 512
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Exception when trying to build connections"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
