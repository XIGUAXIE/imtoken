.class public Lorg/bitcoinj/store/MemoryBlockStore;
.super Ljava/lang/Object;
.source "MemoryBlockStore.java"

# interfaces
.implements Lorg/bitcoinj/store/BlockStore;


# instance fields
.field private blockMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end field

.field private chainHead:Lorg/bitcoinj/core/StoredBlock;

.field private params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/bitcoinj/store/MemoryBlockStore$1;

    invoke-direct {v0, p0}, Lorg/bitcoinj/store/MemoryBlockStore$1;-><init>(Lorg/bitcoinj/store/MemoryBlockStore;)V

    iput-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    .line 41
    new-instance v1, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    .line 42
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/MemoryBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;)V

    .line 43
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/MemoryBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 44
    iput-object p1, p0, Lorg/bitcoinj/store/MemoryBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/bitcoinj/store/MemoryBlockStore;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public declared-synchronized get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 61
    :cond_0
    :try_start_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "MemoryBlockStore is closed"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "MemoryBlockStore is closed"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public final declared-synchronized put(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "MemoryBlockStore is closed"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/bitcoinj/store/MemoryBlockStore;->blockMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 74
    iput-object p1, p0, Lorg/bitcoinj/store/MemoryBlockStore;->chainHead:Lorg/bitcoinj/core/StoredBlock;

    return-void

    .line 73
    :cond_0
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "MemoryBlockStore is closed"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
