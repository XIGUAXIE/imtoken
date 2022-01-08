.class public Lorg/bitcoinj/core/FullPrunedBlockChain;
.super Lorg/bitcoinj/core/AbstractBlockChain;
.source "FullPrunedBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

.field private runScripts:Z

.field scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/bitcoinj/core/FullPrunedBlockChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/FullPrunedBlockChain;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/FullPrunedBlockStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Context;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Wallet;",
            ">;",
            "Lorg/bitcoinj/store/FullPrunedBlockStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/AbstractBlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->runScripts:Z

    .line 150
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    new-instance p2, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    const-string v0, "Script verification"

    invoke-direct {p2, v0}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 96
    iput-object p3, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    .line 98
    invoke-interface {p3}, Lorg/bitcoinj/store/FullPrunedBlockStore;->getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/store/FullPrunedBlockStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/bitcoinj/core/FullPrunedBlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/FullPrunedBlockStore;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/store/FullPrunedBlockStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p3}, Lorg/bitcoinj/core/FullPrunedBlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/FullPrunedBlockStore;)V

    .line 65
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/FullPrunedBlockChain;->addWallet(Lorg/bitcoinj/wallet/Wallet;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/store/FullPrunedBlockStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Wallet;",
            ">;",
            "Lorg/bitcoinj/store/FullPrunedBlockStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/FullPrunedBlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/FullPrunedBlockStore;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/store/FullPrunedBlockStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/FullPrunedBlockChain;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/store/FullPrunedBlockStore;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/store/FullPrunedBlockStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/FullPrunedBlockChain;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/store/FullPrunedBlockStore;)V

    return-void
.end method

.method private getScript([B)Lorg/bitcoinj/script/Script;
    .locals 1

    .line 186
    :try_start_0
    new-instance v0, Lorg/bitcoinj/script/Script;

    invoke-direct {v0, p1}, Lorg/bitcoinj/script/Script;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    new-instance p1, Lorg/bitcoinj/script/Script;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lorg/bitcoinj/script/Script;-><init>([B)V

    return-object p1
.end method

.method private getScriptAddress(Lorg/bitcoinj/script/Script;)Ljava/lang/String;
    .locals 3
    .param p1    # Lorg/bitcoinj/script/Script;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;Z)Lorg/bitcoinj/core/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/StoredBlock;->build(Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    new-instance v1, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    iget-object p2, p2, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-direct {v1, v2, p2}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)V

    invoke-interface {v0, p1, v1}, Lorg/bitcoinj/store/FullPrunedBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V

    return-object p1
.end method

.method protected addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/TransactionOutputChanges;)Lorg/bitcoinj/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/StoredBlock;->build(Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    new-instance v0, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/TransactionOutputChanges;)V

    invoke-interface {p2, p1, v0}, Lorg/bitcoinj/store/FullPrunedBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V

    return-object p1
.end method

.method protected connectTransactions(ILorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/TransactionOutputChanges;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v11, p2

    .line 212
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 213
    iget-object v2, v11, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-eqz v2, :cond_15

    .line 215
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual/range {p2 .. p2}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/bitcoinj/core/NetworkParameters;->passesCheckpoint(ILorg/bitcoinj/core/Sha256Hash;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 218
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v2}, Lorg/bitcoinj/store/FullPrunedBlockStore;->beginDatabaseBatchWrite()V

    .line 220
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 221
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v2, 0x0

    .line 224
    iget-object v4, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 227
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    iget-object v4, v11, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    :try_start_0
    iget-object v4, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4, v0}, Lorg/bitcoinj/core/NetworkParameters;->isCheckpoint(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 233
    iget-object v4, v11, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/Transaction;

    .line 234
    iget-object v6, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/FullPrunedBlockChain;->getVersionTally()Lorg/bitcoinj/utils/VersionTally;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v11, v5, v7, v8}, Lorg/bitcoinj/core/NetworkParameters;->getTransactionVerificationFlags(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/utils/VersionTally;Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v6

    .line 235
    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    .line 238
    iget-object v8, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8, v7, v9}, Lorg/bitcoinj/store/FullPrunedBlockStore;->hasUnspentOutputs(Lorg/bitcoinj/core/Sha256Hash;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 240
    sget-object v7, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getSigOpCount()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    goto :goto_0

    .line 239
    :cond_2
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v2, "Block failed BIP30 test!"

    invoke-direct {v0, v2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_3
    sget-object v4, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    const/4 v5, 0x0

    .line 246
    iget-object v6, v11, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v10, v4

    move-object v9, v5

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/bitcoinj/core/Transaction;

    .line 247
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v16

    .line 248
    sget-object v4, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 249
    sget-object v5, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 250
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 251
    iget-object v6, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    move-wide/from16 v17, v2

    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/FullPrunedBlockChain;->getVersionTally()Lorg/bitcoinj/utils/VersionTally;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v11, v8, v2, v3}, Lorg/bitcoinj/core/NetworkParameters;->getTransactionVerificationFlags(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/utils/VersionTally;Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v6

    if-nez v16, :cond_a

    const/4 v2, 0x0

    .line 255
    :goto_2
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 256
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    move-object/from16 v19, v5

    .line 257
    iget-object v5, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v20

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v20}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v9

    .line 258
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v20

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v20}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v10

    .line 257
    invoke-interface {v5, v9, v10, v11}, Lorg/bitcoinj/store/FullPrunedBlockStore;->getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 264
    invoke-virtual {v5}, Lorg/bitcoinj/core/UTXO;->isCoinbase()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 265
    invoke-virtual {v5}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v9

    sub-int v9, v0, v9

    iget-object v10, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v10}, Lorg/bitcoinj/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v10

    if-lt v9, v10, :cond_4

    goto :goto_3

    .line 266
    :cond_4
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to spend coinbase at depth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_5
    :goto_3
    invoke-virtual {v5}, Lorg/bitcoinj/core/UTXO;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v4

    .line 271
    sget-object v9, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 272
    invoke-virtual {v5}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 273
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bitcoinj/script/Script;->getP2SHSigOpCount([B)J

    move-result-wide v9

    add-long v17, v17, v9

    :cond_6
    const-wide/16 v9, 0x4e20

    cmp-long v3, v17, v9

    if-gtz v3, :cond_7

    goto :goto_4

    .line 275
    :cond_7
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v2, "Too many P2SH SigOps in block"

    invoke-direct {v0, v2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_8
    :goto_4
    invoke-virtual {v5}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v3, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v3, v5}, Lorg/bitcoinj/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V

    .line 280
    invoke-virtual {v12, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, p2

    move-object/from16 v5, v19

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_2

    .line 260
    :cond_9
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v2, "Attempted to spend a non-existent or already spent output!"

    invoke-direct {v0, v2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v11, v4

    .line 283
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v20

    .line 284
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-object/from16 v5, v19

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 285
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v19

    .line 287
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/bitcoinj/core/FullPrunedBlockChain;->getScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v9

    .line 288
    new-instance v10, Lorg/bitcoinj/core/UTXO;

    .line 289
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v3

    int-to-long v4, v3

    .line 290
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v24

    .line 293
    invoke-direct {v1, v9}, Lorg/bitcoinj/core/FullPrunedBlockChain;->getScriptAddress(Lorg/bitcoinj/script/Script;)Ljava/lang/String;

    move-result-object v25

    move-object v2, v10

    move-object/from16 v3, v20

    move-object/from16 v26, v15

    move-object v15, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v12

    move-object v12, v7

    move/from16 v7, p1

    move-object v0, v8

    move/from16 v8, v16

    move-object/from16 v27, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v22

    move-object/from16 v22, v0

    move-object v0, v10

    move-object/from16 v10, v25

    invoke-direct/range {v2 .. v10}, Lorg/bitcoinj/core/UTXO;-><init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;Ljava/lang/String;)V

    .line 294
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v2, v0}, Lorg/bitcoinj/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V

    .line 295
    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object v7, v12

    move-object v6, v15

    move-object/from16 v5, v19

    move-object/from16 v8, v22

    move-object/from16 v12, v24

    move-object/from16 v15, v26

    move-object/from16 v22, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v27

    goto :goto_5

    :cond_b
    move-object/from16 v24, v12

    move-object/from16 v26, v15

    move-object/from16 v27, v21

    move-object v15, v6

    move-object v12, v7

    move-object/from16 v21, v14

    move-object/from16 v14, v22

    move-object/from16 v22, v8

    .line 299
    invoke-virtual {v5}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v0, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-gtz v0, :cond_f

    if-eqz v16, :cond_c

    move-object v9, v5

    move-object v10, v14

    goto :goto_6

    .line 304
    :cond_c
    invoke-virtual {v11, v5}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v0, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-gtz v0, :cond_e

    .line 306
    invoke-virtual {v11, v5}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    move-object v10, v0

    move-object/from16 v9, v27

    :goto_6
    if-nez v16, :cond_d

    .line 309
    iget-boolean v0, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->runScripts:Z

    if-eqz v0, :cond_d

    .line 311
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;

    move-object/from16 v4, v22

    invoke-direct {v2, v4, v12, v15}, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;-><init>(Lorg/bitcoinj/core/Transaction;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 312
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v2, v21

    .line 313
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    move-object/from16 v2, v21

    :goto_7
    move/from16 v0, p1

    move-object/from16 v11, p2

    move-object v14, v2

    move-wide/from16 v2, v17

    move-object/from16 v12, v24

    move-object/from16 v15, v26

    goto/16 :goto_1

    .line 305
    :cond_e
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v2, "Transaction input value out of range"

    invoke-direct {v0, v2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_f
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v2, "Transaction output value out of range"

    invoke-direct {v0, v2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v27, v9

    move-object/from16 v24, v12

    move-object v2, v14

    move-object v14, v10

    .line 316
    iget-object v0, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-gtz v0, :cond_13

    move/from16 v0, p1

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/Block;->getBlockInflation(I)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    move-object/from16 v5, v27

    invoke-virtual {v0, v5}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-ltz v0, :cond_13

    .line 318
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_2

    .line 321
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/VerificationException;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_11

    goto :goto_8

    .line 329
    :cond_11
    :try_start_2
    throw v2

    :catch_0
    move-exception v0

    .line 325
    sget-object v2, Lorg/bitcoinj/core/FullPrunedBlockChain;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Script.correctlySpends threw a non-normal exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 326
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Bug in Script.correctlySpends, likely script malformed in some new and interesting way."

    invoke-direct {v2, v3, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 323
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_2 .. :try_end_2} :catch_2

    .line 340
    :cond_12
    new-instance v0, Lorg/bitcoinj/core/TransactionOutputChanges;

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v2}, Lorg/bitcoinj/core/TransactionOutputChanges;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 317
    :cond_13
    :try_start_3
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v2, "Transaction fees out of range"

    invoke-direct {v0, v2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 336
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 337
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v2}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 338
    throw v0

    :catch_3
    move-exception v0

    .line 332
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 333
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v2}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 334
    throw v0

    .line 216
    :cond_14
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block failed checkpoint lockin at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "connectTransactions called with Block that didn\'t have transactions!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized connectTransactions(Lorg/bitcoinj/core/StoredBlock;)Lorg/bitcoinj/core/TransactionOutputChanges;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 350
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/core/NetworkParameters;->passesCheckpoint(ILorg/bitcoinj/core/Sha256Hash;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 353
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v2}, Lorg/bitcoinj/store/FullPrunedBlockStore;->beginDatabaseBatchWrite()V

    .line 354
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/bitcoinj/store/FullPrunedBlockStore;->getUndoBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredUndoableBlock;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_18

    .line 362
    :try_start_1
    invoke-virtual {v2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 364
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 365
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v5, 0x0

    .line 368
    iget-object v7, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/bitcoinj/core/NetworkParameters;->isCheckpoint(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bitcoinj/core/Transaction;

    .line 370
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v9

    .line 371
    iget-object v10, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v10, v9, v8}, Lorg/bitcoinj/store/FullPrunedBlockStore;->hasUnspentOutputs(Lorg/bitcoinj/core/Sha256Hash;I)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Block failed BIP30 test!"

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_1
    sget-object v7, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    const/4 v8, 0x0

    .line 378
    iget-object v9, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 379
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    iput-object v9, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 380
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bitcoinj/core/Transaction;

    .line 382
    iget-object v11, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 383
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/FullPrunedBlockChain;->getVersionTally()Lorg/bitcoinj/utils/VersionTally;

    move-result-object v13

    const/16 v14, 0x20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v10, v13, v14}, Lorg/bitcoinj/core/NetworkParameters;->getTransactionVerificationFlags(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/utils/VersionTally;Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v11

    .line 384
    invoke-virtual {v10}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v21

    .line 385
    sget-object v12, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 386
    sget-object v13, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 387
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    if-nez v21, :cond_9

    const/4 v15, 0x0

    .line 390
    :goto_2
    invoke-virtual {v10}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v16

    move-object/from16 v22, v3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_a

    .line 391
    invoke-virtual {v10}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    move-object/from16 v16, v13

    .line 392
    iget-object v13, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v17

    move-object/from16 v23, v8

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v8

    .line 393
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v17

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v9

    .line 392
    invoke-interface {v13, v8, v9, v10}, Lorg/bitcoinj/store/FullPrunedBlockStore;->getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 396
    invoke-virtual {v8}, Lorg/bitcoinj/core/UTXO;->isCoinbase()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v9

    invoke-virtual {v8}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v10}, Lorg/bitcoinj/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v10

    if-lt v9, v10, :cond_3

    goto :goto_3

    .line 397
    :cond_3
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to spend coinbase at depth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-virtual {v8}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_4
    :goto_3
    invoke-virtual {v8}, Lorg/bitcoinj/core/UTXO;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v9

    invoke-virtual {v12, v9}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v12

    .line 399
    sget-object v9, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 400
    invoke-virtual {v8}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 401
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bitcoinj/script/Script;->getP2SHSigOpCount([B)J

    move-result-wide v9

    add-long/2addr v5, v9

    :cond_5
    const-wide/16 v9, 0x4e20

    cmp-long v3, v5, v9

    if-gtz v3, :cond_6

    goto :goto_4

    .line 403
    :cond_6
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Too many P2SH SigOps in block"

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_7
    :goto_4
    invoke-virtual {v8}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v3, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v3, v8}, Lorg/bitcoinj/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V

    .line 411
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v16

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_2

    .line 395
    :cond_8
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Attempted spend of a non-existent or already spent output!"

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move-object/from16 v22, v3

    :cond_a
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v16, v13

    move-object v3, v12

    .line 414
    invoke-virtual/range {v25 .. v25}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v8

    .line 415
    invoke-virtual/range {v25 .. v25}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v13, v16

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bitcoinj/core/TransactionOutput;

    .line 416
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v26

    .line 417
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v12

    invoke-direct {v1, v12}, Lorg/bitcoinj/core/FullPrunedBlockChain;->getScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v15

    .line 418
    new-instance v13, Lorg/bitcoinj/core/UTXO;

    .line 419
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v12

    move-wide/from16 v27, v5

    int-to-long v5, v12

    .line 420
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v16

    .line 421
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v17

    .line 424
    invoke-direct {v1, v15}, Lorg/bitcoinj/core/FullPrunedBlockChain;->getScriptAddress(Lorg/bitcoinj/script/Script;)Ljava/lang/String;

    move-result-object v20

    move-object v12, v13

    move-object v10, v13

    move-object v13, v8

    move-object/from16 v29, v8

    move-object v8, v14

    move-object/from16 v19, v15

    move-wide v14, v5

    move/from16 v18, v21

    invoke-direct/range {v12 .. v20}, Lorg/bitcoinj/core/UTXO;-><init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;Ljava/lang/String;)V

    .line 425
    iget-object v5, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v5, v10}, Lorg/bitcoinj/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V

    .line 426
    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v14, v8

    move-object/from16 v13, v26

    move-wide/from16 v5, v27

    move-object/from16 v8, v29

    goto :goto_5

    :cond_b
    move-wide/from16 v27, v5

    move-object v8, v14

    .line 430
    invoke-virtual {v13}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v5

    if-ltz v5, :cond_f

    iget-object v5, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v5}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v13, v5}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v5

    if-gtz v5, :cond_f

    if-eqz v21, :cond_c

    move-object/from16 v23, v13

    goto :goto_6

    .line 435
    :cond_c
    invoke-virtual {v3, v13}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v5

    if-ltz v5, :cond_e

    iget-object v5, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v5}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v5

    if-gtz v5, :cond_e

    .line 437
    invoke-virtual {v3, v13}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    move-object v7, v3

    :goto_6
    if-nez v21, :cond_d

    .line 442
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;

    move-object/from16 v10, v25

    invoke-direct {v5, v10, v8, v11}, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;-><init>(Lorg/bitcoinj/core/Transaction;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {v3, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 443
    iget-object v5, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v5, v24

    .line 444
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    move-object/from16 v5, v24

    :goto_7
    move-object v9, v5

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move-wide/from16 v5, v27

    goto/16 :goto_1

    .line 436
    :cond_e
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Transaction input value out of range"

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_f
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Transaction output value out of range"

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    move-object/from16 v23, v8

    move-object v5, v9

    .line 447
    iget-object v3, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v3}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v3

    if-gtz v3, :cond_12

    .line 448
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/bitcoinj/core/Block;->getBlockInflation(I)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    move-object/from16 v8, v23

    invoke-virtual {v3, v8}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v3

    if-ltz v3, :cond_12

    .line 450
    new-instance v3, Lorg/bitcoinj/core/TransactionOutputChanges;

    invoke-direct {v3, v4, v2}, Lorg/bitcoinj/core/TransactionOutputChanges;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 451
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;
    :try_end_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/VerificationException;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_11

    goto :goto_8

    .line 462
    :cond_11
    :try_start_3
    throw v4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 458
    sget-object v3, Lorg/bitcoinj/core/FullPrunedBlockChain;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Script.correctlySpends threw a non-normal exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 459
    new-instance v3, Lorg/bitcoinj/core/VerificationException;

    const-string v4, "Bug in Script.correctlySpends, likely script malformed in some new and interesting way."

    invoke-direct {v3, v4, v2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 456
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 449
    :cond_12
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Transaction fees out of range"

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_13
    invoke-virtual {v2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object v3

    .line 466
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/bitcoinj/core/NetworkParameters;->isCheckpoint(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 467
    iget-object v2, v3, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/UTXO;

    .line 468
    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    .line 469
    iget-object v6, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v7

    invoke-interface {v6, v5, v7, v8}, Lorg/bitcoinj/store/FullPrunedBlockStore;->getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;

    move-result-object v4

    if-nez v4, :cond_14

    goto :goto_9

    .line 470
    :cond_14
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    const-string v3, "Block failed BIP30 test!"

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_15
    iget-object v2, v3, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/UTXO;

    .line 473
    iget-object v5, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v5, v4}, Lorg/bitcoinj/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V

    goto :goto_a

    .line 474
    :cond_16
    iget-object v2, v3, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/UTXO;

    .line 475
    iget-object v5, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v5, v4}, Lorg/bitcoinj/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    :try_end_3
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    .line 486
    :cond_17
    monitor-exit p0

    return-object v3

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 482
    :try_start_4
    iget-object v3, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 483
    iget-object v3, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v3}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 484
    throw v2

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 478
    iget-object v3, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->scriptVerificationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 479
    iget-object v3, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v3}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 480
    throw v2

    .line 357
    :cond_18
    iget-object v2, v1, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v2}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 358
    new-instance v2, Lorg/bitcoinj/core/PrunedException;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/PrunedException;-><init>(Lorg/bitcoinj/core/Sha256Hash;)V

    throw v2

    .line 351
    :cond_19
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block failed checkpoint lockin at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method protected disconnectTransactions(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/PrunedException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 496
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v0}, Lorg/bitcoinj/store/FullPrunedBlockStore;->beginDatabaseBatchWrite()V

    .line 498
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bitcoinj/store/FullPrunedBlockStore;->getUndoBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredUndoableBlock;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object p1

    .line 501
    iget-object v0, p1, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/UTXO;

    .line 502
    iget-object v2, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v2, v1}, Lorg/bitcoinj/store/FullPrunedBlockStore;->addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p1, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/UTXO;

    .line 504
    iget-object v1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v1, v0}, Lorg/bitcoinj/store/FullPrunedBlockStore;->removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V

    goto :goto_1

    :cond_1
    return-void

    .line 499
    :cond_2
    new-instance v0, Lorg/bitcoinj/core/PrunedException;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/PrunedException;-><init>(Lorg/bitcoinj/core/Sha256Hash;)V

    throw v0
    :try_end_0
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 509
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v0}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 510
    throw p1

    :catch_1
    move-exception p1

    .line 506
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v0}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    .line 507
    throw p1
.end method

.method protected doSetChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 517
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v0, p1}, Lorg/bitcoinj/store/FullPrunedBlockStore;->setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 518
    iget-object p1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {p1}, Lorg/bitcoinj/store/FullPrunedBlockStore;->commitDatabaseBatchWrite()V

    return-void
.end method

.method protected getStoredBlockInCurrentScope(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 529
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v0, p1}, Lorg/bitcoinj/store/FullPrunedBlockStore;->getOnceUndoableStoredBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    return-object p1
.end method

.method protected notSettingChainHead()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->blockStore:Lorg/bitcoinj/store/FullPrunedBlockStore;

    invoke-interface {v0}, Lorg/bitcoinj/store/FullPrunedBlockStore;->abortDatabaseBatchWrite()V

    return-void
.end method

.method protected rollbackBlockStore(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 127
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "Unsupported"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRunScripts(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain;->runScripts:Z

    return-void
.end method

.method protected shouldVerifyTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
