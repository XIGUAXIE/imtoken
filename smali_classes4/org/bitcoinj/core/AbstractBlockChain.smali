.class public abstract Lorg/bitcoinj/core/AbstractBlockChain;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;,
        Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;
    }
.end annotation


# static fields
.field public static final FP_ESTIMATOR_ALPHA:D = 1.0E-4

.field public static final FP_ESTIMATOR_BETA:D = 0.01

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final blockStore:Lorg/bitcoinj/store/BlockStore;

.field protected chainHead:Lorg/bitcoinj/core/StoredBlock;

.field private final chainHeadLock:Ljava/lang/Object;

.field private falsePositiveRate:D

.field private falsePositiveTrend:D

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final newBestBlockListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/NewBestBlockListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final orphanBlocks:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected final params:Lorg/bitcoinj/core/NetworkParameters;

.field private previousFalsePositiveRate:D

.field private final reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/ReorganizeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transactionReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final versionTally:Lorg/bitcoinj/utils/VersionTally;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Context;",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Wallet;",
            ">;",
            "Lorg/bitcoinj/store/BlockStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "blockchain"

    .line 81
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    .line 148
    iput-object p3, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    .line 149
    invoke-interface {p3}, Lorg/bitcoinj/store/BlockStore;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    .line 150
    sget-object v1, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    const-string v3, "chain head is at height {}:\n{}"

    invoke-interface {v1, v3, v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 153
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->newBestBlockListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 155
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->transactionReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/listeners/NewBestBlockListener;

    sget-object v2, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v2, v1}, Lorg/bitcoinj/core/AbstractBlockChain;->addNewBestBlockListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/listeners/ReorganizeListener;

    sget-object v2, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v2, v1}, Lorg/bitcoinj/core/AbstractBlockChain;->addReorganizeListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ReorganizeListener;)V

    goto :goto_1

    .line 158
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;

    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lorg/bitcoinj/core/AbstractBlockChain;->addTransactionReceivedListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V

    goto :goto_2

    .line 160
    :cond_2
    new-instance p2, Lorg/bitcoinj/utils/VersionTally;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/utils/VersionTally;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    iput-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->versionTally:Lorg/bitcoinj/utils/VersionTally;

    .line 161
    iget-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p2, p3, p1}, Lorg/bitcoinj/utils/VersionTally;->initialize(Lorg/bitcoinj/store/BlockStore;Lorg/bitcoinj/core/StoredBlock;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/wallet/Wallet;",
            ">;",
            "Lorg/bitcoinj/store/BlockStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/AbstractBlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;ZLorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 79
    invoke-static/range {p0 .. p7}, Lorg/bitcoinj/core/AbstractBlockChain;->informListenerForNewTransactions(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;ZLorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 79
    sget-object v0, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private add(Lorg/bitcoinj/core/Block;ZLjava/util/List;Ljava/util/Map;)Z
    .locals 9
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Block;",
            "Z",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Block;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 436
    :try_start_1
    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 497
    :goto_1
    iget-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 441
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 442
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Got a block header while running in full-block mode"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/bitcoinj/store/BlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_0

    .line 459
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->verifyHeader()V

    .line 460
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bitcoinj/core/AbstractBlockChain;->getStoredBlockInCurrentScope(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 462
    invoke-virtual {v5}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    .line 466
    :goto_3
    iget-object v3, p0, Lorg/bitcoinj/core/AbstractBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v4, p0, Lorg/bitcoinj/core/AbstractBlockChain;->versionTally:Lorg/bitcoinj/utils/VersionTally;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v6}, Lorg/bitcoinj/core/NetworkParameters;->getBlockVerificationFlags(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/utils/VersionTally;Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v3

    .line 467
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 468
    invoke-virtual {p1, v2, v3}, Lorg/bitcoinj/core/Block;->verifyTransactions(ILjava/util/EnumSet;)V
    :try_end_3
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-nez v5, :cond_8

    :try_start_4
    const-string v1, "bug in tryConnectingOrphans"

    .line 481
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 482
    sget-object p2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Block does not connect: {} prev {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    iget-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    new-instance v2, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;

    invoke-direct {v2, p0, p1, p3, p4}, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;-><init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/Block;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p2, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 486
    :cond_8
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 488
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-virtual {v0, v5, p1, v2}, Lorg/bitcoinj/core/NetworkParameters;->checkDifficultyTransitions(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/store/BlockStore;)V

    .line 489
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v6

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/bitcoinj/core/AbstractBlockChain;->connectBlock(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/StoredBlock;ZLjava/util/List;Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 493
    invoke-direct {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->tryConnectingOrphans()V

    goto/16 :goto_0

    :catch_0
    move-exception p2

    .line 470
    sget-object p3, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string p4, "Failed to verify block: "

    invoke-interface {p3, p4, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    sget-object p3, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 472
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 497
    iget-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private connectBlock(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/StoredBlock;ZLjava/util/List;Ljava/util/Map;)V
    .locals 14
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Block;",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Z",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 523
    iget-object v0, v6, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 526
    :goto_0
    iget-object v3, v6, Lorg/bitcoinj/core/AbstractBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual/range {p2 .. p2}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/bitcoinj/core/NetworkParameters;->passesCheckpoint(ILorg/bitcoinj/core/Sha256Hash;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 528
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    iget-object v3, v7, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v3, v7, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Transaction;

    .line 531
    invoke-virtual/range {p2 .. p2}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v10

    invoke-virtual {v4, v5, v10, v11}, Lorg/bitcoinj/core/Transaction;->isFinal(IJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 532
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v1, "Block contains non-final transaction"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v3

    .line 536
    invoke-virtual {v8, v3}, Lorg/bitcoinj/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v10, 0x3

    if-eqz v4, :cond_b

    if-eqz v2, :cond_3

    .line 537
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 538
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    new-array v4, v10, [Ljava/lang/Object;

    .line 539
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Block {} connects to top of best chain with {} transaction(s) of which we were sent {}"

    .line 538
    invoke-interface {v2, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Sha256Hash;

    sget-object v4, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v5, "  matched tx {}"

    invoke-interface {v4, v5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v9, :cond_5

    .line 542
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v4

    iget-object v0, v6, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-static {v3, v0}, Lorg/bitcoinj/core/AbstractBlockChain;->getMedianTimestampOfRecentBlocks(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    goto :goto_3

    .line 543
    :cond_4
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v1, "Block\'s timestamp is too early"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 550
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    .line 551
    :cond_6
    iget-object v0, v6, Lorg/bitcoinj/core/AbstractBlockChain;->versionTally:Lorg/bitcoinj/utils/VersionTally;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/bitcoinj/utils/VersionTally;->getCountAtOrAbove(J)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v6, Lorg/bitcoinj/core/AbstractBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getMajorityRejectBlockOutdated()I

    move-result v2

    if-ge v0, v2, :cond_7

    goto :goto_4

    .line 554
    :cond_7
    new-instance v0, Lorg/bitcoinj/core/VerificationException$BlockVersionOutOfDate;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VerificationException$BlockVersionOutOfDate;-><init>(J)V

    throw v0

    :cond_8
    :goto_4
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 561
    invoke-virtual/range {p2 .. p2}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->connectTransactions(ILorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object v0

    .line 562
    :cond_9
    iget-object v1, v7, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-nez v1, :cond_a

    move-object v1, v7

    goto :goto_5

    .line 563
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    .line 562
    :goto_5
    invoke-virtual {p0, v8, v1, v0}, Lorg/bitcoinj/core/AbstractBlockChain;->addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/TransactionOutputChanges;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v5

    .line 564
    iget-object v0, v6, Lorg/bitcoinj/core/AbstractBlockChain;->versionTally:Lorg/bitcoinj/utils/VersionTally;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/utils/VersionTally;->add(J)V

    .line 565
    invoke-virtual {p0, v5}, Lorg/bitcoinj/core/AbstractBlockChain;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 566
    sget-object v0, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {v5}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Chain is now {} blocks high, running listeners"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/AbstractBlockChain;->informListenersForNewBlock(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;)V

    goto/16 :goto_7

    .line 573
    :cond_b
    invoke-virtual {v8, p1}, Lorg/bitcoinj/core/StoredBlock;->build(Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v11

    .line 574
    invoke-virtual {v11, v3}, Lorg/bitcoinj/core/StoredBlock;->moreWorkThan(Lorg/bitcoinj/core/StoredBlock;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 576
    sget-object v0, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Block is causing a re-organize"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 578
    :cond_c
    iget-object v4, v6, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-static {v11, v3, v4}, Lorg/bitcoinj/core/AbstractBlockChain;->findSplit(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 579
    invoke-virtual {v3, v11}, Lorg/bitcoinj/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 583
    sget-object v0, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    .line 584
    invoke-virtual {v11}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    const-string v3, "Saw duplicated block in main chain at height {}: {}"

    .line 583
    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_d
    if-eqz v3, :cond_11

    .line 594
    invoke-virtual {p0, v8, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;

    .line 595
    invoke-virtual {v3}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v4

    .line 596
    invoke-virtual {v3}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    .line 597
    sget-object v13, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    new-array v10, v10, [Ljava/lang/Object;

    .line 598
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    aput-object v3, v10, v1

    invoke-virtual {v11}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v5

    const-string v0, "Block forks the chain at height {}/block {}, but it did not cause a reorganize:\n{}"

    .line 597
    invoke-interface {v13, v0, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    :goto_6
    iget-object v0, v7, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_e

    if-eqz v2, :cond_f

    .line 606
    :cond_e
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->SIDE_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/AbstractBlockChain;->informListenersForNewBlock(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;)V

    :cond_f
    if-eqz v12, :cond_10

    .line 610
    invoke-direct {p0, v8, v11, p1, v9}, Lorg/bitcoinj/core/AbstractBlockChain;->handleNewBestChain(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Z)V

    :cond_10
    :goto_7
    return-void

    .line 591
    :cond_11
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v1, "Block forks the chain but splitPoint is null"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_12
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block failed checkpoint lockin at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findSplit(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 846
    :goto_0
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    const-string v2, "Attempt to follow an orphan chain"

    if-le v0, v1, :cond_0

    .line 848
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    .line 849
    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 851
    :cond_0
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p0

    .line 852
    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static getMedianTimestampOfRecentBlocks(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/16 v0, 0xb

    new-array v1, v0, [J

    .line 721
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v2

    const/16 v4, 0xa

    aput-wide v2, v1, v4

    const/16 v2, 0x9

    :goto_0
    if-ltz v2, :cond_0

    .line 722
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p0

    if-eqz p0, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 723
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v4

    aput-wide v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p0, v2, 0x1

    .line 725
    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->sort([JII)V

    sub-int/2addr v0, v2

    .line 726
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    aget-wide p0, v1, v2

    return-wide p0
.end method

.method private static getPartialChain(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Lorg/bitcoinj/store/BlockStore;",
            ")",
            "Ljava/util/LinkedList<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 820
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "higher and lower are reversed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 821
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 824
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p0

    const-string v1, "Ran off the end of the chain"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/StoredBlock;

    .line 826
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/StoredBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0
.end method

.method private handleNewBestChain(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 750
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-static {p2, v0, v1}, Lorg/bitcoinj/core/AbstractBlockChain;->findSplit(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v1

    .line 752
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Re-organize after split at height {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Old chain head: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "New chain head: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 755
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Split at block: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 757
    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/core/AbstractBlockChain;->getPartialChain(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)Ljava/util/LinkedList;

    move-result-object v0

    .line 758
    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-static {p2, v1, v2}, Lorg/bitcoinj/core/AbstractBlockChain;->getPartialChain(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)Ljava/util/LinkedList;

    move-result-object v8

    .line 761
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 762
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/StoredBlock;

    .line 764
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/bitcoinj/core/AbstractBlockChain;->disconnectTransactions(Lorg/bitcoinj/core/StoredBlock;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 770
    throw p1

    .line 775
    :cond_0
    invoke-virtual {v8}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 776
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/StoredBlock;

    .line 777
    invoke-virtual {v3}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v4

    if-eqz p4, :cond_2

    .line 778
    invoke-virtual {v4}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v5

    iget-object v7, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-virtual {v3, v7}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v7

    iget-object v9, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-static {v7, v9}, Lorg/bitcoinj/core/AbstractBlockChain;->getMedianTimestampOfRecentBlocks(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/store/BlockStore;)J

    move-result-wide v9

    cmp-long v7, v5, v9

    if-lez v7, :cond_1

    goto :goto_2

    .line 779
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Block\'s timestamp is too early during reorg"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    if-ne v3, p2, :cond_4

    if-nez p3, :cond_3

    goto :goto_3

    .line 784
    :cond_3
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-virtual {p0, v3, p3}, Lorg/bitcoinj/core/AbstractBlockChain;->connectTransactions(ILorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object v3

    goto :goto_4

    .line 782
    :cond_4
    :goto_3
    invoke-virtual {p0, v3}, Lorg/bitcoinj/core/AbstractBlockChain;->connectTransactions(Lorg/bitcoinj/core/StoredBlock;)Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object v3

    .line 785
    :goto_4
    invoke-virtual {v4}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v4

    invoke-virtual {p0, v2, v4, v3}, Lorg/bitcoinj/core/AbstractBlockChain;->addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/TransactionOutputChanges;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v2

    goto :goto_1

    .line 789
    :cond_5
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/AbstractBlockChain;->addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v2

    :cond_6
    move-object p1, v2

    .line 794
    iget-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 795
    iget-object p3, v4, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object p4, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne p3, p4, :cond_7

    .line 798
    iget-object p3, v4, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast p3, Lorg/bitcoinj/core/listeners/ReorganizeListener;

    invoke-interface {p3, v1, v0, v8}, Lorg/bitcoinj/core/listeners/ReorganizeListener;->reorganize(Lorg/bitcoinj/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V

    goto :goto_5

    .line 800
    :cond_7
    iget-object p3, v4, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance p4, Lorg/bitcoinj/core/AbstractBlockChain$3;

    move-object v2, p4

    move-object v3, p0

    move-object v5, v1

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/bitcoinj/core/AbstractBlockChain$3;-><init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/StoredBlock;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 813
    :cond_8
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    return-void
.end method

.method private static informListenerForNewTransactions(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;ZLorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;Ljava/util/Set;)V
    .locals 8
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Block;",
            "Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Z",
            "Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    .line 691
    iget-object v5, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    xor-int/lit8 v6, p5, 0x1

    move-object v1, p4

    move-object v2, p1

    move-object v3, p6

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lorg/bitcoinj/core/AbstractBlockChain;->sendTransactionsToListener(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;ILjava/util/List;ZLjava/util/Set;)V

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_3

    .line 694
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 699
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Sha256Hash;

    .line 700
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    if-eqz v1, :cond_1

    .line 703
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    xor-int/lit8 v5, p5, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p6

    move v3, p0

    move-object v6, p7

    .line 702
    invoke-static/range {v0 .. v6}, Lorg/bitcoinj/core/AbstractBlockChain;->sendTransactionsToListener(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;ILjava/util/List;ZLjava/util/Set;)V

    goto :goto_1

    .line 705
    :cond_1
    invoke-interface {p6, v0, p4, p1, p0}, Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;->notifyTransactionIsInBlock(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    invoke-interface {p7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private informListenersForNewBlock(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;)V
    .locals 16
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Block;",
            "Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/StoredBlock;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    .line 622
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    if-eqz v11, :cond_0

    .line 623
    invoke-interface {v13, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 625
    :cond_0
    iget-object v0, v9, Lorg/bitcoinj/core/AbstractBlockChain;->transactionReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 626
    iget-object v0, v8, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_1

    .line 627
    iget-object v0, v8, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v7, v13

    invoke-static/range {v0 .. v7}, Lorg/bitcoinj/core/AbstractBlockChain;->informListenerForNewTransactions(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;ZLorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    xor-int/lit8 v7, v5, 0x1

    .line 632
    iget-object v15, v8, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v6, Lorg/bitcoinj/core/AbstractBlockChain$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v11, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lorg/bitcoinj/core/AbstractBlockChain$1;-><init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;ZLorg/bitcoinj/utils/ListenerRegistration;)V

    invoke-interface {v15, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v11, p3

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, v9, Lorg/bitcoinj/core/AbstractBlockChain;->newBestBlockListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 653
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v3, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v2, v3, :cond_4

    .line 654
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    if-ne v10, v2, :cond_3

    .line 655
    iget-object v1, v1, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v1, Lorg/bitcoinj/core/listeners/NewBestBlockListener;

    invoke-interface {v1, v12}, Lorg/bitcoinj/core/listeners/NewBestBlockListener;->notifyNewBestBlock(Lorg/bitcoinj/core/StoredBlock;)V

    goto :goto_2

    .line 658
    :cond_4
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/core/AbstractBlockChain$2;

    invoke-direct {v3, v9, v10, v1, v12}, Lorg/bitcoinj/core/AbstractBlockChain$2;-><init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/StoredBlock;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 676
    :cond_5
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/bitcoinj/core/AbstractBlockChain;->trackFalsePositives(I)V

    return-void
.end method

.method private static sendTransactionsToListener(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;ILjava/util/List;ZLjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;",
            "Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;",
            "I",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;Z",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 876
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    .line 878
    :try_start_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {p6, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p5, :cond_0

    .line 880
    iget-object v1, v0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v0
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    add-int/lit8 v1, p3, 0x1

    .line 881
    :try_start_1
    invoke-interface {p2, v0, p0, p1, p3}, Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;->receiveFromBlock(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_1
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    move p3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move p3, v1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 888
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v0

    .line 885
    :goto_1
    sget-object v1, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse a script: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bitcoinj/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tryConnectingOrphans()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 914
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 915
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 916
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;

    .line 918
    iget-object v4, v3, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->block:Lorg/bitcoinj/core/Block;

    invoke-virtual {v4}, Lorg/bitcoinj/core/Block;->getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bitcoinj/core/AbstractBlockChain;->getStoredBlockInCurrentScope(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v4

    if-nez v4, :cond_1

    .line 921
    sget-object v4, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    iget-object v3, v3, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->block:Lorg/bitcoinj/core/Block;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    const-string v5, "Orphan block {} is not connectable right now"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 926
    :cond_1
    sget-object v4, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    iget-object v5, v3, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->block:Lorg/bitcoinj/core/Block;

    invoke-virtual {v5}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    const-string v6, "Connected orphan {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 927
    iget-object v4, v3, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->block:Lorg/bitcoinj/core/Block;

    iget-object v5, v3, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->filteredTxHashes:Ljava/util/List;

    iget-object v3, v3, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->filteredTxn:Ljava/util/Map;

    invoke-direct {p0, v4, v1, v5, v3}, Lorg/bitcoinj/core/AbstractBlockChain;->add(Lorg/bitcoinj/core/Block;ZLjava/util/List;Ljava/util/Map;)Z

    .line 928
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    .line 932
    sget-object v0, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Connected {} orphan blocks."

    invoke-interface {v0, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-gtz v2, :cond_0

    return-void
.end method


# virtual methods
.method public add(Lorg/bitcoinj/core/Block;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    :try_start_0
    invoke-direct {p0, p1, v0, v1, v1}, Lorg/bitcoinj/core/AbstractBlockChain;->add(Lorg/bitcoinj/core/Block;ZLjava/util/List;Ljava/util/Map;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 358
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->notSettingChainHead()V
    :try_end_1
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    new-instance v1, Lorg/bitcoinj/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not verify block:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 360
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public add(Lorg/bitcoinj/core/FilteredBlock;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    .line 381
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getBlockHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getTransactionHashes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getAssociatedTransactions()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bitcoinj/core/AbstractBlockChain;->add(Lorg/bitcoinj/core/Block;ZLjava/util/List;Ljava/util/Map;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 387
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->notSettingChainHead()V
    :try_end_1
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    new-instance v1, Lorg/bitcoinj/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not verify block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 389
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addListener(Lorg/bitcoinj/core/listeners/BlockChainListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/AbstractBlockChain;->addListener(Lorg/bitcoinj/core/listeners/BlockChainListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addListener(Lorg/bitcoinj/core/listeners/BlockChainListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addReorganizeListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ReorganizeListener;)V

    .line 211
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addNewBestBlockListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    .line 212
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addTransactionReceivedListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V

    return-void
.end method

.method public final addNewBestBlockListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->newBestBlockListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNewBestBlockListener(Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V
    .locals 1

    .line 226
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addNewBestBlockListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    return-void
.end method

.method public final addReorganizeListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ReorganizeListener;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReorganizeListener(Lorg/bitcoinj/core/listeners/ReorganizeListener;)V
    .locals 1

    .line 240
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addReorganizeListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ReorganizeListener;)V

    return-void
.end method

.method protected abstract addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method

.method protected abstract addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/TransactionOutputChanges;)Lorg/bitcoinj/core/StoredBlock;
    .param p3    # Lorg/bitcoinj/core/TransactionOutputChanges;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method

.method public final addTransactionReceivedListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->transactionReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTransactionReceivedListener(Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V
    .locals 1

    .line 254
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addTransactionReceivedListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V

    return-void
.end method

.method public final addWallet(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 6

    .line 171
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addNewBestBlockListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    .line 172
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addReorganizeListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ReorganizeListener;)V

    .line 173
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->addTransactionReceivedListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V

    .line 174
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHeight()I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 177
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Wallet/chain height mismatch: {} vs {}"

    invoke-interface {v2, v5, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    const-string v4, "Hashes: {} vs {}"

    invoke-interface {v2, v4, p1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-ge v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/AbstractBlockChain;->rollbackBlockStore(I)V

    .line 186
    sget-object p1, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v1, "Rolled back block store to height {}."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    sget-object p1, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const-string v0, "Rollback of block store failed, continuing with mismatched heights. This can happen due to a replay."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract connectTransactions(ILorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/TransactionOutputChanges;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method protected abstract connectTransactions(Lorg/bitcoinj/core/StoredBlock;)Lorg/bitcoinj/core/TransactionOutputChanges;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation
.end method

.method protected abstract disconnectTransactions(Lorg/bitcoinj/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/PrunedException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method protected abstract doSetChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public drainOrphanBlocks()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 509
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 510
    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public estimateBlockTime(I)Ljava/util/Date;
    .locals 7

    .line 989
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-long v1, p1

    .line 991
    iget-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-wide/32 v5, 0x927c0

    mul-long v1, v1, v5

    add-long/2addr v3, v1

    .line 993
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 994
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getBestChainHeight()I
    .locals 1

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/core/AbstractBlockChain;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBlockStore()Lorg/bitcoinj/store/BlockStore;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    return-object v0
.end method

.method public getChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 2

    .line 942
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 944
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFalsePositiveRate()D
    .locals 2

    .line 1024
    iget-wide v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    return-wide v0
.end method

.method public getHeightFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;"
        }
    .end annotation

    .line 1002
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1003
    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/bitcoinj/core/AbstractBlockChain$4;

    invoke-direct {v2, p0, p1, v0}, Lorg/bitcoinj/core/AbstractBlockChain$4;-><init>(Lorg/bitcoinj/core/AbstractBlockChain;ILcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {p0, v1, v2}, Lorg/bitcoinj/core/AbstractBlockChain;->addNewBestBlockListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    return-object v0
.end method

.method public getOrphanRoot(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Block;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 957
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 959
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 968
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 963
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->block:Lorg/bitcoinj/core/Block;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 966
    :cond_1
    iget-object p1, p1, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->block:Lorg/bitcoinj/core/Block;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 968
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected abstract getStoredBlockInCurrentScope(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method protected getVersionTally()Lorg/bitcoinj/utils/VersionTally;
    .locals 1

    .line 1077
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->versionTally:Lorg/bitcoinj/utils/VersionTally;

    return-object v0
.end method

.method public isOrphan(Lorg/bitcoinj/core/Sha256Hash;)Z
    .locals 1

    .line 974
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 976
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->orphanBlocks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected abstract notSettingChainHead()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public removeListener(Lorg/bitcoinj/core/listeners/BlockChainListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->removeReorganizeListener(Lorg/bitcoinj/core/listeners/ReorganizeListener;)V

    .line 218
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->removeNewBestBlockListener(Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    .line 219
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->removeTransactionReceivedListener(Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V

    return-void
.end method

.method public removeNewBestBlockListener(Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->newBestBlockListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    return-void
.end method

.method public removeReorganizeListener(Lorg/bitcoinj/core/listeners/ReorganizeListener;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    return-void
.end method

.method public removeTransactionReceivedListener(Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->transactionReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    return-void
.end method

.method public removeWallet(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->removeNewBestBlockListener(Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    .line 197
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->removeReorganizeListener(Lorg/bitcoinj/core/listeners/ReorganizeListener;)V

    .line 198
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->removeTransactionReceivedListener(Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;)V

    return-void
.end method

.method public resetFalsePositiveEstimate()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1071
    iput-wide v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    .line 1072
    iput-wide v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveTrend:D

    .line 1073
    iput-wide v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->previousFalsePositiveRate:D

    return-void
.end method

.method protected abstract rollbackBlockStore(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method protected setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 894
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->doSetChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 895
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHeadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    .line 897
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract shouldVerifyTransactions()Z
.end method

.method trackFalsePositives(I)V
    .locals 6

    .line 1064
    iget-wide v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    int-to-double v2, p1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    if-lez p1, :cond_0

    .line 1066
    sget-object v0, Lorg/bitcoinj/core/AbstractBlockChain;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-wide v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget-wide v2, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveTrend:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "{} false positives, current rate = {} trend = {}"

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected trackFilteredTransactions(I)V
    .locals 10

    int-to-double v0, p1

    const-wide v2, 0x3fefff2e48e8a71eL    # 0.9999

    .line 1041
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 1044
    iget-wide v4, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    mul-double v4, v4, v2

    iput-wide v4, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    .line 1046
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v6

    .line 1049
    iget-wide v6, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    iget-wide v8, p0, Lorg/bitcoinj/core/AbstractBlockChain;->previousFalsePositiveRate:D

    sub-double v8, v6, v8

    mul-double v0, v0, v8

    iget-wide v8, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveTrend:D

    mul-double v4, v4, v8

    add-double/2addr v0, v4

    iput-wide v0, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveTrend:D

    mul-double v2, v2, v0

    add-double/2addr v6, v2

    .line 1054
    iput-wide v6, p0, Lorg/bitcoinj/core/AbstractBlockChain;->falsePositiveRate:D

    .line 1057
    iput-wide v6, p0, Lorg/bitcoinj/core/AbstractBlockChain;->previousFalsePositiveRate:D

    return-void
.end method
