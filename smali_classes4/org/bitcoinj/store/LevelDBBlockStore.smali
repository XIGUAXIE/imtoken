.class public Lorg/bitcoinj/store/LevelDBBlockStore;
.super Ljava/lang/Object;
.source "LevelDBBlockStore.java"

# interfaces
.implements Lorg/bitcoinj/store/BlockStore;


# static fields
.field private static final CHAIN_HEAD_KEY:[B


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final context:Lorg/bitcoinj/core/Context;

.field private db:Lorg/iq80/leveldb/DB;

.field private final path:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "chainhead"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/store/LevelDBBlockStore;->CHAIN_HEAD_KEY:[B

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 41
    sget-object v0, Lorg/fusesource/leveldbjni/JniDBFactory;->factory:Lorg/fusesource/leveldbjni/JniDBFactory;

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/store/LevelDBBlockStore;-><init>(Lorg/bitcoinj/core/Context;Ljava/io/File;Lorg/iq80/leveldb/DBFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Ljava/io/File;Lorg/iq80/leveldb/DBFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x60

    .line 36
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->buffer:Ljava/nio/ByteBuffer;

    .line 46
    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->context:Lorg/bitcoinj/core/Context;

    .line 47
    iput-object p2, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->path:Ljava/io/File;

    .line 48
    new-instance p1, Lorg/iq80/leveldb/Options;

    invoke-direct {p1}, Lorg/iq80/leveldb/Options;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/iq80/leveldb/Options;->createIfMissing()Z

    .line 52
    :try_start_0
    invoke-direct {p0, p2, p3, p1}, Lorg/bitcoinj/store/LevelDBBlockStore;->tryOpen(Ljava/io/File;Lorg/iq80/leveldb/DBFactory;Lorg/iq80/leveldb/Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    :try_start_1
    invoke-interface {p3, p2, p1}, Lorg/iq80/leveldb/DBFactory;->repair(Ljava/io/File;Lorg/iq80/leveldb/Options;)V

    .line 56
    invoke-direct {p0, p2, p3, p1}, Lorg/bitcoinj/store/LevelDBBlockStore;->tryOpen(Ljava/io/File;Lorg/iq80/leveldb/DBFactory;Lorg/iq80/leveldb/Options;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 58
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private declared-synchronized initStoreIfNeeded()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    sget-object v1, Lorg/bitcoinj/store/LevelDBBlockStore;->CHAIN_HEAD_KEY:[B

    invoke-interface {v0, v1}, Lorg/iq80/leveldb/DB;->get([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->context:Lorg/bitcoinj/core/Context;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    .line 73
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;)V

    .line 74
    invoke-virtual {p0, v1}, Lorg/bitcoinj/store/LevelDBBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryOpen(Ljava/io/File;Lorg/iq80/leveldb/DBFactory;Lorg/iq80/leveldb/Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-interface {p2, p1, p3}, Lorg/iq80/leveldb/DBFactory;->open(Ljava/io/File;Lorg/iq80/leveldb/Options;)Lorg/iq80/leveldb/DB;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    .line 65
    invoke-direct {p0}, Lorg/bitcoinj/store/LevelDBBlockStore;->initStoreIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0}, Lorg/iq80/leveldb/DB;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    :try_start_1
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 135
    :try_start_0
    sget-object v0, Lorg/fusesource/leveldbjni/JniDBFactory;->factory:Lorg/fusesource/leveldbjni/JniDBFactory;

    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->path:Ljava/io/File;

    new-instance v2, Lorg/iq80/leveldb/Options;

    invoke-direct {v2}, Lorg/iq80/leveldb/Options;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/fusesource/leveldbjni/JniDBFactory;->destroy(Ljava/io/File;Lorg/iq80/leveldb/Options;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/iq80/leveldb/DB;->get([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 88
    monitor-exit p0

    return-object p1

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->context:Lorg/bitcoinj/core/Context;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bitcoinj/core/StoredBlock;->deserializeCompact(Lorg/bitcoinj/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    sget-object v1, Lorg/bitcoinj/store/LevelDBBlockStore;->CHAIN_HEAD_KEY:[B

    invoke-interface {v0, v1}, Lorg/iq80/leveldb/DB;->get([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/LevelDBBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->context:Lorg/bitcoinj/core/Context;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 80
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/StoredBlock;->serializeCompact(Ljava/nio/ByteBuffer;)V

    .line 81
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/iq80/leveldb/DB;->put([B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v0}, Lorg/iq80/leveldb/DB;->createWriteBatch()Lorg/iq80/leveldb/WriteBatch;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    :try_start_1
    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v1}, Lorg/iq80/leveldb/DB;->iterator()Lorg/iq80/leveldb/DBIterator;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :try_start_2
    invoke-interface {v1}, Lorg/iq80/leveldb/DBIterator;->seekToFirst()V

    .line 119
    :goto_0
    invoke-interface {v1}, Lorg/iq80/leveldb/DBIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v1}, Lorg/iq80/leveldb/DBIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v0, v2}, Lorg/iq80/leveldb/WriteBatch;->delete([B)Lorg/iq80/leveldb/WriteBatch;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    invoke-interface {v2, v0}, Lorg/iq80/leveldb/DB;->write(Lorg/iq80/leveldb/WriteBatch;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    invoke-interface {v1}, Lorg/iq80/leveldb/DBIterator;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    :try_start_4
    invoke-interface {v0}, Lorg/iq80/leveldb/WriteBatch;->close()V

    .line 128
    invoke-direct {p0}, Lorg/bitcoinj/store/LevelDBBlockStore;->initStoreIfNeeded()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    .line 123
    :try_start_5
    invoke-interface {v1}, Lorg/iq80/leveldb/DBIterator;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 126
    :try_start_6
    invoke-interface {v0}, Lorg/iq80/leveldb/WriteBatch;->close()V

    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 130
    :try_start_7
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBBlockStore;->db:Lorg/iq80/leveldb/DB;

    sget-object v1, Lorg/bitcoinj/store/LevelDBBlockStore;->CHAIN_HEAD_KEY:[B

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/iq80/leveldb/DB;->put([B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
