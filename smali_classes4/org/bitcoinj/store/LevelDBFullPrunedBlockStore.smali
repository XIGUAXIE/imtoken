.class public Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;
.super Ljava/lang/Object;
.source "LevelDBFullPrunedBlockStore.java"

# interfaces
.implements Lorg/bitcoinj/store/FullPrunedBlockStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;,
        Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;,
        Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;
    }
.end annotation


# static fields
.field static final LEVELDB_READ_CACHE_DEFAULT:J = 0x6400000L

.field static final LEVELDB_WRITE_CACHE_DEFAULT:I = 0xa00000

.field static final OPENOUT_CACHE_DEFAULT:I = 0x186a0

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected autoCommit:Z

.field batch:Lorg/iq80/leveldb/WriteBatch;

.field protected bloom:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

.field protected chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

.field protected chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

.field db:Lorg/iq80/leveldb/DB;

.field exitBlock:I

.field protected filename:Ljava/lang/String;

.field protected fullStoreDepth:I

.field hasCall:J

.field hasFalse:J

.field hasTrue:J

.field protected hit:J

.field protected instrument:Z

.field protected leveldbReadCache:J

.field protected leveldbWriteCache:I

.field methodCalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field methodStartTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field methodTotalTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected miss:J

.field protected openOutCache:I

.field params:Lorg/bitcoinj/core/NetworkParameters;

.field totalStopwatch:Lcom/google/common/base/Stopwatch;

.field uncommited:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation
.end field

.field uncommitedDeletes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected utxoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation
.end field

.field protected utxoUncommittedCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation
.end field

.field protected utxoUncommittedDeletedCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

.field protected verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;I)V
    .locals 10

    const-wide/32 v4, 0x6400000

    const/high16 v6, 0xa00000

    const v7, 0x186a0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 252
    invoke-direct/range {v0 .. v9}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;IJIIZI)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;IJIIZI)V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    .line 258
    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 259
    iput p3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->fullStoreDepth:I

    .line 260
    iput-boolean p8, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    .line 261
    iput p9, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->exitBlock:I

    .line 262
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodStartTime:Ljava/util/Map;

    .line 263
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodCalls:Ljava/util/Map;

    .line 264
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodTotalTime:Ljava/util/Map;

    .line 266
    iput-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->filename:Ljava/lang/String;

    .line 267
    iput-wide p4, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->leveldbReadCache:J

    .line 268
    iput p6, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->leveldbWriteCache:I

    .line 269
    iput p7, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->openOutCache:I

    .line 270
    new-instance p1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    invoke-direct {p1, p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;-><init>(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;)V

    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->bloom:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    .line 271
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->totalStopwatch:Lcom/google/common/base/Stopwatch;

    .line 272
    invoke-direct {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->openDB()V

    .line 273
    iget-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->bloom:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    iget-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->reloadCache(Lorg/iq80/leveldb/DB;)V

    .line 276
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->totalStopwatch:Lcom/google/common/base/Stopwatch;

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 63
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object p0

    return-object p0
.end method

.method private batchDelete([B)V
    .locals 2

    .line 856
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    if-nez v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;

    invoke-interface {v0, p1}, Lorg/iq80/leveldb/WriteBatch;->delete([B)Lorg/iq80/leveldb/WriteBatch;

    .line 858
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommited:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommitedDeletes:Ljava/util/Set;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0, p1}, Lorg/iq80/leveldb/DB;->delete([B)V

    :goto_0
    return-void
.end method

.method private batchGet([B)[B
    .locals 3

    .line 829
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 832
    iget-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommitedDeletes:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 837
    :cond_0
    iget-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommited:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 838
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    return-object v0

    .line 843
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0, p1}, Lorg/iq80/leveldb/DB;->get([B)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/iq80/leveldb/DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 845
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "Caught error opening file"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    .line 847
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 850
    :catch_1
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0, p1}, Lorg/iq80/leveldb/DB;->get([B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private batchPut([B[B)V
    .locals 2

    .line 818
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0, p1, p2}, Lorg/iq80/leveldb/DB;->put([B[B)V

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommited:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;

    invoke-interface {v0, p1, p2}, Lorg/iq80/leveldb/WriteBatch;->put([B[B)Lorg/iq80/leveldb/WriteBatch;

    :goto_0
    return-void
.end method

.method private createNewStore(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 325
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    .line 326
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    .line 331
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 332
    new-instance v2, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)V

    .line 334
    invoke-virtual {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginDatabaseBatchWrite()V

    .line 335
    invoke-virtual {p0, v0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V

    .line 336
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 337
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 338
    sget-object p1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CREATED:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object p1

    const-string v0, "done"

    invoke-static {v0}, Lorg/fusesource/leveldbjni/JniDBFactory;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    .line 339
    invoke-virtual {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->commitDatabaseBatchWrite()V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 341
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 568
    invoke-virtual {p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0
.end method

.method private getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B
    .locals 3

    const/16 v0, 0x1d

    new-array v0, v0, [B

    .line 593
    invoke-virtual {p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 594
    invoke-virtual {p2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x4

    const/4 v1, 0x1

    const/16 v2, 0x1c

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;[B)[B
    .locals 3

    const/16 v0, 0x1d

    new-array v0, v0, [B

    .line 601
    invoke-virtual {p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x4

    const/4 v1, 0x1

    const/16 v2, 0x1c

    .line 602
    invoke-static {p2, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getTxKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B
    .locals 3

    const/16 v0, 0x21

    new-array v0, v0, [B

    .line 575
    invoke-virtual {p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 576
    invoke-virtual {p2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x1

    const/16 v2, 0x20

    invoke-static {p1, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getTxKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;I)[B
    .locals 3

    const/16 v0, 0x25

    new-array v0, v0, [B

    .line 583
    invoke-virtual {p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 584
    invoke-virtual {p2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x1

    const/16 v2, 0x20

    invoke-static {p1, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x4

    .line 585
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    const/16 p3, 0x21

    .line 586
    invoke-static {p2, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private initFromDb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 306
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchGet([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 307
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 308
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v1, :cond_1

    .line 313
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->VERIFIED_CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchGet([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 314
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 315
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v1, :cond_0

    return-void

    .line 317
    :cond_0
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "corrupt databse block store - verified head block not found"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "corrupt database block store - head block not found"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private openDB()V
    .locals 4

    .line 280
    new-instance v0, Lorg/iq80/leveldb/Options;

    invoke-direct {v0}, Lorg/iq80/leveldb/Options;-><init>()V

    const/4 v1, 0x1

    .line 281
    invoke-virtual {v0, v1}, Lorg/iq80/leveldb/Options;->createIfMissing(Z)Lorg/iq80/leveldb/Options;

    .line 283
    iget-wide v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->leveldbReadCache:J

    invoke-virtual {v0, v1, v2}, Lorg/iq80/leveldb/Options;->cacheSize(J)Lorg/iq80/leveldb/Options;

    .line 284
    iget v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->leveldbWriteCache:I

    invoke-virtual {v0, v1}, Lorg/iq80/leveldb/Options;->writeBufferSize(I)Lorg/iq80/leveldb/Options;

    const/16 v1, 0x2710

    .line 285
    invoke-virtual {v0, v1}, Lorg/iq80/leveldb/Options;->maxOpenFiles(I)Lorg/iq80/leveldb/Options;

    .line 288
    :try_start_0
    sget-object v1, Lorg/fusesource/leveldbjni/JniDBFactory;->factory:Lorg/fusesource/leveldbjni/JniDBFactory;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lorg/fusesource/leveldbjni/JniDBFactory;->open(Ljava/io/File;Lorg/iq80/leveldb/Options;)Lorg/iq80/leveldb/DB;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;

    iget v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->openOutCache:I

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, p0, v1, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;-><init>(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;IF)V

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    .line 295
    :try_start_1
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CREATED:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchGet([B)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->createNewStore(Lorg/bitcoinj/core/NetworkParameters;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->initFromDb()V
    :try_end_1
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can not init/load db"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can not open DB"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abortDatabaseBatchWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1098
    :try_start_0
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommited:Ljava/util/Map;

    .line 1099
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommitedDeletes:Ljava/util/Set;

    .line 1100
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedCache:Ljava/util/Map;

    .line 1101
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedDeletedCache:Ljava/util/Set;

    const/4 v1, 0x1

    .line 1102
    iput-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    .line 1103
    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;

    if-eqz v1, :cond_0

    .line 1104
    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;

    invoke-interface {v1}, Lorg/iq80/leveldb/WriteBatch;->close()V

    .line 1105
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1108
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v2, "could not close batch in abort."

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 766
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "addUnspentTransactionOutput"

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 770
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->bloom:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->add(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 771
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 773
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/UTXO;->serializeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 778
    sget-object v2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-direct {p0, v2, v3, v5}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getTxKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;I)[B

    move-result-object v2

    .line 779
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    .line 781
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 784
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedCache:Ljava/util/Map;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedDeletedCache:Ljava/util/Set;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 793
    :goto_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 799
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v0
    :try_end_1
    .catch Lorg/bitcoinj/core/AddressFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x39

    .line 806
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 807
    sget-object v3, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ADDRESS_HASHINDEX:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {v3}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 808
    invoke-virtual {v0}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 809
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 810
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 812
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    .line 813
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_3

    .line 814
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    nop

    .line 801
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_4

    .line 802
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 794
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_6

    .line 795
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_6
    return-void

    :catch_1
    move-exception p1

    .line 775
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "problem serialising utxo"

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public beginDatabaseBatchWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 1035
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    if-nez v0, :cond_0

    return-void

    .line 1038
    :cond_0
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "beginDatabaseBatchWrite"

    if-eqz v0, :cond_1

    .line 1039
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 1041
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0}, Lorg/iq80/leveldb/DB;->createWriteBatch()Lorg/iq80/leveldb/WriteBatch;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;

    .line 1042
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommited:Ljava/util/Map;

    .line 1043
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommitedDeletes:Ljava/util/Set;

    .line 1044
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedCache:Ljava/util/Map;

    .line 1045
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedDeletedCache:Ljava/util/Set;

    const/4 v0, 0x0

    .line 1046
    iput-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    .line 1047
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz v0, :cond_2

    .line 1048
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method beginMethod(Ljava/lang/String;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodStartTime:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 410
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0}, Lorg/iq80/leveldb/DB;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 412
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v2, "Could not close db"

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public commitDatabaseBatchWrite()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1053
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommited:Ljava/util/Map;

    .line 1054
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommitedDeletes:Ljava/util/Set;

    .line 1055
    iget-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v2, "commitDatabaseBatchWrite"

    if-eqz v1, :cond_0

    .line 1056
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 1058
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    iget-object v3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;

    invoke-interface {v1, v3}, Lorg/iq80/leveldb/DB;->write(Lorg/iq80/leveldb/WriteBatch;)V

    .line 1062
    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1064
    iget-object v4, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1066
    :cond_1
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedCache:Ljava/util/Map;

    .line 1067
    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedDeletedCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 1068
    iget-object v4, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1070
    :cond_2
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedDeletedCache:Ljava/util/Set;

    const/4 v1, 0x1

    .line 1072
    iput-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    .line 1075
    :try_start_0
    iget-object v3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;

    invoke-interface {v3}, Lorg/iq80/leveldb/WriteBatch;->close()V

    .line 1076
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batch:Lorg/iq80/leveldb/WriteBatch;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz v0, :cond_3

    .line 1083
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    .line 1085
    :cond_3
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_4

    .line 1086
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v3}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->dumpStats()V

    .line 1088
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    iget v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->exitBlock:I

    if-ne v0, v2, :cond_4

    .line 1089
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exit due to exitBlock set"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1090
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 1078
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "Error in db commit."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1079
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "could not close batch."

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dumpStats()V
    .locals 21

    move-object/from16 v0, p0

    .line 363
    iget-object v1, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->totalStopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 365
    iget-object v3, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodCalls:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v9, "%.2f"

    const-wide/16 v10, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 366
    iget-object v12, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodCalls:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 367
    iget-object v14, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodTotalTime:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v4, v14

    .line 369
    div-long v7, v14, v12

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    long-to-double v3, v14

    add-double/2addr v3, v10

    move-wide/from16 v19, v7

    long-to-double v7, v1

    add-double/2addr v7, v10

    div-double/2addr v3, v7

    .line 371
    sget-object v5, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " c:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " r:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " a:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v19

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " p:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    goto :goto_0

    :cond_0
    long-to-double v3, v4

    add-double/2addr v3, v10

    long-to-double v1, v1

    add-double/2addr v1, v10

    div-double/2addr v3, v1

    .line 374
    iget-wide v1, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hit:J

    long-to-double v5, v1

    add-double/2addr v5, v10

    iget-wide v7, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->miss:J

    add-long/2addr v1, v7

    long-to-double v1, v1

    add-double/2addr v1, v10

    div-double/2addr v5, v1

    .line 375
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache size:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " hit:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hit:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " miss:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->miss:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " rate:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 376
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v8, v6

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 377
    iget-object v1, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->bloom:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    invoke-virtual {v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->printStat()V

    .line 378
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasTxOut call:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasCall:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " True:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasTrue:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " False:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasFalse:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 379
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wall:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->totalStopwatch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " percent:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 380
    iget-object v1, v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    const-string v2, "leveldb.stats"

    invoke-interface {v1, v2}, Lorg/iq80/leveldb/DB;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method endMethod(Ljava/lang/String;)V
    .locals 5

    .line 350
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodTotalTime:Ljava/util/Map;

    .line 353
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodStartTime:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Stopwatch;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 352
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodCalls:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodTotalTime:Ljava/util/Map;

    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->methodStartTime:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/StoredBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object p1

    .line 621
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object p1

    .line 624
    :cond_1
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "get"

    if-eqz v0, :cond_2

    .line 625
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 629
    :cond_2
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEADERS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchGet([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 631
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_3

    .line 632
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    const/16 v2, 0x60

    .line 635
    aget-byte v2, p1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_7

    if-nez v3, :cond_7

    .line 637
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_6

    .line 638
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_6
    return-object v0

    .line 643
    :cond_7
    iget-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bitcoinj/core/StoredBlock;->deserializeCompact(Lorg/bitcoinj/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    .line 644
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->verifyHeader()V

    .line 646
    iget-boolean p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p2, :cond_8

    .line 647
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_8
    return-object p1
.end method

.method public getChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object v0
.end method

.method public getChainHeadHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 485
    new-instance v1, Lorg/bitcoinj/core/UTXOProviderException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOnceUndoableStoredBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 608
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    return-object p1
.end method

.method public getOpenTransactionOutputs(Ljava/util/List;)Ljava/util/List;
    .locals 17
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

    move-object/from16 v1, p0

    .line 427
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 428
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Address;

    const/16 v4, 0x15

    .line 429
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 430
    sget-object v5, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ADDRESS_HASHINDEX:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {v5}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {v0}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 433
    new-instance v5, Lorg/iq80/leveldb/ReadOptions;

    invoke-direct {v5}, Lorg/iq80/leveldb/ReadOptions;-><init>()V

    .line 434
    iget-object v6, v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v6}, Lorg/iq80/leveldb/DB;->getSnapshot()Lorg/iq80/leveldb/Snapshot;

    move-result-object v6

    .line 435
    invoke-virtual {v5, v6}, Lorg/iq80/leveldb/ReadOptions;->snapshot(Lorg/iq80/leveldb/Snapshot;)Lorg/iq80/leveldb/ReadOptions;

    .line 439
    iget-object v7, v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v7, v5}, Lorg/iq80/leveldb/DB;->iterator(Lorg/iq80/leveldb/ReadOptions;)Lorg/iq80/leveldb/DBIterator;

    move-result-object v5

    .line 440
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/iq80/leveldb/DBIterator;->seek([B)V

    :goto_1
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->peekNext()Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 442
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    const/16 v7, 0x14

    new-array v7, v7, [B

    .line 444
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual {v0}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 449
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 451
    invoke-static {v7}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    int-to-long v8, v4

    .line 456
    :try_start_0
    invoke-virtual {v1, v7, v8, v9}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;

    move-result-object v4
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 461
    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v7

    .line 462
    iget-object v8, v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;Z)Lorg/bitcoinj/core/Address;

    move-result-object v7

    .line 463
    new-instance v15, Lorg/bitcoinj/core/UTXO;

    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v9

    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v10

    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v12

    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v13

    .line 464
    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->isCoinbase()Z

    move-result v14

    invoke-virtual {v4}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v4

    invoke-virtual {v7}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v8, v15

    move-object v7, v15

    move-object v15, v4

    invoke-direct/range {v8 .. v16}, Lorg/bitcoinj/core/UTXO;-><init>(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/core/Coin;IZLorg/bitcoinj/script/Script;Ljava/lang/String;)V

    .line 465
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_1
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->next()Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 458
    new-instance v0, Lorg/bitcoinj/core/UTXOProviderException;

    const-string v3, "block store execption"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/UTXOProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 469
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->close()V

    .line 471
    invoke-interface {v6}, Lorg/iq80/leveldb/Snapshot;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 474
    sget-object v4, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v5, "Error closing snapshot/iterator?"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    return-object v2
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const-string v0, "Exception in getTransactionOutput."

    .line 705
    iget-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v2, "getTransactionOutput"

    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 710
    :cond_0
    :try_start_0
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    long-to-int p3, p2

    invoke-direct {p0, v1, p1, p3}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getTxKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;I)[B

    move-result-object p1

    .line 712
    iget-boolean p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    const/4 p3, 0x0

    const-wide/16 v3, 0x1

    if-eqz p2, :cond_1

    .line 714
    iget-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/UTXO;

    goto :goto_0

    .line 717
    :cond_1
    iget-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedDeletedCache:Ljava/util/Set;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 719
    iget-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hit:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hit:J

    .line 720
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_2
    return-object p3

    .line 725
    :cond_3
    iget-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/UTXO;

    if-nez p2, :cond_4

    .line 727
    iget-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/UTXO;

    :cond_4
    :goto_0
    if-eqz p2, :cond_6

    .line 732
    iget-wide v5, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hit:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hit:J

    .line 733
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_5

    .line 734
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_5
    return-object p2

    .line 737
    :cond_6
    iget-wide v5, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->miss:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->miss:J

    .line 739
    invoke-direct {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchGet([B)[B

    move-result-object p1

    if-nez p1, :cond_8

    .line 741
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_7

    .line 742
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_7
    return-object p3

    .line 745
    :cond_8
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 746
    new-instance p1, Lorg/bitcoinj/core/UTXO;

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/UTXO;-><init>(Ljava/io/InputStream;)V

    .line 748
    iget-boolean p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p2, :cond_9

    .line 749
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/iq80/leveldb/DBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object p1

    :catch_0
    move-exception p1

    .line 756
    sget-object p2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_a

    .line 758
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 752
    sget-object p2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 753
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_a

    .line 754
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    .line 760
    :cond_a
    :goto_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string p2, "problem"

    invoke-direct {p1, p2}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUndoBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredUndoableBlock;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const-string v0, "getUndoBlock"

    .line 654
    :try_start_0
    iget-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 657
    :cond_0
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->UNDOABLEBLOCKS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v1, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchGet([B)[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 660
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_1

    .line 661
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 664
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 665
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 667
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-nez v2, :cond_4

    .line 671
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 672
    new-array v2, v2, [B

    .line 673
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 675
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/4 v5, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x4

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    .line 677
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-ge v1, v3, :cond_3

    .line 679
    new-instance v6, Lorg/bitcoinj/core/Transaction;

    iget-object v7, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v6, v7, v2, v4}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    .line 680
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getMessageSize()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_3
    new-instance v1, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-direct {v1, p1, v5}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)V

    goto :goto_1

    .line 685
    :cond_4
    new-array v2, v2, [B

    .line 686
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 687
    new-instance v1, Lorg/bitcoinj/core/TransactionOutputChanges;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/bitcoinj/core/TransactionOutputChanges;-><init>(Ljava/io/InputStream;)V

    .line 689
    new-instance v2, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-direct {v2, p1, v1}, Lorg/bitcoinj/core/StoredUndoableBlock;-><init>(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/TransactionOutputChanges;)V

    move-object v1, v2

    .line 691
    :goto_1
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_5

    .line 692
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v1

    :catch_0
    move-exception p1

    .line 696
    iget-boolean v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz v1, :cond_6

    .line 697
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    .line 698
    :cond_6
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    return-object v0
.end method

.method public hasUnspentOutputs(Lorg/bitcoinj/core/Sha256Hash;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 926
    iget-boolean p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v0, "hasUnspentOutputs"

    if-eqz p2, :cond_0

    .line 927
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 928
    :cond_0
    iget-wide v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasCall:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasCall:J

    .line 929
    iget-object p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->bloom:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->wasAdded(Lorg/bitcoinj/core/Sha256Hash;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 930
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_1

    .line 931
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    .line 932
    :cond_1
    iget-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasFalse:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasFalse:J

    return v1

    .line 937
    :cond_2
    sget-object p2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getTxKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object p1

    .line 938
    array-length p2, p1

    new-array v2, p2, [B

    .line 939
    iget-object v5, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v5}, Lorg/iq80/leveldb/DB;->iterator()Lorg/iq80/leveldb/DBIterator;

    move-result-object v5

    .line 940
    invoke-interface {v5, p1}, Lorg/iq80/leveldb/DBIterator;->seek([B)V

    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->hasNext()Z

    move-result v6

    const-string v7, "Error closing iterator"

    if-eqz v6, :cond_6

    .line 941
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->peekNext()Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 942
    invoke-static {v6, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 943
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 944
    iget-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasTrue:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasTrue:J

    .line 946
    :try_start_0
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 948
    sget-object p2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, v7, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    :goto_0
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_3

    .line 951
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 954
    :cond_4
    iget-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasFalse:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasFalse:J

    .line 956
    :try_start_1
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 958
    sget-object p2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, v7, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 960
    :goto_1
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_5

    .line 961
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_5
    return v1

    .line 966
    :cond_6
    :try_start_2
    invoke-interface {v5}, Lorg/iq80/leveldb/DBIterator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 968
    sget-object p2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, v7, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    :goto_2
    iget-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasFalse:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->hasFalse:J

    .line 971
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_7

    .line 972
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_7
    return v1
.end method

.method public put(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->putUpdateStoredBlock(Lorg/bitcoinj/core/StoredBlock;Z)V

    return-void
.end method

.method public put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 504
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "put"

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 506
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    .line 510
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 511
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 512
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/bitcoinj/core/TransactionOutputChanges;->serializeToStream(Ljava/io/OutputStream;)V

    .line 513
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    goto :goto_1

    .line 515
    :cond_1
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    shr-int/lit8 v5, v3, 0x0

    and-int/lit16 v5, v5, 0xff

    .line 516
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 517
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 518
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 519
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 520
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Transaction;

    .line 521
    invoke-virtual {v3, v2}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    move-object v8, v4

    move-object v4, p2

    move-object p2, v8

    .line 524
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    const/16 v3, 0x21

    .line 531
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 532
    sget-object v5, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEIGHT_UNDOABLEBLOCKS:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {v5}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 533
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 534
    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x1c

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 535
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [B

    invoke-direct {p0, v3, v6}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    const/4 v3, 0x0

    if-nez v4, :cond_3

    .line 538
    array-length v4, p2

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v7

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 539
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 540
    array-length v0, p2

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 541
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 542
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 543
    sget-object p2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->UNDOABLEBLOCKS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, p2, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object p2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    goto :goto_2

    .line 545
    :cond_3
    array-length p2, v4

    add-int/lit8 p2, p2, 0xc

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 546
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 547
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 548
    array-length v0, v4

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 549
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 550
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->UNDOABLEBLOCKS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    .line 552
    :goto_2
    iget-boolean p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p2, :cond_4

    .line 553
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    .line 554
    :cond_4
    invoke-virtual {p0, p1, v5}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->putUpdateStoredBlock(Lorg/bitcoinj/core/StoredBlock;Z)V

    return-void

    :catch_0
    move-exception p1

    .line 526
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected putUpdateStoredBlock(Lorg/bitcoinj/core/StoredBlock;Z)V
    .locals 3

    .line 491
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "putUpdateStoredBlock"

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 493
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    const/16 v2, 0x61

    .line 494
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 495
    invoke-virtual {p1, v2}, Lorg/bitcoinj/core/StoredBlock;->serializeCompact(Ljava/nio/ByteBuffer;)V

    int-to-byte p1, p2

    .line 496
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 497
    sget-object p1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEADERS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object p1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    .line 498
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method removeUndoableBlocksWhereHeightIsLessThan(I)V
    .locals 7

    if-gez p1, :cond_0

    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0}, Lorg/iq80/leveldb/DB;->iterator()Lorg/iq80/leveldb/DBIterator;

    move-result-object v0

    const/4 v1, 0x5

    .line 1000
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1001
    sget-object v2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEIGHT_UNDOABLEBLOCKS:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1002
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1004
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/iq80/leveldb/DBIterator;->seek([B)V

    :goto_0
    invoke-interface {v0}, Lorg/iq80/leveldb/DBIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    invoke-interface {v0}, Lorg/iq80/leveldb/DBIterator;->peekNext()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1007
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1008
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 1009
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/16 v4, 0x20

    new-array v4, v4, [B

    const/4 v5, 0x4

    const/16 v6, 0x1c

    .line 1012
    invoke-virtual {v2, v4, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-le v3, p1, :cond_1

    goto :goto_1

    .line 1017
    :cond_1
    sget-object v2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->UNDOABLEBLOCKS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v2, v4}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;[B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchDelete([B)V

    .line 1018
    invoke-direct {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchDelete([B)V

    .line 1004
    invoke-interface {v0}, Lorg/iq80/leveldb/DBIterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1021
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lorg/iq80/leveldb/DBIterator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1023
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v1, "Error closing iterator"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 867
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "removeUnspentTransactionOutput"

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 870
    :cond_0
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {p0, v0, v2, v4}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getTxKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;Lorg/bitcoinj/core/Sha256Hash;I)[B

    move-result-object v0

    .line 872
    iget-boolean v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    if-eqz v2, :cond_1

    .line 873
    iget-object v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 875
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedDeletedCache:Ljava/util/Set;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoUncommittedCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :goto_0
    invoke-direct {p0, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchDelete([B)V

    const/16 v0, 0x39

    .line 885
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 889
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    .line 890
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 895
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v2

    .line 896
    invoke-virtual {v2}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v2

    goto :goto_2

    .line 891
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getScript()Lorg/bitcoinj/script/Script;

    move-result-object v2

    .line 892
    iget-object v3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2, v3}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v2

    .line 893
    invoke-virtual {v2}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v2
    :try_end_0
    .catch Lorg/bitcoinj/core/AddressFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_2
    sget-object v3, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ADDRESS_HASHINDEX:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {v3}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 908
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 909
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 910
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 911
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchDelete([B)V

    .line 913
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_4

    .line 914
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_4
    return-void

    :catch_0
    nop

    .line 903
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_5

    .line 904
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_5
    return-void

    :catch_1
    nop

    .line 899
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_6

    .line 900
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public resetStore()V
    .locals 4

    .line 1116
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0}, Lorg/iq80/leveldb/DB;->close()V

    const/4 v0, 0x0

    .line 1117
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommited:Ljava/util/Map;

    .line 1118
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->uncommitedDeletes:Ljava/util/Set;

    const/4 v0, 0x1

    .line 1119
    iput-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->autoCommit:Z

    .line 1120
    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    invoke-direct {v0, p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;-><init>(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;)V

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->bloom:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;

    .line 1121
    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;

    iget v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->openOutCache:I

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, p0, v1, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;-><init>(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;IF)V

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->utxoCache:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1123
    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception in resetStore."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1126
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1129
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1131
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->openDB()V

    return-void
.end method

.method public setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "setChainHead"

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 399
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 400
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 401
    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 402
    sget-object p1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    .line 403
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 983
    iget-boolean v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    const-string v1, "setVerifiedChainHead"

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->beginMethod(Ljava/lang/String;)V

    .line 985
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 986
    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 987
    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->verifiedChainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    .line 988
    sget-object v2, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->VERIFIED_CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-direct {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->getKey(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->batchPut([B[B)V

    .line 989
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->chainHeadBlock:Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 990
    invoke-virtual {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    .line 991
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result p1

    iget v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->fullStoreDepth:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->removeUndoableBlocksWhereHeightIsLessThan(I)V

    .line 992
    iget-boolean p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->instrument:Z

    if-eqz p1, :cond_2

    .line 993
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->endMethod(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
