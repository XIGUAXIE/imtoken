.class public Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"

# interfaces
.implements Lorg/bitcoinj/store/FullPrunedBlockStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
    }
.end annotation


# instance fields
.field private blockMap:Lorg/bitcoinj/store/TransactionalHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/store/TransactionalHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;",
            ">;"
        }
    .end annotation
.end field

.field private chainHead:Lorg/bitcoinj/core/StoredBlock;

.field private fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/store/TransactionalMultiKeyHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Ljava/lang/Integer;",
            "Lorg/bitcoinj/core/StoredUndoableBlock;",
            ">;"
        }
    .end annotation
.end field

.field private fullStoreDepth:I

.field private params:Lorg/bitcoinj/core/NetworkParameters;

.field private transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/store/TransactionalHashMap<",
            "Lorg/bitcoinj/store/StoredTransactionOutPoint;",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation
.end field

.field private verifiedChainHead:Lorg/bitcoinj/core/StoredBlock;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;I)V
    .locals 3

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-direct {v0}, Lorg/bitcoinj/store/TransactionalHashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    .line 257
    new-instance v0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    invoke-direct {v0}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    .line 258
    new-instance v0, Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-direct {v0}, Lorg/bitcoinj/store/TransactionalHashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 259
    :goto_0
    iput p2, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullStoreDepth:I

    .line 262
    :try_start_0
    new-instance p2, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    .line 264
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 265
    new-instance v1, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)V

    .line 266
    invoke-virtual {p0, p2, v1}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V

    .line 267
    invoke-virtual {p0, p2}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 268
    invoke-virtual {p0, p2}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 269
    iput-object p1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 273
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 271
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public declared-synchronized abortDatabaseBatchWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->abortDatabaseBatchWrite()V

    .line 388
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->AbortTransaction()V

    .line 389
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->abortDatabaseBatchWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    new-instance v1, Lorg/bitcoinj/store/StoredTransactionOutPoint;

    invoke-direct {v1, p1}, Lorg/bitcoinj/store/StoredTransactionOutPoint;-><init>(Lorg/bitcoinj/core/UTXO;)V

    invoke-virtual {v0, v1, p1}, Lorg/bitcoinj/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized beginDatabaseBatchWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->beginDatabaseBatchWrite()V

    .line 374
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->BeginTransaction()V

    .line 375
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->beginDatabaseBatchWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    .line 347
    iput-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    .line 348
    iput-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    return-void
.end method

.method public declared-synchronized commitDatabaseBatchWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->commitDatabaseBatchWrite()V

    .line 381
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->CommitTransaction()V

    .line 382
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->commitDatabaseBatchWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p1, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->block:Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->chainHead:Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChainHeadHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation

    .line 408
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 410
    new-instance v1, Lorg/bitcoinj/core/UTXOProviderException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized getOnceUndoableStoredBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;

    if-eqz p1, :cond_0

    .line 305
    iget-boolean v0, p1, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->wasUndoable:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->block:Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOpenTransactionOutputs(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Address;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    iget-object v1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v1}, Lorg/bitcoinj/store/TransactionalHashMap;->values()Ljava/util/List;

    move-result-object v1

    .line 420
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/UTXO;

    .line 421
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Address;

    .line 422
    invoke-virtual {v2}, Lorg/bitcoinj/core/UTXO;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public declared-synchronized getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    new-instance v1, Lorg/bitcoinj/store/StoredTransactionOutPoint;

    invoke-direct {v1, p1, p2, p3}, Lorg/bitcoinj/store/StoredTransactionOutPoint;-><init>(Lorg/bitcoinj/core/Sha256Hash;J)V

    invoke-virtual {v0, v1}, Lorg/bitcoinj/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/UTXO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUndoBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredUndoableBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/StoredUndoableBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->verifiedChainHead:Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasUnspentOutputs(Lorg/bitcoinj/core/Sha256Hash;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    int-to-long v2, v1

    .line 395
    :try_start_0
    invoke-virtual {p0, p1, v2, v3}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 396
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 397
    :cond_1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized put(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    new-instance v2, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;-><init>(Lorg/bitcoinj/core/StoredBlock;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/bitcoinj/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    iget-object p2, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    new-instance v1, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;-><init>(Lorg/bitcoinj/core/StoredBlock;Z)V

    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->transactionOutputMap:Lorg/bitcoinj/store/TransactionalHashMap;

    new-instance v1, Lorg/bitcoinj/store/StoredTransactionOutPoint;

    invoke-direct {v1, p1}, Lorg/bitcoinj/store/StoredTransactionOutPoint;-><init>(Lorg/bitcoinj/core/UTXO;)V

    invoke-virtual {v0, v1}, Lorg/bitcoinj/store/TransactionalHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 369
    monitor-exit p0

    return-void

    .line 368
    :cond_0
    :try_start_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "Tried to remove a UTXO from MemoryFullPrunedBlockStore that it didn\'t have!"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iput-object p1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->chainHead:Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->blockMap:Lorg/bitcoinj/store/TransactionalHashMap;

    const-string v1, "MemoryFullPrunedBlockStore is closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iput-object p1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->verifiedChainHead:Lorg/bitcoinj/core/StoredBlock;

    .line 337
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullBlockMap:Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result p1

    iget v1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;->fullStoreDepth:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->removeByMultiKey(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
