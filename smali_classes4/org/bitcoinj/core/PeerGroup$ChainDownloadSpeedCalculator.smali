.class Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChainDownloadSpeedCalculator"
.end annotation


# instance fields
.field private blocksInLastSecond:I

.field private bytesInLastSecond:J

.field private cursor:I

.field private maxStalls:I

.field private origTxnsInLastSecond:I

.field private samples:[J

.field private syncDone:Z

.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field private txnsInLastSecond:I

.field private warmupSeconds:I


# direct methods
.method private constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 1859
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 1865
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->maxStalls:I

    const/4 p1, -0x1

    .line 1868
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->warmupSeconds:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/PeerGroup$1;)V
    .locals 0

    .line 1859
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    return-void
.end method

.method private calculate()V
    .locals 21

    move-object/from16 v1, p0

    .line 1908
    iget-object v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1910
    :try_start_0
    iget-object v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$2500(Lorg/bitcoinj/core/PeerGroup;)I

    move-result v0

    .line 1911
    iget-object v2, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v2}, Lorg/bitcoinj/core/PeerGroup;->access$2600(Lorg/bitcoinj/core/PeerGroup;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1913
    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v3, v3, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1916
    monitor-enter p0

    .line 1917
    :try_start_1
    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    array-length v3, v3

    if-eq v3, v2, :cond_1

    .line 1918
    :cond_0
    new-array v3, v2, [J

    iput-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    mul-int/lit8 v4, v0, 0x2

    int-to-long v4, v4

    .line 1920
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    const/16 v3, 0xf

    .line 1921
    iput v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->warmupSeconds:I

    .line 1924
    :cond_1
    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v3, v3, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v3, v3, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v3}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v3

    iget-object v6, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v6}, Lorg/bitcoinj/core/PeerGroup;->getMostCommonChainHeight()I

    move-result v6

    if-ge v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 1926
    iput-boolean v4, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->syncDone:Z

    .line 1927
    :cond_3
    iget-boolean v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->syncDone:Z

    if-nez v3, :cond_8

    .line 1928
    iget v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->warmupSeconds:I

    const/4 v8, 0x3

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    const/4 v12, 0x2

    if-gez v3, :cond_7

    .line 1930
    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    iget v13, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->cursor:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->cursor:I

    iget-wide v6, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    aput-wide v6, v3, v13

    .line 1931
    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    array-length v3, v3

    if-ne v14, v3, :cond_4

    iput v5, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->cursor:I

    .line 1933
    :cond_4
    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    array-length v6, v3

    const/4 v7, 0x0

    const-wide/16 v13, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-wide v17, v3, v7

    add-long v13, v13, v17

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1934
    :cond_5
    iget-object v3, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    array-length v3, v3

    int-to-long v6, v3

    div-long/2addr v13, v6

    .line 1936
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d blocks/sec, %d tx/sec, %d pre-filtered tx/sec, avg/last %.2f/%.2f kilobytes per sec (stall threshold <%.2f KB/sec for %d seconds)"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    iget v9, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->blocksInLastSecond:I

    .line 1937
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v5

    iget v9, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->txnsInLastSecond:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v4

    iget v9, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->origTxnsInLastSecond:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v12

    long-to-double v4, v13

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v15, v8

    iget-wide v8, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    long-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v15, v9

    const/4 v8, 0x5

    move-wide/from16 v19, v13

    int-to-double v12, v0

    div-double/2addr v12, v10

    .line 1938
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v15, v8

    const/4 v8, 0x6

    iget-object v9, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v8

    .line 1936
    invoke-static {v6, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    int-to-long v6, v0

    cmp-long v0, v19, v6

    if-gez v0, :cond_8

    .line 1940
    iget v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->maxStalls:I

    if-lez v0, :cond_8

    .line 1941
    iget v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->maxStalls:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->maxStalls:I

    if-nez v0, :cond_6

    .line 1950
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "This network seems to be slower than the requested stall threshold - won\'t do stall disconnects any more."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1952
    :cond_6
    iget-object v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->getDownloadPeer()Lorg/bitcoinj/core/Peer;

    move-result-object v0

    .line 1953
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Chain download stalled: received %.2f KB/sec for %d seconds, require average of %.2f KB/sec, disconnecting %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v8, v5

    iget-object v4, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v8, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v8, v5

    const/4 v4, 0x3

    aput-object v0, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v0}, Lorg/bitcoinj/core/Peer;->close()V

    const/4 v0, 0x0

    .line 1956
    iput-object v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->samples:[J

    .line 1957
    iput v2, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->warmupSeconds:I

    goto :goto_2

    .line 1961
    :cond_7
    iget v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->warmupSeconds:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->warmupSeconds:I

    .line 1962
    iget-wide v2, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    .line 1963
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d blocks/sec, %d tx/sec, %d pre-filtered tx/sec, last %.2f kilobytes per sec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->blocksInLastSecond:I

    .line 1964
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->txnsInLastSecond:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->origTxnsInLastSecond:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget-wide v5, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    long-to-double v5, v5

    div-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 1963
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 1967
    iput v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->blocksInLastSecond:I

    .line 1968
    iput v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->txnsInLastSecond:I

    .line 1969
    iput v0, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->origTxnsInLastSecond:I

    const-wide/16 v2, 0x0

    .line 1970
    iput-wide v2, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    .line 1971
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1913
    iget-object v2, v1, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v2, v2, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private countAndMeasureSize(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)I"
        }
    .end annotation

    .line 1890
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 1891
    iget-wide v2, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getMessageSize()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    goto :goto_0

    .line 1892
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method public declared-synchronized onBlocksDownloaded(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V
    .locals 4
    .param p3    # Lorg/bitcoinj/core/FilteredBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1878
    :try_start_0
    iget p1, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->blocksInLastSecond:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->blocksInLastSecond:I

    .line 1879
    iget-wide v0, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    const-wide/16 v2, 0x50

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->bytesInLastSecond:J

    .line 1880
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getTransactions()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1882
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->countAndMeasureSize(Ljava/util/Collection;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 1883
    invoke-virtual {p3}, Lorg/bitcoinj/core/FilteredBlock;->getAssociatedTransactions()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->countAndMeasureSize(Ljava/util/Collection;)I

    move-result p2

    :cond_1
    add-int/2addr p1, p2

    .line 1884
    iget p2, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->txnsInLastSecond:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->txnsInLastSecond:I

    if-eqz p3, :cond_2

    .line 1886
    iget p1, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->origTxnsInLastSecond:I

    invoke-virtual {p3}, Lorg/bitcoinj/core/FilteredBlock;->getTransactionCount()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->origTxnsInLastSecond:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 3

    .line 1898
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;->calculate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1900
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error in speed calculator"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
