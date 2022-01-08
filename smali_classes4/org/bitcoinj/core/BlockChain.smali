.class public Lorg/bitcoinj/core/BlockChain;
.super Lorg/bitcoinj/core/AbstractBlockChain;
.source "BlockChain.java"


# instance fields
.field protected final blockStore:Lorg/bitcoinj/store/BlockStore;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V
    .locals 0
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

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/AbstractBlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V

    .line 77
    iput-object p3, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/store/BlockStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/bitcoinj/core/BlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/store/BlockStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p3}, Lorg/bitcoinj/core/BlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V

    .line 51
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/BlockChain;->addWallet(Lorg/bitcoinj/wallet/Wallet;)V

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

    .line 82
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/BlockChain;-><init>(Lorg/bitcoinj/core/Context;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/store/BlockStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/bitcoinj/core/BlockChain;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/store/BlockStore;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/store/BlockStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/BlockChain;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/store/BlockStore;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/bitcoinj/core/FilteredBlock;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/core/PrunedException;
        }
    .end annotation

    .line 166
    invoke-super {p0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->add(Lorg/bitcoinj/core/FilteredBlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getTransactionCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/BlockChain;->trackFilteredTransactions(I)V

    :cond_0
    return v0
.end method

.method protected addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/StoredBlock;->build(Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {p2, p1}, Lorg/bitcoinj/store/BlockStore;->put(Lorg/bitcoinj/core/StoredBlock;)V

    return-object p1
.end method

.method protected addToBlockStore(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/TransactionOutputChanges;)Lorg/bitcoinj/core/StoredBlock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;,
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 88
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/StoredBlock;->build(Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {p2, p1}, Lorg/bitcoinj/store/BlockStore;->put(Lorg/bitcoinj/core/StoredBlock;)V

    return-object p1
.end method

.method protected connectTransactions(ILorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/TransactionOutputChanges;
    .locals 0

    .line 134
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected connectTransactions(Lorg/bitcoinj/core/StoredBlock;)Lorg/bitcoinj/core/TransactionOutputChanges;
    .locals 0

    .line 140
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected disconnectTransactions(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 0

    .line 146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected doSetChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {v0, p1}, Lorg/bitcoinj/store/BlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    return-void
.end method

.method protected getStoredBlockInCurrentScope(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {v0, p1}, Lorg/bitcoinj/store/BlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    return-object p1
.end method

.method protected notSettingChainHead()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    return-void
.end method

.method protected rollbackBlockStore(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/bitcoinj/core/BlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/BlockChain;->getBestChainHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Bad height: %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    .line 122
    iget-object p1, p0, Lorg/bitcoinj/core/BlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 111
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {v0}, Lorg/bitcoinj/store/BlockStore;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    .line 112
    :goto_1
    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 113
    iget-object v1, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "Unreachable height"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/core/BlockChain;->blockStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {p1, v0}, Lorg/bitcoinj/store/BlockStore;->put(Lorg/bitcoinj/core/StoredBlock;)V

    .line 120
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/BlockChain;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    iget-object p1, p0, Lorg/bitcoinj/core/BlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/BlockChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected shouldVerifyTransactions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
